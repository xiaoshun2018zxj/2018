  发货单子实体 的子项自定义7 改为4000
简化SQL,attrlength长度，displayname名称：
  select    attrlength,displayname from  md_property where classid in 
  (select  id from  md_class ml  where ml.displayname='发货单子实体') for update -- 1、md_property 实体属性(表)，--md_class 表示 实体(表）,classid 元数据单表的主表ID，
      元数据表2       
 select columnlength,displayname from md_column 
 where tableid='so_delivery_b'  for update 
 也可以in (select id from    md_table  where resmodule ='5009001_2' and id='mm_dmo')     for  update ；--2、 id='mm_dmo'表示离散生产订单 
  --元数据显示字段长度的表md_column ,md_property  ,tableid 表ID，resmodule 模块代码。简化方式：直接指定表名。
 
 select  * from  mm_mo     ---3、必须先查询出数，业务单据表（发货单子实体）  
 select  inputlength,showname from bd_userdefitem  where showname in ('奥兰克设备号')   for update  --4、用户定义属性更改长度
