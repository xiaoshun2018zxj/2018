1.1�޸�Ԫ���ݱ�1
select * from  md_property where classid in (select id from  md_class ml where ml.componentid 
in (select mc.id from    md_component mc where  mc.ownmodule ='mmpac'and resmodule='5009001_2'));
1.2�޸�Ԫ���ݱ�2        
 select * from md_column where tableid in (select id from    md_table  where resmodule ='5009001_2')   for  update
2�޸ĵ��ݱ� mm_dmo��ѡ��-�����Ҽ�-�ҵ��ֶ��޸ĳ��ȣ�
 select * from  mm_dmo
 
3.�޸��û��������Ա�ĳ��ȣ��������볤�ȣ�
 select * from bd_userdefitem where  showname="ҵ����д����Ҫ��" order by ts desc for update
 select * from bd_userdefitem where  showname='������������Ҫ��' order by ts desc for update
�޸�ǰ����
create table bd_userdefitem0628 as select * from bd_userdefitem
select * from bd_userdefitem0628
4.�޸ĵ���ģ��ĳ��ȣ��������볤�ȣ�
