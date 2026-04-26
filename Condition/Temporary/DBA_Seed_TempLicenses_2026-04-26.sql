-- =============================================================================
-- Seed test licenses for ALL 18 Z4 Temporary Permit variants
-- Date:        2026-04-26
-- Author:      Z4 dev team
-- Target DB:   NCDB (Dev_1 first, then Dev_2 / Stage / UAT)
-- Idempotent:  YES — safe to re-run; uses LicenseNo natural-key guard
-- Rollback:    section at end (commented; uncomment to undo)
--
-- Coverage: 18 LicenseTypeId variants × 3 licenses each = 54 License rows
--           Each License has 1 LicenseParticipant row (applicant info auto-fill)
--           Total: 108 rows
--
-- All licenses use:
--   LicenseNo prefix:  'SEED-{label}-{n}'  (e.g. 'SEED-N1IMP-1')
--   Applicant:         'บริษัท ทดสอบ เฉพาะคราว จำกัด'  (TaxId 0105521023592)
--   IssueDate:         2026-01-01
--   ExpireDate:        2029-12-31
--   ObjectiveId:       1 (generic)
--   Status:            1 (active)
--   RequisitionId:     1 (existing seed/sentinel — verify on each env before run)
--   CreateBy:          1 (admin)
--
-- Variants covered (LT → form):
--   21/22  → ยส.1 IMP/EXP        (NarcoticTypeId=1)
--   31/32  → ยส.2 IMP/EXP        (NarcoticTypeId=2)
--   6/7    → ยส.3 IMP/EXP        (NarcoticTypeId=3)
--   47/48  → ยส.4 IMP/EXP        (NarcoticTypeId=4)
--   52/53  → ยส.5 IMP/EXP        (NarcoticTypeId=5)
--   26/27  → ว.จ.1 IMP/EXP       (NarcoticTypeId=6)
--   35/36  → ว.จ.2 IMP/EXP       (NarcoticTypeId=7)
--   12/14  → ว.จ.3 IMP/EXP       (NarcoticTypeId=8, dual-mapping P34)
--   13/15  → ว.จ.4 IMP/EXP       (NarcoticTypeId=9, dual-mapping P34)
--          (LT 14/27/15/36 also serve ว.พิเศษ EXP multi-license)
-- =============================================================================

USE NCDB;
GO

SET XACT_ABORT ON;
SET NOCOUNT ON;

PRINT N'======================================================================';
PRINT N' Z4 Temporary Permit — Test License Seed';
PRINT N' Run date: ' + CONVERT(NVARCHAR(30), GETDATE(), 121);
PRINT N'======================================================================';

-- ---------------------------------------------------------------------------
-- Pre-flight: verify parent Requisition row exists (License.RequisitionId NOT NULL)
-- ---------------------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM Requisition WHERE Id = 1)
BEGIN
    RAISERROR(N'Pre-flight FAIL: Requisition Id=1 not found. Adjust @ParentReqId below to a valid Requisition.Id before re-running.', 16, 1);
    RETURN;
END;

DECLARE @ParentReqId INT = 1;
DECLARE @SeedTaxId NVARCHAR(20) = '0105521033333';
DECLARE @SeedJuristic NVARCHAR(255) = N'บริษัท ทดสอบ เฉพาะคราว จำกัด';
DECLARE @SeedFullName NVARCHAR(255) = N'บริษัท ทดสอบ เฉพาะคราว จำกัด';
DECLARE @SeedFullAddr NVARCHAR(500) = N'123 ถนนทดสอบ แขวงทดสอบ เขตทดสอบ กรุงเทพมหานคร 10110';
DECLARE @SeedFullNameEn NVARCHAR(255) = N'Test Temporary Permit Co., Ltd.';
DECLARE @SeedFullAddrEn NVARCHAR(500) = N'123 Test Road, Test, Test, Bangkok 10110';
DECLARE @IssueDate DATETIME = '2026-01-01';
DECLARE @ExpireDate DATETIME = '2029-12-31';
DECLARE @CreateBy INT = 1;
DECLARE @Now DATETIME = GETDATE();

