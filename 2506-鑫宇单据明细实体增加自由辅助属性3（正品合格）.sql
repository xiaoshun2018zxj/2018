单据明细实体，    0103020056物料对应的单据增加“自由辅助属性3即硅片质量等级”。
1.1查询单据明细实体

select vfree3，cbillid from ia_detailledger where     vbillcode in('IA201808001080900','IA201808000980900') and caccountperiod='2018-08' 
 and cinventoryid=(select pk_material from bd_material where code='0103020056') 
 and pk_org=(select pk_costregion  from org_costregion where code='809') 
1.2更改单据明细实体

update ia_detailledger set vfree3='1001B1100000000095SO' where     vbillcode in('IA201808001080900','IA201808000980900') and caccountperiod='2018-08' 
 and cinventoryid=(select pk_material from bd_material where code='0103020056') 
 and pk_org=(select pk_costregion  from org_costregion where code='809')
 
1.3提交
commit;



1.1查询单据明细实体
81200I620181100848,出入库类型:改成研发材料领用4D-Cxx-04,'1001D1100000001GIZP9',公司:812

select  ctrantypeid ,vbillcode, nmny  from ia_detailledger where     vbillcode ='81200I620181100848' 
更改81200I620181100848出入库流水账-出入库类型
update ia_detailledger set ctrantypeid='1001D1100000001GIZP9' where vbillcode ='81200I620181100848' 
   更改单据出入库类型
                                                                                                                     '                                                                         
 select ctrantypeid from ia_i6bill  where vbillcode ='81200I620181100848'  for update 
