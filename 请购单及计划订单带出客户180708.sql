1.1.�빺���ӱ���ʾ�ͻ����������:----��������������ѯ�Ŀͻ�
   getcolnmv(bd_customer,code,pk_customer ,getcolnmv(mm_dmo,ccustomerid, vfirstcode ,vfirstcode));
   getcolnmv(bd_customer,name,pk_customer ,getcolnmv(mm_dmo,ccustomerid, vfirstcode ,vfirstcode));
1.2.�빺���ӱ���ʾ�ͻ����������:----����Դͷ���ݺţ����۶�����������������ѯ�Ŀͻ�

1.3.�ɹ����������빺����ʾ�ͻ����������:----����Դͷ���ݺţ����۶�����������������ѯ�Ŀͻ����пӣ�ʱ��ʱ���飩
�ռ������������Դͷ���ݺŴ������ֵ,��
casscustid->getcolvalue(so_saleorder,ccustomerid, vbillcode ,vfirstcode);
vdef6->getcolvalue(bd_customer,name,pk_customer,getcolvalue(so_saleorder,ccustomerid, vbillcode ,vfirstcode));

2.1.1�ƻ���������ʾ�ͻ����������:----�������۶�����Դͷ���ݺţ���ѯ�Ŀͻ����ѵ㣺Դͷ���ݺŵ���Դ�ж����
       getcolnmv(bd_customer,code,pk_customer ,getcolnmv(so_saleorder,ccustomerid,vbillcode,vfirstcode));
       getcolnmv(bd_customer,name,pk_customer ,getcolnmv(so_saleorder,ccustomerid,vbillcode,vfirstcode));
2.1.2�ƻ���������ʾ�ͻ����������:----�������۶�����Դͷ���ݺţ���ѯ�Ŀͻ����ѵ㣺Դͷ���ݺŵ���Դ�ж����
      iif(getcolnmv(so_saleorder,ccustomerid,vbillcode,vfirstcode)==null, getcolnmv(bd_customer,code,pk_customer ,getcolnmv(mm_dmo,ccustomerid, vbillcode , vsrccode)), getcolnmv(bd_customer,code,pk_customer ,getcolnmv(so_saleorder,ccustomerid,vbillcode,vfirstcode)));
     iif(getcolnmv(so_saleorder,ccustomerid,vbillcode,vfirstcode)==null, getcolnmv(bd_customer,name,pk_customer ,getcolnmv(mm_dmo,ccustomerid, vbillcode , vsrccode)), getcolnmv(bd_customer,name,pk_customer ,getcolnmv(so_saleorder,ccustomerid,vbillcode,vfirstcode)));


2.2�ƻ�������ʾ��Ʒ���롢��Ʒ���ơ���Ʒ����ѵ㣺��Դ���ݺŵ���Դ�ж����ע��:==null��
cpmaterialvid->iif(getcolnmv(mm_pickm,cmaterialid, vbillcode , vsrccode)==null,getcolnmv(mm_dmo,cmaterialid, vbillcode , vsrccode),getcolnmv(mm_pickm,cmaterialid, vbillcode , vsrccode));
cpmaterialid.code->iif(getcolnmv(mm_pickm,cmaterialid, vbillcode , vsrccode)==null,getcolvalue(bd_material_v,code,pk_material,getcolnmv(mm_dmo,cmaterialvid, vbillcode , vsrccode)),getcolvalue(bd_material_v,code,pk_material,getcolnmv(mm_pickm,cmaterialvid, vbillcode , vsrccode)));
cpmaterialid.name->iif(getcolnmv(mm_pickm,cmaterialid, vbillcode , vsrccode)==null,getcolvalue(bd_material_v,name,pk_material,getcolnmv(mm_dmo,cmaterialvid, vbillcode , vsrccode)),getcolvalue(bd_material_v,name,pk_material,getcolnmv(mm_pickm,cmaterialvid, vbillcode , vsrccode)));


�빺���ӱ��Դͷ���ݺ�ȡ�������۵��ݺ�(�����ظ�)
update po_praybill_b a
 set  a.vfirstcode=(select b.vfirstcode  from mm_plo b where b.vbillcode=a.vsourcecode  and b.vsrccode ='55C22018062900000053')  
 where exists
   (select * from mm_plo b where b.vbillcode=a.vsourcecode and b.vsrccode ='55C22018062900000053' )  



select  a. vfirstcode from po_praybill_b   a,mm_plo b where a.vsourcecode=b.vbillcode 





cpmaterialvid->iif(getcolnmv(mm_dmo,cmaterialid, vbillcode , vsrccode)="",
getcolnmv(mm_pickm,cmaterialid, vbillcode , vsrccode),
getcolnmv(mm_dmo,cmaterialid, vbillcode , vsrccode))







