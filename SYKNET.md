## FDA AUTHEN (SKYNET)

---

<style scoped>
table {
  font-size: 13px;
}
</style>

## การบันทึกข้อมูลลงระบบ NCSYSTEM
### หลังจาก Authentication เรียบร้อยแล้ว (ThaiD/DGA)
1. ได้ Skynet Token แล้ว ให้เอา Token ไปดึงข้อมูลจาก WS_AUTHEN_FDA
ที่ Service Authen_Login จะได้ข้อมูลการ Authen กลับมา

2. บันทึกข้อมูลลงฐานข้อมูล NCSYSTEM

&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;2.1 ตาราง `dbo`.`SystemUser`

| ลำดับ | Label | Table.Field | Filed จาก API | Remark |
|:---:|---|---|---|---|
| 1 | - | `SystemUser`.`Username` |  |  |
| 2 | - | `SystemUser`.`FirstName` |  |  |
| 3 | - | `SystemUser`.`SkynetToken` |  |  |
| 4 | - | `SystemUser`.`SkynetTokenExpiresAt` |  |  |

   ** เอาเลขนิติบุคคลที่ได้รับมอบอำนาจ (จาก Field `CITIEZEN_ID_AUTHORIZE` ที่ได้จาก API Authen_Login) ไป Call API DOPA/DBD เพื่อให้ได้ข้อมูลนิติบุคคล (เรียกเหมือน 1.1 ข้อมูลผู้ขออนุญาต ของ ยส.4) แล้วมาใส่ในตาราง `dbo`.`JuristicPerson`, `dbo`.`MasterPlace` และ `dbo`.`MappingPlacePlaceAddress` เพื่อ Initial ข้อมูลสถานที่เริ่มต้น **

&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;2.2 ตาราง `dbo`.`JuristicPerson`

| ลำดับ | Label/Field name | Table.Field | Filed จาก API | Remark |
|:---:|:---:|---|---|---|
| 1 | - | `JuristicPerson`.`TaxNumer` |  |  |
| 2 | - | `JuristicPerson`.`JuristicName` |  |  |

&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;2.3 ตาราง `dbo`.`MasterPlace`

| ลำดับ | Label/Field name | Table.Field | Filed จาก API | Remark |
|:---:|---|---|---|---|
| 1 | นิติบุคคล อ้างอิง `JuristicPerson`.`Id` | `MasterPlace`.`JuristicPersonId` |  |  |
| 2 | - | `MasterPlace`.`PlaceNameTh` |  |  |
| 3 | - | `MasterPlace`.`PlaceNameEn` |  |  |
| 4 | - | `MasterPlace`.`Active` |  | Set เป็น 1 |

&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;2.4 ตาราง `dbo`.`MappingPlacePlaceAddress`

| ลำดับ | Label/Field name | Table.Field | Filed จาก API | Remark |
|:---:|---|---|---|---|
| 6 | สถานที่ อ้างอิง `MasterPlace`.`Id` | `MappingPlacePlaceAddress`.`PlaceId` |  |  |
| 7 | - | `MappingPlacePlaceAddress`.`HouseCode` |  |  |
| 8 | - | `MappingPlacePlaceAddress`.`HouseNo` |  |  |
| 9 | - | `MappingPlacePlaceAddress`.`VillageNo` |  |  |
| 10 | - | `MappingPlacePlaceAddress`.`VillageName` |  |  |
| 11 | - | `MappingPlacePlaceAddress`.`Lane` |  |  |
| 12 | - | `MappingPlacePlaceAddress`.`Street` |  |  |
| 13 | - | `MappingPlacePlaceAddress`.`ProvinceId` |  |  |
| 14 | - | `MappingPlacePlaceAddress`.`ProvinceName` |  |  |
| 15 | - | `MappingPlacePlaceAddress`.`AmphurId` |  |  |
| 16 | - | `MappingPlacePlaceAddress`.`AmphurName` |  |  |
| 17 | - | `MappingPlacePlaceAddress`.`TambonId` |  |  |
| 18 | - | `MappingPlacePlaceAddress`.`TambonName` |  |  |
| 19 | - | `MappingPlacePlaceAddress`.`Postcode` |  |  |
| 20 | - | `MappingPlacePlaceAddress`.`FullAddress` |  |  |
| 21 | - | `MappingPlacePlaceAddress`.`Phone` |  |  |
| 22 | - | `MappingPlacePlaceAddress`.`Fax` |  |  |
| 23 | - | `MappingPlacePlaceAddress`.`Email` |  |  |
| 24 | - | `MappingPlacePlaceAddress`.`Active` |  | Set เป็น 1 |
