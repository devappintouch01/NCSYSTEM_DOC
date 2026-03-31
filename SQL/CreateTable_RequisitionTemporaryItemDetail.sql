-- ============================================================
-- Script: สร้างตาราง RequisitionTemporaryItemDetail
-- Database: NCDB (MS SQL Server)
-- Reference: Narcotic_Temporary_Condition.md
-- Description: รายละเอียดของยาเสพติด / วัตถุออกฤทธิ์ ที่ขอนำเข้า / ส่งออก
-- ============================================================

CREATE TABLE [dbo].[RequisitionTemporaryItemDetail] (

    -- === Audit Fields ===
    [Id]                                    INT                 NOT NULL IDENTITY(1,1),
    [CreateBy]                              INT                 NOT NULL,
    [CreateOn]                              DATETIME            NOT NULL,
    [UpdateBy]                              INT                 NULL,
    [UpdateOn]                              DATETIME            NULL,

    -- === Substance / Narcotic Drug Detail ===
    [Quantity]                              DECIMAL(18,4)       NULL,
    [UnitOfQuantity]                        INT                 NULL,
    [ContentPerQuantity]                    DECIMAL(18,4)       NULL,
    [UnitOfContentPerQuantity]              INT                 NULL,
    [NameOfSubstanceOrPreparations]         NVARCHAR(500)       NULL,
    [NarcoticSubstancesContainedTherein]    INT                 NULL,
    [ContentPerUnit]                        DECIMAL(18,4)       NULL,
    [UnitOfContentPerUnit]                  INT                 NULL,
    [TotalQuantityOfNarcoticSubstances]     DECIMAL(18,4)       NULL,

    CONSTRAINT [PK_RequisitionTemporaryItemDetail] PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

-- ============================================================
-- Field Descriptions (Extended Properties)
-- ============================================================

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'รหัสอ้างอิงที่ใช้ในระบบ',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTemporaryItemDetail',
    @level2type = N'COLUMN', @level2name = N'Id';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ผู้สร้าง อ้างอิง SystemUser.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTemporaryItemDetail',
    @level2type = N'COLUMN', @level2name = N'CreateBy';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'วันที่สร้าง',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTemporaryItemDetail',
    @level2type = N'COLUMN', @level2name = N'CreateOn';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ผู้แก้ไข อ้างอิง SystemUser.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTemporaryItemDetail',
    @level2type = N'COLUMN', @level2name = N'UpdateBy';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'วันที่แก้ไข',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTemporaryItemDetail',
    @level2type = N'COLUMN', @level2name = N'UpdateOn';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'จำนวน',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTemporaryItemDetail',
    @level2type = N'COLUMN', @level2name = N'Quantity';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'หน่วยของจำนวน อ้างอิง MasterNarcoticUnit.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTemporaryItemDetail',
    @level2type = N'COLUMN', @level2name = N'UnitOfQuantity';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ปริมาณต่อจำนวน',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTemporaryItemDetail',
    @level2type = N'COLUMN', @level2name = N'ContentPerQuantity';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'หน่วยของปริมาณต่อจำนวน อ้างอิง MasterNarcoticUnit.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTemporaryItemDetail',
    @level2type = N'COLUMN', @level2name = N'UnitOfContentPerQuantity';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ชื่อสิ่งปรุง (Name of substance or preparations)',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTemporaryItemDetail',
    @level2type = N'COLUMN', @level2name = N'NameOfSubstanceOrPreparations';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ชื่อยาเสพติดให้โทษในสิ่งปรุง อ้างอิง MasterNarcoticEster.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTemporaryItemDetail',
    @level2type = N'COLUMN', @level2name = N'NarcoticSubstancesContainedTherein';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'ปริมาณยาเสพติดให้โทษในหนึ่งหน่วย',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTemporaryItemDetail',
    @level2type = N'COLUMN', @level2name = N'ContentPerUnit';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'หน่วยของปริมาณยาเสพติดให้โทษในหนึ่งหน่วย อ้างอิง MasterNarcoticUnit.Id',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTemporaryItemDetail',
    @level2type = N'COLUMN', @level2name = N'UnitOfContentPerUnit';
GO

EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = N'รวมปริมาณยาเสพติดให้โทษ',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'RequisitionTemporaryItemDetail',
    @level2type = N'COLUMN', @level2name = N'TotalQuantityOfNarcoticSubstances';
GO
