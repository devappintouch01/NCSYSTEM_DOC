# FDA Payment Integration — คำถามที่ต้องได้คำตอบจาก SA

**Date:** 2026-04-24
**Purpose:** รวบรวมคำถามทั้งหมดที่ทีม Dev ต้องได้คำตอบก่อน (และระหว่าง) implement ระบบเชื่อมโยงการชำระเงิน อย.
**Audience:** SA + ทีม FDA Payment Gateway
**Related:** `UseCases.md` · `Diagrams.md` · `../../zProject_Story/ch30_fda_payment_integration_discovery.md`

## วิธีใช้เอกสาร

- คำถามเรียงตาม priority: 🔴 **Critical (block dev)** → 🟡 **Important (block E2E)** → 🟢 **Minor (nice-to-have)**
- แต่ละคำถามมี: **สิ่งที่ต้องรู้** / **ทำไมสำคัญ** / **ผลกระทบถ้าไม่รู้** / **ช่อง "คำตอบ SA"** ให้กรอกเพิ่ม
- คำถามที่ **ปิดแล้ว** ย้ายไปท้ายไฟล์ (§ปิดแล้ว) — เก็บไว้อ้างอิง

---

## 🔴 Critical — ต้องตอบก่อนเริ่ม Implement

### Q1. Callback URL ลงทะเบียนกับ FDA ที่ไหน?

**สิ่งที่ต้องรู้:**
- FDA Platba ต้องรู้ URL ของ NCSystem เพื่อยิง POST callback กลับมา
- ลงทะเบียนผ่าน endpoint? Portal? ส่ง email แจ้ง?
- ลงทะเบียน URL ต่อ `Org` หรือต่อ transaction?

**ทำไมสำคัญ:** ไม่มี callback = NCSystem ไม่มีทางรู้ว่าผู้ใช้ชำระสำเร็จ (FDA ไม่มี Query Status API ด้วย)

**ผลกระทบถ้าไม่รู้:** UC-04 implement ไม่ได้ → Payment flow ไม่ครบ → ต้อง manual reconcile ทุกรายการ

**คำตอบ SA:**
```
[ รอตอบ ]
```

---

### Q2. Callback Payload Schema — FDA จะส่งอะไรกลับมา?

**สิ่งที่ต้องรู้:**
- Field ที่ FDA จะยิงกลับใน callback body (คาด: `FeeUnique`, `FeeRefIda`, `Status`, `PaidAt`, `PaidAmount`, … ?)
- Format: JSON? form-urlencoded? XML?
- Status values ที่เป็นไปได้ — แค่ `Paid` หรือมี `Refunded` / `Cancelled` / `PartialPaid`?
- มี signature / HMAC ใน body หรือ header ไหม

**ทำไมสำคัญ:** ต้องใช้กำหนด DTO + parser + validation ฝั่ง NCSystem.API

**ผลกระทบถ้าไม่รู้:** ไม่รู้จะ deserialize อย่างไร → implement UC-04 ไม่ได้

**คำตอบ SA:**
```
[ รอตอบ — ขอตัวอย่าง sample payload จริง 1-2 รายการ ]
```

---

### Q3. Callback Authentication — FDA ยืนยันตัวตนอย่างไรตอน POST?

**สิ่งที่ต้องรู้:**
- IP whitelist (Platba ยิงจาก IP ไหน)?
- Shared secret ใน header (e.g. `X-FDA-Signature: HMAC-SHA256`)?
- mTLS?
- Basic auth?
- หรือไม่มีอะไรเลย (รักษา URL เป็น secret)?

**ทำไมสำคัญ:** Callback endpoint ต้องป้องกันให้คนอื่นยิง fake payment completion ไม่ได้

**ผลกระทบถ้าไม่รู้:** ถ้า implement ไม่มี auth → ใครยิงก็ได้ = Requisition เปลี่ยน Status เป็น Paid ทั้งที่ไม่ได้จ่ายจริง (security hole)

**คำตอบ SA:**
```
[ รอตอบ ]
```

---

### Q4. Sandbox / UAT Environment มีไหม?

**สิ่งที่ต้องรู้:**
- Q&A Excel ข้อ 22.1-22.3 บอก **ไม่มี sandbox** — prod เดียว
- ทีม FDA มี test mode / test credential แบบอื่นไหม? (เช่น ProcessId พิเศษที่ platba ตรวจจับได้ว่าเป็น test)
- ถ้าไม่มีจริง — test ครั้งแรก = **ยิง prod**

**ทำไมสำคัญ:** ไม่มี sandbox = bug แรกๆ อาจสร้าง real payment row ที่ต้องให้ FDA ช่วยลบ

**ผลกระทบถ้าไม่รู้:** ต้องเสี่ยง test บน prod / ประสานงาน cleanup ทุกครั้ง

**คำตอบ SA:**
```
[ รอตอบ — ถ้าไม่มีจริง ขอ process การ cleanup test rows ]
```

---

## 🟡 Important — ต้องตอบก่อน E2E Test

### Q5. `token` ใน Create_Fee_List — Required จริงหรือไม่?

**สิ่งที่ต้องรู้:**
- **PDF คู่มือ** ระบุ `token` = Required(Y)
- **Q&A Excel ข้อ 1, 9.1-9.5** บอกว่าไม่มี Token, ไม่ต้องส่ง
- ขัดกันชัดเจน

**ทำไมสำคัญ:** ถ้าส่งผิด = API reject (อาจเจอ 400 ก่อนถึง business logic)

**ผลกระทบถ้าไม่รู้:** ต้องเดา (เช่นส่ง empty string) แล้วแก้ภายหลัง

**คำตอบ SA:**
```
[ รอตอบ — ถ้า Required ให้ระบุวิธีได้ค่า + TTL + refresh ]
```

---

### Q6. Callback Retry Policy — FDA ทำอะไรถ้า NCSystem ตอบ error?

**สิ่งที่ต้องรู้:**
- ถ้า NCSystem ตอบ HTTP 5xx / timeout / 500 ms — FDA retry กี่ครั้ง? ช่วงห่างเท่าไร?
- NCSystem ต้อง expose query endpoint ให้ FDA pull ซ้ำเองไหม?
- ถ้า retry หมดแล้ว NCSystem ไม่ตอบ — FDA จะทำยังไงกับ transaction ที่ชำระไปแล้ว?

**ทำไมสำคัญ:** กระทบ reliability — ถ้า callback หาย = Payment stuck ที่ Pending ตลอด

**ผลกระทบถ้าไม่รู้:** อาจต้อง manual reconcile หนัก

**คำตอบ SA:**
```
[ รอตอบ ]
```

---

### Q7. Query Status API — FDA เปิดให้ NCSystem pull สถานะได้ไหม?

**สิ่งที่ต้องรู้:**
- Q&A Excel ข้อ 8 บอก "ไม่มี API ตรวจสอบสถานะ" — แน่ใจหรือไม่?
- ถ้าจำเป็น (กรณี callback หาย) จะเปิด endpoint ให้ในอนาคตไหม?

**ทำไมสำคัญ:** ถ้ามี = UC-06 reconcile ทำ automated ได้; ถ้าไม่มี = ต้อง manual เท่านั้น

**ผลกระทบถ้าไม่รู้:** วาง architecture reconcile ลำบาก

**คำตอบ SA:**
```
[ รอตอบ ]
```

---

### Q8. `FeeRefStatus` Enum — `0` = อะไร? มีค่าอื่นไหม?

**สิ่งที่ต้องรู้:**
- PDF ระบุ `FeeRefStatus` = Required Integer แต่**ไม่มีคำอธิบาย enum**
- NCSystem ต้องส่งค่าอะไรตอน Create_Fee_List (default 0?)

