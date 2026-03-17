# SA Spec Overview — การวิเคราะห์ Controller / API / Form Variants

> วิเคราะห์จาก Source Code ใน `D:\GIT\NCSystem` อ้างอิงจาก Sheet **Overview** ของไฟล์  
> `brain_NCSYSTEM\Spec\SA_Spec_Template_v2_rev1.1_AI.xlsx`  
> อัพเดทข้อมูลลงไฟล์ Excel เรียบร้อยแล้ว (52 rows)

---

## ข้อมูล Column Header (Row 4)
| Col | ชื่อ Column |
|-----|------------|
| 1 | # |
| 2 | รหัส |
| 3 | ชื่อคำขอ |
| 4 | กลุ่ม |
| 5 | Steps |
| 6 | Sheet |
| 7 | Condition Doc Link |
| 8 | RequisitionTypeId |
| 9 | NarcoticTypeId |
| **10** | **Controller (MVC)** |
| **11** | **API Endpoint** |
| **12** | **Form Variants** |

---

## สรุปการ Mapping: Controller / API / Form Variants

### 🟢 ยาเสพติดประเภท 1 (ยส.1)

| # | รหัส | Controller (MVC) | API Endpoint | Form Variants |
|---|------|-----------------|--------------|---------------|
| 1 | ยส.1-1 | [Narcotic1RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic1RequestController.cs#47-73) | `POST /Narcotic1Request/SubmitNarcotic1_1AllRequest` | Narcotic1_1AllRequest, Narcotic1Continously, Narcotic1AddType, Narcotic1AddQuantity |
| 25 | IMP-N1-1 | [Narcotic1RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic1RequestController.cs#47-73) | `POST /Narcotic1Request/SubmitNarcotic1_1AllRequest` | Narcotic1_1AllRequest (นำเข้าเฉพาะคราว) |
| 26 | EXP-N1-1 | [Narcotic1RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic1RequestController.cs#47-73) | `POST /Narcotic1Request/SubmitNarcotic1_1AllRequest` | Narcotic1_1AllRequest (ส่งออกเฉพาะคราว) |

### 🟢 วัตถุออกฤทธิ์ประเภท 1 (วจ.1)

| # | รหัส | Controller (MVC) | API Endpoint | Form Variants |
|---|------|-----------------|--------------|---------------|
| 2 | ว.จ. 1-1 | [Psychotropic1RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic1RequestController.cs#27-267) | `POST /Psychotropic1Request/SubmitPsychotropic1_AllRequest` | Psychotropic1AllRequest, Psychotropic1_2Import, Psychotropic1_3Export |
| 37 | IMP-P1-1 | [Psychotropic1RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic1RequestController.cs#27-267) | `POST /Psychotropic1Request/SubmitPsychotropic1_AllRequest` | Psychotropic1_2Import (นำเข้าเฉพาะคราว วจ1) |
| 38 | EXP-P1-1 | [Psychotropic1RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic1RequestController.cs#27-267) | `POST /Psychotropic1Request/SubmitPsychotropic1_AllRequest` | Psychotropic1_3Export (ส่งออกเฉพาะคราว วจ1) |

### 🟡 ยาเสพติดประเภท 2 / วัตถุออกฤทธิ์ประเภท 2 (ยส.2 / วจ.2)

| # | รหัส | Controller (MVC) | API Endpoint | Form Variants |
|---|------|-----------------|--------------|---------------|
| 3 | ผนส. ยส.2/วจ.2 | [Narcotic2RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic2RequestController.cs#24-82) | `POST /api/narcotic2/requisition` | Narcotic2_1ManufactureImportExport |
| 4 | จ.ย.ส. 2-1/ว.จ. 2-1 | [Narcotic2RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic2RequestController.cs#24-82) | `POST /api/narcotic2/requisition` | Narcotic2_2Sale |
| 5 | จก.ย.ส. 2-1 | [Narcotic2RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic2RequestController.cs#24-82) | `POST /api/narcotic2/requisition` | Narcotic2_3OverSale |
| 6 | คค.1-1 | [PossessionRequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/PossessionRequestController.cs#27-313) | `POST /api/narcoticPossession/requisition` | Possession2_3_4, Possession2Excessive |
| 7 | คก.ย.ส. 2-1 | [PossessionRequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/PossessionRequestController.cs#27-313) | `POST /api/narcoticPossession/requisition` | Possession2Excessive |
| 27 | IMP-N2-1 | [Narcotic2RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic2RequestController.cs#24-82) | `POST /api/narcotic2/requisition` | Narcotic2_4Import |
| 28 | EXP-N2-1 | [Narcotic2RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic2RequestController.cs#24-82) | `POST /api/narcotic2/requisition` | Narcotic2_5Export |
| 39 | IMP-P2-1 | [Narcotic2RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic2RequestController.cs#24-82) | `POST /api/narcotic2/requisition` | Narcotic2_4Import (วจ2) |
| 40 | EXP-P2-1 | [Narcotic2RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic2RequestController.cs#24-82) | `POST /api/narcotic2/requisition` | Narcotic2_5Export (วจ2) |

### 🔵 ยาเสพติดประเภท 3 (ยส.3)

| # | รหัส | Controller (MVC) | API Endpoint | Form Variants |
|---|------|-----------------|--------------|---------------|
| 8 | ผ.ย.ส 3-1 | [Narcotic3RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic3RequestController.cs#34-750) | `POST /Narcotic3Request/SubmitNarcotic3Request` `POST /api/narcotic3/requisition` | Narcotic3_1, Narcotic3_3Manufacture, Narcotic3_4Manufacture |
| 9 | น.ย.ส 3-1 | [Narcotic3RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic3RequestController.cs#34-750) | `POST /Narcotic3Request/SubmitNarcotic3Request` `POST /api/narcotic3/requisition` | Narcotic3_2, Narcotic3_3Import, Narcotic3_4Import |
| 10 | ส.ย.ส. 3-1 | [Narcotic3RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic3RequestController.cs#34-750) | `POST /Narcotic3Request/SubmitNarcotic3Request` | Narcotic3_2 (ส่งออก) |
| 11 | จ.ย.ส. 3-1 | [Narcotic3RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic3RequestController.cs#34-750) | `POST /Narcotic3Request/SubmitNarcotic3Request` | Narcotic3_3Sale, Narcotic3_4_1, Narcotic3_4Wholesale, NarcoticChooseProvince |
| 12 | ย.ส. 3 (ก) | [Narcotic3RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic3RequestController.cs#34-750) | `POST /Narcotic3Request/SubmitNarcotic3Request` | Narcotic3_5, Narcotic3_6, Narcotic3_7, Narcotic3_8, Narcotic3_9 |
| 29 | IMP-N3-1 | [Narcotic3RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic3RequestController.cs#34-750) | `POST /Narcotic3Request/SubmitNarcotic3Request` | Narcotic3_3Import (นำเข้าเฉพาะคราว) |
| 30 | EXP-N3-1 | [Narcotic3RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic3RequestController.cs#34-750) | `POST /Narcotic3Request/SubmitNarcotic3Request` | (ส่งออกเฉพาะคราว) |

### 🔵 วัตถุออกฤทธิ์ประเภท 3/4 (วจ.3/วจ.4)

| # | รหัส | Controller (MVC) | API Endpoint | Form Variants |
|---|------|-----------------|--------------|---------------|
| 13 | ผ.ว.จ. 3/4-1 | [Psychotropic3RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic3RequestController.cs#31-45) / [Psychotropic4RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic4RequestController.cs#39-53) | `POST /Psychotropic3Request/SubmitPsychotropic3` `POST /api/psychotropic3_4/create` | Psychotropic3Manufacture, Psychotropic4Manufacture |
| 14 | น.ว.จ. 3/4-1 | [Psychotropic3RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic3RequestController.cs#31-45) / [Psychotropic4RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic4RequestController.cs#39-53) | `POST /Psychotropic3Request/SubmitPsychotropic3Import` `POST /api/psychotropic3_4/create` | Psychotropic3Import, Psychotropic4Import |
| 15 | ส.ว.จ. 3/4-1 | [Psychotropic3RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic3RequestController.cs#31-45) / [Psychotropic4RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic4RequestController.cs#39-53) | `POST /Psychotropic3Request/SubmitPsychotropic3Export` `POST /api/psychotropic3_4/create` | Psychotropic3Export, Psychotropic3_2Export, Psychotropic3_3Export, Psychotropic4Export, Psychotropic4_2Export, Psychotropic4_3Export |
| 16 | ข.ว.จ. 3/4-1 | [Psychotropic3RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic3RequestController.cs#31-45) / [Psychotropic4RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic4RequestController.cs#39-53) | `POST /Psychotropic3Request/SubmitPsychotropic3Sale` | Psychotropic3Sale, Psychotropic3_1/2/3Wholesale, Psychotropic4Sale, Psychotropic4_1/2Wholesale |
| 17 | ว.จ. 3/4 (ก) | [Psychotropic3RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic3RequestController.cs#31-45) / [Psychotropic4RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic4RequestController.cs#39-53) | `POST /Psychotropic4Request/SubmitPsychotropic4Request` | Psychotropic3_4Edit |
| 18 | ว.จ. 3/4 (ร) | [Psychotropic3RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic3RequestController.cs#31-45) / [Psychotropic4RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic4RequestController.cs#39-53) | (ส่วนหนึ่งของ Submit วจ3/4) | Psychotropic3_4Guarantee |
| 41 | IMP-P3-1 | [Psychotropic3RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic3RequestController.cs#31-45) | `POST /Psychotropic3Request/SubmitPsychotropic3Import` | Psychotropic3Import (วจ3) |
| 42 | EXP-P3-1 | [Psychotropic3RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic3RequestController.cs#31-45) | `POST /Psychotropic3Request/SubmitPsychotropic3Export` | Psychotropic3Export (วจ3) |
| 43 | IMP-P4-1 | [Psychotropic4RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic4RequestController.cs#39-53) | `POST /Psychotropic4Request/SubmitPsychotropic4Import` | Psychotropic4Import (วจ4) |
| 44 | EXP-P4-1 | [Psychotropic4RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Psychotropic4RequestController.cs#39-53) | `POST /Psychotropic4Request/SubmitPsychotropic4Export` | Psychotropic4Export (วจ4) |

### 🟠 ยาเสพติดประเภท 4 (ยส.4)

| # | รหัส | Controller (MVC) | API Endpoint | Form Variants |
|---|------|-----------------|--------------|---------------|
| 19 | ยส.4-1 | [Narcotic4RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic4RequestController.cs#34-463) | `POST /Narcotic4Request/SubmitNarcotic4_1AllRequest` `POST /Narcotic4Request/SubmitAddType` | Narcotic4_1AllRequest, Narcotic4Continously, Narcotic4AddType, Narcotic4AddQuantity, Narcotic4_2Import, Narcotic4_3Export, Narcotic4_Edit |
| 31 | IMP-N4-1 | [Narcotic4RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic4RequestController.cs#34-463) | `POST /Narcotic4Request/SubmitNarcotic4_1AllRequest` | Narcotic4_2Import (นำเข้าเฉพาะคราว) |
| 32 | EXP-N4-1 | [Narcotic4RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic4RequestController.cs#34-463) | `POST /Narcotic4Request/SubmitNarcotic4_1AllRequest` | Narcotic4_3Export (ส่งออกเฉพาะคราว) |

### 🟠 ยาเสพติดประเภท 5 (ยส.5 / กัญชา-กัญชง)

| # | รหัส | Controller (MVC) | API Endpoint | Form Variants |
|---|------|-----------------|--------------|---------------|
| 20 | ยส.5 | [Narcotic5RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic5RequestController.cs#26-311) | `POST /Narcotic5Request/Submit` `POST /api/narcotic5/requisition` `POST /api/narcotic5/requisition-draft` | Narcotic5_1AllRequest, Narcotic5ImportRequest, Narcotic5ImportOrExportRequest, Narcotic5ImportOrExportHempRequest |
| 33 | IMP-N5-1 | [Narcotic5RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic5RequestController.cs#26-311) | `POST /api/narcotic5/requisition` | Narcotic5ImportOrExportRequest (นำเข้าเฉพาะคราว) |
| 34 | EXP-N5-1 | [Narcotic5RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic5RequestController.cs#26-311) | `POST /api/narcotic5/requisition` | Narcotic5ImportOrExportRequest (ส่งออกเฉพาะคราว) |
| 35 | NAR.5 | [Narcotic5RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic5RequestController.cs#26-311) | `POST /api/narcotic5/requisition` | Narcotic5ImportOrExportRequest (กัญชา) |
| 36 | NAR.5(HEMP) | [Narcotic5RequestController](file:///D:/GIT/NCSystem/NCSystem/Controllers/Narcotic5RequestController.cs#26-311) | `POST /api/narcotic5/requisition` | Narcotic5ImportOrExportHempRequest (กัญชง) |

### 🟣 ประเภทพิเศษ

| # | รหัส | Controller (MVC) | API Endpoint | Form Variants |
|---|------|-----------------|--------------|---------------|
| 21 | รร.1 (กาเฟอีน) | `CaffeineRequestController` | (ยังไม่มี REST API) | (อยู่ระหว่างพัฒนา) |
| 22 | ร.ร.ส 1 (สารระเหย) | `VolatileRequestController` | (ยังไม่มี REST API) | (อยู่ระหว่างพัฒนา) |
| 23 | IC-1 (ผู้เดินทางนำเข้า) | `TravelerPermitUserController` | `POST /YorSor5ApiProxy/...` | (Inbound Carrying) |
| 24 | OC-1 (ผู้เดินทางนำออก) | `TravelerPermitUserController` | `POST /YorSor5ApiProxy/...` | (Outbound Carrying) |
| 45 | EXP.SP-1 | `PsychotropicTemporaryRequestController` | (ยังไม่มี API endpoint) | (อยู่ระหว่างพัฒนา) |
| 46 | นผ.จ.1 | (ยังไม่มีใน source) | (ยังไม่มี) | (อยู่ระหว่างพัฒนา) |
| 47 | ร.ส.1 | (ยังไม่มีใน source) | (ยังไม่มี) | (อยู่ระหว่างพัฒนา) |
| 48 | ร.ส.2 | (ยังไม่มีใน source) | (ยังไม่มี) | (อยู่ระหว่างพัฒนา) |
| 49 | ท.บ.1 | (ยังไม่มีใน source) | (ยังไม่มี) | (อยู่ระหว่างพัฒนา) |
| 50 | ท.บ.3 | (ยังไม่มีใน source) | (ยังไม่มี) | (อยู่ระหว่างพัฒนา) |
| 51 | ต.ย.1 | (ยังไม่มีใน source) | (ยังไม่มี) | (อยู่ระหว่างพัฒนา) |
| 52 | แบบ แก้ไข ยส./วจ. | `NarcoticEditRequestController` | `POST /NarcoticEditRequest/...` | (แก้ไขใบอนุญาต ยส/วจ ทุกประเภท) |

---

## โครงสร้าง Project Reference

```
NCSystem (MVC)
  └── Controllers/
      ├── Narcotic1RequestController.cs     → ยส1 (ผลิต/นำเข้า/ส่งออก/จำหน่าย/ครอบครอง)
      ├── Narcotic2RequestController.cs     → ยส2/วจ2 (ผลิต/นำเข้า/ส่งออก/จำหน่าย)
      ├── Narcotic3RequestController.cs     → ยส3 (ผลิต/นำเข้า/ส่งออก/จำหน่าย/แก้ไข)
      ├── Narcotic4RequestController.cs     → ยส4 (ผลิต/นำเข้า/ส่งออก/จำหน่าย/ครอบครอง)
      ├── Narcotic5RequestController.cs     → ยส5/กัญชา/กัญชง
      ├── PossessionRequestController.cs    → คค.1-1 (ครอบครอง ยส2/วจ2/3/4)
      ├── Psychotropic1RequestController.cs → วจ1
      ├── Psychotropic3RequestController.cs → วจ3
      ├── Psychotropic4RequestController.cs → วจ4
      ├── CaffeineRequestController.cs      → กาเฟอีน (รร.1)
      ├── VolatileRequestController.cs      → สารระเหย
      ├── TravelerPermitUserController.cs   → ผู้เดินทาง (IC-1/OC-1)
      └── NarcoticEditRequestController.cs  → แก้ไขใบอนุญาต

NCSystem.API (REST API)
  └── Controllers/
      ├── Nacrotic1/Narcotic1RequisitionController.cs       → /api/narcotic1/requisition
      ├── Narcotic2/Narcotic2RequisitionController.cs       → /api/narcotic2/requisition
      ├── Narcotic3/Narcotic3RequisitionController.cs       → /api/narcotic3/requisition
      ├── Narcotic5/Narcotic5RequisitionController.cs       → /api/narcotic5/
      ├── NarcoticPossessionRequisition/...Controller.cs    → /api/narcoticPossession/
      ├── Psychotropic3_4/Psychotropic3_4RequisitionController.cs → /api/psychotropic3_4/
      └── YorSor5ApiController.cs                           → (YS5 proxy)
```

---

> [!NOTE]
> **ฟอร์มที่ยังไม่มีใน Source Code (อยู่ระหว่างพัฒนา):**  
> นผ.จ.1, ร.ส.1, ร.ส.2, ท.บ.1, ท.บ.3, ต.ย.1, EXP.SP-1

> [!TIP]
> ข้อมูลได้รับการอัพเดทลงใน Excel แล้ว 52 rows  
> ไฟล์: `D:\GIT\NCSystem\brain_NCSYSTEM\Spec\SA_Spec_Template_v2_rev1.1_AI.xlsx`
