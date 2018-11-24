1.1修改元数据表1
select * from  md_property where classid in (select id from  md_class ml where ml.componentid 
in (select mc.id from    md_component mc where  mc.ownmodule ='mmpac'and resmodule='5009001_2'));
1.2修改元数据表2        
 select * from md_column where tableid in (select id from    md_table  where resmodule ='5009001_2')   for  update
2修改单据表（ mm_dmo，选中-单击右键-找到字段修改长度）
 select * from  mm_dmo
 
3.修改用户定义属性表的长度（控制输入长度）
 select * from bd_userdefitem where  showname="业务填写配置要求" order by ts desc for update
 select * from bd_userdefitem where  showname='技术补充配置要求' order by ts desc for update
修改前备份
create table bd_userdefitem0628 as select * from bd_userdefitem
select * from bd_userdefitem0628
4.修改单据模板的长度（控制输入长度）
