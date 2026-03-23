# การวิเคราะห์และข้อสอบถาม: ระบบดึงข้อมูลกัญชา-กัญชง

---

<!-- > อ้างอิง: เอกสาร `9. การดึงข้อมูลระบบกัญชากัญชง.pdf`
> วันที่: 23/03/2568 -->

## แผน Implement

### Overview

ระบบนี้ให้ NCSystem สามารถดึงข้อมูลใบอนุญาตกัญชา (MRJN) และกัญชง (HEMP) จากระบบ อย. โดยใช้ **REST API** (Bearer Token) ต่างจากระบบ PAYMENT/AUTHEN ที่เป็น SOAP

**Base URL:** `https://horum.fda.moph.go.th/fda_nct_api`

---

### Flow การทำงาน

```
NCSystem                            FDA NCT API
   │                                      │
   │── POST /Auth/GetToken ──────────────>│
   │<── { access_token, expires_in } ────│
   │                                      │
   │── POST /FdaNctAPI/GetList_Mrjn ─────>│  (ค้นโดย identify = เลขนิติบุคคล)
   │<── { success, message, data[] } ────│
   │                                      │
   │── POST /FdaNctAPI/GetData_Mrjn ─────>│  (ค้นโดย lcnno = หมายเลขใบอนุญาต)
   │<── { success, message, data[] } ────│
   │                                      │
   │── POST /FdaNctAPI/GetList_Hemp ─────>│  (ค้นโดย identify = เลขนิติบุคคล)
   │<── { success, message, data[] } ────│
   │                                      │
   │── POST /FdaNctAPI/GetData_Hemp ─────>│  (ค้นโดย identify = เลขนิติบุคคล)
   │<── { success, message, data[] } ────│
```

---

### API ที่ต้อง Implement ใน NCSystem

| # | Endpoint | Method | Parameter | ใช้สำหรับ |
|---|----------|--------|-----------|-----------|
| 1 | `/Auth/GetToken` | POST | username, password | รับ access_token |
| 2 | `/FdaNctAPI/GetList_Mrjn` | POST | identify (เลขนิติบุคคล) | ดึงรายการใบอนุญาต**กัญชา** |
| 3 | `/FdaNctAPI/GetData_Mrjn` | POST | lcnno (หมายเลขใบอนุญาต) | ดึงรายละเอียดใบอนุญาต**กัญชา** |
| 4 | `/FdaNctAPI/GetList_Hemp` | POST | identify (เลขนิติบุคคล) | ดึงรายการใบอนุญาต**กัญชง** |
| 5 | `/FdaNctAPI/GetData_Hemp` | POST | identify (เลขนิติบุคคล) | ดึงรายละเอียดใบอนุญาต**กัญชง** |

---

### Response Fields (ทุก API ยกเว้น GetToken)

| Field | Type | คำอธิบาย |
|-------|------|-----------|
| success | Boolean | สถานะตอบกลับ |
| message | String | ข้อความตอบกลับ |
| data[].rcvno | Integer | หมายเลขรายการรับ |
| data[].BSN_THAIFULLNAME | String | ชื่อเจ้าของใบอนุญาต (ภาษาไทย) |
| data[].RCVNO_DISPLAY | String | หมายเลขรับ (แสดงผล) |
| data[].LOCATION_ADDRESS_thanameplace | String | ชื่อสถานที่ |
| data[].LCNNO_DISPLAY | String | หมายเลขใบอนุญาต (แสดงผล) |
| data[].ADDRESS_FULL | String | ที่อยู่แบบเต็ม |
| data[].LOCATION_ADDRESS_thathmblnm | String | ตำบล/แขวง |
| data[].LOCATION_ADDRESS_thaamphrnm | String | อำเภอ/เขต |
| data[].LOCATION_ADDRESS_thachngwtnm | String | จังหวัด |
| data[].LOCATION_ADDRESS_zipcode | String | รหัสไปรษณีย์ |
| data[].LCN_THAIFULLNAME | String | ชื่อประเภทใบอนุญาต (ภาษาไทย) |
| data[].LOCATION_ADDRESS_thaaddr | String | เลขที่ |
| data[].LOCATION_ADDRESS_tharoom | String | ห้อง |
| data[].LOCATION_ADDRESS_thafloor | String | ชั้น |
| data[].LOCATION_ADDRESS_thabuilding | String | อาคาร |
| data[].LOCATION_ADDRESS_thasoi | String | ซอย |
| data[].LOCATION_ADDRESS_tharoad | String | ถนน |
| data[].LOCATION_ADDRESS_thamu | String | หมู่ |
| data[].LOCATION_ADDRESS_tel | String | เบอร์โทรศัพท์ |
| data[].STATUS_NAME | String | สถานะใบอนุญาต |

