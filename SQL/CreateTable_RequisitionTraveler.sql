-- ============================================================
-- Script: สร้างตาราง RequisitionTraveler
-- Database: NCDB (MS SQL Server)
-- Reference: ยาติดตัว_IC_OC.md
-- ============================================================

CREATE TABLE [dbo].[RequisitionTraveler] (
    -- === Audit Fields ===
    [Id]                                INT             NOT NULL IDENTITY(1,1),
    [CreateBy]                          INT             NULL,
    [CreateOn]                          DATETIME        NULL,
    [UpdateBy]                          INT             NULL,
    [UpdateOn]                          DATETIME        NULL,

    -- === Reference Fields ===
    [RequisitionId]                     INT             NULL,
    [TravelerPermitUserId]              INT             NULL,

    -- === 1. Traveler Name ===
    [FamilyName]                        VARCHAR(255)    NULL,
    [GivenName]                         VARCHAR(255)    NULL,
    [NativeName]                        VARCHAR(255)    NULL,

    -- === 2. Nationality & Passport ===
    [NationalityId]                     INT             NULL,
    [PassportNo]                        VARCHAR(50)     NULL,
    [PassportCountryId]                 INT             NULL,
    [PassportIssueDate]                 DATETIME        NULL,
    [PassportExpiryDate]                DATETIME        NULL,
    [PassportIssuePlace]                VARCHAR(500)    NULL,

    -- === 3. Personal Info ===
    [Sex]                               CHAR(1)         NULL,
    [BirthDate]                         DATETIME        NULL,
    [BirthCity]                         VARCHAR(500)    NULL,
    [BirthCountryId]                    INT             NULL,

    -- === 4. Residence Address ===
    [ResidenceCountryId]                INT             NULL,
    [ResidentialAddress]                VARCHAR(1000)   NULL,
    [ResidentialCountryId]              INT             NULL,
    [ResidentialPostalCode]             VARCHAR(20)     NULL,

    -- === 5. Correspondence Address ===
    [IsCorrespondenceSame]              BIT             NULL,
    [CorrespondenceAddress]             VARCHAR(1000)   NULL,
    [CorrespondenceCountryId]           INT             NULL,
    [CorrespondencePostalCode]          VARCHAR(20)     NULL,

    -- === 6. Telephone Numbers ===
    [OfficePhoneCountryCode]            VARCHAR(10)     NULL,
    [OfficePhoneAreaCode]               VARCHAR(10)     NULL,
    [OfficePhoneNumber]                 VARCHAR(50)     NULL,
    [AfterHourPhoneCountryCode]         VARCHAR(10)     NULL,
    [AfterHourPhoneAreaCode]            VARCHAR(10)     NULL,
    [AfterHourPhoneNumber]              VARCHAR(50)     NULL,

    -- === 7. Contact Info ===
    [Email]                             VARCHAR(255)    NULL,
    [FaxCountryCode]                    VARCHAR(10)     NULL,
    [FaxAreaCode]                       VARCHAR(10)     NULL,
    [FaxNumber]                         VARCHAR(50)     NULL,
    [AllowElectronicContact]            BIT             NULL,

    -- === 8. Medical Treatment ===
    [MedicalTreatmentDetail]            NVARCHAR(2000)  NULL,

    -- === 9. Doctor Details ===
    [DoctorNameAndLicense]              VARCHAR(255)    NULL,
    [DoctorAddress]                     VARCHAR(1000)   NULL,
    [DoctorCountryId]                   INT             NULL,
    [DoctorPostalCode]                  VARCHAR(20)     NULL,

    -- === 10. Travel Dates ===
    [ArrivalDate]                       DATETIME        NULL,
    [DepartureDate]                     DATETIME        NULL,
    [ArrangementDetail]                 VARCHAR(2000)   NULL,

    -- === 11. Itinerary - Departure ===
    [DeparturePort]                     VARCHAR(255)    NULL,
    [DeparturePortId]                   INT             NULL,
    [DepartureTransportBy]              CHAR(1)         NULL,
    [DepartureCarrierAndFlightNumber]   VARCHAR(255)    NULL,

    -- === 12. Itinerary - Entry ===
    [EntryPort]                         VARCHAR(255)    NULL,
    [EntryPortId]                       INT             NULL,
    [EntryTransportBy]                  CHAR(1)         NULL,
    [EntryCarrierAndFlightNumber]       VARCHAR(255)    NULL,

    -- === 13. Thailand Contact ===
    [HasRelativeInThailand]             BIT             NULL,
    [ThailandContactName]               VARCHAR(255)    NULL,
    [ThailandContactRelationship]       VARCHAR(100)    NULL,
    [ThailandContactIsPermanentResident] BIT            NULL,
    [ThailandContactAddress]            VARCHAR(1000)   NULL,
    [ThailandContactCountryId]          INT             NULL,
    [ThailandContactPostalCode]         VARCHAR(20)     NULL,

    -- === 14. Medical Cost in Thailand (IC-1 only) ===
    [HasMedicalCostInThailand]          BIT             NULL,
    [MedicalCostInThailandDetail]       VARCHAR(2000)   NULL,

    CONSTRAINT [PK_RequisitionTraveler] PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

-- ============================================================
-- Field Descriptions (Extended Properties)
-- ============================================================

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ผู้สร้าง อ้างอิง TravelerPermitUser.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'CreateBy';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'วันที่สร้าง',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'CreateOn';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ผู้แก้ไข อ้างอิง TravelerPermitUser.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'UpdateBy';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'วันที่แก้ไข',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'UpdateOn';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'คำขอ อ้างอิง Requisition.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'RequisitionId';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ข้อมูลผู้สมัครใช้งานระบบ Permit for traveler Carrying Narcotics อ้างอิง TravelerPermitUser.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'TravelerPermitUserId';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'นามสกุลของผู้เดินทาง',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'FamilyName';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ชื่อตัวของผู้เดินทาง',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'GivenName';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ชื่อ–นามสกุลตามภาษาเจ้าของประเทศ',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'NativeName';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'สัญชาติ อ้างอิง MasterNationality.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'NationalityId';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'เลขที่หนังสือเดินทาง',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'PassportNo';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ประเทศของพาสปอร์ต อ้างอิง MasterCountry.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'PassportCountryId';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'วันที่ออกหนังสือเดินทาง',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'PassportIssueDate';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'วันที่หนังสือเดินทางหมดอายุ',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'PassportExpiryDate';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'สถานที่ออกหนังสือเดินทาง',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'PassportIssuePlace';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'เพศของผู้เดินทาง (1=ชาย, 2=หญิง)',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'Sex';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'วันเดือนปีเกิดของผู้เดินทาง',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'BirthDate';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'เมืองที่เกิด',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'BirthCity';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ประเทศที่เกิด อ้างอิง MasterCountry.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'BirthCountryId';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ประเทศพำนัก อ้างอิง MasterCountry.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'ResidenceCountryId';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ที่อยู่ปัจจุบันของผู้เดินทาง',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'ResidentialAddress';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ประเทศของที่อยู่ปัจจุบัน อ้างอิง MasterCountry.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'ResidentialCountryId';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'รหัสไปรษณีย์ของที่อยู่ปัจจุบัน',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'ResidentialPostalCode';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ระบุว่าที่อยู่สำหรับติดต่อเป็นที่เดียวกับที่อยู่ปัจจุบันหรือไม่ (1=ใช่, 0=ไม่ใช่)',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'IsCorrespondenceSame';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ถ้า IsCorrespondenceSame = 1 ให้ Disable text area แล้วเติมคำว่า AS ABOVE และบันทึกคำว่า AS ABOVE ลงในฐานข้อมูล',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'CorrespondenceAddress';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ประเทศของที่อยู่สำหรับติดต่อ อ้างอิง MasterCountry.Id ถ้า IsCorrespondenceSame = 1 ให้ Disable',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'CorrespondenceCountryId';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'รหัสไปรษณีย์ที่อยู่สำหรับติดต่อ ถ้า IsCorrespondenceSame = 1 ให้ Disable',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'CorrespondencePostalCode';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'รหัสประเทศของเบอร์โทรศัพท์ในเวลาราชการ',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'OfficePhoneCountryCode';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'รหัสพื้นที่ของเบอร์โทรศัพท์ในเวลาราชการ',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'OfficePhoneAreaCode';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'เบอร์โทรศัพท์ในเวลาราชการ',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'OfficePhoneNumber';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'รหัสประเทศของเบอร์โทรศัพท์นอกเวลาราชการ',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'AfterHourPhoneCountryCode';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'รหัสพื้นที่ของเบอร์โทรศัพท์นอกเวลาราชการ',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'AfterHourPhoneAreaCode';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'เบอร์โทรศัพท์นอกเวลาราชการ',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'AfterHourPhoneNumber';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'อีเมล',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'Email';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'รหัสประเทศของเบอร์โทรสาร',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'FaxCountryCode';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'รหัสพื้นที่ของเบอร์โทรสาร',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'FaxAreaCode';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'เบอร์โทรสาร',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'FaxNumber';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'อนุญาตให้ติดต่อทางอิเล็กทรอนิกส์หรือไม่ (1=ใช่, 0=ไม่ใช่)',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'AllowElectronicContact';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'รายละเอียดการรักษาทางการแพทย์ที่ผู้เดินทางได้รับในประเทศต้นทาง',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'MedicalTreatmentDetail';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ชื่อและใบอนุญาตของแพทย์ผู้ให้การรักษา',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'DoctorNameAndLicense';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ที่อยู่ของแพทย์ผู้ให้การรักษา',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'DoctorAddress';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ประเทศของแพทย์ผู้ให้การรักษา อ้างอิง MasterCountry.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'DoctorCountryId';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'รหัสไปรษณีย์ของแพทย์ผู้ให้การรักษา',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'DoctorPostalCode';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'วันที่เดินทางมาถึงประเทศไทย',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'ArrivalDate';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'วันที่เดินทางออกจากประเทศไทย',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'DepartureDate';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'รายละเอียดการจัดการดูแลรักษาต่อในประเทศต้นทาง',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'ArrangementDetail';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ท่า/สนามบินต้นทางในประเทศต้นทาง (ข้อความ)',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'DeparturePort';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ท่า/สนามบินต้นทางในประเทศต้นทาง อ้างอิง MasterTravelerPort.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'DeparturePortId';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ประเภทการเดินทางขาออก (A=Airline, B=Bus/Coach Operator, C=Cruise Line, F=Ferry Operator, P=Private Vehicle, T=Train Operator)',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'DepartureTransportBy';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ชื่อสายการบินหรือผู้ให้บริการขนส่งขาออก และหมายเลขเที่ยวบินหรือหมายเลขพาหนะขาออก',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'DepartureCarrierAndFlightNumber';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ท่า/สนามบินที่เดินทางเข้า (ข้อความ)',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'EntryPort';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ท่า/สนามบินที่เดินทางเข้า อ้างอิง MasterTravelerPort.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'EntryPortId';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ประเภทการเดินทางเข้า (A=Airline, B=Bus/Coach Operator, C=Cruise Line, F=Ferry Operator, P=Private Vehicle, T=Train Operator)',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'EntryTransportBy';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ชื่อสายการบินหรือผู้ให้บริการขนส่งขาเข้า และหมายเลขเที่ยวบินหรือหมายเลขพาหนะขาเข้า',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'EntryCarrierAndFlightNumber';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ระบุว่าผู้เดินทางมีญาติหรือเพื่อนอยู่ในประเทศไทยหรือไม่ (1=มี, 0=ไม่มี)',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'HasRelativeInThailand';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ชื่อญาติหรือเพื่อนที่ติดต่อได้ในประเทศไทย',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'ThailandContactName';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ความสัมพันธ์กับผู้เดินทาง',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'ThailandContactRelationship';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ระบุว่าผู้นั้นเป็นผู้มีถิ่นที่อยู่ในประเทศไทยหรือไม่ (1=ใช่, 0=ไม่ใช่)',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'ThailandContactIsPermanentResident';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ที่อยู่ของผู้นั้น',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'ThailandContactAddress';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ประเทศของผู้นั้น อ้างอิง MasterCountry.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'ThailandContactCountryId';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'รหัสไปรษณีย์ของผู้นั้น',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'ThailandContactPostalCode';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ระบุว่าผู้เดินทางมีหรือคาดว่าจะมีค่าใช้จ่ายด้านการรักษาในประเทศไทยหรือไม่ (1=มี, 0=ไม่มี) [IC-1 เท่านั้น]',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'HasMedicalCostInThailand';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'รายละเอียดค่าใช้จ่ายหรือการรักษาทางการแพทย์ในประเทศไทย [IC-1 เท่านั้น]',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTraveler',
    @level2type = N'COLUMN', @level2name = N'MedicalCostInThailandDetail';
GO
