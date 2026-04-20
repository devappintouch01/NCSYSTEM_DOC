# คำถามกลับ SA — SA Spec ยส.4 เฉพาะคราว rev.1.3 Step 3 Substance Calculation

**วันที่ส่งคำถาม:** 2026-04-13
**Dev team:** NCSystem Z4
**Reference:** `SA_Spec_Narcotic4_Temporary_IMP_rev.1.3.xlsx` sheet `Step3-Substance`

---

## สถานะตรวจสอบ

**✅ คณิตศาสตร์ถูกต้อง** — ตัวอย่างทั้ง 4 Types (S/RM/STD/FP) verify ผ่าน

| Type | Example | Total | Base |
|------|---------|-------|------|
| S - Sample | 100g, Anh=87% | 100 ✅ | 87 ✅ |
| STD - Standard | 12×100 mg, Anh=87% | 1,200 ✅ | 1,044 ✅ |
| RM - Raw Material | 100g pure | 100 ✅ | 100 ✅ |
| FP - Finish Product | 5000×100×5 mg, Anh=87%, kg | 2.500 ✅ | 2.175 ✅ |

---

**⚠️ แต่มี ambiguity / edge cases 8 จุดที่ขอให้ SA เคลียร์ก่อน implement** (เพื่อไม่ต้อง refactor ภายหลัง)

---

## คำถามที่ 1 — Type=S + Type=RM "default unit g" ขัดกับ UnitOfQuantity dropdown

**Spec ที่พบ:**
- Row 32 (Type=S): `[Total Quantity Result] [default unit g]`
- Row 56 (Type=RM): `[Total Quantity Result] [default unit g]`

**ปัญหา:**
- ผู้ใช้เลือก `UnitOfQuantity` ได้ (g, kg, mg, ฯลฯ) จาก dropdown
- ถ้าเลือก `kg` แล้วใส่ `100 kg` — คำนวณ Total = 100 (kg) แต่ display hardcode "g" → ผิด

**ขอ SA confirm:**
- ✅ option A: Display ใช้ `UnitOfQuantity` ของ row ตรง ๆ (ไม่ hardcode "g")
- ❌ option B: Force ให้ UnitOfQuantity ต้องเป็น "g" เท่านั้น (dropdown ล็อก)
- อื่น ๆ ระบุ

$$ option A

---

## คำถามที่ 2 — Validation UnitOfQuantity สำหรับ S - Sample / RM - Raw Material

**ปัญหา:**
- S - Sample / RM - Raw Material ใช้ unit เป็น mass (g/mg/kg)
- ถ้า user เลือก count unit (vials, boxes, pieces) แล้ว Base = `Quantity × 1 × (Anh/100)` ไม่มีความหมาย (count ไม่ใช่ mass)

**ขอ SA confirm:**
- ✅ option A: Validate UnitOfQuantity ต้องเป็น mass unit (`IsQuantityUnit=1` หรือเทียบเท่า) สำหรับ Type=S/RM
- ❌ option B: อนุญาต count unit + ให้ user รับผิดชอบเอง
- อื่น ๆ ระบุ

$$ option A

---

## คำถามที่ 3 — Type=RM salt form (ไม่ใช่ pure base)

**Spec ที่พบ:**
- Row 47-53 (Type=RM): Example "100g pure Heroin no water" → Base = Quantity (no Anhydrous)

**ปัญหา:**
- ถ้า RM เป็น **salt form** เช่น Heroin HCl (มี HCl + water) — Base ควรคำนวณด้วย Anhydrous
- Spec ระบุสูตร RM = `Quantity × 1` (ไม่มี Anhydrous) → ใช้ได้กับ pure API เท่านั้น

**ขอ SA confirm + แนะนำ unified approach:**

```
Base = Total × COALESCE(Anhydrous, 100) / 100
```

- ✅ option A: Unified formula — RM ถ้า Anhydrous IS NULL (pure) → ตัวคูณ = 1 (ผลเหมือนเดิม), ถ้ามี Anhydrous → ใช้
- ❌ option B: RM ต้อง pure เท่านั้น ไม่รองรับ salt (keep original spec)
- อื่น ๆ ระบุ

