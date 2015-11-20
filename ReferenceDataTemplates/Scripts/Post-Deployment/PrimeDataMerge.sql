

DECLARE @h_xmlData int;

DECLARE @xmlData xml = N'<?xml version="1.0" encoding="utf-16" ?>
<SpecialOffer>
<Row SpecialOfferID="1" Description="No Discount" DiscountPct="0.00" Type="No Discount" Category="No Discount" StartDate="Jun  1 2005 12:00AM" EndDate="Dec 31 2008 12:00AM" MinQty="0" MaxQty="" rowguid="0290C4F5-191F-4337-AB6B-0A2DDE03CBF9" ModifiedDate="May  2 2005 12:00AM"/>
<Row SpecialOfferID="2" Description="Volume Discount 11 to 14" DiscountPct="0.02" Type="Volume Discount" Category="Reseller" StartDate="Jul  1 2005 12:00AM" EndDate="Jun 30 2008 12:00AM" MinQty="11" MaxQty="14" rowguid="D7542EE7-15DB-4541-985C-5CC27AEF26D6" ModifiedDate="Jun  1 2005 12:00AM"/>
<Row SpecialOfferID="3" Description="Volume Discount 15 to 24" DiscountPct="0.05" Type="Volume Discount" Category="Reseller" StartDate="Jul  1 2005 12:00AM" EndDate="Jun 30 2008 12:00AM" MinQty="15" MaxQty="24" rowguid="4BDBCC01-8CF7-40A9-B643-40EC5B717491" ModifiedDate="Jun  1 2005 12:00AM"/>
<Row SpecialOfferID="4" Description="Volume Discount 25 to 40" DiscountPct="0.10" Type="Volume Discount" Category="Reseller" StartDate="Jul  1 2005 12:00AM" EndDate="Jun 30 2008 12:00AM" MinQty="25" MaxQty="40" rowguid="504B5E85-8F3F-4EBC-9E1D-C1BC5DEA9AA8" ModifiedDate="Jun  1 2005 12:00AM"/>
<Row SpecialOfferID="5" Description="Volume Discount 41 to 60" DiscountPct="0.15" Type="Volume Discount" Category="Reseller" StartDate="Jul  1 2005 12:00AM" EndDate="Jun 30 2008 12:00AM" MinQty="41" MaxQty="60" rowguid="677E1D9D-944F-4E81-90E8-47EB0A82D48C" ModifiedDate="Jun  1 2005 12:00AM"/>
<Row SpecialOfferID="6" Description="Volume Discount over 60" DiscountPct="0.20" Type="Volume Discount" Category="Reseller" StartDate="Jul  1 2005 12:00AM" EndDate="Jun 30 2008 12:00AM" MinQty="61" MaxQty="" rowguid="8157F569-4E8D-46B6-9347-5D0F726A9439" ModifiedDate="Jun  1 2005 12:00AM"/>
<Row SpecialOfferID="7" Description="Mountain-100 Clearance Sale" DiscountPct="0.35" Type="Discontinued Product" Category="Reseller" StartDate="May 15 2006 12:00AM" EndDate="Jun 30 2006 12:00AM" MinQty="0" MaxQty="" rowguid="7DF15BF5-6C05-47E7-80A4-22BD1CE59A72" ModifiedDate="Apr 15 2006 12:00AM"/>
<Row SpecialOfferID="8" Description="Sport Helmet Discount-2002" DiscountPct="0.10" Type="Seasonal Discount" Category="Reseller" StartDate="Jul  1 2006 12:00AM" EndDate="Jul 31 2006 12:00AM" MinQty="0" MaxQty="" rowguid="20C5D2CC-A38F-48F8-AC9A-8F15943E52AE" ModifiedDate="Jun  1 2006 12:00AM"/>
<Row SpecialOfferID="9" Description="Road-650 Overstock" DiscountPct="0.30" Type="Excess Inventory" Category="Reseller" StartDate="Jul  1 2006 12:00AM" EndDate="Aug 31 2006 12:00AM" MinQty="0" MaxQty="" rowguid="0CF8472B-F9E6-4945-9E09-549D7DDE2198" ModifiedDate="Jun  1 2006 12:00AM"/>
<Row SpecialOfferID="10" Description="Mountain Tire Sale" DiscountPct="0.50" Type="Excess Inventory" Category="Customer" StartDate="Jun 15 2007 12:00AM" EndDate="Aug 30 2007 12:00AM" MinQty="0" MaxQty="" rowguid="220444AD-2EF3-4E4C-87E9-3AA6EE39A877" ModifiedDate="May 16 2007 12:00AM"/>
<Row SpecialOfferID="11" Description="Sport Helmet Discount-2003" DiscountPct="0.15" Type="Seasonal Discount" Category="Reseller" StartDate="Jul  1 2007 12:00AM" EndDate="Jul 31 2007 12:00AM" MinQty="0" MaxQty="" rowguid="E72DAB1D-F44D-448B-9FE2-F259A2F0210D" ModifiedDate="Jun  1 2007 12:00AM"/>
<Row SpecialOfferID="12" Description="LL Road Frame Sale" DiscountPct="0.35" Type="Excess Inventory" Category="Reseller" StartDate="Jul  1 2007 12:00AM" EndDate="Aug 15 2007 12:00AM" MinQty="0" MaxQty="" rowguid="C0AF1C89-9722-4235-9248-3FBA4D9E5841" ModifiedDate="Jun  1 2007 12:00AM"/>
<Row SpecialOfferID="13" Description="Touring-3000 Promotion" DiscountPct="0.15" Type="New Product" Category="Reseller" StartDate="Jul  1 2007 12:00AM" EndDate="Sep 30 2007 12:00AM" MinQty="0" MaxQty="" rowguid="5061CCE4-E021-45A8-9A75-DFB36CBBCE85" ModifiedDate="Jun  1 2007 12:00AM"/>
<Row SpecialOfferID="14" Description="Touring-1000 Promotion" DiscountPct="0.20" Type="New Product" Category="Reseller" StartDate="Jul  1 2007 12:00AM" EndDate="Sep 30 2007 12:00AM" MinQty="0" MaxQty="" rowguid="1AF84A9E-A98C-4BD9-B48F-DC2B8B6B010B" ModifiedDate="Jun  1 2007 12:00AM"/>
<Row SpecialOfferID="15" Description="Half-Price Pedal Sale" DiscountPct="0.50" Type="Seasonal Discount" Category="Customer" StartDate="Aug 15 2007 12:00AM" EndDate="Sep 15 2007 12:00AM" MinQty="0" MaxQty="" rowguid="03E3594D-6EBB-46A6-B8EE-A9289C0C2E47" ModifiedDate="Jul 16 2007 12:00AM"/>
<Row SpecialOfferID="16" Description="Mountain-500 Silver Clearance Sale" DiscountPct="0.40" Type="Discontinued Product" Category="Reseller" StartDate="May  1 2008 12:00AM" EndDate="Jun 30 2008 12:00AM" MinQty="0" MaxQty="" rowguid="EB7CB484-BCCF-4D2D-BF73-521B20014174" ModifiedDate="Apr  1 2008 12:00AM"/>
</SpecialOffer>

