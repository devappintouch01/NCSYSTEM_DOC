/*
================================================================================
 DBA REQUEST — SA Spec ยส.4 เฉพาะคราว rev.1.3 Step 3 Substance Calculation
================================================================================
 Date         : 2026-04-13
 Spec ref     : zRequisition/SA_Specs/SA_Spec_Narcotic4_Temporary_IMP_rev.1.3.xlsx
                Sheet "Step3-Substance" — รายละเอียดสูตรคำนวณ Type S/RM/STD/FP
 Summary doc  : zRequisition/SA_Specs/SA_Review_Summary_rev1.3.md
 Scope        : เพิ่ม 2 columns ใน 2 tables + verify seed data
                ครอบคลุม ยส.1-5, วจ.1-4 และ form อื่นที่ใช้ structure เดียวกัน

 ผลกระทบ      : เฉพาะการ store ค่า Total + Base + UnitOfTotal สำหรับ Type=FP
                ไม่กระทบ existing data (column NULL อนุญาต)
================================================================================

 📘 เหตุผลจาก SA Spec — ทำไมต้องเพิ่มแต่ละ column
 -------------------------------------------------------------------------------

 ▌ Column 1: UnitOfTotalQuantityOfNarcoticSubstances (int, FK → MasterNarcoticUnit)

   จาก SA Spec sheet "Step3-Substance" rev.1.3:

   ▸ Row 16 (column #13 ของ table) — SA list field นี้เป็น required column ใน DB:
       Field Label: "หน่วยของรวมปริมาณยาเสพติด/วัตถุออกฤทธิ์"
       HTML name  : UnitOfTotalQuantityOfNarcoticSubstances
       DB Table   : RequisitionTemporaryItemDetail
       DB Column  : UnitOfTotalQuantityOfNarcoticSubstances
       DB Type    : int
       Required   : YES
       Lookup     : MasterNarcoticUnit
       Confirmed  : 🟢

   ▸ Row 63 (Formula section, Type = FP) — SA ระบุชัดเจนว่าใช้ field นี้ convert unit:
       "Convert Total Quantity:
        if UnitOfTotalQuantityOfNarcoticSubstances = g    → Total Quantity / 1000
        if UnitOfTotalQuantityOfNarcoticSubstances = kg   → Total Quantity / 1000 / 1000"

   ▸ Row 64 (Type=FP example):
       "Total Quantity Result: 2.500 = (5000 × 100 × 5) / 1000 / 1000"
       → ถ้าไม่มี column นี้ → ไม่รู้ว่าหารด้วย 1000 หรือ 1,000,000 → คำนวณ FP ไม่ได้

   ▸ Row 70-71 — Display structure ใช้ unit นี้แสดงผล:
       Structure: "[Total] [UnitOfTotalQuantityOfNarcoticSubstances] (...base [Base] [UnitOfTotal])"
       Result   : "2.500 kg (Heroin base 2.175 kg)"   ← "kg" มาจาก field นี้

   👉 ปัจจุบันใน DAL `RequisitionTemporaryItemDetail.cs` ไม่มี column นี้ (verify แล้ว)
   👉 ไม่มี = ไม่สามารถ implement Type=FP ตาม spec ได้


 ▌ Column 2: BaseQuantity (decimal(18,4))

   จาก SA Spec sheet "Step3-Substance" rev.1.3 — FORMULA SECTION (rows 20-71):

   ▸ Row 28-29 (Type=S):
       Base Formular : "(Quantity × 1) × (nc.Anhydrous / 100)"
       Base Result   : "87 = (100 × 1) × (87 / 100)"

   ▸ Row 40-41 (Type=STD):
       Base Formular : "(Quantity × ContentPerUnit) × (nc.Anhydrous / 100)"
       Base Result   : "1044 = (100 × 12) × (87 / 100)"

   ▸ Row 65-67 (Type=FP):
       Base Formular  : "(Quantity × ContentPerQuantity × ContentPerUnit) × (nc.Anhydrous / 100)"
       Convert Base   : "if UnitOfTotal = g → Base / 1000; if = kg → / 1000000"
       Base Result    : "2.175 = ((5000 × 100 × 5) × (87/100)) / 1000 / 1000"

   ▸ Display Structure ที่ TotalQuantityOfNarcoticSubstances (rows 32, 44, 56, 70):
       "[Total] [unit] ([DrugName] [EsterName] base [Base] [unit])"
       เช่น "2.500 kg (Heroin base 2.175 kg)"
       → "Base" ต้องเก็บค่าเพื่อแสดง + ไป report

   ▸ ทำไมต้อง persist (ไม่ใช่ compute every time)?
       - `Anhydrous` มาจาก `MasterNarcoticEster.Anhydrous` ซึ่งอาจถูก master data team แก้ไขภายหลัง
       - ถ้า re-compute Base ทุกครั้ง → ค่า historical ของคำขอเก่าจะเปลี่ยน → ผิด audit
       - SA report ต้องดู Base ที่บันทึก ณ ตอนยื่นคำขอ (snapshot)

   👉 ปัจจุบันใน DAL `RequisitionTemporaryItemDetail.cs` ไม่มี column นี้
   👉 ไม่มี = ต้อง compute ทุกครั้ง = audit ผิด


 ▌ Mirror ใน LicenseTemporaryItemDetail

   เหตุผลเดียวกัน + License = snapshot ของคำขอที่อนุมัติแล้ว ต้องมี field เดียวกัน
   เพื่อให้ report ของ License เห็น Total + Base + Unit เหมือนใน Requisition

   จาก SA Spec rows 75-76 (DB Issue section):
       "1. RequisitionTemporaryItemDetail ไม่มี column RequisitionId → ALTER TABLE"  ← DBA fix แล้ว ✅
       "2. OR ใช้ LicenseTemporaryItemDetail แทน (มี RequisitionId + LicenseId ครบแล้ว) — ต้องถามทีม DB"
   → SA สรุปว่าใช้ทั้ง 2 ตาราง (คำขอ + ใบอนุญาต) — ต้อง mirror columns


 ▌ ไม่ต้องเพิ่ม: UnitOfQuantityOfContentPerUnit (col #11 ใน spec)

   จาก SA Spec row 16 (column #11):
       Component  : "auto-text"  ← ระบุชัดว่าเป็น derived field
       Formula    : "if Type = STD: get UnitOfQuantity name, replace 's', lowercase, prepend '/'"
                    "if Type = FP : get UnitOfContentPerQuantity name, similar"
       Example    : "__/vial", "__/tablet"

   → derive จาก unit ที่ user เลือก ไม่ใช่ user input → frontend คำนวณ ไม่ต้อง persist

================================================================================
*/

