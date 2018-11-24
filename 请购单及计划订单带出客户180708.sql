1.1.请购单子表显示客户编码和名称:----根据生产订单查询的客户
   getcolnmv(bd_customer,code,pk_customer ,getcolnmv(mm_dmo,ccustomerid, vfirstcode ,vfirstcode));
   getcolnmv(bd_customer,name,pk_customer ,getcolnmv(mm_dmo,ccustomerid, vfirstcode ,vfirstcode));
1.2.请购单子表显示客户编码和名称:----根据源头单据号（销售订单或生产订单）查询的客户

1.3.采购订单参照请购单显示客户编码和名称:----根据源头单据号（销售订单或生产订单）查询的客户（有坑，时灵时不灵）
终极解决方案：（源头单据号带出这个值,）
casscustid->getcolvalue(so_saleorder,ccustomerid, vbillcode ,vfirstcode);
vdef6->getcolvalue(bd_customer,name,pk_customer,getcolvalue(so_saleorder,ccustomerid, vbillcode ,vfirstcode));

2.1.1计划订单表显示客户编码和名称:----根据销售订单（源头单据号）查询的客户（难点：源头单据号的来源有多个）
       getcolnmv(bd_customer,code,pk_customer ,getcolnmv(so_saleorder,ccustomerid,vbillcode,vfirstcode));
       getcolnmv(bd_customer,name,pk_customer ,getcolnmv(so_saleorder,ccustomerid,vbillcode,vfirstcode));
2.1.2计划订单表显示客户编码和名称:----根据销售订单（源头单据号）查询的客户（难点：源头单据号的来源有多个）
      iif(getcolnmv(so_saleorder,ccustomerid,vbillcode,vfirstcode)==null, getcolnmv(bd_customer,code,pk_customer ,getcolnmv(mm_dmo,ccustomerid, vbillcode , vsrccode)), getcolnmv(bd_customer,code,pk_customer ,getcolnmv(so_saleorder,ccustomerid,vbillcode,vfirstcode)));
     iif(getcolnmv(so_saleorder,ccustomerid,vbillcode,vfirstcode)==null, getcolnmv(bd_customer,name,pk_customer ,getcolnmv(mm_dmo,ccustomerid, vbillcode , vsrccode)), getcolnmv(bd_customer,name,pk_customer ,getcolnmv(so_saleorder,ccustomerid,vbillcode,vfirstcode)));


2.2计划订单显示产品编码、产品名称、产品规格（难点：来源单据号的来源有多个，注意:==null）
cpmaterialvid->iif(getcolnmv(mm_pickm,cmaterialid, vbillcode , vsrccode)==null,getcolnmv(mm_dmo,cmaterialid, vbillcode , vsrccode),getcolnmv(mm_pickm,cmaterialid, vbillcode , vsrccode));
cpmaterialid.code->iif(getcolnmv(mm_pickm,cmaterialid, vbillcode , vsrccode)==null,getcolvalue(bd_material_v,code,pk_material,getcolnmv(mm_dmo,cmaterialvid, vbillcode , vsrccode)),getcolvalue(bd_material_v,code,pk_material,getcolnmv(mm_pickm,cmaterialvid, vbillcode , vsrccode)));
cpmaterialid.name->iif(getcolnmv(mm_pickm,cmaterialid, vbillcode , vsrccode)==null,getcolvalue(bd_material_v,name,pk_material,getcolnmv(mm_dmo,cmaterialvid, vbillcode , vsrccode)),getcolvalue(bd_material_v,name,pk_material,getcolnmv(mm_pickm,cmaterialvid, vbillcode , vsrccode)));


请购单子表的源头单据号取批改销售单据号(不能重复)
update po_praybill_b a
 set  a.vfirstcode=(select b.vfirstcode  from mm_plo b where b.vbillcode=a.vsourcecode  and b.vsrccode ='55C22018062900000053')  
 where exists
   (select * from mm_plo b where b.vbillcode=a.vsourcecode and b.vsrccode ='55C22018062900000053' )  



select  a. vfirstcode from po_praybill_b   a,mm_plo b where a.vsourcecode=b.vbillcode 





cpmaterialvid->iif(getcolnmv(mm_dmo,cmaterialid, vbillcode , vsrccode)="",
getcolnmv(mm_pickm,cmaterialid, vbillcode , vsrccode),
getcolnmv(mm_dmo,cmaterialid, vbillcode , vsrccode))