---

### สิ่งที่ต้อง Implement ใน NCSystem

1. **Service Layer** — สร้าง `FdaNctService` หรือ `HempMrjnService` สำหรับเรียก API และ map response
2. **Token Management** — เก็บ `access_token` และ `expires_in` ใน cache เพื่อไม่ต้อง GetToken ทุก request
3. **Model** — สร้าง model รับ response (`FdaLicenseModel`, `FdaLicenseListModel`)
4. **Integration Point** — กำหนดว่าจะเรียก API นี้ตรงไหนของ Workflow (ตอน verify ใบอนุญาต หรือตอน submit คำขอ?)
5. **Config** — เก็บ username/password ใน appSettings / secret
6. **Error Handling** — จัดการกรณี `success = false`, network timeout, token หมดอายุ

---

## ข้อสอบถามก่อน Implement

---

### 1. Authentication / Token

| # | คำถาม |
|---|-------|
| 1.1 | **username / password** สำหรับเรียก `/Auth/GetToken` คือ credentials ชุดไหน? ต้องขอจาก อย. หรือมีให้แล้ว? |
| 1.2 | Token มีอายุ (`expires_in`) เท่าไหร่? ระบบตอบกลับเป็นหน่วยวินาที หรือนาที? |
| 1.3 | เมื่อ Token หมดอายุ ต้องขอใหม่โดยส่ง username/password อีกครั้งหรือมี endpoint `/Auth/RefreshToken`? |
| 1.4 | credentials ที่ใช้ใน Production กับ UAT เป็น account เดียวกันหรือแยก? |
| 1.5 | ถ้า Token ยังไม่หมดอายุแต่เรียก `/Auth/GetToken` ซ้ำ ระบบจะ return token เดิมหรือ token ใหม่? |

---

### 2. Credentials / Security

| # | คำถาม |
|---|-------|
| 2.1 | **IP Whitelist** — ต้องแจ้ง IP ของ Server NCSystem ให้ อย. whitelist ก่อนหรือไม่? |
| 2.2 | API นี้ต้องเรียกจาก Server-to-Server (backend) เท่านั้น หรือ frontend เรียกได้? |
| 2.3 | มี **Rate Limit** หรือไม่? (จำนวน request ต่อนาที/ชั่วโมง) |
| 2.4 | ถ้ามีหลาย instance ของ NCSystem (scale-out) ต้องใช้ credentials คนละชุดหรือใช้ร่วมกันได้? |

---

### 3. Environment

| # | คำถาม |
|---|-------|
| 3.1 | URL `https://horum.fda.moph.go.th/fda_nct_api` เป็น **Production** หรือ **UAT/Sandbox**? |
| 3.2 | มี **UAT/Sandbox** URL แยกสำหรับทดสอบหรือไม่? ถ้ามีคือ URL อะไร? |
| 3.3 | มี test credentials สำหรับใช้ทดสอบใน UAT ให้หรือไม่? |
| 3.4 | มีเอกสาร Swagger / Postman collection อย่างเป็นทางการจาก อย. หรือไม่? |

---

### 4. GetList_Mrjn และ GetList_Hemp (ค้นหาโดย identify)

| # | คำถาม |
|---|-------|
| 4.1 | **identify** ต้องเป็นเลขอะไรกัน? เลขทะเบียนนิติบุคคล 13 หลัก หรือเลขบัตรประชาชน 13 หลัก? |
| 4.2 | `identify` ของบุคคลธรรมดา (ผู้รับอนุญาตที่เป็นบุคคล ไม่ใช่นิติบุคคล) ต้องส่งค่าอะไร? |
| 4.3 | กรณีไม่พบข้อมูล (`data` เป็น array ว่าง) `success` จะเป็น `true` หรือ `false`? และ `message` คืออะไร? |
| 4.4 | API นี้ return ข้อมูลทุกสถานะใบอนุญาต (มีผล, หมดอายุ, ถูกเพิกถอน) หรือเฉพาะที่มีผลอยู่? |
| 4.5 | จำนวน record สูงสุดที่ return ต่อ 1 request มีหรือไม่? รองรับ pagination ไหม? |

