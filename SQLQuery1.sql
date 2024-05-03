use CUAHANGDIENTHOAI
go



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

select * from tb_ProductDetail where Color='Titan xanh'and Capacity ='1000' and ProductsId = 1





SELECT MIN(ProductDetailId) AS ProductDetailId,Capacity
FROM tb_ProductDetail
WHERE ProductsId = 1
GROUP BY Capacity