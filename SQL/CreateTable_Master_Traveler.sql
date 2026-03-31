-- ============================================================
-- Script: สร้างตาราง Master Tables สำหรับระบบยาติดตัว (IC/OC)
-- Database: NCDB (MS SQL Server)
-- Reference: ยาติดตัว_IC_OC.md
-- Tables:
--   1. MasterMedicationUnit
--   2. MasterNarcoticDrugForTraveler
--   3. MasterTravelerPort
-- ============================================================


-- ============================================================
-- 1. MasterMedicationUnit - หน่วยของยาที่ขอในคำขอยาติดตัว
-- ============================================================

CREATE TABLE [dbo].[MasterMedicationUnit] (
    [Id]            INT             NOT NULL IDENTITY(1,1),
    [CreateBy]      INT             NULL,
    [CreateOn]      DATETIME        NULL,
    [UpdateBy]      INT             NULL,
    [UpdateOn]      DATETIME        NULL,
    [UnitName]      VARCHAR(255)    NULL,
    [IsSolidUnit]   BIT             NULL,
    [IsLiquidUnit]  BIT             NULL,

    CONSTRAINT [PK_MasterMedicationUnit] PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'รหัสอ้างอิงที่ใช้ในระบบ',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterMedicationUnit',
    @level2type = N'COLUMN', @level2name = N'Id';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ผู้สร้าง อ้างอิง SystemUser.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterMedicationUnit',
    @level2type = N'COLUMN', @level2name = N'CreateBy';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'วันที่สร้าง',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterMedicationUnit',
    @level2type = N'COLUMN', @level2name = N'CreateOn';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ผู้แก้ไข อ้างอิง SystemUser.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterMedicationUnit',
    @level2type = N'COLUMN', @level2name = N'UpdateBy';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'วันที่แก้ไข',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterMedicationUnit',
    @level2type = N'COLUMN', @level2name = N'UpdateOn';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'หน่วยของยา',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterMedicationUnit',
    @level2type = N'COLUMN', @level2name = N'UnitName';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'เป็นหน่วยของยารูปแบบของแข็ง (1=ใช่, 0=ไม่ใช่)',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterMedicationUnit',
    @level2type = N'COLUMN', @level2name = N'IsSolidUnit';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'เป็นหน่วยของยารูปแบบของเหลว (1=ใช่, 0=ไม่ใช่)',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterMedicationUnit',
    @level2type = N'COLUMN', @level2name = N'IsLiquidUnit';
GO


-- ============================================================
-- 2. MasterNarcoticDrugForTraveler - ยา/สารเสพติดสำหรับผู้เดินทาง
-- ============================================================

CREATE TABLE [dbo].[MasterNarcoticDrugForTraveler] (
    [Id]                INT             NOT NULL IDENTITY(1,1),
    [CreateBy]          INT             NULL,
    [CreateOn]          DATETIME        NULL,
    [UpdateBy]          INT             NULL,
    [UpdateOn]          DATETIME        NULL,
    [NarcoticName]      VARCHAR(255)    NULL,
    [NarcoticTypeId]    INT             NULL,
    [Active]            BIT             NULL,

    CONSTRAINT [PK_MasterNarcoticDrugForTraveler] PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'รหัสอ้างอิงที่ใช้ในระบบ',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterNarcoticDrugForTraveler',
    @level2type = N'COLUMN', @level2name = N'Id';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ผู้สร้าง อ้างอิง SystemUser.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterNarcoticDrugForTraveler',
    @level2type = N'COLUMN', @level2name = N'CreateBy';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'วันที่สร้าง',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterNarcoticDrugForTraveler',
    @level2type = N'COLUMN', @level2name = N'CreateOn';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ผู้แก้ไข อ้างอิง SystemUser.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterNarcoticDrugForTraveler',
    @level2type = N'COLUMN', @level2name = N'UpdateBy';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'วันที่แก้ไข',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterNarcoticDrugForTraveler',
    @level2type = N'COLUMN', @level2name = N'UpdateOn';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ชื่อยา/สารเสพติด',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterNarcoticDrugForTraveler',
    @level2type = N'COLUMN', @level2name = N'NarcoticName';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ประเภท อ้างอิง MasterNarcoticType.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterNarcoticDrugForTraveler',
    @level2type = N'COLUMN', @level2name = N'NarcoticTypeId';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ใช้งาน (1=ใช้งาน, 0=ไม่ใช้งาน)',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterNarcoticDrugForTraveler',
    @level2type = N'COLUMN', @level2name = N'Active';
GO


-- ============================================================
-- 3. MasterTravelerPort - ท่า/สนามบินของการเดินทาง
-- ============================================================

CREATE TABLE [dbo].[MasterTravelerPort] (
    [Id]                INT             NOT NULL IDENTITY(1,1),
    [CreateBy]          INT             NULL,
    [CreateOn]          DATETIME        NULL,
    [UpdateBy]          INT             NULL,
    [UpdateOn]          DATETIME        NULL,
    [PortNameEn]        VARCHAR(255)    NULL,
    [TransporTypeId]    INT             NULL,
    [ProvinceId]        INT             NULL,
    [Active]            BIT             NULL,

    CONSTRAINT [PK_MasterTravelerPort] PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'รหัสอ้างอิงที่ใช้ในระบบ',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterTravelerPort',
    @level2type = N'COLUMN', @level2name = N'Id';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ผู้สร้าง อ้างอิง SystemUser.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterTravelerPort',
    @level2type = N'COLUMN', @level2name = N'CreateBy';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'วันที่สร้าง',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterTravelerPort',
    @level2type = N'COLUMN', @level2name = N'CreateOn';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ผู้แก้ไข อ้างอิง SystemUser.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterTravelerPort',
    @level2type = N'COLUMN', @level2name = N'UpdateBy';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'วันที่แก้ไข',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterTravelerPort',
    @level2type = N'COLUMN', @level2name = N'UpdateOn';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ชื่อท่า/สนามบิน',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterTravelerPort',
    @level2type = N'COLUMN', @level2name = N'PortNameEn';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ประเภทการเดินทาง อ้างอิง MasterTransportType.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterTravelerPort',
    @level2type = N'COLUMN', @level2name = N'TransporTypeId';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'จังหวัด อ้างอิง MasterProvince.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterTravelerPort',
    @level2type = N'COLUMN', @level2name = N'ProvinceId';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ใช้งาน (1=ใช้งาน, 0=ไม่ใช้งาน)',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'MasterTravelerPort',
    @level2type = N'COLUMN', @level2name = N'Active';
GO