';

EXEC sp_xml_preparedocument @h_xmlData OUTPUT, @xmlData;

SET IDENTITY_INSERT [Sales].[SpecialOffer] ON;

MERGE [Sales].[SpecialOffer] AS target USING (
    SELECT
        SpecialOfferID = CAST(CASE SpecialOfferID WHEN '' THEN NULL ELSE SpecialOfferID END AS int) ,
        Description = CASE Description WHEN '' THEN '' ELSE NULLIF(Description, '') END ,
        DiscountPct = CAST(CASE DiscountPct WHEN '' THEN NULL ELSE DiscountPct END AS smallmoney) ,
        Type = CASE Type WHEN '' THEN '' ELSE NULLIF(Type, '') END ,
        Category = CASE Category WHEN '' THEN '' ELSE NULLIF(Category, '') END ,
        StartDate =  NULLIF(StartDate, '') ,
        EndDate =  NULLIF(EndDate, '') ,
        MinQty = CAST(CASE MinQty WHEN '' THEN NULL ELSE MinQty END AS int) ,
        MaxQty = CAST(CASE MaxQty WHEN '' THEN NULL ELSE MaxQty END AS int) ,
        rowguid = CASE rowguid WHEN '' THEN '' ELSE NULLIF(rowguid, '') END ,
        ModifiedDate =  NULLIF(ModifiedDate, '') 
    FROM OPENXML(@h_xmlData, '/SpecialOffer/Row', 1)
    WITH (
        SpecialOfferID nvarchar(max),
        Description nvarchar(max),
        DiscountPct nvarchar(max),
        Type nvarchar(max),
        Category nvarchar(max),
        StartDate nvarchar(max),
        EndDate nvarchar(max),
        MinQty nvarchar(max),
        MaxQty nvarchar(max),
        rowguid nvarchar(max),
        ModifiedDate nvarchar(max)
    ) as c
) AS source (
            SpecialOfferID , 
            Description , 
            DiscountPct , 
            Type , 
            Category , 
            StartDate , 
            EndDate , 
            MinQty , 
            MaxQty , 
            rowguid , 
            ModifiedDate)
