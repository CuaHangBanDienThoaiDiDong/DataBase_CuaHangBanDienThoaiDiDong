use CUAHANGDIENTHOAI
go



select Color , Capacity,ProductDetailId from tb_ProductDetail where   Color = 'TinTan Xanh' and ProductsId='1'


SELECT MIN(ProductDetailId) AS ProductDetailId ,Color,Capacity
FROM tb_ProductDetail
WHERE ProductsId = 1
GROUP BY Capacity ,Color



SELECT MIN(ProductDetailId) AS ProductDetailId,Capacity
FROM tb_ProductDetail
WHERE ProductsId = 1
GROUP BY Capacity