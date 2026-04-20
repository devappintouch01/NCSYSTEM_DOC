# SA Review Summary — ยส.4 เฉพาะคราว นำเข้า rev.1.3

**วันที่:** 2026-04-13
**SA ส่งกลับ:** `SA_Spec_Narcotic4_Temporary_IMP_rev.1.3.xlsx`
**Scope:** Step 3 Substance — formula + field conditions + label conditions ที่ครอบคลุม **ทุก ยส.1-5 + วจ.1-4 + special (37-45)**
**เทียบกับ:** rev.1.2 (Step 3 ไม่เปลี่ยน, Step 4 attachment matrix เปลี่ยนตาม Ch.25)

---

## การเปลี่ยนแปลงหลัก (rev.1.3)

### 1. Type code เปลี่ยน (Breaking)

| rev.1.2 | rev.1.3 | ความหมาย |
|---------|---------|----------|
| S | **S** | ตัวอย่าง Sample |
| M | **RM** | วัตถุดิบ Raw Material |
| R | **STD** | สารมาตรฐาน Reference Standard |
| P | **FP** | ผลิตภัณฑ์ Finished Product |

### 2. Field labels conditional ตาม RequisitionTypeId

ครอบคลุม 21 RequisitionTypeIds (25-30, 31-34, 37-45):

| Field | RequisitionTypeId | Label |
|-------|-------------------|-------|
| **NameOfSubstanceOrPreparations** | 25, 29 | "ชื่อสิ่งปรุง" |
|  | 26, 27, 28, 29, 30, 33, 34 | "ชื่อยาเสพติดให้โทษหรือสิ่งปรุง" |
|  | 37-45 | "ชื่อวัตถุออกฤทธิ์หรือสิ่งปรุง" |
| **NarcoticSubstanceContainedTherein** | 25-30, 33-34 | "ชื่อยาเสพติดให้โทษในสิ่งปรุง" |
|  | **31, 32** (เฉพาะคราว) | "ชื่อยาเสพติดให้โทษ" |
|  | 37-45 | "ชื่อวัตถุออกฤทธิ์ในสิ่งปรุง" |
| **ContentPerUnit** | 25-34 | "ปริมาณยาเสพติดให้โทษในหนึ่งหน่วย" |
|  | 37-45 | "ปริมาณวัตถุออกฤทธิ์ในหนึ่งหน่วย" |
| **TotalQuantityOfNarcoticSubstances** | 25-34 | "รวมปริมาณยาเสพติดให้โทษ" |
|  | 37-45 | "รวมปริมาณวัตถุออกฤทธิ์" |

### 3. New columns

**Column #11: `UnitOfQuantityOfContentPerUnit` (auto-text)** — แสดง derived unit
- if Type=STD: `[lowercased singular UnitOfQuantity]/[selected unit]` เช่น `mg/vial`
- if Type=FP: `[lowercased singular UnitOfContentPerQuantity]/[unit]` เช่น `mg/tablet`
- ตัวอย่าง: ลบ 's' ปลายคำ + lowercase

**Column #13: `UnitOfTotalQuantityOfNarcoticSubstances`** — สำหรับ FP unit conversion (g/kg)

### 4. Conditional enable

- **ContentPerQuantity** + **UnitOfContentPerQuantity** — Enable เฉพาะเมื่อ Type = FP

---

## 📐 FORMULA SECTION (ใหม่ทั้งหมด)

ทุก Type มี **Total Quantity** + **Base Quantity** (using Anhydrous %)

### Type = S (Sample)

| | Formula | Example |
|--|---------|---------|
| Total | `Quantity × 1` | 100 = 100 × 1 |
| Base | `(Quantity × 1) × (Anhydrous / 100)` | 87 = 100 × 87/100 |
| Display | `[Total] [default unit g] ([DrugName] base [Base] [g])` | `100 g (Heroin base 87 g)` |

### Type = STD (Reference Standard) — filter `nc.IsStandard = 1`

| | Formula | Example |
|--|---------|---------|
| Total | `Quantity × ContentPerUnit` | 1200 = 100 × 12 |
| Base | `Total × (Anhydrous / 100)` | 1044 = 1200 × 87/100 |
| Display | `[Total] [UnitOfContentPerUnit] ([DrugName] [EsterName] base [Base] [unit])` | `1,200 mg (Heroin base 1,044 mg)` |

### Type = RM (Raw Material)

| | Formula | Example |
|--|---------|---------|
| Total | `Quantity × 1` | 100 |
| Base | `Quantity × 1` (**ไม่มี Anhydrous**) | 100 |
| Display | `[Total] [g] ([DrugName] base [Base] [g])` | `100 g (Heroin base 100 g)` |

### Type = FP (Finished Product)

| | Formula | Example |
|--|---------|---------|
| Total | `Quantity × ContentPerQuantity × ContentPerUnit` then convert by unit | 2.500 = (5000×100×5)/1000/1000 |
| Base | `Total × (Anhydrous / 100)` then convert | 2.175 = ((5000×100×5)×87/100)/1000/1000 |
| Convert | g → /1000, kg → /1000/1000 (ตาม UnitOfTotalQuantityOfNarcoticSubstances) | |
| Display | `[Total] [UnitOfTotal] ([DrugName] [EsterName] base [Base] [unit])` | `2.500 kg (Heroin base 2.175 kg)` |

### หลักการ

- `Anhydrous %` มาจาก `MasterNarcoticEster.Anhydrous` (column ของ ester)
- `nc.IsStandard` filter:
  - Type=STD → `IsStandard = 1`
  - Type อื่น → `IsStandard = 0`