---

### 5. GetData_Mrjn (ค้นหาโดย lcnno)

| # | คำถาม |
|---|-------|
| 5.1 | **lcnno** ต้องส่งเป็น format อะไร? ตัวอย่าง: `"NC-001/2568"` หรือรูปแบบอื่น? |
| 5.2 | ความแตกต่างระหว่าง `LCNNO_DISPLAY` (String ที่มี format) กับ `lcnno` ที่ใช้ค้นหา? ใช้ค่าเดียวกันได้หรือไม่? |
| 5.3 | กรณีส่ง lcnno ที่ไม่มีในระบบ response มี format อย่างไร? (`success = false` + message?) |

---

### 6. GetData_Hemp (ค้นหาโดย identify)

| # | คำถาม |
|---|-------|
| 6.1 | ทำไม `GetData_Hemp` ถึงใช้ `identify` เหมือน `GetList_Hemp`? ความแตกต่างของข้อมูลที่ได้รับคืออะไร? |
| 6.2 | `GetData_Hemp` กับ `GetList_Hemp` return ข้อมูลชุดเดียวกัน แต่ level of detail ต่างกันหรือไม่? |

---

### 7. Response Fields

| # | คำถาม |
|---|-------|
| 7.1 | **LOCATION_ADDRESS_thanameplace** มีค่าเป็น `null` ในกรณีใด? null หมายความว่าอะไร? |
| 7.2 | **ADDRESS_FULL** กับ **LOCATION_ADDRESS_*** fields ต่างกันอย่างไร? ใช้ชุดไหนในการแสดงผลที่อยู่? |
| 7.3 | **STATUS_NAME** มีค่าที่เป็นไปได้อะไรบ้าง? เช่น "มีผล", "หมดอายุ", "ถูกเพิกถอน"? |
| 7.4 | **RCVNO_DISPLAY** กับ **LCNNO_DISPLAY** ต่างกันอย่างไร? RCVNO คือเลขรับคำขอ ใช่ไหม? |
| 7.5 | **BSN_THAIFULLNAME** ในบางกรณีอาจไม่ใช่ชื่อเจ้าของใบอนุญาตแต่เป็นชื่อบริษัทหรือไม่? |
| 7.6 | Fields ทั้งหมดอาจเป็น `null` ได้ หรือบาง field รับประกันว่าจะมีค่าเสมอ? |

---

### 8. Integration กับ NCSystem

| # | คำถาม |
|---|-------|
| 8.1 | NCSystem จะเรียก API นี้ที่ **จุดไหน** ของ workflow? เช่น ตอน staff ค้นหาใบอนุญาต หรือตอน applicant submit คำขอ? |
| 8.2 | ข้อมูลที่ดึงมาจะ **save ลง Database** ของ NCSystem หรือแค่ query realtime แล้วแสดงผล? |
| 8.3 | ถ้า save ลง DB จะ sync ใหม่เมื่อไหร่? ทุก request หรือมี schedule batch? |
| 8.4 | กรณีที่ API ของ อย. **down** NCSystem จะ fallback อย่างไร? (block ทั้งกระบวนงาน หรือข้ามไปก่อน?) |
| 8.5 | ข้อมูล **กัญชา (MRJN)** กับ **กัญชง (HEMP)** ใน NCSystem เก็บใน Table เดียวกัน หรือแยก Table? |

---

### 9. Scope ของงาน

| # | คำถาม |
|---|-------|
| 9.1 | NCSystem ต้อง implement ทั้ง 5 API (GetToken + 4 data API) หรือมีบางอันที่ไม่ต้องใช้? |
| 9.2 | มีกำหนดเวลา (deadline) สำหรับงานนี้หรือไม่? |
| 9.3 | ต้องทดสอบ integration กับ อย. ในสภาพแวดล้อม UAT ก่อน go-live หรือไม่? |
| 9.4 | มีระบบอื่นของ อย. ที่ต้อง integrate เพิ่มในอนาคต (เช่น NCT สำหรับยาเสพติดประเภทอื่น)? |

---
