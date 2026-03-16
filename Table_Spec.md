## Table Spec
---

## (Table Spec)
### Links

- [Figma Group Doc](https://www.figma.com/design/0YEqdcSpC2hZKulzEl54LH/-FDA68--Group-Doc)
- [Data Dic - Master Data real](https://docs.google.com/spreadsheets/d/1WpRC41tmqyOc8zVaxTVuwLxGgmi7inZATo8_LcCTXgE)

## Table Spec

<style scoped>
table {
  font-size: 13px;
}
</style>

### dbo.MasterNarcoticDrug วัตถุเสพติด

| ลำดับ | Field_name | Data type | Description |
|---|---|---|---|
| 1 | Id | int | รหัสอ้างอิงที่ใช้ในระบบ |
| 2 | CreateBy | int | ผู้สร้าง อ้างอิง SystemUser.Id |
| 3 | CreateOn | datetime | วันที่สร้าง |
| 4 | UpdateBy | int | ผู้แก้ไข อ้างอิง SystemUser.Id |
| 5 | UpdateOn | datetime | วันที่แก้ไข |
| 6 | NarcoticDrugNameEn | nvarchar(1000) | ชื่อภาษาอังกฤษของวัตถุเสพติด |
| 7 | NarcoticDrugNameTh | nvarchar(1000) | ชื่อภาษาไทยของวัตถุเสพติด |
| 8 | NarcoticTypeId | int | ประเภทวัตถุเสพติด อ้างอิง MasterNarcoticType.Id |
| 9 | INCBListId | int | INCB อ้างอิง MasterINCBList.Id |
| 10 | Islimit | bit | มีการจำกัดปริมาณหรือไม่ (1 = ใช่, 0 = ไม่ใช่) |
| 11 | Active | bit | ใช้งาน (1 = ใช้งาน, 0 = ไม่ใช้งาน) |
| 12 | IsStandard | bit | เป็นสารมาตรฐานหรือไม่ (1 = ใช่, 0 = ไม่ใช่) |
| 13 | IsClosedSystemIndustry | bit | เป็นระบบปิดสำหรับอุตสาหกรรมหรือไม่ |

### dbo.MasterEster เอสเทอร์/อีเทอร์/เกลือ

| ลำดับ | Field_name | Data type | Description |
|---|---|---|---|
| 1 | Id | int | รหัสอ้างอิงที่ใช้ในระบบ |
| 2 | CreateBy | int | ผู้สร้าง อ้างอิง SystemUser.Id |
| 3 | CreateOn | datetime | วันที่สร้าง |
| 4 | UpdateBy | int | ผู้แก้ไข อ้างอิง SystemUser.Id |
| 5 | UpdateOn | datetime | วันที่แก้ไข |
| 6 | EsterNameEn | nvarchar(200) | ชื่อเอสเทอร์ |
| 7 | Active | bit | ใช้งาน (1 = ใช้งาน, 0 = ไม่ใช้งาน) |

### dbo.MasterNarcoticEster เอสเทอร์/อีเทอร์/เกลือ ของสารเสพติด

| ลำดับ | Field_name | Data type | Description |
|---|---|---|---|
| 1 | Id | int | รหัสอ้างอิงที่ใช้ในระบบ |
| 2 | CreateBy | int | ผู้สร้าง อ้างอิง SystemUser.Id |
| 3 | CreateOn | datetime | วันที่สร้าง |
| 4 | UpdateBy | int | ผู้แก้ไข อ้างอิง SystemUser.Id |
| 5 | UpdateOn | datetime | วันที่แก้ไข |
| 6 | NarcoticDrugId | int | สารเสพติด อ้างอิง MasterNarcoticDrug.Id |
| 7 | EsterId | int | เอสเทอร์ อ้างอิง MasterEster.Id |
| 8 | Anhydrous | numeric(7,4) | ปริมาณแอนไฮดรัส |
| 9 | IsStandard | bit | เป็นสารมาตรฐาน (1 = ใช่, 0 = ไม่ใช่) |
| 10 | Active | bit | ใช้งาน (1 = ใช้งาน, 0 = ไม่ใช้งาน) |
| 11 | NarcoticTypeId | int | ประเภทของสารเสพติด อ้างอิง MasterNarcoticType.Id |
| 12 | IDA | int | IDA (รหัสจากระบบภายนอก) |

### ตัวอย่าง และ Script
Join MasterNarcoticEster กับ MasterDrug และ MasterEster

```
SELECT 
    ne.Id,
    ne.Active,
    ne.NarcoticTypeId,
    nd.NarcoticDrugNameEn,
    e.EsterNameEn,
    ne.Anhydrous,
    nd.INCBListId,
    ne.IsStandard,
    nd.Islimit,
    nd.IsClosedSystemIndustry,
    ne.Active AS Active_e
FROM MasterNarcoticEster ne
LEFT JOIN MasterNarcoticDrug nd ON ne.NarcoticDrugId = nd.Id
LEFT JOIN MasterEster e ON ne.EsterId = e.Id
```