-- ---------------------------------------------------------------------------
-- Variant matrix (driver table) — drives License + LicenseParticipant inserts
-- ---------------------------------------------------------------------------
DECLARE @Variants TABLE (
    Label           NVARCHAR(20) PRIMARY KEY,   -- 'N1IMP', 'VJ3EXP', etc.
    LicenseTypeId   INT NOT NULL,
    NarcoticTypeId  INT NOT NULL,
    OperationTypeId INT NOT NULL,
    LabelTh         NVARCHAR(20) NOT NULL       -- 'ยส.1', 'ว.จ.3', etc. (used in LicenseNo)
);

INSERT INTO @Variants VALUES
    (N'N1IMP',    21, 1, 3, N'ยส.1'),    (N'N1EXP',    22, 1, 4, N'ยส.1'),
    (N'N2IMP',    31, 2, 3, N'ยส.2'),    (N'N2EXP',    32, 2, 4, N'ยส.2'),
    (N'N3IMP',     6, 3, 3, N'ยส.3'),    (N'N3EXP',     7, 3, 4, N'ยส.3'),
    (N'N4IMP',    47, 4, 4, N'ยส.4'),    (N'N4EXP',    48, 4, 5, N'ยส.4'),
    (N'N5IMP',    52, 5, 8, N'ยส.5'),    (N'N5EXP',    53, 5, 3, N'ยส.5'),
    (N'VJ1IMP',   26, 6, 3, N'ว.จ.1'),  (N'VJ1EXP',   27, 6, 4, N'ว.จ.1'),
    (N'VJ2IMP',   35, 7, 3, N'ว.จ.2'),  (N'VJ2EXP',   36, 7, 4, N'ว.จ.2'),
    (N'VJ3IMP',   12, 8, 3, N'ว.จ.3'),  (N'VJ3EXP',   14, 8, 4, N'ว.จ.3'),
    (N'VJ4IMP',   13, 9, 3, N'ว.จ.4'),  (N'VJ4EXP',   15, 9, 4, N'ว.จ.4');

-- 18 variants × 3 licenses = 54 License rows
DECLARE @SerialPerVariant INT = 3;

-- ---------------------------------------------------------------------------
-- Insert Licenses (idempotent via LicenseNo natural key)
-- ---------------------------------------------------------------------------
PRINT N'';
PRINT N'[1/2] Seeding License rows...';

DECLARE @Label NVARCHAR(20), @LT INT, @NT INT, @OpT INT, @LabTh NVARCHAR(20);
DECLARE @Serial INT, @LicenseNo NVARCHAR(255);
DECLARE @InsertedCount INT = 0, @SkippedCount INT = 0;

DECLARE variant_cursor CURSOR LOCAL FAST_FORWARD FOR
    SELECT Label, LicenseTypeId, NarcoticTypeId, OperationTypeId, LabelTh FROM @Variants;
OPEN variant_cursor;
FETCH NEXT FROM variant_cursor INTO @Label, @LT, @NT, @OpT, @LabTh;

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @Serial = 1;
    WHILE @Serial <= @SerialPerVariant
    BEGIN
        SET @LicenseNo = N'SEED-' + @Label + N'-' + CAST(@Serial AS NVARCHAR(2));

        IF NOT EXISTS (SELECT 1 FROM License WHERE LicenseNo = @LicenseNo)
        BEGIN
            INSERT INTO License (
                CreateBy, CreateOn, LicenseTypeId, RequisitionId, LicenseNo,
                OperationTypeId, NarcoticTypeId, IssueDate, ExpireDate,
                ObjectiveId, ObjectiveName, Status, Version,
                ApproverName
            )
            VALUES (
                @CreateBy, @Now, @LT, @ParentReqId, @LicenseNo,
                @OpT, @NT, @IssueDate, @ExpireDate,
                1, N'การวิเคราะห์/วิจัย (seed)', 1, 1,
                N'ผู้อนุญาต (Seed)'
            );
            SET @InsertedCount = @InsertedCount + 1;
        END
        ELSE
        BEGIN
            SET @SkippedCount = @SkippedCount + 1;
        END

        SET @Serial = @Serial + 1;
    END

    FETCH NEXT FROM variant_cursor INTO @Label, @LT, @NT, @OpT, @LabTh;
END

CLOSE variant_cursor;
DEALLOCATE variant_cursor;

