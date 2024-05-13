use CUAHANGDIENTHOAI
go

select Image from tb_ProductDetailImage where ProductDetailId =5 and IsDefault=1



SELECT 
    P.Title AS ProductTitle, 
    PC.Title AS CategoryTitle, 
    CO.Title AS CompanyTitle
FROM 
    tb_Products AS P
JOIN 
    tb_ProductCategory AS PC ON P.ProductCategoryId = PC.ProductCategoryId
JOIN 
    tb_ProductCompany AS CO ON P.ProductCompanyId = CO.ProductCompanyId;

	SELECT 
    P.Title AS ProductTitle, 
    PC.Title AS CategoryTitle, 
    CASE 
        WHEN PC.Title = 'Điện Thoại' THEN 'Tất cả các hãng'
        ELSE CO.Title 
    END AS CompanyTitle
FROM 
    tb_Products AS P
JOIN 
    tb_ProductCategory AS PC ON P.ProductCategoryId = PC.ProductCategoryId
JOIN 
    tb_ProductCompany AS CO ON P.ProductCompanyId = CO.ProductCompanyId;




SELECT DISTINCT
    PC.Title AS CategoryTitle,
    CO.Title AS CompanyTitle
FROM 
    tb_Products AS P
INNER JOIN 
    tb_ProductCategory AS PC ON P.ProductCategoryId = PC.ProductCategoryId
INNER JOIN 
    tb_ProductCompany AS CO ON P.ProductCompanyId = CO.ProductCompanyId
WHERE
    PC.Title = 'Điện Thoại';

SELECT ProductCompanyId
FROM tb_Products
WHERE ProductCategoryId = 1;

SELECT DISTINCT
    (SELECT Title 
     FROM tb_ProductCompany 
     WHERE ProductCompanyId = P.ProductCompanyId) AS CompanyTitle
FROM 
    tb_Products AS P
WHERE 
    ProductCategoryId = 1;


	select * from tb_ProductCompany

--//ok láy title 
	SELECT 
    CompanyTitle,
    ProductCompanyId
FROM (
    SELECT 
        (SELECT Title 
         FROM tb_ProductCompany 
         WHERE ProductCompanyId = P.ProductCompanyId) AS CompanyTitle,
        P.ProductCompanyId,
        ROW_NUMBER() OVER (PARTITION BY (SELECT Title 
                                         FROM tb_ProductCompany 
                                         WHERE ProductCompanyId = P.ProductCompanyId) 
                           ORDER BY P.ProductCompanyId) AS RowNum
    FROM 
        tb_Products AS P
    WHERE 
        P.ProductCategoryId = 3
) AS Subquery
WHERE 
    RowNum = 1;



select Color , Capacity,ProductDetailId from tb_ProductDetail where   Color = 'TinTan Xanh' and ProductsId='1'


SELECT MIN(ProductDetailId) AS ProductDetailId ,Color,Capacity
FROM tb_ProductDetail
WHERE ProductsId = 1
GROUP BY Capacity ,Color

SELECT MIN(ProductDetailId) AS ProductDetailId, Color
FROM tb_ProductDetail
WHERE ProductsId = 1
GROUP BY Color

SELECT MIN(ProductDetailId) AS ProductDetailId, Capacity
FROM tb_ProductDetail
WHERE ProductsId = 1
GROUP BY Capacity


SELECT MIN(ProductDetailId) AS ProductDetailId, Color AS FilteredValue1
FROM tb_ProductDetail
WHERE ProductsId = 3
GROUP BY Color

UNION

SELECT MIN(ProductDetailId) AS ProductDetailId, CAST(Capacity AS NVARCHAR(MAX)) AS FilteredValue
FROM tb_ProductDetail
WHERE ProductsId = 3
GROUP BY Capacity


select Price , PriceSale from tb_ProductDetail where Color='Xám'and Capacity ='256' and ProductsId = 3

select Color , ProductDetailId,Price from tb_ProductDetail where Capacity =10000 and ProductsId = 1





SELECT MIN(ProductDetailId) AS ProductDetailId,Capacity
FROM tb_ProductDetail
WHERE ProductsId = 1
GROUP BY Capacity