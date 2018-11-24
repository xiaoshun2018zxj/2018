
/*鑫宇更新组件产品版型*/

select def1  from bd_material where code ='0104150511' --P型双面PERC   1001D110000000BQOAPY   
select def1  from bd_material_v where code ='0104150511' 
select def1  from bd_material where code ='0104020026' -- 单晶PERC    1001D1100000008LK03V
--创建批改中间表
create table wlbx (
code varchar2(10),
name varchar2(255),
guige varchar2(255),
banxing varchar2(255),
cbfl varchar2(1)
)
;
select * from wlbx;
select  pk_source,pk_material  from bd_material_v where name ='单晶PERC'  --1001D1100000008LK03V
select pk_material from bd_material where name ='单晶PERC'   --1001D1100000008LK03V
--验证发现def1取值为bd_material_v主键（物料版本未升级时两个主键值一样）

--更新组件版型
update bd_material
   set def1 =
       (select pk_source from bd_material_v where name = '湿法黑硅PERC')
 where code in (select code from wlbx where banxing = '湿法黑硅PERC');
  
update bd_material_v
   set def1 =
       (select pk_source from bd_material_v where name = '湿法黑硅PERC')
 where code in (select code from wlbx where banxing = '湿法黑硅PERC')

--更新成本分类
update bd_materialprod
   set pk_marcostclass =
       (select pk_marcostclass
          from bd_marcostclass
         where code = 'C'
           and pk_org in (select pk_org from org_orgs where code = '809')) --1001D1100000007ANUE8
 where pk_material in
       (select pk_material
          from bd_material
         where code in (select code from wlbx where cbfl = 'C'))
   and pk_org = (select pk_factory from org_factory where code = '809')