$$ อื่น ๆ ระบุ - option A แต่ตอนที่ user กด dropdown เลือกสาร ให้แสดงเฉพาะ Anhydrous is null ก่อน

---

## คำถามที่ 4 — Unit ของ Total ต่างระหว่าง STD vs FP

**Spec ที่พบ:**
- Row 44 (Type=STD): Display ใช้ `UnitOfContentPerUnit`
- Row 70 (Type=FP): Display ใช้ `UnitOfTotalQuantityOfNarcoticSubstances` (col #13)

**ปัญหา:**
- 2 Type ใช้คนละ field → confuse + code complex
- ถ้า STD อยากแสดง kg (ปริมาณเยอะ) หรือ μg (ปริมาณน้อย) — ทำไม่ได้ เพราะ lock ที่ UnitOfContentPerUnit

**ขอ SA confirm:**
- ✅ option A: ทั้ง STD + FP + S + RM ใช้ `UnitOfTotalQuantityOfNarcoticSubstances` (col #13) เป็น unit เดียวสำหรับ display Total
- ❌ option B: Keep original — STD = UnitOfContentPerUnit, FP = col #13
- อื่น ๆ ระบุ

$$$ (Type=FP): Display ใช้ UnitOfContentPerUnit

---

## คำถามที่ 5 — STD ต้อง unit convert ไหม?

**Spec ที่พบ:**
- FP มี convert step (row 63: if g→/1000, if kg→/1M)
- STD ไม่มี

**ปัญหา:**
- ถ้า STD มี 100 vials × 0.5 μg/vial = 50 μg
- User อยาก display เป็น mg (= 0.050) หรือ g (= 0.000050)
- สูตร STD ไม่รองรับ

**ขอ SA confirm:**
- ✅ option A: STD convert เหมือน FP (ใช้ col #13 ตาม คำถาม 4)
- ❌ option B: STD ไม่ convert — lock ที่ UnitOfContentPerUnit
- อื่น ๆ ระบุ

$$$ option B

---

## คำถามที่ 6 — Col #11 UnitOfQuantityOfContentPerUnit ambiguity

**Spec ที่พบ (Row 16):**
> "if Type = STD: get NarcoticUnitId that select in **UnitOfQuantity** and replace 's' to '' and set to lowercase, and show '/' + **UnitOfQuantity**"

**ปัญหา:**
1. อ่าน literal ไม่ make sense: "get UnitOfQuantity, strip s → 'vial', show '/' + UnitOfQuantity (original 'vials')" → ได้ "/vials" (วนกลับมาใช้ original)
2. น่าจะหมายถึง: `{UnitOfContentPerUnit} + "/" + {UnitOfQuantity singular}` เช่น "mg/vial"
3. "replace 's' to ''" **ผิดบาง case:**

| Plural | spec rule | ถูกต้อง |
|--------|-----------|---------|
| vials | vial ✅ | vial |
| tablets | tablet ✅ | tablet |
| **boxes** | **boxe ❌** | **box** |
| **classes** | **classe ❌** | **class** |
| **bottles** | bottle ✅ | bottle |

**ข้อเสนอ:**
ใช้ `MasterNarcoticUnit.UnitAcronymEn2` (seed มีอยู่แล้ว — column นี้น่าจะเป็น singular form)

**ขอ SA confirm:**
- ✅ option A: ใช้ `UnitAcronymEn2` ของ MasterNarcoticUnit เป็น singular (ไม่ใช่ regex)
- ❌ option B: Keep "replace 's'" — dev รับผิดชอบ edge cases
- อื่น ๆ ระบุ + ช่วยยกตัวอย่าง output string ที่ต้องการ

$$$ อื่น ๆ ระบุ : replace เฉพาะ s ที่ digits สุดท้าย (ใช้ regex ช่วย)

---

## คำถามที่ 7 — Unified formula ทั้ง 4 Types

**ข้อเสนอ Dev:**

```js
// Multiplier per Type
const multiplier = {
  S:   1,                                   // 1 unit = 1 unit
  RM:  1,
  STD: ContentPerUnit,                      // ตาม spec STD
  FP:  ContentPerQuantity * ContentPerUnit  // ตาม spec FP
};

Total = Quantity * multiplier[Type];
Base  = Total * (COALESCE(Anhydrous, 100) / 100);  // pure RM → Anh=100 → multiplier 1

// Optional unit conversion (ทำได้ทุก Type ไม่ใช่แค่ FP)
if (UnitOfTotalQuantityOfNarcoticSubstances เป็น kg) Total /= 1000000, Base /= 1000000;
else if (g) Total /= 1000, Base /= 1000;
// else keep in mg (default)

Display = `{Total} {UnitOfTotal} ({DrugName} {EsterName} base {Base} {UnitOfTotal})`;
```

**ข้อดี:**
- ✅ 1 สูตรเดียว 4 Types (ลด branching, testable)
- ✅ Anhydrous default 100 → pure RM ไม่ต้อง special case
- ✅ Unit convert ใช้ได้ทุก Type (ถ้า SA ต้องการ ตาม คำถาม 5)
- ✅ Display ใช้ unit เดียวกันทุก Type (col #13 ตาม คำถาม 4)

**ขอ SA confirm:**
- ✅ option A: ยอมรับ unified formula นี้
- ❌ option B: Keep 4 สูตรแยก (ตาม spec original)
- อื่น ๆ ระบุ

$$$ option A

---

## คำถามที่ 8 — Cosmetic: ลำดับ operand ใน result string

**Spec ที่พบ:**
- Row 27 (S): `100 = (100 × 1)` ✅ ตรง formula
- Row 39 (STD): `1200 = (100 × 12)` ⚠️ formula = `Quantity × ContentPerUnit` = `12 × 100`
- Row 41 (STD): `1044 = (100 × 12) × (87 / 100)` ⚠️ เหมือน row 39
- Row 51 (RM): `100 = (100 × 1)` ✅
- Row 53 (RM): `100 = (100 × 1)` ✅
- Row 64 (FP): `2.500 = (5000 × 100 × 5) / 1000 / 1000` ✅ ตรง formula

**ปัญหา:**
ผลถูกทั้งหมด (multiplication commutative) แต่ row 39, 41 เขียนผิดลำดับ → สับสน

**ขอ SA แก้:**
Row 39 → `1200 = (12 × 100)`
Row 41 → `1044 = (12 × 100) × (87 / 100)`

(เป็น cosmetic เล็กน้อย ไม่กระทบ implementation)

$$$ แก้เลย แล้วทำเป็น SA_Spec_Narcotic4_Temporary_IMP_rev.1.4.xlsx

---

## สรุป — ขอ SA ตอบ 7 คำถาม (ไม่รวม #8 cosmetic)

| # | ประเด็น | priority |
|---|---------|----------|
| 1 | Default unit "g" vs UnitOfQuantity | 🔴 High — กระทบ display |
| 2 | Validation UnitOfQuantity S/RM | 🟡 Medium — UX |
| 3 | RM salt form (Anhydrous) | 🔴 High — กระทบสูตร |
| 4 | Unit ของ Total unified (col #13) | 🟡 Medium — design |
| 5 | STD unit conversion | 🟡 Medium — design |
| 6 | Col #11 singular conversion | 🔴 High — กระทบ output |
| 7 | Unified formula (ถ้ารวมกันได้) | 🟡 Medium — ลดความซ้ำซ้อน |
| 8 | Cosmetic operand order | 🟢 Low — doc only |

**หลังจาก SA ตอบกลับ** ทีม Dev จะ:
1. Update `SA_Review_Summary_rev1.3.md` ตาม confirmed answers
2. ขอ DBA ALTER ตาม `DBA_Request_rev1.3_Step3.sql` (ไม่เปลี่ยนจากเดิม)
3. Implement frontend `z4-temporary-substance-table.js` + backend mapper

ขอบคุณครับ 🙏
