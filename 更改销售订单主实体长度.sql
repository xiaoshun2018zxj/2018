
��SQL,attrlength���ȣ�displayname���ƣ�
  select    attrlength,displayname from  md_property where classid in 
  (select  id from  md_class ml where ml.displayname='���۶�����ʵ��') for update -- 1��md_property ʵ������(��)��--md_class ��ʾ ʵ��(��,classid Ԫ���ݵ��������ID��
      Ԫ���ݱ�2       
 select columnlength,displayname from md_column where tableid='so_saleorder'  for update 
 Ҳ����in (select id from    md_table  where resmodule ='5009001_2' and id='mm_dmo')     for  update ��--2�� id='mm_dmo'��ʾ��ɢ�������� 
  --Ԫ������ʾ�ֶγ��ȵı�md_column ,md_property  ,tableid ��ID��resmodule ģ����롣�򻯷�ʽ��ֱ��ָ��������
 
 select  * from  so_saleorder---3�������Ȳ�ѯ������ҵ�񵥾ݱ���ɢ���������� 
3�������Ȳ�ѯ������ҵ�񵥾ݱ���ɢ����������
 
 select  inputlength,showname from bd_userdefitem  where showname in ('�����ע','�����������')   for update  --4���û��������Ը��ĳ���
