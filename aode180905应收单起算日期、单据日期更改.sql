 1.��ѯӦ�յ��еĵ������ڡ���������--��ע�⣺Ӧ�յ��еĵ������ڡ��������ڣ���̨�ı��壬��ͷҲ���Զ��仯�� 
  select    billdate  ��������  ,busidate  ��������  ,billno  from ar_recitem where   billdate<='2017-12-31 00:00:00'    
   and       pk_org=(select    pk_financeorg  from org_financeorg where      code='1' )
   order by billdate
  billno='D0SA20180227023'  

  1.2��Ӧ�յ��е��������ڸ�ֵ���ڵ�������
 update ar_recitem set  billdate=busidate    where   billdate<='2017-12-31 00:00:00'    
   and       pk_org=(select    pk_financeorg  from org_financeorg where      code='1' )                
   
   1.3Ӧ�յ���ͷ�ĵ�������
          select    billdate  ��������  ,billno  from ar_recitem     where  billdate<='2017-12-31 00:00:00' 
           and       pk_org=(select    pk_financeorg  from org_financeorg where      code='1' )          
  
  1.4 ��ѯ�͸��� �������ֶΡ�������ڣ�arap_tally��ص����ű��ո���Э��� (arap_termitem) һ�������ͬ�����£�
   select    billdate  ��������  ,busidate,dr,billno  from   
 arap_tally   whearap_tallyre       billdate<='2017-12-31 00:00:00'    
   and       pk_org=(select    pk_financeorg  from org_financeorg where      code='1' )
   order by billdate    
   
       update  arap_tally  
 set   billdate=  busidate 
  where    billdate<='2017-12-31 00:00:00'    
   and       pk_org=(select    pk_financeorg  from org_financeorg where      code='1' )
   order by billdate    
   
   