------------------------------------------------------------------------------
-- STEP 1: ALTER TABLES — add 2 nullable columns to each
------------------------------------------------------------------------------

-- 1.1 ตารางคำขอ — RequisitionTemporaryItemDetail
ALTER TABLE RequisitionTemporaryItemDetail
  ADD UnitOfTotalQuantityOfNarcoticSubstances int NULL,   -- FK → MasterNarcoticUnit.Id
      BaseQuantity decimal(18,4) NULL;
GO

-- 1.2 ตารางใบอนุญาต — LicenseTemporaryItemDetail (mirror snapshot for audit)
ALTER TABLE LicenseTemporaryItemDetail
  ADD UnitOfTotalQuantityOfNarcoticSubstances int NULL,
      BaseQuantity decimal(18,4) NULL;
GO

------------------------------------------------------------------------------
-- STEP 2: FK CONSTRAINTS (recommended, not blocking)
------------------------------------------------------------------------------

ALTER TABLE RequisitionTemporaryItemDetail
  ADD CONSTRAINT FK_ReqTempItem_UnitOfTotal
  FOREIGN KEY (UnitOfTotalQuantityOfNarcoticSubstances)
  REFERENCES MasterNarcoticUnit(Id);
GO

ALTER TABLE LicenseTemporaryItemDetail
  ADD CONSTRAINT FK_LicTempItem_UnitOfTotal
  FOREIGN KEY (UnitOfTotalQuantityOfNarcoticSubstances)
  REFERENCES MasterNarcoticUnit(Id);