**ทำไมสำคัญ:** ส่งค่าผิด = อาจเจอ validation error

**ผลกระทบถ้าไม่รู้:** ต้องเดา (0) แล้วดู error message

**คำตอบ SA:**
```
[ รอตอบ — ขอ enum list ทั้งหมด + ความหมายแต่ละค่า ]
```

---

### Q9. `FeeResult` 300 vs 400 — ต่างกันอย่างไร?

**สิ่งที่ต้องรู้:**
- PDF บอก 200=Success, 300=Error, 400=Error
- ทั้ง 300 และ 400 เป็น error แต่**ต่างกันอย่างไร**? (client error vs server error? retryable vs non-retryable?)

**ทำไมสำคัญ:** error handling ต่างกัน — ตัวหนึ่งควร retry ตัวหนึ่งไม่ควร

**ผลกระทบถ้าไม่รู้:** Retry logic ทำไม่ถูก → อาจ spam API หรือ fail เงียบ

**คำตอบ SA:**
```
[ รอตอบ ]
```

---

### Q10. `FeeSubCode` 07–11 หายไปจาก Master Sheet — จงใจหรือไม่?

**สิ่งที่ต้องรู้:**
- Google Sheet tab "FeeSubCode" มี 8 ค่า: `00, 01, 02, 03, 04, 05, 06, 12`
- **07, 08, 09, 10, 11 หายไป** — สงวนไว้ในอนาคต หรือแค่ไม่ใช้แล้ว?
- NCSystem (กองวัตถุเสพติด) ใช้ครบ 8 ค่า หรือเฉพาะบางตัว?

**ทำไมสำคัญ:** ถ้า seed master table ผิด → ผู้ใช้เลือก option ที่ platba ไม่ยอมรับ

**ผลกระทบถ้าไม่รู้:** อาจเจอ 400 จาก platba หลัง submit

**คำตอบ SA:**
```
[ รอตอบ — ขอรายการ FeeSubCode ที่ NCSystem ควรใช้ + เงื่อนไขการเลือก ]
```

---

### Q11. Post-Payment Requisition Status — หลังชำระสำเร็จ Status เปลี่ยนเป็นอะไร?

**สิ่งที่ต้องรู้:**
- ปัจจุบัน: `Status=202` หลัง Submit, ไปรอ L1 Review
- หลังชำระแล้วควรเป็น: L2? ออกใบอนุญาต? รอ Print? รอ download?
- SA ต้องตอบต่อ phase (form/flow) — หรือใช้ status เดียวทุกฟอร์ม?

**ทำไมสำคัญ:** ต้อง wire callback ให้ transition status ถูก — ไม่งั้น flow ค้างหลัง Paid

**ผลกระทบถ้าไม่รู้:** Callback พอได้แล้วแต่ Requisition ไม่เดินต่อ

**คำตอบ SA:**
```
[ รอตอบ — ควรเป็น workflow state transition ใหม่หรือใช้ status เดิม ]
```

---

### Q12. Callback Idempotency — FDA ยิงซ้ำหรือไม่?

**สิ่งที่ต้องรู้:**
- ถ้า NCSystem ตอบ 200 แต่ FDA ไม่ได้รับ (network glitch) — FDA retry?
- ถ้า retry ซ้ำ → NCSystem จะเห็น callback เดียวกัน 2-3 ครั้ง
- Idempotency key = `FeeUnique`?

**ทำไมสำคัญ:** ต้องป้องกัน double-processing (update ซ้ำ, email ซ้ำ)

**ผลกระทบถ้าไม่รู้:** อาจมี double entry, duplicate receipt

**คำตอบ SA:**
```
[ รอตอบ ]
```

---

## 🟢 Minor — ตอบช้าได้ แต่ควรเก็บไว้ใน backlog

### Q13. `FeePvncd` (รหัสจังหวัด) — ใช้ของผู้ขอ vs สำนักงาน?

