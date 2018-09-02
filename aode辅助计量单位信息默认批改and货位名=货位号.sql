select     fixedflag 固定换算,isprodmeasdoc  生产默认单位,ispumeasdoc  采购默认单位,isretailmeasdoc  零售默认单位, issalemeasdoc  销售默认单位,
isstockmeasdoc  库存默认单位,isstorebalance  结存  from bd_materialconvert           where     ispumeasdoc='N'

update  bd_materialconvert     set fixedflag='Y',  isprodmeasdoc='Y',  ispumeasdoc='Y', isretailmeasdoc='Y',         issalemeasdoc='Y',      
 isstockmeasdoc='Y',     isstorebalance='Y'   where         ispumeasdoc='N'



更改物料换算率
update  bd_materialconvert a  set   measrate=(select HSL from HSL b  where  a.pk_material =b.WLPK )   
where     exists
(select HSL from HSL b where  a.pk_material =b.WLPK )



select  a.code,a.pk_material  from bd_material_v  a,  HSL  where   a.pk_material = (select WLPK from HSL )


货位名=货位号(奥兰克)
select code,name  from bd_rack  where   pk_org  =(select   pk_stockorg from  org_stockorg   where code =103) 

update bd_rack set  name=code  where   pk_org  =(select   pk_stockorg from  org_stockorg   where code =103)
