# FDA Payment Integration — คำถามที่ต้องได้คำตอบจาก SA

**Date:** 2026-04-24
**Purpose:** รวบรวมคำถามทั้งหมดที่ทีม Dev ต้องได้คำตอบก่อน (และระหว่าง) implement ระบบเชื่อมโยงการชำระเงิน อย.
**Audience:** SA + ทีม FDA Payment Gateway
**Related:**
- [FDA_PAYMENT_SPEC.md](FDA_PAYMENT_SPEC.md) — Q&A คำตอบจาก SA + Endpoints
- [Q&A Excel (Google Sheet)](https://docs.google.com/spreadsheets/d/1uQdXR8ZykieIk_3_9ROyfw2KRVDJof74iEO2S5ZaCeo) — ข้อสอบถามการเชื่อมโยงระบบชำระเงิน
- [Bruno Collection](../../../brain_NCSYSTEM/FDA_WS/FDA%20PAYMENT%20-%20WS_PAYMENT_FDA/) — ไฟล์ .bru สำหรับทดสอบ API
- `zProject_Story/ch30_fda_payment_integration_discovery.md` — Discovery story

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
คำตอบ SA (2026-03-29, ผู้ตอบ: SA_C):
- คำตอบหลัก: ระบบ NCSystem ต้องทำ API รับผลการชำระเงินเอง และทำงานต่อเอง
- คำตอบหลัก: FDA จะยิง callback กลับมาที่ NCSystem (ไม่ใช่ NCSystem pull)
- Source: Q&A Excel ข้อ 23.4
```

**คำถามที่ยังต้องถาม SA:**
- [ ] NCSystem ส่ง callback URL ให้ FDA ตอนไหน — ผ่าน field ใน `Create_Fee_List` body หรือลงทะเบียนล่วงหน้าแบบ static ต่อ Org?
- [ ] FDA ยิง callback มาเป็น POST JSON หรือรูปแบบอื่น?
- [ ] callback URL ต้องอยู่บน public internet หรือ FDA มี VPN/private network เข้ามา?

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
คำตอบ SA (2026-03-29, ผู้ตอบ: SA_C):
- คำตอบหลัก: FDA ยิง callback กลับมา โดย NCSystem ต้องทำ API รับ
- คำตอบหลัก: FeeRefIda = ID ของ Requisition ในระบบ NCSystem → ใช้ match กลับหา record ที่ต้องอัปเดต
- Source: Q&A Excel ข้อ 23.4-23.5, 16.3
```

**คำถามที่ยังต้องถาม SA:**
- [ ] ขอ sample callback payload จริง 1-2 รายการ (JSON? XML? form-urlencoded?)
- [ ] field ทั้งหมดที่ FDA ส่งมาใน callback body มีอะไรบ้าง? โดยเฉพาะ status field ชื่ออะไร และมีค่าอะไรบ้าง?
- [ ] มี HMAC/signature header ไหม เช่น `X-FDA-Signature`?

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
คำตอบ SA (2026-03-29, ผู้ตอบ: SA_C):
- คำตอบหลัก: NCSystem ไม่ต้อง whitelist IP เพื่อเรียก FDA API (ฝั่ง outbound)
- คำตอบหลัก: ไม่ต้อง mTLS ฝั่ง NCSystem เรียก FDA
- เงื่อนไข/ข้อยกเว้น: ยังไม่ชัดเจนว่า FDA ยืนยันตัวเองตอนยิง callback กลับมาอย่างไร
- Source: Q&A Excel ข้อ 25.1-25.2
```

**คำถามที่ยังต้องถาม SA:**
- [ ] FDA จะยิง callback มาจาก IP range อะไร? NCSystem ต้อง whitelist ไหม?
- [ ] FDA ส่ง auth header / signature อะไรมาใน callback request ไหม (เพื่อ NCSystem จะได้ verify ว่าเป็น FDA จริง)?
- [ ] ถ้าไม่มีอะไรเลย — แนวทางที่ FDA แนะนำเพื่อป้องกัน fake callback คืออะไร?

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
คำตอบ SA (2026-03-29, ผู้ตอบ: SA_C):
- คำตอบหลัก: URL https://platba.fda.moph.go.th เป็น Production
- คำตอบหลัก: ไม่มี UAT/Sandbox แยก
- คำตอบหลัก: ไม่มี test credentials
- Source: Q&A Excel ข้อ 22.1-22.3
```

**คำถามที่ยังต้องถาม SA:**
- [ ] เมื่อ test บน Production แล้วต้องการลบ test rows ออก — ขั้นตอนที่ถูกต้องคืออะไร? ติดต่อใคร?
- [ ] มีวิธีทำให้ FDA รู้ว่า row ไหนเป็น test data (เช่น prefix ProcessId ด้วย `TEST_`) ไหม?

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
คำตอบ SA (2026-03-29, ผู้ตอบ: SA_C):
- คำตอบหลัก: ไม่มี token — ไม่ต้องส่ง field นี้
- เงื่อนไข/ข้อยกเว้น: Q&A ใหม่กว่า PDF คู่มือ → ใช้ Q&A เป็น source of truth (เหมือน CQ-D ที่ปิดแล้ว)
- Source: Q&A Excel ข้อ 1, 9.1-9.5
→ ปิด: ไม่ต้องส่ง token field
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

**คำถามที่ยังต้องถาม SA:**
- [ ] FDA retry callback กี่ครั้งถ้า NCSystem ไม่ตอบหรือตอบ 5xx?
- [ ] ถ้า retry หมดแล้ว — ใครรับผิดชอบ reconcile และทำอย่างไร?

---

### Q7. Query Status API — FDA เปิดให้ NCSystem pull สถานะได้ไหม?

**สิ่งที่ต้องรู้:**
- Q&A Excel ข้อ 8 บอก "ไม่มี API ตรวจสอบสถานะ" — แน่ใจหรือไม่?
- ถ้าจำเป็น (กรณี callback หาย) จะเปิด endpoint ให้ในอนาคตไหม?

**ทำไมสำคัญ:** ถ้ามี = UC-06 reconcile ทำ automated ได้; ถ้าไม่มี = ต้อง manual เท่านั้น

**ผลกระทบถ้าไม่รู้:** วาง architecture reconcile ลำบาก

**คำตอบ SA:**
```
คำตอบ SA (2026-03-29, ผู้ตอบ: SA_C):
- คำตอบหลัก: ไม่มี API ตรวจสอบสถานะ
- คำตอบหลัก: FeeUnique ใช้อ้างอิง transaction เท่านั้น ไม่สามารถเรียก API อื่นด้วย FeeUnique ได้
- Source: Q&A Excel ข้อ 8, 24.2
→ ปิด: ไม่มี pull-based status check — ต้องใช้ callback อย่างเดียว หรือ manual reconcile
```

**คำถามที่ยังต้องถาม SA:**
- [ ] ถ้า callback หาย และไม่มี Query Status API — กระบวนการ manual reconcile ที่ถูกต้องคืออะไร? ติดต่อใคร?

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

**ผลทดสอบจริง (2026-04-26):**
```
- ยิง FeeRefStatus=999 (ค่าที่ไม่น่ามีใน enum) → ได้ 300 เหมือนเดิม
- API ไม่ reject ค่าที่ invalid → แสดงว่า validation ไม่เกิดที่ field นี้
  หรือ check เกิดหลัง ProcessId lookup (ซึ่ง fail ก่อน)
- ยังต้องถาม SA เพื่อรู้ semantic ที่ถูกต้อง
```

**คำถามที่ยังต้องถาม SA:**
- [ ] `FeeRefStatus` enum มีค่าอะไรบ้าง และแต่ละค่าหมายความว่าอะไร? ตอน Create_Fee_List ใหม่ควรส่งค่าอะไร?

---

### Q9. `FeeResult` 300 vs 400 — ต่างกันอย่างไร?

**สิ่งที่ต้องรู้:**
- PDF บอก 200=Success, 300=Error, 400=Error
- ทั้ง 300 และ 400 เป็น error แต่**ต่างกันอย่างไร**? (client error vs server error? retryable vs non-retryable?)

**ทำไมสำคัญ:** error handling ต่างกัน — ตัวหนึ่งควร retry ตัวหนึ่งไม่ควร

**ผลกระทบถ้าไม่รู้:** Retry logic ทำไม่ถูก → อาจ spam API หรือ fail เงียบ

**คำตอบ SA:**
```
คำตอบ SA (2026-03-29, ผู้ตอบ: SA_C):
- คำตอบหลัก: 300, 400 เป็นแค่รหัสสถานะ ไม่มีความหมาย retryable/non-retryable ชัดเจน
- คำตอบหลัก: มี 404 เพิ่มเติม = ไม่พบ transaction
- คำตอบหลัก: FeeErrorMsg เป็นข้อความธรรมดา ไม่มี error code มาตรฐาน
- Source: Q&A Excel ข้อ 21.1-21.3
```

**ผลทดสอบจริง (2026-04-26):**
```
สิ่งที่ค้นพบจากการยิง API โดยตรง:
- HTTP transport layer ตอบ 200 OK เสมอ (แม้ business logic fail)
- FeeResult ใน response body คือ "Error" (string) ไม่ใช่ตัวเลข — FeeCode เป็น "300" (string)
- 300 = business rule error หลัง ProcessId lookup — เกิดจาก ProcessId ไม่ได้ลงทะเบียน
- ไม่สามารถ trigger 400 ได้โดยส่ง missing/invalid fields — API deserialize แบบ lenient
  (body ว่าง, Org=0, FeeSubCode="99", FeeAmt=-1, FeeRefStatus=999 ล้วนได้ 300 เหมือนกัน)
- แสดงว่า 400 อาจเกิดเฉพาะ business case อื่น ไม่ใช่ field validation
- Malformed JSON → ASP.NET MVC unhandled exception (HTML error page, ไม่ใช่ JSON)
- GET method → HTTP 404 (route ไม่รองรับ GET)
```

**คำถามที่ยังต้องถาม SA:**
- [ ] FeeCode 400 เกิดในกรณีใดบ้าง? (ทดสอบแล้วไม่สามารถ trigger ด้วย invalid input ได้)

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
คำตอบ SA (2026-03-29, ผู้ตอบ: SA_C):
- คำตอบหลัก: รายการ FeeSubCode ที่ใช้ได้ (8 รายการ): 0,1,2,3,4,5,6,12
- คำตอบหลัก: 07-11 ไม่มีในรายการ → list นี้คือ master ที่ถูกต้อง
- เงื่อนไข/ข้อยกเว้น: ใน SPEC.md ลำดับคือ 0,1,2,3,4,6,5,12 (5 กับ 6 สลับกัน — ระวัง)
- Source: Q&A Excel ข้อ 3 + FeeSubCode table
```

**คำถามที่ยังต้องถาม SA:**
- [ ] กองวัตถุเสพติด (Org=2) ควรแสดง FeeSubCode ทั้ง 8 ค่าให้ผู้ใช้เลือก หรือกรอง subset ตามประเภทคำขอ? เงื่อนไขการเลือกแต่ละค่าเป็นอย่างไร?

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
[ รอตอบ ]
```

**คำถามที่ยังต้องถาม SA:**
- [ ] หลัง callback Paid เข้ามา Requisition.Status ควรเปลี่ยนเป็นค่าอะไร? (เป็น status code ใหม่หรือใช้ค่าที่มีอยู่แล้ว?)
- [ ] Flow นี้ใช้ค่า status เดียวกันทุกฟอร์ม หรือแต่ละฟอร์มมี post-payment status ต่างกัน?
- [ ] การชำระเงินเกิดขึ้น **ก่อน** หรือ **หลัง** L1 Review? (กระทบว่า status transition เกิดที่ step ไหน)

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

**คำถามที่ยังต้องถาม SA:**
- [ ] FDA retry callback ไหม? ถ้าใช่ — จะยิง callback เดิมซ้ำกี่ครั้ง?
- [ ] field ที่ใช้เป็น idempotency key ใน callback payload คืออะไร? (`FeeUnique`?)

---

## 🟢 Minor — ตอบช้าได้ แต่ควรเก็บไว้ใน backlog

### Q13. `FeePvncd` (รหัสจังหวัด) — ใช้ของผู้ขอ vs สำนักงาน?

**สิ่งที่ต้องรู้:**
- Q&A ข้อ 15.2 ตอบคลุม "ยึดตามโครงการเรียกเก็บค่าธรรมเนียม" — ยังไม่ชัด
- กรณีผู้ขออยู่เชียงใหม่ แต่สำนักงานรับผิดชอบอยู่ อย.กทม. — `FeePvncd = 50 (เชียงใหม่)` หรือ `10 (กทม.)` ?

**คำตอบ SA:**
```
[ รอตอบ ]
```

**คำถามที่ยังต้องถาม SA:**
- [ ] สำหรับคำขอกองวัตถุเสพติด (Org=2) กรณี default — `FeePvncd` ควรใช้จังหวัดของ **สถานประกอบการผู้ขอ** หรือ **สำนักงาน อย. ที่รับผิดชอบ (กทม.=10)**?

---

### Q14. `FeeExpDate` — ใครกำหนด + ระยะเวลาเท่าไร?

**สิ่งที่ต้องรู้:**
- Q&A ข้อ 14.1 บอก "แล้วแต่การลงทะเบียน"
- NCSystem ส่งเอง (เช่น current + 7 วัน)?
- หรือ platba override ให้?
- มี max limit ไหม (ไม่เกิน 30 วัน?)
- Q&A ข้อ 14.2: ครบ FeeExpDate แล้ว ชำระไม่ได้ — แต่สร้างใหม่ได้ไหม?

**คำตอบ SA:**
```
คำตอบ SA (2026-03-29, ผู้ตอบ: SA_C):
- คำตอบหลัก: "แล้วแต่การลงทะเบียน" = NCSystem เป็นคนกำหนดส่งไป
- คำตอบหลัก: ครบ FeeExpDate แล้วผู้ใช้ชำระไม่ได้
- เงื่อนไข/ข้อยกเว้น: Format ตามรูปแบบวันที่ปกติ (ดู CQ-A: ISO 8601 "2026-03-09T13:38:41.327Z")
- Source: Q&A Excel ข้อ 14.1-14.3
```

**คำถามที่ยังต้องถาม SA:**
- [ ] "แล้วแต่การลงทะเบียน" หมายความว่า SA ต้องกำหนด policy ให้ NCSystem — กองวัตถุเสพติดใช้กี่วัน?
- [ ] ถ้า FeeExpDate หมดแล้ว NCSystem สร้าง Create_Fee_List ใหม่สำหรับคำขอเดิมได้ไหม? (ProcessId ซ้ำได้ตาม Q&A 11.5)

---

### Q15. `IsGroup=1` ใช้ scenario ไหนใน Narcotic forms?

**สิ่งที่ต้องรู้:**
- Biz sheet `1B366...` column "ขั้นตอนการเก็บเงิน" ทุก row = "**แยก**" → แปลว่าใช้ `IsGroup=0` หมด
- มี scenario ไหนที่ 1 คำขอมีหลายรายการต้องรวมเป็น bill เดียว? (Future use case?)

**ทำไมสำคัญ:** ถ้า **ไม่มี** ใน short-term → implement เฉพาะ `IsGroup=0` ก่อน (ลด complexity)

**คำตอบ SA:**
```
คำตอบ SA (2026-03-29, ผู้ตอบ: SA_C):
- คำตอบหลัก: IsGroup=0 = ไม่ออกใบสั่งแบบกลุ่ม
- คำตอบหลัก: IsGroup=1 = รวมหลายรายการในบิลเดียว (ต้องมี FeeDetail ≥ 2 รายการ)
- เงื่อนไข/ข้อยกเว้น: "แล้วแต่กรณี" — ไม่ระบุ default
- Source: Q&A Excel ข้อ 17.1-17.6
```

**คำถามที่ยังต้องถาม SA:**
- [ ] กองวัตถุเสพติด Phase 1 — confirm ได้ไหมว่าใช้ `IsGroup=0` ทั้งหมด? มี form ไหนที่ต้องการ IsGroup=1?

---

### Q16. `ProcessId` Format — ใช้ `RequestNo + prefix` ได้ไหม?

**สิ่งที่ต้องรู้:**
- Q&A ข้อ 11 บอก ProcessId ต้อง unique **ทั่วระบบ FDA** (ไม่ใช่แค่ Org)
- NCSystem กำหนด format เป็น `NC_{RequestNo}_{timestamp}` ได้ไหม? จะชนกับ Org อื่นหรือเปล่า?

**คำตอบ SA:**
```
คำตอบ SA (2026-03-29, ผู้ตอบ: SA_C):
- คำตอบหลัก: ProcessId = รหัสกระบวนการหลักตามหน่วยงานกำหนด กำหนดแล้วส่งให้ IT เพื่อใช้เพิ่มในระบบ
- คำตอบหลัก: ต้อง unique ทั้งระบบ FDA
- คำตอบหลัก: ส่งซ้ำได้ (เป็นแค่การลงรายการรอชำระ)
- คำตอบหลัก: ProcessSubId กำหนดเองได้ถ้ามี
- Source: Q&A Excel ข้อ 11.1-11.5
```

**คำถามที่ยังต้องถาม SA:**
- [ ] ProcessId ที่ IT กำหนดสำหรับกองวัตถุเสพติด (Org=2) มี list อยู่ที่ไหน? (Q&A บอกว่า "กำหนดแล้วส่งให้ IT" — ต้องขอ list นั้น)
- [ ] ความยาว max ของ ProcessId คือกี่ตัวอักษร?

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

**คำถามที่ยังต้องถาม SA:**
- [ ] หลังชำระสำเร็จ — platba สร้างใบเสร็จให้ผู้ใช้ download ได้ไหม? ถ้าได้ NCSystem แสดง link อย่างไร?

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

**คำถามที่ยังต้องถาม SA:**
- [ ] ProcessId list ที่กองวัตถุเสพติดใช้ (จาก Google Sheet ~160 รายการ) — NCSystem ต้อง seed ใน DB หรือ hardcode? ถ้า อย. เพิ่ม/แก้ไข NCSystem รู้ได้อย่างไร?

---

### Q19. Max FeeAmt / Min FeeAmt — มีขอบเขตไหม?

**สิ่งที่ต้องรู้:**
- ค่าธรรมเนียมขั้นต่ำ/สูงสุดที่ platba รับ (เช่น 1 บาท – 1,000,000 บาท)
- ทศนิยม (stang) รองรับกี่ตำแหน่ง (2 ตำแหน่ง?)

**คำตอบ SA:**
```
[ รอตอบ ]
```

**คำถามที่ยังต้องถาม SA:**
- [ ] FeeAmt — platba มี min/max ที่ยอมรับไหม? รองรับทศนิยมกี่ตำแหน่ง (สตางค์)?

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

**คำถามที่ยังต้องถาม SA:**
- [ ] กรณี Requisition ถูก reject หลังชำระแล้ว — กระบวนการ refund ทำผ่านใคร? NCSystem มี API cancel ได้ไหม?
- [ ] FDA ส่ง callback สถานะ Refunded/Cancelled กลับมาด้วยไหม?

---

## 🔬 ผลทดสอบ Live API — Infrastructure Facts (2026-04-26)

สรุปสิ่งที่ค้นพบจากการยิง API จริงโดยไม่ต้อง ProcessId จาก FDA:

| สิ่งที่ค้นพบ | รายละเอียด | ผลกระทบต่อ Dev |
|---|---|---|
| HTTP transport = 200 เสมอ | แม้ business logic fail → response body FeeResult="Error" | NCSystem ต้อง check `FeeResult` ใน body ไม่ใช่ HTTP status |
| FeeCode = string "300" | ไม่ใช่ integer — `"FeeCode":"300"` | DTO field ต้องเป็น `string` ไม่ใช่ `int` |
| FeeResult = string "Error"/"200" | ไม่ใช่ numeric code | DTO field เป็น `string` |
| Response มี extra fields | `FeeIda`, `FeeNo`, `FeePath` อยู่ใน response แต่ไม่อยู่ใน PDF | ต้อง map ใน DTO ด้วย (อาจใช้ตอน success) |
| Validation lenient มาก | body ว่าง, Org=0, FeeRefStatus=999, FeeSubCode="99" → ได้ 300 เหมือนกัน | API check ProcessId ก่อน validate fields อื่น — validation เกิดทีหลัง |
| Malformed JSON → HTML exception | ASP.NET ไม่มี global error handler → stack trace รั่ว | NCSystem ต้องส่ง valid JSON เท่านั้น; อย่า log HTML response เป็น error |
| Stack: ASP.NET MVC 5.2 / .NET 4.7 | เปิดเผยใน error page + headers | ข้อมูล security: `customErrors mode="Off"` บน prod — แจ้ง FDA ถ้าต้องการ |
| CORS: `Access-Control-Allow-Origin: *` | ทุก origin เข้าได้ | เรียกจาก browser ได้โดยตรง (แต่ควรเรียกผ่าน backend เพื่อ security) |
| Response time ~90ms | ค่อนข้างเร็ว | ไม่ต้องกังวลเรื่อง timeout สำหรับ normal call |
| Set-Cookie: `cookiesession1` | FDA set session cookie | NCSystem backend ไม่ต้องสนใจ cookie นี้ |
| token field = ignored | ยิงทั้งมีและไม่มี → response เหมือนกัน | ยืนยัน: ไม่ต้องส่ง token |

---

## ✅ ปิดแล้ว — เก็บไว้อ้างอิง

### [CLOSED] Q5. `token` ใน Create_Fee_List

- **คำตอบ (จาก Q&A ข้อ 1, 9.1-9.5, 29-03-2569):** ไม่มี token — ไม่ต้องส่ง field นี้เลย
- **⚠️ ขัดกับ PDF คู่มือ** (PDF ระบุ Required=Y) — Q&A ใหม่กว่า ใช้ Q&A เป็น truth
- **ยืนยันจากทดสอบจริง (2026-04-26):** ยิงทั้งแบบมี `"token":"fake_token_value"` และไม่มี field นี้ → ได้ response เหมือนกันทุกประการ = API ไม่ validate token เลย
- **Source:** Q&A Excel ข้อ 1, 9.1-9.5 + live test

---

### [CLOSED] Q7. Query Status API

- **คำตอบ (จาก Q&A ข้อ 8, 24.2, 29-03-2569):** ไม่มี API ตรวจสอบสถานะ, FeeUnique ใช้อ้างอิงเท่านั้น
- **ผลกระทบ:** ต้องใช้ callback อย่างเดียว — reconcile ต้อง manual
- **Source:** Q&A Excel ข้อ 8, 24.2

---

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

| Priority | จำนวน | ต้องได้คำตอบก่อน | สถานะ |
|---|---|---|---|
| 🔴 Critical | 4 (Q1-Q4) | เริ่มเขียน UC-04 callback | มีคำตอบบางส่วน — ยังมีคำถาม follow-up |
| 🟡 Important | 6 (Q6,Q8-Q12) | E2E test | รอตอบ |
| 🟢 Minor | 8 (Q13-Q20) | Phase 2 / polish | รอตอบ |
| ✅ Closed | 8 (Q5,Q7,CQ-A…F) | — | ปิดแล้ว |

**สถานะ 2026-04-26:** Q5 และ Q7 ปิดแล้ว (ยืนยันจาก Q&A Excel 29-03-2569) — Q1-Q4 มีคำตอบบางส่วนแต่ยังต้องถาม follow-up เรื่อง callback mechanics

**แนะนำ:** ส่ง follow-up questions ใต้ Q1-Q4 ให้ SA **ก่อน** เพื่อ unblock UC-04 callback implementation

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
