  物料PK=(select   code,pk_source   from bd_material_v where code ='0103030034'  )    
  库存组织PK=(select   code,pk_stockorg  from org_stockorg  where code='809')  
   交易类型=(select   pk_billtypeid,  pk_billtypecode   from bd_billtype    where  billtypename ='生产材料领用')   --1001D1100000001GIZOY

select     cmaterialoid ,ccostobject,  dbizdate   from ic_flow where   cmaterialoid='1001D110000000CBY17X'
  and coutcalbodyoid='0001B110000000007JO0'     
    
  select  cmaterialoid,vproductbatch ， nassistnum ， dbizdate,cbodytranstypecode，ccostobject  from  ic_material_b    
   where   cmaterialoid='1001D110000000CBY17X' and  pk_org ='0001B110000000007JO0'     and   cbodytranstypecode='4D-Cxx-02'       
   and      dbizdate>'2018-11-01 00:00:00'    and   dbizdate<'2018-11-30 00:00:00'   order by ccostobject
  
 

 更改库存流水账：
update ic_flow set dbilldate='2018-07-24 14:40:04',dbizdate='2018-07-24 14:40:04',taudittime='2018-07-24 14:40:04'where vbillcode='CRTA180801007';
update  ic_purchasein_h  set dbilldate='2018-07-24 14:40:04', taudittime='2018-07-24 14:40:04' where  vbillcode='CRTA180801007';--表头
update ic_purchasein_b  set dbizdate='2018-07-24 14:40:04' where  cgeneralhid=(select cgeneralhid from ic_purchasein_h  where vbillcode='CRTA180801007') --表体
