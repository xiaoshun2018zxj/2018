一、整理EXCl文档

二、创建数据库临时父表(KCCODE库存公司编码、WLCODE物料编码)，表名pc

三、导入EXCL表数据（PLSQ或navicat)  
   把EXCl中的数据导入到系统中，注意字段的对应关系。

四、根据父表按公司过滤创建字表pc_101、pc_102、pc_103
create table pc_101 as select * from pc where kccode='101'

select * from pc_101

五、查询、校验数据是否正确
SELECT wholemanaflag, pk_org, dr
  FROM bd_materialstock
 WHERE pk_org = (SELECT pk_stockorg FROM org_stockorg WHERE code = '101') --0001A11000000000039H
   and pk_material IN
       (SELECT pk_material
          FROM bd_material
         WHERE code IN (SELECT wlcode FROM pc_101))

六、批量更改、提交

update bd_materialstock
   set wholemanaflag = 'Y'
 where pk_org = (SELECT pk_stockorg FROM org_stockorg WHERE code = '101') 
   and pk_material IN
       (SELECT pk_material
          FROM bd_material
         WHERE code IN (SELECT wlcode FROM pc_101))  

七、根据检验结果入库（类似上述）
查询语句
SELECT wholemanaflag, pk_org, dr
  FROM bd_materialstock
 WHERE pk_org = (SELECT pk_stockorg FROM org_stockorg WHERE code = '104') 
   and pk_material IN
       (SELECT pk_material
          FROM bd_material
         WHERE code IN (SELECT  "wlcode"  FROM ZJ_104))                   
 批改语句        
 update bd_materialstock
   set stockbycheck  = 'N'
 where pk_org = (SELECT pk_stockorg FROM org_stockorg WHERE code = '104') 
   and pk_material IN
       (SELECT pk_material
          FROM bd_material
         WHERE code IN (SELECT "wlcode" FROM ZJ_104))   


八、安全库存（类似上述）
查询语句
   SELECT  safetystocknum , maxstornum,  lowstocknum ,pk_org, dr
  FROM bd_materialplan
 WHERE pk_org = (SELECT pk_stockorg FROM org_stockorg WHERE code = '104') 
   and pk_material IN
       (SELECT pk_material
          FROM bd_material
         WHERE code IN (SELECT  wlcode FROM AQ_104))    
    
 批改语句(加上exists 语法,同时字表数据不能重复)
 update bd_materialplan A
   set A.safetystocknum = (select  B.AQ  from AQ_1 B where    B.WLPK=A.pk_material)
 where  exists (select  *  from AQ_1 B where    B.WLPK=A.pk_material)
    
    and pk_org= (SELECT pk_stockorg FROM org_stockorg WHERE code = '1') 
   and pk_material IN
       (SELECT pk_material
          FROM bd_material
         WHERE code  in  (SELECT wlcode FROM AQ_1))           
              
         