PRINT N'  Inserted: ' + CAST(@InsertedCount AS NVARCHAR(10)) + N' license(s)';
PRINT N'  Skipped (already exist): ' + CAST(@SkippedCount AS NVARCHAR(10));

-- ---------------------------------------------------------------------------
-- Insert LicenseParticipant rows (idempotent via LicenseId + ParticipantTypeId)
-- ParticipantTypeId=3 = ผู้รับอนุญาต (License Holder) — auto-fills Step 1 applicant
-- ---------------------------------------------------------------------------
PRINT N'';
PRINT N'[2/2] Seeding LicenseParticipant rows (1 per License, ParticipantTypeId=3)...';

DECLARE @LpInserted INT = 0, @LpSkipped INT = 0;

INSERT INTO LicenseParticipant (
    CreateBy, CreateOn, LicenseId, ParticipantTypeId,
    IdentityType, JuristicName, FullName, TaxNumber, FullAddress,
    FullNameEn, FullAddressEn,
    ParticipantPlaceName
)
SELECT
    @CreateBy, @Now, l.Id, 3,
    '3', @SeedJuristic, @SeedFullName, @SeedTaxId, @SeedFullAddr,
    @SeedFullNameEn, @SeedFullAddrEn,
    @SeedJuristic
FROM License l
WHERE l.LicenseNo LIKE 'SEED-%'
  AND NOT EXISTS (
      SELECT 1 FROM LicenseParticipant lp
      WHERE lp.LicenseId = l.Id AND lp.ParticipantTypeId = 3
  );

SET @LpInserted = @@ROWCOUNT;

PRINT N'  Inserted: ' + CAST(@LpInserted AS NVARCHAR(10)) + N' participant row(s)';

-- ---------------------------------------------------------------------------
-- Final verification
-- ---------------------------------------------------------------------------
PRINT N'';
PRINT N'=== Verification ===';

SELECT
    v.LabelTh + N' (' + v.Label + N')' AS Variant,
    v.LicenseTypeId,
    COUNT(l.Id) AS LicensesSeeded,
    SUM(CASE WHEN lp.Id IS NOT NULL THEN 1 ELSE 0 END) AS WithParticipant
FROM @Variants v
LEFT JOIN License l ON l.LicenseTypeId = v.LicenseTypeId AND l.LicenseNo LIKE 'SEED-' + v.Label + '-%'
LEFT JOIN LicenseParticipant lp ON lp.LicenseId = l.Id AND lp.ParticipantTypeId = 3
GROUP BY v.LabelTh, v.Label, v.LicenseTypeId
ORDER BY v.LicenseTypeId;

PRINT N'';
PRINT N'Expected: 3 LicensesSeeded + 3 WithParticipant per variant.';
PRINT N'Total expected: 18 variants × 3 = 54 licenses, 54 participants.';
PRINT N'';
PRINT N'======================================================================';
PRINT N' Seed complete. Test these LicenseNo prefixes in Z4 forms:';
PRINT N'   N1 IMP → SEED-N1IMP-1, -2, -3      (LicenseTypeId=21)';
PRINT N'   N1 EXP → SEED-N1EXP-1, -2, -3      (LicenseTypeId=22)';
PRINT N'   ...';
PRINT N'   PSP    → use SEED-VJ1EXP-* / SEED-VJ2EXP-* / SEED-VJ3EXP-* / SEED-VJ4EXP-* (multi)';
PRINT N'======================================================================';

GO

-- =============================================================================
-- ROLLBACK SECTION — uncomment to remove ALL seed data (matches LicenseNo prefix)
-- =============================================================================
/*
USE NCDB;
GO

PRINT N'Rolling back seed (LicenseNo LIKE ''SEED-%'') ...';

DELETE lp FROM LicenseParticipant lp
INNER JOIN License l ON l.Id = lp.LicenseId
WHERE l.LicenseNo LIKE 'SEED-%';
PRINT N'  Deleted LicenseParticipant rows: ' + CAST(@@ROWCOUNT AS NVARCHAR(10));

DELETE FROM License WHERE LicenseNo LIKE 'SEED-%';
PRINT N'  Deleted License rows: ' + CAST(@@ROWCOUNT AS NVARCHAR(10));

PRINT N'Rollback complete.';
GO
*/
