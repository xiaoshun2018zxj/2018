    ����PK=(select   code,pk_source   from bd_material_v where code ='0103030034'  )    
  �����֯PK=(select   code,pk_stockorg  from org_stockorg  where code='809')  
   ��������=(select   pk_billtypeid,  pk_billtypecode   from bd_billtype    where  billtypename ='������������')   --1001D1100000001GIZOY  
   �ɱ�����:select * from resa_costcenter t where t.pk_costcenter ='1001D1100000008LB6OS';


 ���ϰ���
select def1,def2,code,name from  bd_material_v where  code in  (0104121978,0104121980,0104121977,0104121979,0104121950,0104120716)
   select def1,def2,code,name from  bd_material where  code in (0104121978,0104121980,0104121977,0104121979,0104121950,0104120716)          
   
   
  select def1,  from     bd_material_v      where code ='0105021313'  
  
                select   ccostcenterid  from   cm_prodcost where ccostobjectid='1001D110000000DL2HM7' ;     --1001D1100000008LB6OS                                                