**สิ่งที่ต้องรู้:**
- Q&A ข้อ 15.2 ตอบคลุม "ยึดตามโครงการเรียกเก็บค่าธรรมเนียม" — ยังไม่ชัด
- กรณีผู้ขออยู่เชียงใหม่ แต่สำนักงานรับผิดชอบอยู่ อย.กทม. — `FeePvncd = 50 (เชียงใหม่)` หรือ `10 (กทม.)` ?

**คำตอบ SA:**
```
[ รอตอบ — ระบุ rule ชัดเจนต่อประเภทคำขอ หรือเสนอ default value ]
```

---

### Q14. `FeeExpDate` — ใครกำหนด + ระยะเวลาเท่าไร?

**สิ่งที่ต้องรู้:**
- Q&A ข้อ 14.1 บอก "แล้วแต่การลงทะเบียน"
- NCSystem ส่งเอง (เช่น current + 7 วัน)?
- หรือ platba override ให้?
- มี max limit ไหม (ไม่เกิน 30 วัน?)

**คำตอบ SA:**
```
[ รอตอบ — default policy ที่ NCSystem ควรใช้ ]
```

---

### Q15. `IsGroup=1` ใช้ scenario ไหนใน Narcotic forms?

**สิ่งที่ต้องรู้:**
- Biz sheet `1B366...` column "ขั้นตอนการเก็บเงิน" ทุก row = "**แยก**" → แปลว่าใช้ `IsGroup=0` หมด
- มี scenario ไหนที่ 1 คำขอมีหลายรายการต้องรวมเป็น bill เดียว? (Future use case?)

**ทำไมสำคัญ:** ถ้า **ไม่มี** ใน short-term → implement เฉพาะ `IsGroup=0` ก่อน (ลด complexity)

**คำตอบ SA:**
```
[ รอตอบ — confirm ว่า IsGroup=0 เพียงพอสำหรับ Phase 1 ]
```

---

### Q16. `ProcessId` Format — ใช้ `RequestNo + prefix` ได้ไหม?

**สิ่งที่ต้องรู้:**
- Q&A ข้อ 11 บอก ProcessId ต้อง unique **ทั่วระบบ FDA** (ไม่ใช่แค่ Org)
- NCSystem กำหนด format เป็น `NC_{RequestNo}_{timestamp}` ได้ไหม? จะชนกับ Org อื่นหรือเปล่า?

**คำตอบ SA:**
```
[ รอตอบ — ยืนยัน format ที่ไม่ชน + ความยาว max ]
```

---

### Q17. Receipt / ใบเสร็จ — หลัง Paid มี URL ให้ download ไหม?

**สิ่งที่ต้องรู้:**
- หลังผู้ใช้ชำระ, platba สร้างใบเสร็จ?
- มี URL ที่ NCSystem แสดงให้ผู้ใช้กด download ได้?
- Receipt URL เป็น public หรือต้อง auth?

**ทำไมสำคัญ:** UX ของ UC-05 — ผู้ใช้คาดหวังจะ download ใบเสร็จได้จากในระบบ

**คำตอบ SA:**
```
[ รอตอบ — ถ้ามี URL ขอ sample และวิธีสร้าง link ]
```

---

### Q18. ProcessId Mapping Master (160 รายการ) — Source of truth อยู่ที่ไหน?

**สิ่งที่ต้องรู้:**
- Google Sheet tab "รหัสกระบวนงาน-ProcessId" มี ~160 รายการ
- ถ้า อย. แก้ไข/เพิ่ม — NCSystem รู้ยังไง?
- มี API master data หรือ manual sync?

**คำตอบ SA:**
```
[ รอตอบ — ระบุเจ้าของ source + cadence update ]
```

---

### Q19. Max FeeAmt / Min FeeAmt — มีขอบเขตไหม?

