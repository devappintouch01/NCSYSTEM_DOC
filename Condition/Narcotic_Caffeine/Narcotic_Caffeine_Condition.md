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

## (dbo.MasterRequisitionType Id = 21)
### Links

- [Figma Group Doc](https://www.figma.com/design/0YEqdcSpC2hZKulzEl54LH/-FDA68--Group-Doc)
- [Data Dic - Master Data real](https://docs.google.com/spreadsheets/d/1WpRC41tmqyOc8zVaxTVuwLxGgmi7inZATo8_LcCTXgE)
- [FDA68_สรุปวัตถุประสงค์ ผู้อนุญาต และผู้อนุมัติ ในใบคำขอ](https://docs.google.com/spreadsheets/d/1B366oiRjTmnY7Jvt0lpH9ORXbmOgJaLXcYDHmDST8Qo)

- [0805_เช้า_คาเฟอีน - กาเฟอีน ใบอนุญาต](https://drive.google.com/drive/u/1/folders/1dbYUDlUx0aj62PgCXdX1xmSx9-n9yEqb)
- [0805_เช้า_คาเฟอีน](https://drive.google.com/drive/u/1/folders/1uXXIs5kYpTz8Hf87K30mYiky2Tyqdxqa)
- [4.18_กาเฟอีน](https://docs.google.com/spreadsheets/d/1PKGw-iSZ9UJVXOrG8POJR3BIkxjnRDIG/edit?gid=471906968#gid=471906968)

- [ส่งไฟล์_SS](https://drive.google.com/drive/u/1/folders/1MBhdkp39h6eJoDIuIvbAnHjFcAN3BJTW)
    - [ส่งไฟล์_SS-เอกสารรายงานทั้งหมด_200169-ตัวอย่างรายงานจากอย.](https://drive.google.com/drive/folders/1M8B9Y9OGr7jEQrMdSfUB_rQjz1NDGrlQ)

```
คำขอกาเฟอีน
สารของกาเฟอีน
ใบอนุญาต
```

<img src="Narcotic_Caffeine_Condition_1.png" style="border: 1px solid black;" width="100%">

## Table ตาราง

### dbo.MasterCaffeine สารกาเฟอีน

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

#### ตัวอย่าง Data ในตาราง dbo.MasterCaffeine

| Id | CreateBy | CreateOn | UpdateBy | UpdateOn | NarcoticCaffeineNameEN | NarcoticCaffeineNameTH | NarcoticTypeId | Active |
|---|---|---|---|---|---|---|---|---|
| 1 | 1 | 2026-04-06 15:00:00.000 | NULL | NULL | Caffeine | กาเฟอีน | 12 | 1 |
| 2 | 1 | 2026-04-06 15:00:00.000 | NULL | NULL | Caffeine Anhydrous | กาเฟอีน แอนไฮดรัส | 12 | 1 |
| 3 | 1 | 2026-04-06 15:00:00.000 | NULL | NULL | Caffeine Citrate | กาเฟอีน ซิเตรต | 12 | 1 |
| 4 | 1 | 2026-04-06 15:00:00.000 | NULL | NULL | Theophylline | ทีโอฟิลลีน | 12 | 1 |
| 5 | 1 | 2026-04-06 15:00:00.000 | NULL | NULL | Aminophylline | เอมิโนฟิลลีน | 12 | 1 |

<!-- dbo.RequisitionItemDetail รายละเอียดสารที่ขอรับอนุญาตในคำขอ // ใช้กับคำขอสถานที่ -->
<!-- dbo.RequisitionTemporaryItemDetail รายะเอียดของยาเสพติด / วัตถุออกฤทธิ์ ที่ขอนำเข้า / ส่งออก // ใช้กับคำขอเฉพาะคราว -->
<!-- dbo.RequisitionMedicationItem รายการยาที่ขอในคำขอยาติดตัว // ใช้กับยาติดตัว -->
<!-- dbo.RequisitionMedicationIngredient ส่วนประกอบของยาที่ขอในคำขอยาติดตัว // ใช้กับยาติดตัว -->

### dbo.RequisitionCaffeineItemDetail รายละเอียดสารกาเฟอีนที่ใช้ใน คำขอหนังสือรับรองในการนำหรือสั่งสารกาเฟอีน (caffeine) เข้ามาในราชอาณาจักร

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

<!-- dbo.LicenseItemDetail รายละเอียดสารที่ขอรับอนุญาตในใบอนุญาต // ใช้กับคำขอสถานที่ -->
<!-- dbo.LicenseTemporaryItemDetail รายะเอียดของยาเสพติด / วัตถุออกฤทธิ์ ที่ขอนำเข้า / ส่งออก เฉพาะคราว // ใช้กับคำขอเฉพาะคราว -->

### dbo.LicenseCaffeineItemDetail รายละเอียดสารกาเฟอีนที่ใช้ใน คำขอหนังสือรับรองในการนำหรือสั่งสารกาเฟอีน (caffeine) เข้ามาในราชอาณาจักร

| ลำดับ | Column Name | Data Type | Allow Nulls | Field Description | Remark |
|---|---|---|:---:|---|---|
| 1 | Id | int | N | รหัสอ้างอิงที่ใช้ในระบบ | Id |
| 2 | CreateBy | int | N | ผู้สร้าง อ้างอิง `SystemUser`.`Id` | CreateBy |
| 3 | CreateOn | datetime | N | วันที่สร้าง | CreateOn |
| 4 | UpdateBy | int | Y | ผู้แก้ไข อ้างอิง `SystemUser`.`Id` | UpdateBy |
| 5 | UpdateOn | datetime | Y | วันที่แก้ไข | UpdateOn |
| 6 | LicenseId | int | N | รหัสใบอนุญาต อ้างอิง `License`.`Id` | LicenseId |
| 7 | CaffeineId | สารกาเฟอีน อ้างอิง `MasterCaffeine`.`Id` | CaffeineId |
| 8 | Quantity | decimal(18,4) | N | ปริมาณ | Quantity |
| 9 | UnitId | int | N | หน่วย อ้างอิง `MasterNarcoticUnit`.`Id` | UnitId |
| 10 | OriginCountry | nvarchar(50) | N | ประเทศผู้ผลิต | OriginCountry |
| 11 | Remark | nvarchar(500) | Y | หมายเหตุ | Remark |

## ❗ เงื่อนไขรร.1    
## 🔷 Field Condition

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

```
1. ในหนังสือรับรองนำเข้ากาเฟอีน รร.2
วัตถุประสงค์ เพื่อขายให้ผู้ประกอบการอุตสาหกรรม 1 ฉบับ
สารกาเฟอีนที่นำเข้ามา สามารถแบ่งขายให้ผู้ประกอบการมากกว่า 1 ราย ได้หรือไม่
```