select     fixedflag �̶�����,isprodmeasdoc  ����Ĭ�ϵ�λ,ispumeasdoc  �ɹ�Ĭ�ϵ�λ,isretailmeasdoc  ����Ĭ�ϵ�λ, issalemeasdoc  ����Ĭ�ϵ�λ,
isstockmeasdoc  ���Ĭ�ϵ�λ,isstorebalance  ���  from bd_materialconvert           where     ispumeasdoc='N'

update  bd_materialconvert     set fixedflag='Y',  isprodmeasdoc='Y',  ispumeasdoc='Y', isretailmeasdoc='Y',         issalemeasdoc='Y',      
 isstockmeasdoc='Y',     isstorebalance='Y'   where         ispumeasdoc='N'



�������ϻ�����
update  bd_materialconvert a  set   measrate=(select HSL from HSL b  where  a.pk_material =b.WLPK )   
where     exists
(select HSL from HSL b where  a.pk_material =b.WLPK )



select  a.code,a.pk_material  from bd_material_v  a,  HSL  where   a.pk_material = (select WLPK from HSL )


��λ��=��λ��(������)
select code,name  from bd_rack  where   pk_org  =(select   pk_stockorg from  org_stockorg   where code =103) 

update bd_rack set  name=code  where   pk_org  =(select   pk_stockorg from  org_stockorg   where code =103)