ON (
        ISNULL(source.SpecialOfferID, '') = ISNULL(target.SpecialOfferID, '')
)
WHEN MATCHED THEN
    UPDATE SET 
        Description = source.Description,
        DiscountPct = source.DiscountPct,
        Type = source.Type,
        Category = source.Category,
        StartDate = source.StartDate,
        EndDate = source.EndDate,
        MinQty = source.MinQty,
        MaxQty = source.MaxQty,
        rowguid = source.rowguid,
        ModifiedDate = source.ModifiedDate
WHEN NOT MATCHED BY TARGET THEN
    INSERT (
            SpecialOfferID , 
            Description , 
            DiscountPct , 
            Type , 
            Category , 
            StartDate , 
            EndDate , 
            MinQty , 
            MaxQty , 
            rowguid , 
            ModifiedDate)
    VALUES (
            SpecialOfferID , 
            Description , 
            DiscountPct , 
            Type , 
            Category , 
            StartDate , 
            EndDate , 
            MinQty , 
            MaxQty , 
            rowguid , 
            ModifiedDate)
WHEN NOT MATCHED BY SOURCE
    THEN DELETE
;
SET IDENTITY_INSERT [Sales].[SpecialOffer] OFF;

EXEC sp_xml_removedocument @h_xmlData;

GO
PRINT N'Completed Prime Data Content Merge for SpecialOffer ';
GO


DECLARE @h_xmlData int;

