
��SQL,attrlength���ȣ�displayname���ƣ�
  select    attrlength,displayname from  md_property where classid in 
  (select  id from  md_class ml where ml.displayname='��������������ϸ') for update   -- 1��md_property ʵ������(��)��--md_class ��ʾ ʵ��(��,classid Ԫ���ݵ��������ID�� 
      
 select columnlength,displayname from md_column 
 where tableid='mm_mo'  for update  -- 2��md_column Ԫ���ݱ�2��-- id='mm_dmo'��ʾ��ɢ�������� 
  --Ԫ������ʾ�ֶγ��ȵı�md_column ,md_property  ,tableid ��ID��resmodule ģ����롣�򻯷�ʽ��ֱ��ָ��������

 select  * from  mm_mo   --3�������Ȳ�ѯ������ҵ�񵥾ݱ���������������ϸ��    
 
select  inputlength,showname from bd_userdefitem  where showname in ('�����ע','���Ʊ�ע')   for update  --4���û��������Ը��ĳ���
 
