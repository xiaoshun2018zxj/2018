select distinct(ctrafficorgid) from so_saleorder_b where carorgid=(select  pk_financeorg  from org_financeorg  where code='102')       
 and    ctrafficorgid ='0001A110000000001JXE'  and ctrafficorgvid='0001A110000000001JXE'         
    
 
 select   pk_trafficorg   from org_trafficorg_v  where code='102'                    
 
 update so_saleorder_b
    set ctrafficorgid  = '0001A110000000001JXE',
        ctrafficorgvid = '0001A110000000001JXD'
  where carorgid ='0001A110000000001JXE'
      

