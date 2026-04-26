# FDA Payment — คำถามที่ต้องการคำตอบจาก SA / IT ฝั่ง FDA

**วันที่:** 2026-04-26
**จัดทำโดย:** ทีม Dev NCSystem
**ส่งถึง:** SA_Top + ทีม IT ฝั่ง FDA (Platba)
**อ้างอิง:** [2026-04-24_SA_Questions.md](2026-04-24_SA_Questions.md)

---

## 🔴 กลุ่ม 1 — Callback Mechanics (Block การ implement UC-04)

คำถามกลุ่มนี้ **block dev โดยตรง** — ยังไม่มีคำตอบแม้แต่ข้อเดียว ต้องการคำตอบก่อนเริ่ม implement

### C1. NCSystem ลงทะเบียน Callback URL กับ FDA อย่างไร?

> ทราบแล้วว่า FDA จะยิง POST callback กลับมาที่ NCSystem หลังผู้ใช้ชำระเงิน แต่ยังไม่ทราบวิธีลงทะเบียน URL

- Callback URL ลงทะเบียนล่วงหน้าแบบ **static ต่อ Org** (ติดต่อ IT FDA ครั้งเดียว) หรือส่งผ่าน field ใน `Create_Fee_List` request body?
- ถ้าลงทะเบียนแบบ static — ขั้นตอนคือส่ง email แจ้ง IT FDA? หรือมี portal/form?
- URL ที่ NCSystem ต้องเตรียมไว้รับ callback ต้องอยู่บน **public internet** หรือ FDA มี VPN เข้ามาได้?

---

### C2. Callback Payload Schema — FDA ส่งอะไรกลับมาใน body?

> จำเป็นต้องรู้เพื่อสร้าง DTO และ deserializer ฝั่ง NCSystem.API

- ขอ **sample callback payload** จริง 1-2 รายการ
- **Format** คืออะไร — JSON, form-urlencoded, XML?
- **field ทั้งหมด** ที่ส่งมา มีอะไรบ้าง? โดยเฉพาะ:
  - field ที่บอกสถานะการชำระ ชื่อว่าอะไร? มีค่าอะไรบ้าง? (เช่น Paid / Failed / Refunded?)
  - มี timestamp ที่ชำระจริงไหม?
  - มียอดเงินที่รับจริงไหม?
- มี **HMAC / signature** ใน header ไหม เช่น `X-FDA-Signature`?

---

### C3. NCSystem จะยืนยันว่า callback มาจาก FDA จริงได้อย่างไร?

> ถ้าไม่มีการยืนยัน ใครก็สามารถยิง fake callback มาทำให้ Requisition เปลี่ยนสถานะเป็น Paid ได้

- FDA จะยิง callback มาจาก **IP range** อะไร? NCSystem ควร whitelist ไว้ไหม?
- FDA ส่ง **auth header** อะไรมาใน callback request ไหม?
- ถ้าไม่มีกลไกใดเลย — **แนวทางที่ FDA แนะนำ** เพื่อป้องกัน fake callback คืออะไร?

---

### C4. Callback Retry — FDA ทำอะไรถ้า NCSystem ตอบ error?

> ถ้า callback หาย = payment stuck ที่ Pending ตลอด ไม่มีทาง pull สถานะกลับมาได้

- ถ้า NCSystem ตอบ HTTP 5xx หรือ timeout — FDA **retry กี่ครั้ง**? ห่างกี่นาที?
- ถ้า retry หมดแล้ว NCSystem ยังไม่ตอบ — **FDA จัดการ transaction นั้นอย่างไร**?
- ใครรับผิดชอบ reconcile กรณี callback หาย — ทีม Dev NCSystem ติดต่อใครฝั่ง FDA?

---

### C5. Callback Idempotency — FDA ยิง callback ซ้ำได้ไหม?

> ถ้า FDA retry callback → NCSystem อาจเห็น callback เดิม 2-3 ครั้ง ต้องป้องกัน double-processing

- FDA retry callback ไหม? ถ้าใช่ — **field ไหนใน payload เป็น idempotency key**? (`FeeUnique`?)
- NCSystem ควรใช้ field อะไร check ว่าเคย process callback นี้แล้วหรือยัง?

---

## 🟡 กลุ่ม 2 — Business Logic (Block การทดสอบ E2E)

### B1. Sandbox / Test Data — จัดการอย่างไรเมื่อไม่มี UAT?

> ยืนยันแล้วว่าไม่มี sandbox — ทุก test ยิงตรง Production

- เมื่อ test สร้าง test row บน Production แล้ว — **ขั้นตอน cleanup** คืออะไร? ติดต่อใคร?
- มีวิธีให้ FDA รู้ว่า row ไหนเป็น test data ไหม? (เช่น prefix ProcessId ด้วย `TEST_`)

---

### B2. ProcessId — ขอ List ที่ IT FDA กำหนดให้ NCSystem

> Q&A ระบุว่า ProcessId "กำหนดแล้วส่งให้ IT" — แต่ Dev ยังไม่ได้รับ list นั้น

- **ProcessId list สำหรับกองวัตถุเสพติด (Org=2)** มีอะไรบ้าง? ขอไฟล์/ตาราง
- **ความยาว max** ของ ProcessId กี่ตัวอักษร?
- ProcessSubId ของกองวัตถุเสพติดมีหรือไม่? ถ้ามี list อยู่ที่ไหน?

