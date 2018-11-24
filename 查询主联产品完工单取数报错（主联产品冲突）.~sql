-- 查询BOM联副产品页签物料
select   name from bd_material_v
       where   pk_source in (select distinct(cmaterialid)  from bd_bom_outputs where  foutputtype in ('2','3')  )        
--查询BOM主表物料      
select   code,name from bd_material_v where pk_source in (select   distinct(hcmaterialid)  from bd_bom)
--查询联产品相对系数物料
select   pk_source,code,name from bd_material_v where pk_source in   (select   distinct(cmaterialid )  from cm_productcoefficient_b where producttype=2)

     select code from org_orgs where  pk_org in( 
 select   pk_org from cm_productcoefficient_b 
  where producttype=2 and  cmaterialid='1001D11000000077Y3FC'）        
  
  select * from cm_product a, cm_product_b b where a.vsourcecode='81300I32018100335' and    a.creationtime='2018-11-04 17:38:07'   
and a.cproductid=b.cproductid
 


