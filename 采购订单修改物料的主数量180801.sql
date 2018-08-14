select   pk_srcmaterial 物料，vchangerate 换算率，nnum 主数量，  nastnum 数量 from po_order_b 
where   cpraybillcode ='QGAD180709008' for update   

update   po_order_b  set     nnum= '59.2920' where  pk_srcmaterial='1001A110000000041UBV' and    cpraybillcode ='QGAD180709008'
 update   po_order_b  set     nnum= '18.2520' where  pk_srcmaterial='1001A110000000041UBT' and    cpraybillcode ='QGAD180709008'