DECLARE @xmlData xml = N'<?xml version="1.0" encoding="utf-16" ?>
<SalesPerson>
<Row BusinessEntityID="274" TerritoryID="" SalesQuota="" Bonus="0.00" CommissionPct="0.00" SalesYTD="559697.56" SalesLastYear="0.00" rowguid="48754992-9EE0-4C0E-8C94-9451604E3E02" ModifiedDate="Jan 28 2005 12:00AM"/>
<Row BusinessEntityID="275" TerritoryID="2" SalesQuota="300000.00" Bonus="4100.00" CommissionPct="0.01" SalesYTD="3763178.18" SalesLastYear="1750406.48" rowguid="1E0A7274-3064-4F58-88EE-4C6586C87169" ModifiedDate="Jun 24 2005 12:00AM"/>
<Row BusinessEntityID="276" TerritoryID="4" SalesQuota="250000.00" Bonus="2000.00" CommissionPct="0.02" SalesYTD="4251368.55" SalesLastYear="1439156.03" rowguid="4DD9EEE4-8E81-4F8C-AF97-683394C1F7C0" ModifiedDate="Jun 24 2005 12:00AM"/>
<Row BusinessEntityID="277" TerritoryID="3" SalesQuota="250000.00" Bonus="2500.00" CommissionPct="0.02" SalesYTD="3189418.37" SalesLastYear="1997186.20" rowguid="39012928-BFEC-4242-874D-423162C3F567" ModifiedDate="Jun 24 2005 12:00AM"/>
<Row BusinessEntityID="278" TerritoryID="6" SalesQuota="250000.00" Bonus="500.00" CommissionPct="0.01" SalesYTD="1453719.47" SalesLastYear="1620276.90" rowguid="7A0AE1AB-B283-40F9-91D1-167ABF06D720" ModifiedDate="Jun 24 2005 12:00AM"/>
<Row BusinessEntityID="279" TerritoryID="5" SalesQuota="300000.00" Bonus="6700.00" CommissionPct="0.01" SalesYTD="2315185.61" SalesLastYear="1849640.94" rowguid="52A5179D-3239-4157-AE29-17E868296DC0" ModifiedDate="Jun 24 2005 12:00AM"/>
<Row BusinessEntityID="280" TerritoryID="1" SalesQuota="250000.00" Bonus="5000.00" CommissionPct="0.01" SalesYTD="1352577.13" SalesLastYear="1927059.18" rowguid="BE941A4A-FB50-4947-BDA4-BB8972365B08" ModifiedDate="Jun 24 2005 12:00AM"/>
<Row BusinessEntityID="281" TerritoryID="4" SalesQuota="250000.00" Bonus="3550.00" CommissionPct="0.01" SalesYTD="2458535.62" SalesLastYear="2073506.00" rowguid="35326DDB-7278-4FEF-B3BA-EA137B69094E" ModifiedDate="Jun 24 2005 12:00AM"/>
<Row BusinessEntityID="282" TerritoryID="6" SalesQuota="250000.00" Bonus="5000.00" CommissionPct="0.02" SalesYTD="2604540.72" SalesLastYear="2038234.65" rowguid="31FD7FC1-DC84-4F05-B9A0-762519EACACC" ModifiedDate="Jun 24 2005 12:00AM"/>
<Row BusinessEntityID="283" TerritoryID="1" SalesQuota="250000.00" Bonus="3500.00" CommissionPct="0.01" SalesYTD="1573012.94" SalesLastYear="1371635.32" rowguid="6BAC15B2-8FFB-45A9-B6D5-040E16C2073F" ModifiedDate="Jun 24 2005 12:00AM"/>
<Row BusinessEntityID="284" TerritoryID="1" SalesQuota="300000.00" Bonus="3900.00" CommissionPct="0.02" SalesYTD="1576562.20" SalesLastYear="0.00" rowguid="AC94EC04-A2DC-43E3-8654-DD0C546ABC17" ModifiedDate="Oct 25 2006 12:00AM"/>
<Row BusinessEntityID="285" TerritoryID="" SalesQuota="" Bonus="0.00" CommissionPct="0.00" SalesYTD="172524.45" SalesLastYear="0.00" rowguid="CFDBEF27-B1F7-4A56-A878-0221C73BAE67" ModifiedDate="Apr  8 2007 12:00AM"/>
<Row BusinessEntityID="286" TerritoryID="9" SalesQuota="250000.00" Bonus="5650.00" CommissionPct="0.02" SalesYTD="1421810.92" SalesLastYear="2278548.98" rowguid="9B968777-75DC-45BD-A8DF-9CDAA72839E1" ModifiedDate="Jun 24 2007 12:00AM"/>
<Row BusinessEntityID="287" TerritoryID="" SalesQuota="" Bonus="0.00" CommissionPct="0.00" SalesYTD="519905.93" SalesLastYear="0.00" rowguid="1DD1F689-DF74-4149-8600-59555EEF154B" ModifiedDate="May 11 2006 12:00AM"/>
<Row BusinessEntityID="288" TerritoryID="8" SalesQuota="250000.00" Bonus="75.00" CommissionPct="0.02" SalesYTD="1827066.71" SalesLastYear="1307949.79" rowguid="224BB25A-62E3-493E-ACAF-4F8F5C72396A" ModifiedDate="Jun 24 2007 12:00AM"/>
<Row BusinessEntityID="289" TerritoryID="10" SalesQuota="250000.00" Bonus="5150.00" CommissionPct="0.02" SalesYTD="4116871.23" SalesLastYear="1635823.40" rowguid="25F6838D-9DB4-4833-9DDC-7A24283AF1BA" ModifiedDate="Jun 24 2006 12:00AM"/>
<Row BusinessEntityID="290" TerritoryID="7" SalesQuota="250000.00" Bonus="985.00" CommissionPct="0.02" SalesYTD="3121616.32" SalesLastYear="2396539.76" rowguid="F509E3D4-76C8-42AA-B353-90B7B8DB08DE" ModifiedDate="Jun 24 2006 12:00AM"/>
</SalesPerson>

