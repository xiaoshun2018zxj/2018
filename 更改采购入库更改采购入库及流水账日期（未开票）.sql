
select   dbilldate  单据日期 ,dbizdate  业务日期  ,taudittime  签字时间 from ic_flow where vbillcode='CRTA180801007' 
 更改库存流水账：
update ic_flow set dbilldate='2018-07-24 14:40:04',dbizdate='2018-07-24 14:40:04',taudittime='2018-07-24 14:40:04'where vbillcode='CRTA180801007';
update  ic_purchasein_h  set dbilldate='2018-07-24 14:40:04', taudittime='2018-07-24 14:40:04' where  vbillcode='CRTA180801007';--表头
update ic_purchasein_b  set dbizdate='2018-07-24 14:40:04' where  cgeneralhid=(select cgeneralhid from ic_purchasein_h  where vbillcode='CRTA180801007') --表体