**สิ่งที่ต้องรู้:**
- ค่าธรรมเนียมขั้นต่ำ/สูงสุดที่ platba รับ (เช่น 1 บาท – 1,000,000 บาท)
- ทศนิยม (stang) รองรับกี่ตำแหน่ง (2 ตำแหน่ง?)

**คำตอบ SA:**
```
[ รอตอบ ]
```

---

### Q20. Refund / Cancel — Flow เป็นอย่างไร?

**สิ่งที่ต้องรู้:**
- ถ้าผู้ใช้ชำระไปแล้วแต่คำขอถูก reject — refund ที่ไหน?
- มี API ฝั่ง NCSystem ยิง cancel ได้ไหม? หรือทำผ่าน platba portal เท่านั้น?
- Callback บอกสถานะ Refunded ไหม?

**คำตอบ SA:**
```
[ รอตอบ ]
```

---

## ✅ ปิดแล้ว — เก็บไว้อ้างอิง

### [CLOSED] CQ-A. `FeeExpDate` Format?

- **คำตอบ (จาก PDF page 4 example):** ISO 8601 with timezone — `"2026-03-09T13:38:41.327Z"`
- **Source:** PDF sample data

### [CLOSED] CQ-B. `Org` ของกองวัตถุเสพติด?

- **คำตอบ:** `Org = 2`
- **Source:** Google Sheet tab "Org"

### [CLOSED] CQ-C. `FeeAcc` enum?

- **คำตอบ:** `1`=บัญชีกฎกระทรวง, `2`=บัญชีรายได้ อย.
- **Source:** Q&A Excel ข้อ 4, 13.1-13.2

### [CLOSED] CQ-D. Authentication ของ Create_Fee_List?

- **คำตอบ:** **ไม่มี** token / API Key / Auth header — เรียกตรงได้
- **Source:** Q&A Excel ข้อ 1, 9.1-9.5
- **⚠️ ขัดกับ PDF** (Q5 ใน open questions) — Q&A ใหม่กว่า ใช้ Q&A เป็น truth

### [CLOSED] CQ-E. API 1 vs API 2 URL?

- **คำตอบ:** API 1 = `Check_Regis_Fee` (optional), API 2 = `Create_Fee_List` (required) — PDF เขียนผิดที่ §1
- **Source:** Q&A Excel ข้อ 23.1

### [CLOSED] CQ-F. MasterRequisitionType / MasterLicenseType Ids?

- **คำตอบ:** ตรงกับ Dev_1 DB แล้ว (25/26 = N1 Temp, 31/32 = N4 Temp; LicType 21/22, 47/48) + note "ห้ามเลื่อน ID"
- **Source:** Google Sheet tabs

---

## ภาคผนวก — Priority Matrix สำหรับ SA

| Priority | จำนวน | ต้องได้คำตอบก่อน |
|---|---|---|
| 🔴 Critical | 4 (Q1-Q4) | เริ่มเขียน UC-04 callback |
| 🟡 Important | 8 (Q5-Q12) | E2E test |
| 🟢 Minor | 8 (Q13-Q20) | Phase 2 / polish |
| ✅ Closed | 6 (CQ-A…F) | — |

**แนะนำ:** ส่ง Q1-Q4 (🔴 Critical) ให้ SA **ก่อน** เพื่อ unblock UC-04 ส่วนที่เหลือรวบรวมส่งพร้อมกันในรอบ follow-up

---

## Template การบันทึกคำตอบ

เมื่อได้คำตอบจาก SA ให้เติมใต้ `[ รอตอบ ]` ตามรูปแบบนี้:

```
คำตอบ SA (YYYY-MM-DD, ผู้ตอบ: ชื่อ SA):
- คำตอบหลัก: ...
- เงื่อนไข/ข้อยกเว้น: ...
- Source: email / meeting / chat link
```

เมื่อคำถาม **ปิดสมบูรณ์** ให้ย้ายทั้งบล็อกไปที่ § ปิดแล้ว และเปลี่ยน header เป็น `[CLOSED]`
