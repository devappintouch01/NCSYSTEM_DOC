## Application for an **inbound carrying** by traveller under treatment of medical preparations containing substances under control of the single convention on narcotic drugs, 1961 and the convention on psychotropic substances, 1971 [IC-1]
## Application for an **outbound carrying** by traveller under treatment of medical preparations containing substances under control of the single convention on narcotic drugs, 1961 and the convention on psychotropic substances, 1971 [OC-1]
---

## (dbo.MasterRequisitionType Id = 23, 24)
### Links

- [Figma Group Doc](https://www.figma.com/design/0YEqdcSpC2hZKulzEl54LH/-FDA68--Group-Doc)
- [Data Dic - Master Data real](https://docs.google.com/spreadsheets/d/1WpRC41tmqyOc8zVaxTVuwLxGgmi7inZATo8_LcCTXgE)
- [FDA68 ScreenList Permit](https://docs.google.com/spreadsheets/d/1uKgx0P44X8NDJTdI_bmBAwMmZmILhjkv0fHYKaZywnI/)
- [FDA68 Data Dic - Permit real](https://docs.google.com/spreadsheets/d/12esKmz91FjovuOuxEVzF6tZDfe5Rdw_e_PAKkgL0ksU/)

- [Figma ยาติดตัว](https://www.figma.com/board/8Dw8uO6ERmYhbAsToiOZgm/%E0%B8%A2%E0%B8%B2%E0%B8%95%E0%B8%B4%E0%B8%94%E0%B8%95%E0%B8%B1%E0%B8%A7)

- [UAT URL - https://permitfortraveler.vercel.app](https://permitfortraveler.vercel.app)

## ประเภทการขอ

| ประเภทการขอ |
|---|
| 1. IC |
| 2. OC |

## 🔷 Field Condition (ยส.4-1)

### ตาราง Requisition

| ลำดับ | Label | Table.Field | Condition | Remark |
|:---:|---|---|---|---|
| 1 | ผู้สร้าง | `Requisition`.`CreateBy` | ผู้สร้าง อ้างอิง `TravelerPermitUser`.`Id` |  |
| 2 | วันที่สร้าง | `Requisition`.`CreateOn` | วันที่สร้าง |  |
| 3 | ผู้แก้ไข | `Requisition`.`UpdateBy` | ผู้แก้ไข อ้างอิง `TravelerPermitUser`.`Id` |  |
| 4 | วันที่แก้ไข | `Requisition`.`UpdateOn` | วันที่แก้ไข |  |
| 5 | เลขที่คำขอ | `Requisition`.`RequisitionNo` | เลขที่คำขอ |  |
| 6 | ประเภทคำขอ | `Requisition`.`TravelerPermitUserId` | ประเภทคำขอ อ้างอิง `MasterRequisitionType`.`Id` <br> IC = `23` <br> OC = `24` |  |
| 7 | OperationType | `Requisition`.`OperationTypeId` | ส่ง ?? | |
| 8 | Status | `Requisition`.`Status` | ส่ง 1 ?? |  |

<img src="IC_Field_Condition_1.png" style="border: 1px solid black;" width="100%"><!-- 1-3 -->
<img src="IC_Field_Condition_2.png" style="border: 1px solid black;" width="100%"><!-- 4-7 -->

### ตาราง RequisitionTraveler

| ลำดับ | Label | Table.Field | Data type | Condition | Remark |
|:---:|---|---|---|---|---|
| x | คำขอ | `RequisitionTraveler`.`RequisitionId` | int | คำขอ อ้างอิง `Requisition`.`Id` |  |
| y | ข้อมูลผู้สมัครใช้งานระบบ | `RequisitionTraveler`.`TravelerPermitUserId` | int | ข้อมูลผู้สมัครใช้งานระบบ Permit for traveler Carrying Narcotics อ้างอิง `TravelerPermitUser`.`Id` | |
| 2 | FamilyName | `RequisitionTraveler`.`FamilyName` | varchar(255) | | |
| 3 | GivenName | `RequisitionTraveler`.`GivenName` | varchar(255) | | |
| 4 | Name in your own script or character - if applicable | `RequisitionTraveler`.`NativeName` | varchar(255) | |
| 5 | Nationality - as shown in your passport | `RequisitionTraveler`.`NationalityId` | int | สัญชาติ อ้างอิง `MasterNationality`.`Id` | |
| 6 | Passport number | `RequisitionTraveler`.`PassportNo` | varchar(50) | | |
| 7 | Country of Passport | `RequisitionTraveler`.`PassportCountryId` | int | ประเทศของพาสปอร์ต อ้างอิง `MasterCountry`.`Id` | |
| 8 | Date of issue | `RequisitionTraveler`.`PassportIssueDate` | Date time | วันที่ออกหนังสือเดินทาง | |
| 9 | Date of expiry | `RequisitionTraveler`.`PassportExpiryDate` | Date time |วันที่หนังสือเดินทางหมดอายุ | |
| 10 | Issuing authority / Place of issue as shown in your passport | `RequisitionTraveler`.`PassportIssuePlace` | varchar(500) | | |
| 11 | Sex | `RequisitionTraveler`.`Sex` | char(1) | | |
| 12 | Date of birth | `RequisitionTraveler`.`BirthDate` | Date time | | |
| 13 | Place of birth : Town/city | `RequisitionTraveler`.`BirthCity` | varchar(500) | | |
| 14 | Place of birth : Country | `RequisitionTraveler`.`BirthCountryId` | int | ประเทศที่เกิด อ้างอิง `MasterCountry`.`Id` | |

<img src="IC_Field_Condition_3.png" style="border: 1px solid black;" width="100%"><!-- 8-10 -->
<img src="IC_Field_Condition_4.png" style="border: 1px solid black;" width="100%"><!-- 11-12 -->
<img src="IC_Field_Condition_5.png" style="border: 1px solid black;" width="100%"><!-- 13-14 -->

| ลำดับ | Label | Table.Field | Data type | Condition | Remark |
|:---:|---|---|---|---|---|
| 15 | Country where you live | `RequisitionTraveler`.`ResidenceCountryId` | int | ประเทศพำนัก อ้างอิง `MasterCountry`.`Id` | |
| 16 | Your current residential address : Current Address | `RequisitionTraveler`.`ResidentialAddress` | varchar(1000) | | |
| 17 | Your current residential address : Country | `RequisitionTraveler`.`ResidentialCountryId` | int | ประเทศของที่อยู่ปัจจุบัน อ้างอิง `MasterCountry.Id` | |
| 18 | Your current residential address : Postal Code | `RequisitionTraveler`.`ResidentialPostalCode` | varchar(20) | | |
| 19 | If the same as your residential address, write 'AS ABOVE'. | `RequisitionTraveler`.`IsCorrespondenceSame` | bit | ระบุว่าที่อยู่สำหรับติดต่อเป็นที่เดียวกับที่อยู่ปัจจุบันหรือไม่ | |
| 20 | Address for correspondence : Address | `RequisitionTraveler`.`CorrespondenceAddress` | varchar(1000) | ถ้า IsCorrespondenceSame = 0 ให้ Disable text area แล้วเติมคำว่า "AS ABOVE" และบันทึกคำว่า "AS ABOVE" ลงในฐานข้อมูล | |
| 20 | Address for correspondence : Country | `RequisitionTraveler`.`CorrespondenceCountryId` | int | ประเทศของที่อยู่สำหรับติดต่อ อ้างอิง `MasterCountry.Id` <br> ถ้า IsCorrespondenceSame = 0 ให้ Disable | |
| 21 | Address for correspondence : Postal Code | `RequisitionTraveler`.`CorrespondencePostalCode` | varchar(20) | ถ้า IsCorrespondenceSame = 0 ให้ Disable | |
| 23 | telephone numbers : Office hours Country Code | `RequisitionTraveler`.`OfficePhoneCountryCode` | varchar(10) | | |
| 24 | telephone numbers : Office hours Area Code | `RequisitionTraveler`.`OfficePhoneAreaCode` | varchar(10) | | |
| 25 | telephone numbers : Office hours Number | `RequisitionTraveler`.`OfficePhoneNumber` | varchar(50) | | |
| 26 | telephone numbers : After hours Country Code | `RequisitionTraveler`.`AfterHourPhoneCountryCode` | varchar(10) | | |
| 27 | telephone numbers : After hours Area Code | `RequisitionTraveler`.`AfterHourPhoneAreaCode` | varchar(10) | | |
| 28 | telephone numbers : After hours Number | `RequisitionTraveler`.`AfterHourPhoneNumber` | varchar(50) | | |
| 29 | department communicating : Email | `RequisitionTraveler`.`Email` | varchar(255) | | |
| 30 | department communicating : Fax Country Code | `RequisitionTraveler`.`FaxCountryCode` | varchar(10) | | |
| 31 | department communicating : Fax Area Code | `RequisitionTraveler`.`FaxAreaCode` | varchar(10) | | |
| 32 | department communicating : Fax Number | `RequisitionTraveler`.`FaxNumber` | varchar(50) | | |
| 33 | Allow Electronic Contact | `RequisitionTraveler`.`AllowElectronicContact` | bit | | |
| 34 | Briefly describe the medical treatment you have received in your home country. lf insufficient space, attach an additional statement. | `RequisitionTraveler`.`MedicalTreatmentDetail` | nvarchar(2000) | | |
| 35 | details of the doctor : Name and Licence number of doctor | `RequisitionTraveler`.`DoctorNameAndLicense` | varchar(255) | | |
| 36 | details of the doctor : Address | `RequisitionTraveler`.`DoctorAddress` | varchar(1000) | | |
| 37 | details of the doctor : Country | `RequisitionTraveler`.`DoctorCountryId` | int | ประเทศของแพทย์ผู้ให้การรักษา อ้างอิง `MasterCountry`.`Id` | |
| 38 | details of the doctor : Postal Code | `RequisitionTraveler`.`DoctorPostalCode` | varchar(20) | | |

RequisitionMedicationItem รายการยาที่ขอในคำขอยาติดตัว

Id
CreateBy
CreateOn
UpdateBy
UpdateOn
RequisitionId
SubstanceForm
TradeName
DailyUsage
DailyUsageUnitId
TotalQuantity
TotalQuantityUnitId
AmountPerUnit
AmountPerUnitUnitId

RequisitionMedicationIngredient ส่วนประกอบของยาที่ขอในคำขอยาติดตัว

Id
CreateBy
CreateOn
UpdateBy
UpdateOn
RequisitionMedicationItemId
GenericNameId
Strength
GenericUnitId