GO

------------------------------------------------------------------------------
-- STEP 3: VERIFY SEED DATA — กรุณา run + ส่งผลลัพธ์กลับ dev team
------------------------------------------------------------------------------

-- A) MasterNarcoticUnit — ต้องมีหน่วย g, mg, kg และ flag IsQuantityUnit=1
SELECT Id, UnitNameTh, UnitAcronymEn1, UnitAcronymEn2, IsQuantityUnit, Active
FROM MasterNarcoticUnit
WHERE UnitAcronymEn1 IN ('g','mg','kg') AND Active = 1
ORDER BY UnitAcronymEn1;

-- B) MasterNarcoticEster — Anhydrous + IsStandard ต้องครบทุก ester
SELECT
  NarcoticTypeId,
  COUNT(*) AS TotalRows,
  SUM(CASE WHEN IsStandard = 1 THEN 1 ELSE 0 END) AS StdRows,
  SUM(CASE WHEN IsStandard = 0 THEN 1 ELSE 0 END) AS NonStdRows,
  SUM(CASE WHEN Anhydrous IS NULL THEN 1 ELSE 0 END) AS Rows_AnhydrousNull,
  SUM(CASE WHEN Anhydrous = 0    THEN 1 ELSE 0 END) AS Rows_AnhydrousZero
FROM MasterNarcoticEster
WHERE Active = 1
GROUP BY NarcoticTypeId
ORDER BY NarcoticTypeId;

-- C) MasterEster — ester name (English) ใช้แสดงผล "Heroin hydrochloride (1H2O)"
SELECT
  COUNT(*) AS TotalRows,
  SUM(CASE WHEN EsterNameEn IS NULL OR EsterNameEn = '' THEN 1 ELSE 0 END) AS Rows_NoName
FROM MasterEster;

-- D) MasterNarcoticDrug — drug name (English) ใช้แสดงผล "Heroin"
SELECT
  NarcoticTypeId,
  COUNT(*) AS TotalRows,
  SUM(CASE WHEN NarcoticDrugNameEn IS NULL OR NarcoticDrugNameEn = '' THEN 1 ELSE 0 END) AS Rows_NoName
FROM MasterNarcoticDrug
WHERE Active = 1
GROUP BY NarcoticTypeId
ORDER BY NarcoticTypeId;

------------------------------------------------------------------------------
-- STEP 4: VERIFY ALTER สำเร็จ — รัน 2 query นี้ดู column ใหม่
------------------------------------------------------------------------------

-- ตรวจ column ใหม่ใน RequisitionTemporaryItemDetail
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, NUMERIC_PRECISION, NUMERIC_SCALE, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'RequisitionTemporaryItemDetail'
  AND COLUMN_NAME IN ('UnitOfTotalQuantityOfNarcoticSubstances', 'BaseQuantity');

-- ตรวจ column ใหม่ใน LicenseTemporaryItemDetail
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, NUMERIC_PRECISION, NUMERIC_SCALE, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'LicenseTemporaryItemDetail'
  AND COLUMN_NAME IN ('UnitOfTotalQuantityOfNarcoticSubstances', 'BaseQuantity');

------------------------------------------------------------------------------
-- หมายเหตุ
------------------------------------------------------------------------------
/*
1. column ทั้ง 4 NULLable — backward compatible กับ data เดิม (ไม่ break)
2. หลัง ALTER เสร็จ dev จะ re-scaffold DAL:
     dotnet ef dbcontext scaffold ... --table RequisitionTemporaryItemDetail --table LicenseTemporaryItemDetail
3. column ที่ "ไม่ต้อง" เพิ่ม:
     - UnitOfQuantityOfContentPerUnit (col #11 ใน spec, รูปแบบ "mg/vial", "mg/tablet")
       → frontend derive จาก unit name + Type ไม่ต้อง persist
4. ถ้ามีคำถามหรือต้องการเปลี่ยน design, ติดต่อกลับ dev team
*/
