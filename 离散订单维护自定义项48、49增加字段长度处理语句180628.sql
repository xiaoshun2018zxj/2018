select * from  md_property where classid in (select id from  md_class ml where ml.componentid 
in (select mc.id from    md_component mc where  mc.ownmodule ='mmpac'and resmodule='5009001_2'));
            
 select * from md_column where tableid in (select id from    md_table  where resmodule ='5009001_2')   for  update
 
 select * from bd_userdefitem where  showname='业务填写配置要求' order by ts desc for update
 select * from bd_userdefitem where  showname='技术补充配置要求' order by ts desc for update
create table bd_userdefitem0628 as select * from bd_userdefitem
select * from bd_userdefitem0628