---

### B3. Post-Payment Workflow — หลังชำระสำเร็จ Requisition เดินต่ออย่างไร?

> ปัจจุบัน Status=202 หลัง Submit รอ L1 Review — ยังไม่รู้ว่า payment เข้ามา step ไหนของ workflow

- การชำระเงินเกิดขึ้น **ก่อนหรือหลัง** L1 Review?
- หลัง callback Paid เข้ามา `Requisition.Status` ต้องเปลี่ยนเป็นค่าอะไร?
- ค่า status หลัง Paid ใช้ **เหมือนกันทุกฟอร์ม** หรือแต่ละฟอร์มต่างกัน?

---

### B4. `FeeRefStatus` Enum — ค่าที่ถูกต้องคืออะไร?

> PDF ระบุ Required Integer แต่ไม่มี enum list ทดสอบแล้วส่งค่า 999 ก็ไม่ error (เพราะ ProcessId fail ก่อน)

- `FeeRefStatus` มีค่าอะไรบ้าง? แต่ละค่าหมายความว่าอะไร?
- ตอนสร้าง Create_Fee_List ใหม่ควรส่งค่าอะไร?

---

### B5. FeeSubCode — กองวัตถุเสพติดใช้ subset ไหน?

> ทราบ list แล้ว (0,1,2,3,4,5,6,12) แต่ยังไม่รู้ว่าแต่ละประเภทคำขอใช้ค่าไหน

- กองวัตถุเสพติด (Org=2) แสดง **FeeSubCode ครบทั้ง 8 ค่า** ให้ผู้ใช้เลือก หรือกรอง subset?
- เงื่อนไขการเลือก FeeSubCode แต่ละค่าเป็นอย่างไร? (เช่น คำขอนำเข้าใช้ค่าไหน? ต่ออายุใช้ค่าไหน?)

---

### B6. `FeeCode` 400 เกิดในกรณีใด?

> ทดสอบแล้วไม่สามารถ trigger 400 ได้เลย — body ว่าง, ค่าผิด type, ค่านอก enum ล้วนได้ 300

- FeeCode **400** เกิดในกรณีใด? ขอตัวอย่าง scenario
- 300 กับ 400 ต่างกันในแง่ business อย่างไร? NCSystem ควร handle ต่างกันไหม?

---

## 🟢 กลุ่ม 3 — Policy / Master Data (ตอบช้าได้)

### P1. `FeeExpDate` — Policy กี่วัน?

- กองวัตถุเสพติดใช้ FeeExpDate กี่วันหลังจากสร้างรายการ? (default policy)
- ถ้า FeeExpDate หมด — NCSystem สร้าง Create_Fee_List ใหม่สำหรับคำขอเดิมได้ไหม?

---

### P2. `FeePvncd` — ใช้จังหวัดของใคร?

- กองวัตถุเสพติด (Org=2) — `FeePvncd` ใช้จังหวัดของ **สถานประกอบการผู้ขอ** หรือ **สำนักงาน อย. (กทม.=10)**?

---

### P3. IsGroup — Phase 1 ใช้ 0 หรือ 1?

- กองวัตถุเสพติด Phase 1 — confirm ได้ไหมว่าทุก form ใช้ `IsGroup=0`?
- มี form ไหนที่ต้องการ IsGroup=1 (รวมหลายรายการในบิลเดียว)?

---

### P4. ProcessId Master List — Sync อย่างไร?

- Google Sheet tab "รหัสกระบวนงาน-ProcessId" (~160 รายการ) — NCSystem ต้อง seed ใน DB หรือ hardcode?
- ถ้า FDA เพิ่ม/แก้ไข ProcessId — NCSystem รู้ได้อย่างไร? มี notify mechanism?

---

### P5. ใบเสร็จ — Download ได้ไหม?

- หลังชำระสำเร็จ — platba สร้างใบเสร็จให้ผู้ใช้ download ได้ไหม?
- ถ้าได้ — NCSystem แสดง link อย่างไร? URL pattern เป็นอย่างไร?

---

### P6. Refund / Cancel Flow

- กรณี Requisition ถูก reject หลังชำระแล้ว — กระบวนการ refund ทำผ่านใคร?
- NCSystem มี API ยิง cancel ได้ไหม? หรือทำผ่าน platba portal เท่านั้น?
- FDA ส่ง callback สถานะ Refunded/Cancelled กลับมาด้วยไหม?

---

### P7. FeeAmt — ขอบเขตที่รับได้

- platba มี **min / max FeeAmt** ไหม?
- รองรับทศนิยม **กี่ตำแหน่ง** (สตางค์)?

---

## สรุป Priority

| กลุ่ม | จำนวนคำถาม | ผู้ตอบที่เหมาะสม | Block อะไร |
|---|---|---|---|
| 🔴 C1-C5 (Callback) | 5 | IT ฝั่ง FDA (Platba) | UC-04 implement ไม่ได้เลย |
| 🟡 B1-B6 (Business Logic) | 6 | SA_Top | E2E test ไม่ได้ |
| 🟢 P1-P7 (Policy/Master) | 7 | SA_Top | Phase 2 / polish |

> **แนะนำ:** ส่ง C1–C5 ให้ IT FDA ก่อน เพราะเป็นข้อมูลที่ SA ไม่สามารถตอบแทนได้ (เป็น technical spec ของ platba system)