';

EXEC sp_xml_preparedocument @h_xmlData OUTPUT, @xmlData;



MERGE [Sales].[SalesPerson] AS target USING (
    SELECT
        BusinessEntityID = CAST(CASE BusinessEntityID WHEN '' THEN NULL ELSE BusinessEntityID END AS int) ,
        TerritoryID = CAST(CASE TerritoryID WHEN '' THEN NULL ELSE TerritoryID END AS int) ,
        SalesQuota = CAST(CASE SalesQuota WHEN '' THEN NULL ELSE SalesQuota END AS money) ,
        Bonus = CAST(CASE Bonus WHEN '' THEN NULL ELSE Bonus END AS money) ,
        CommissionPct = CAST(CASE CommissionPct WHEN '' THEN NULL ELSE CommissionPct END AS smallmoney) ,
        SalesYTD = CAST(CASE SalesYTD WHEN '' THEN NULL ELSE SalesYTD END AS money) ,
        SalesLastYear = CAST(CASE SalesLastYear WHEN '' THEN NULL ELSE SalesLastYear END AS money) ,
        rowguid = CASE rowguid WHEN '' THEN '' ELSE NULLIF(rowguid, '') END ,
        ModifiedDate =  NULLIF(ModifiedDate, '') 
    FROM OPENXML(@h_xmlData, '/SalesPerson/Row', 1)
    WITH (
        BusinessEntityID nvarchar(max),
        TerritoryID nvarchar(max),
        SalesQuota nvarchar(max),
        Bonus nvarchar(max),
        CommissionPct nvarchar(max),
        SalesYTD nvarchar(max),
        SalesLastYear nvarchar(max),
        rowguid nvarchar(max),
        ModifiedDate nvarchar(max)
    ) as c
) AS source (
            BusinessEntityID , 
            TerritoryID , 
            SalesQuota , 
            Bonus , 
            CommissionPct , 
            SalesYTD , 
            SalesLastYear , 
            rowguid , 
            ModifiedDate)
ON (
        ISNULL(source.BusinessEntityID, '') = ISNULL(target.BusinessEntityID, '')
)
WHEN MATCHED THEN
    UPDATE SET 
        TerritoryID = source.TerritoryID,
        SalesQuota = source.SalesQuota,
        Bonus = source.Bonus,
        CommissionPct = source.CommissionPct,
        SalesYTD = source.SalesYTD,
        SalesLastYear = source.SalesLastYear,
        rowguid = source.rowguid,
        ModifiedDate = source.ModifiedDate
WHEN NOT MATCHED BY TARGET THEN
    INSERT (
            BusinessEntityID , 
            TerritoryID , 
            SalesQuota , 
            Bonus , 
            CommissionPct , 
            SalesYTD , 
            SalesLastYear , 
            rowguid , 
            ModifiedDate)
    VALUES (
            BusinessEntityID , 
            TerritoryID , 
            SalesQuota , 
            Bonus , 
            CommissionPct , 
            SalesYTD , 
            SalesLastYear , 
            rowguid , 
            ModifiedDate)
WHEN NOT MATCHED BY SOURCE
    THEN DELETE
;


EXEC sp_xml_removedocument @h_xmlData;

GO
PRINT N'Completed Prime Data Content Merge for SalesPerson ';
GO
