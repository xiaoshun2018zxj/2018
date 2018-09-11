 1.查询应收单行的单据日期、起算日期--（注意：应收单行的单据日期、起算日期，后台改表体，表头也会自动变化） 
  select    billdate  单据日期  ,busidate  起算日期  ,billno  from ar_recitem where   billdate<='2017-12-31 00:00:00'    
   and       pk_org=(select    pk_financeorg  from org_financeorg where      code='1' )
   order by billdate
  billno='D0SA20180227023'  

  1.2把应收单行的起算日期赋值等于单据日期
 update ar_recitem set  billdate=busidate    where   billdate<='2017-12-31 00:00:00'    
   and       pk_org=(select    pk_financeorg  from org_financeorg where      code='1' )                
   
   1.3应收单表头的单据日期
          select    billdate  单据日期  ,billno  from ar_recitem     where  billdate<='2017-12-31 00:00:00' 
           and       pk_org=(select    pk_financeorg  from org_financeorg where      code='1' )          
  
  1.4 查询和更改 “常用字段”表的日期（arap_tally相关的三张表，收付款协议表 (arap_termitem) 一般情况需同步更新）
   select    billdate  单据日期  ,busidate,dr,billno  from   
 arap_tally   whearap_tallyre       billdate<='2017-12-31 00:00:00'    
   and       pk_org=(select    pk_financeorg  from org_financeorg where      code='1' )
   order by billdate    
   
       update  arap_tally  
 set   billdate=  busidate 
  where    billdate<='2017-12-31 00:00:00'    
   and       pk_org=(select    pk_financeorg  from org_financeorg where      code='1' )
   order by billdate    
   
   
