
简化SQL,attrlength长度，displayname名称：
  select    attrlength,displayname from  md_property where classid in 
  (select  id from  md_class ml where ml.displayname='流程生产订单明细') for update   -- 1、md_property 实体属性(表)，--md_class 表示 实体(表）,classid 元数据单表的主表ID， 
      
 select columnlength,displayname from md_column 
 where tableid='mm_mo'  for update  -- 2、md_column 元数据表2，-- id='mm_dmo'表示离散生产订单 
  --元数据显示字段长度的表md_column ,md_property  ,tableid 表ID，resmodule 模块代码。简化方式：直接指定表名。

 select  * from  mm_mo   --3、必须先查询出数，业务单据表（流程生产订单明细）    
 
select  inputlength,showname from bd_userdefitem  where showname in ('配件备注','铭牌备注')   for update  --4、用户定义属性更改长度
 