- Display structure: `{Total} {unit} ({DrugName} {EsterName} base {Base} {unit})`

---

## NarcoticEster Query — ใหม่ (รวม MasterEster JOIN)

```sql
SELECT nc.id, d.NarcoticDrugNameEn, e.EsterNameEn, nc.IsStandard, nc.Anhydrous
FROM MasterNarcoticEster nc
LEFT JOIN MasterNarcoticDrug d ON nc.NarcoticDrugId = d.id
LEFT JOIN NCDB.dbo.MasterEster e ON e.id = nc.EsterId
WHERE nc.NarcoticTypeId = [Requisition.NarcoticTypeId]
  AND nc.IsStandard = [0|1 ตาม Type]
ORDER BY d.NarcoticDrugNameEn, e.EsterNameEn
```

Filter `narcoticTypeId` ตามฟอร์ม:

| Form | NarcoticTypeId |
|------|----------------|
| IMP-N1-1 / EXP-N1-1 | 1 |
| IMP-N2-1 / EXP-N2-1 | 2 |
| IMP-N3-1 / EXP-N3-1 | 3 |
| IMP-N4-1 / EXP-N4-1 | 4 |
| IMP-N5-1 / EXP-N5-1 | 5 |
| IMP-P1-1 / EXP-P1-1 | 6 |
| IMP-P2-1 / EXP-P2-1 | 7 |
| IMP-P3-1 / EXP-P3-1 | 8 |
| IMP-P4-1 / EXP-P4-1 | 9 |
| EXP.SP-1 | 6, 7, 8, 9 (เลือกจากหน้าจอ) |

---

## Implementation Plan

### Backend
1. **`Z4_LookupService.GetNarcoticEstersAsync`** — เพิ่ม JOIN `MasterEster` + return `EsterNameEn`, `IsStandard`, `Anhydrous`; filter `IsStandard` per Type
2. **DAL check:** `MasterEster` table มีอยู่ใน NCDBContext หรือไม่ (verify `MasterNarcoticEster.EsterId → MasterEster.id`)
3. **Z4_FormPayload.Substances** — เพิ่ม `BaseQuantity` field (calculated, store for audit/reporting)
4. **Z4_PayloadMapper.MapTemporaryItemDetails** — รองรับ Type code S/RM/STD/FP (เดิม S/M/R/P)

### Frontend
1. **`z4-temporary-substance-table.js`** — rewrite for rev.1.3:
   - Type dropdown: `S=ตัวอย่าง, RM=วัตถุดิบ, STD=สารมาตรฐาน, FP=ผลิตภัณฑ์`
   - Conditional enable: ContentPerQuantity + UnitOfContentPerQuantity ↔ Type=FP
   - Auto-derived col #11 (UnitOfQuantityOfContentPerUnit) — text shown next to ContentPerUnit unit dropdown
   - Auto-calc Total + Base + display string per Type
   - Filter ester list by `IsStandard` (refresh dropdown when Type changes)
2. **Field labels conditional ตาม `Requisition.RequisitionTypeId`** — เริ่มฮาร์ดโค้ดสำหรับ RequisitionTypeId=31 (เฉพาะคราว นำเข้า) ก่อน, generalize ภายหลัง
3. **Display `TotalQuantityOfNarcoticSubstances`** ในรูปแบบใหม่ — ไม่ใช่แค่ตัวเลข แต่เป็น "X g (Y base Z g)"

### Generalize for all forms (per SA: "ครอบคลุมทุก ยส")
- เก็บ Type + formulas + label rules ใน config object → reuse pattern เดียวกับ Ch.25 attachment matrix
- เป้าหมาย: pattern เดียว reuse ทั้ง 18 ฟอร์ม (ยส.1-5 + วจ.1-4 + ส่งออก + special)

---

## Open Questions

1. **Type code migration** — drafts ที่บันทึกไปแล้ว (ก่อน rev.1.3) ใช้ S/M/R/P. ต้อง migrate หรือ map S↔S, M↔RM, R↔STD, P↔FP ใน reader?
2. **`BaseQuantity`** — ต้องเก็บใน DB (column ใหม่) หรือ derive ทุกครั้ง?
3. **`UnitOfTotalQuantityOfNarcoticSubstances`** — column นี้มีใน `RequisitionTemporaryItemDetail` แล้วหรือยัง?
4. **Auto-text "vial/tablet"** — singular conversion rule (`replace 's' to ''`) เพียงพอไหมสำหรับทุกหน่วย? เช่น "boxes" → "boxe" ผิด
5. **Display หลัก** — รูปแบบใน Step 5 Preview กับ PDF ต้องเหมือนกันไหม?

---

## DB Issues (ระบุใน sheet)

1. ⚠️ **RequisitionTemporaryItemDetail ไม่มี RequisitionId column** — ALTER TABLE หรือสลับใช้ LicenseTemporaryItemDetail
2. ⚠️ **MasterNarcoticEster filter by NarcoticTypeId** — confirm ester per type ไม่ครอส
3. ⚠️ **MasterEster** — ต้องตรวจว่ามีใน DAL (NCDB.dbo.MasterEster)

---

## References

- Spec: `zRequisition/SA_Specs/SA_Spec_Narcotic4_Temporary_IMP_rev.1.3.xlsx`
- Previous: `SA_Review_Summary_rev1.2.md` (Step 4 attachment matrix)
- Backend pattern: `zProject_Story/ch24_temporary_permit_backend_integration.md`
