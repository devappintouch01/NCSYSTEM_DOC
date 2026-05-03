## คำขอหนังสือรับรองในการนำหรือสั่งสารกาเฟอีน (caffeine) เข้ามาในราชอาณาจักรตามประกาศการะทรวงพาณิชย์ซึ่งออกตามพระราชบัญญัติการส่งออกไปนอกและการนำเข้ามาในราชอาณาจักรซึ่งสินค้า พ.ศ. ๒๕๒๒ [รร.1]

---

<style scoped>
table {
  font-size: 13px;
}
li {
  font-size: 13px;
}
</style>

#### (dbo.MasterRequisitionType Id = 21)
### Links

- [Figma Group Doc](https://www.figma.com/design/0YEqdcSpC2hZKulzEl54LH/-FDA68--Group-Doc)
- [Data Dic - Master Data real](https://docs.google.com/spreadsheets/d/1WpRC41tmqyOc8zVaxTVuwLxGgmi7inZATo8_LcCTXgE)
- [FDA68_สรุปวัตถุประสงค์ ผู้อนุญาต และผู้อนุมัติ ในใบคำขอ](https://docs.google.com/spreadsheets/d/1B366oiRjTmnY7Jvt0lpH9ORXbmOgJaLXcYDHmDST8Qo)

- [Figma กาเฟอีน (FigJam)](https://www.figma.com/board/d5WM3RxuyT44up9RHqlNHt/กาเฟอีน)

- [0805_เช้า_คาเฟอีน - กาเฟอีน ใบอนุญาต](https://drive.google.com/drive/u/1/folders/1dbYUDlUx0aj62PgCXdX1xmSx9-n9yEqb)
- [0805_เช้า_คาเฟอีน](https://drive.google.com/drive/u/1/folders/1uXXIs5kYpTz8Hf87K30mYiky2Tyqdxqa)
- [4.18_กาเฟอีน](https://docs.google.com/spreadsheets/d/1PKGw-iSZ9UJVXOrG8POJR3BIkxjnRDIG/edit?gid=471906968#gid=471906968)

- [ส่งไฟล์_SS](https://drive.google.com/drive/u/1/folders/1MBhdkp39h6eJoDIuIvbAnHjFcAN3BJTW)
    - [ส่งไฟล์_SS-เอกสารรายงานทั้งหมด_200169-ตัวอย่างรายงานจากอย.](https://drive.google.com/drive/folders/1M8B9Y9OGr7jEQrMdSfUB_rQjz1NDGrlQ)

#### เอกสารจากเจ้าหน้าที่
- [รวม Link เอกสารแนบ](https://docs.google.com/spreadsheets/d/1Tnz5E6aaWrrCA9C2pav3H_k-QUgSM0WpExkef0Ws-gI)
  - [04 หนังสือรับรอง_กาเฟอีน_สารระเหย](https://docs.google.com/spreadsheets/d/1OZoExaXPJh6o3SUm31i7Wy9OyTudK5sLIh5YlV7fiS0)
- [สรุปจาก User 68-08-05 ระบบหนังสือรับรอง (PDF)](../../Documents/Caffeine_VolatileAlkylNitrite/Caffeine/สรุปจาก_User_68-08-05_ระบบหนังสือรับรอง.pdf)

```
คำขอกาเฟอีน
ใบอนุญาต
```

<img src="Narcotic_Caffeine_Condition_1.png" style="border: 1px solid black;" width="100%">

### ⚙️ Business Logic & Operations

#### 🔄 การดำเนินการ (Operation Types)
| # | การดำเนินการ | MasterOperationType.Id | หมายเหตุ |
|---|---|---|---|
| 1 | นำเข้า | 3 |  |
| 2 | แก้ไข (เปลี่ยนผู้สั่งซื้อ) | 11 |  |
| 3 | ยกเลิก | ไม่มี | ต้องเพิ่ม OperationType หรือใช้คำขอยกเลิก (สอบถามเจ้าหน้าที่) |
| 4 | ส่งออก | 4 |  |

<details markdown="1">
<summary>📂 คลิกเพื่อดูรายละเอียด วัตถุประสงค์ (Objectives)</summary>

| การดำเนินการ | วัตถุประสงค์ | รายละเอียด |
|---|---|---|
| นำเข้า (3) | A. ยา | A.1 เพื่อใช้ประโยชน์ในอุตสาหกรรมของตนเอง |
| นำเข้า (3) | A. ยา | A.2 เพื่อขายให้ผู้ประกอบการอุตสาหกรรม |
| นำเข้า (3) | A. ยา | A.3 เพื่อขายให้โรงพยาบาลและสถานบริการสาธารณสุขที่สังกัด |
| นำเข้า (3) | B. อาหาร | B.1 เพื่อใช้ประโยชน์ในอุตสาหกรรมของตนเอง |
| นำเข้า (3) | B. อาหาร | B.2 เพื่อขายให้ผู้ประกอบการอุตสาหกรรม |
| นำเข้า (3) | C.1 วิเคราะห์ | C.1.1 ใช้ในกิจการของตนเอง |
| นำเข้า (3) | C.1 วิเคราะห์ | C.1.2 จำหน่ายให้หน่วยงานที่ใช้สารกาเฟอีน |
| นำเข้า (3) | C.2 วิจัย | C.2.1 เพื่อใช้ในกิจการของตนเอง |
| นำเข้า (3) | C.2 วิจัย | C.2.2 จำหน่ายให้หน่วยงานที่ใช้สารกาเฟอีน |
| แก้ไข (เปลี่ยนผู้สั่งซื้อ) (11) | A. ยา | A.2 เพื่อขายให้ผู้ประกอบการอุตสาหกรรม |
| แก้ไข (เปลี่ยนผู้สั่งซื้อ) (11) | A. ยา | A.3 เพื่อขายให้โรงพยาบาลและสถานบริการสาธารณสุขที่สังกัด |
| แก้ไข (เปลี่ยนผู้สั่งซื้อ) (11) | B. อาหาร | B.2 เพื่อขายให้ผู้ประกอบการอุตสาหกรรม |
| แก้ไข (เปลี่ยนผู้สั่งซื้อ) (11) | C.1 วิเคราะห์ | C.1.2 จำหน่ายให้หน่วยงานที่ใช้สารกาเฟอีน |
| แก้ไข (เปลี่ยนผู้สั่งซื้อ) (11) | C.2 วิจัย | C.2.2 จำหน่ายให้หน่วยงานที่ใช้สารกาเฟอีน |
| แก้ไข (เปลี่ยนผู้สั่งซื้อ) (11) | - | C.2.1 เพื่อใช้ในกิจการของตนเอง |
| ส่งออก (4) | A.กรณีส่งคืนสารกาเฟอีนที่นำเข้า ตามหนังสือรับรองเลขที่ | |
| ส่งออก (4) | B.กรณีส่งออกสารกาเฟอีนที่ผลิตได้ในประเทศ | |
| ส่งออก (4) | C.กรณีเปลี่ยนผู้สั่งซื้อ โดยผู้สั่งซื้อรายใหม่เป็นผู้สั่งซื้อในต่างประเทศ | |
| ส่งออก (4) | D.อื่นๆ | |
| ยกเลิก | ทุกวัตถุประสงค์ |  | -->

### Table ตาราง

#### 📂 dbo.MasterCaffeine สารกาเฟอีน

<details markdown="1">
<summary>📂 คลิกเพื่อดูตาราง dbo.MasterCaffeine</summary>

| ลำดับ | Column Name | Data Type | Allow Nulls | Field Description |
|---|---|---|:---:|---|
| 1 | Id | int | N | รหัสอ้างอิงที่ใช้ในระบบ | Id |
| 2 | CreateBy | int | N | ผู้สร้าง อ้างอิง `SystemUser`.`Id` | CreateBy |
| 3 | CreateOn | datetime | N | วันที่สร้าง | CreateOn |
| 4 | UpdateBy | int | Y | ผู้แก้ไข อ้างอิง `SystemUser`.`Id` | UpdateBy |
| 5 | UpdateOn | datetime | Y | วันที่แก้ไข | UpdateOn |
| 6 | CaffeineNameEN | nvarchar(500) | Y | ชื่อสารกาเฟอีนภาษาอังกฤษ |
| 7 | CaffeineNameTH | nvarchar(500) | Y | ชื่อสารกาเฟอีนภาษาไทย |
| 8 | NarcoticTypeId | int | Y | ประเภทวัตถุเสพติด อ้างอิง `MasterNarcoticType`.`Id` |
| 9 | Active | bit | Y | ใช้งาน (1 = ใช้งาน, 0 = ไม่ใช้งาน) |

</details>

#### ตัวอย่าง Data ในตาราง dbo.MasterCaffeine

<details markdown="1">
<summary>📂 คลิกเพื่อดูตาราง ตัวอย่าง Data ในตาราง dbo.MasterCaffeine</summary>

#### ตัวอย่าง Data ในตาราง dbo.MasterCaffeine

| Id | CreateBy | CreateOn | UpdateBy | UpdateOn | CaffeineNameEN | CaffeineNameTH | NarcoticTypeId | Active |
|---|---|---|---|---|---|---|---|---|
| 1 | 1 | 2026-04-06 15:00:00.000 | NULL | NULL | Caffeine | กาเฟอีน | 12 | 1 |
| 2 | 1 | 2026-04-06 15:00:00.000 | NULL | NULL | Caffeine Hydrate | กาเฟอีน ไฮเดรท | 12 | 1 |
| 3 | 1 | 2026-04-06 15:00:00.000 | NULL | NULL | Caffeine Anhydrous | กาเฟอีน แอนไฮดรัส | 12 | 1 |
| 4 | 1 | 2026-04-06 15:00:00.000 | NULL | NULL | Caffeine Citrate | กาเฟอีน ซิเตรต | 12 | 1 |
| 5 | 1 | 2026-04-06 15:00:00.000 | NULL | NULL | Theophylline | ทีโอฟิลลีน | 12 | 1 |
| 6 | 1 | 2026-04-06 15:00:00.000 | NULL | NULL | Aminophylline | เอมิโนฟิลลีน | 12 | 1 |

<!-- dbo.RequisitionItemDetail รายละเอียดสารที่ขอรับอนุญาตในคำขอ // ใช้กับคำขอสถานที่ -->
<!-- dbo.RequisitionTemporaryItemDetail รายะเอียดของยาเสพติด / วัตถุออกฤทธิ์ ที่ขอนำเข้า / ส่งออก // ใช้กับคำขอเฉพาะคราว -->
<!-- dbo.RequisitionMedicationItem รายการยาที่ขอในคำขอยาติดตัว // ใช้กับยาติดตัว -->
<!-- dbo.RequisitionMedicationIngredient ส่วนประกอบของยาที่ขอในคำขอยาติดตัว // ใช้กับยาติดตัว -->

</details>

<details markdown="1">
<summary>📂 คลิกเพื่อดูตาราง dbo.RequisitionCaffeineItemDetail รายละเอียดสารกาเฟอีนที่ใช้ใน คำขอหนังสือรับรองในการนำหรือสั่งสารกาเฟอีน (caffeine) เข้ามาในราชอาณาจักร</summary>

#### dbo.RequisitionCaffeineItemDetail รายละเอียดสารกาเฟอีนที่ใช้ใน คำขอหนังสือรับรองในการนำหรือสั่งสารกาเฟอีน (caffeine) เข้ามาในราชอาณาจักร

| ลำดับ | Column Name | Data Type | Allow Nulls | Field Description | Remark |
|---|---|---|:---:|---|---|
| 1 | Id | int | N | รหัสอ้างอิงที่ใช้ในระบบ | Id |
| 2 | CreateBy | int | N | ผู้สร้าง อ้างอิง `SystemUser`.`Id` | CreateBy |
| 3 | CreateOn | datetime | N | วันที่สร้าง | CreateOn |
| 4 | UpdateBy | int | Y | ผู้แก้ไข อ้างอิง `SystemUser`.`Id` | UpdateBy |
| 5 | UpdateOn | datetime | Y | วันที่แก้ไข | UpdateOn |
| 6 | RequisitionId | int | N | รหัสคำขอ อ้างอิง `Requisition`.`Id` | RequisitionId |
| 7 | CaffeineId | int | N | สารกาเฟอีน อ้างอิง `MasterCaffeine`.`Id` | CaffeineId |
| 8 | Quantity | decimal(18,4) | N | ปริมาณ | Quantity |
| 9 | UnitId | int | N | หน่วย อ้างอิง `MasterNarcoticUnit`.`Id` | UnitId |
| 10 | OriginCountry | nvarchar(50) | N | ประเทศผู้ผลิต | OriginCountry |
| 11 | Remark | nvarchar(500) | Y | หมายเหตุ | Remark |
| 12 | ManufacturerEntityId | int | Y | ผู้ผลิตในต่างประเทศ อ้างอิง `MasterForeignEntity`.`Id` | ManufacturerEntityId |
| 13 | ExporterEntityId | int | Y | ผู้ส่งออกในต่างประเทศ อ้างอิง `MasterForeignEntity`.`Id` | ExporterEntityId |
| 14 | IsNewSubstance | bit | Y | เป็นสารใหม่หรือไม่ | IsNewSubstance |
| 15 | StockImportCountYTD | int | Y | จำนวนครั้งที่นำเข้าสะสมในปีปัจจุบัน (YTD) | StockImportCountYTD |
| 16 | StockTotalQtyYTD | decimal(18,4) | Y | ปริมาณนำเข้าสะสมในปีปัจจุบัน (YTD) | StockTotalQtyYTD |
| 17 | StockRemainQty | decimal(18,4) | Y | ปริมาณคงเหลือ | StockRemainQty |
| 18 | StockThisRequestSeq | int | Y | ลำดับของคำขอนี้ | StockThisRequestSeq |
| 19 | StockDataAsOfDate | date | Y | วันที่อ้างอิงข้อมูลสต็อก | StockDataAsOfDate |

</details>

<!-- dbo.LicenseItemDetail รายละเอียดสารที่ขอรับอนุญาตในใบอนุญาต // ใช้กับคำขอสถานที่ -->
<!-- dbo.LicenseTemporaryItemDetail รายะเอียดของยาเสพติด / วัตถุออกฤทธิ์ ที่ขอนำเข้า / ส่งออก เฉพาะคราว // ใช้กับคำขอเฉพาะคราว -->

## ❗ เงื่อนไขรร.1    
## 🔷 Field Condition

<img src="Narcotic_Caffeine_Condition_1.png" style="border: 1px solid black;" width="100%">
<img src="Narcotic_Caffeine_Condition_2.png" style="border: 1px solid black;" width="100%">
<img src="Narcotic_Caffeine_Condition_3.png" style="border: 1px solid black;" width="100%">
<img src="Narcotic_Caffeine_Condition_4.png" style="border: 1px solid black;" width="100%">
<img src="Narcotic_Caffeine_Condition_5.png" style="border: 1px solid black;" width="100%">


<!-- ```
ผมเพิ่มตารางเดี่ยวกับ กาเฟอีน ให้แล้วนะครับ
- dbo.MasterCaffeine สารกาเฟอีน
  - เพิ่มข้อมูลสารกาเฟอีน แล้ว
- dbo.RequisitionCaffeineItemDetail รายละเอียดสารกาเฟอีนที่ใช้ใน คำขอหนังสือรับรองในการนำหรือสั่งสารกาเฟอีน (caffeine) เข้ามาในราชอาณาจักร
- dbo.LicenseCaffeineItemDetail รายละเอียดสารกาเฟอีนที่ใช้ใน คำขอหนังสือรับรองในการนำหรือสั่งสารกาเฟอีน (caffeine) เข้ามาในราชอาณาจักร ครับ
``` -->

<!-- ```
1. ในหนังสือรับรองนำเข้ากาเฟอีน รร.2
วัตถุประสงค์ เพื่อขายให้ผู้ประกอบการอุตสาหกรรม 1 ฉบับ
สารกาเฟอีนที่นำเข้ามา สามารถแบ่งขายให้ผู้ประกอบการมากกว่า 1 ราย ได้หรือไม่
``` -->

---

### 🛤️ Workflow (Screen Sequence)

#### 📥 นำเข้า (Import)
- **Step 1**
  1. วัตถุประสงค์
  2. ประเภทผู้ใช้สาร
- **Step 2**: เลขที่ใบอนุญาต
  1. ข้อมูลผู้ขอ (ดึงจาก DOPA ด้วยเลขนิติที่มอบอำนาจ)
  2. ข้อมูลผู้ดำเนินการ (กรอกเอง)
- **Step 3**:
  1. สถานที่เก็บ
  2. วัตถุดิบกาเฟอีนคงคลัง
- **Step 4**:
  1. รายละเอียดสารกาเฟอีนที่ขอนำเข้า

#### 📤 ส่งออก (Export)
*(TBD)*

#### ✏️ แก้ไข (Edit)
*(TBD)*

---

<!-- 
Q&A / Notes:
1. ในหนังสือรับรองนำเข้ากาเฟอีน รร.2 วัตถุประสงค์ เพื่อขายให้ผู้ประกอบการอุตสาหกรรม 1 ฉบับ สารกาเฟอีนที่นำเข้ามา สามารถแบ่งขายให้ผู้ประกอบการมากกว่า 1 ราย ได้หรือไม่?
-->