  成本计算前 
update ia_detailledger set     nprice='1075.111667',  nmny ='2150.223334' 
where  vbillcode='I52018082700006725'

 修改销售成本结转单(发出商品贷方)
select    nprice,nmny from   ia_detailledger  where  vbillcode='I52018082700006725'


发出商品的单据号：I52018082700007291     物料编码：M01WD02100102   单价：243.59    金额：243.59

问题2:    成本计算后更改发出商品金额,需更改两张表
发出商品明细账:
update ia_goodsledger set     nprice='243.59',  nmny ='243.59' 
where  vbillcode='I52018082700007291'

 修改销售成本结转单(发出商品贷方)
select    nprice,nmny from   ia_goodsledger  where  vbillcode='I52018082700007291'
