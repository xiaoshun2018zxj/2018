һ������EXCl�ĵ�

�����������ݿ���ʱ����(KCCODE��湫˾���롢WLCODE���ϱ���)������pc

��������EXCL�����ݣ�PLSQ��navicat)  
   ��EXCl�е����ݵ��뵽ϵͳ�У�ע���ֶεĶ�Ӧ��ϵ��

�ġ����ݸ�����˾���˴����ֱ�pc_101��pc_102��pc_103
create table pc_101 as select * from pc where kccode='101'

select * from pc_101

�塢��ѯ��У�������Ƿ���ȷ
SELECT wholemanaflag, pk_org, dr
  FROM bd_materialstock
 WHERE pk_org = (SELECT pk_stockorg FROM org_stockorg WHERE code = '101') --0001A11000000000039H
   and pk_material IN
       (SELECT pk_material
          FROM bd_material
         WHERE code IN (SELECT wlcode FROM pc_101))

�����������ġ��ύ

update bd_materialstock
   set wholemanaflag = 'Y'
 where pk_org = (SELECT pk_stockorg FROM org_stockorg WHERE code = '101') 
   and pk_material IN
       (SELECT pk_material
          FROM bd_material
         WHERE code IN (SELECT wlcode FROM pc_101))  

�ߡ����ݼ�������⣨����������
��ѯ���
SELECT wholemanaflag, pk_org, dr
  FROM bd_materialstock
 WHERE pk_org = (SELECT pk_stockorg FROM org_stockorg WHERE code = '104') 
   and pk_material IN
       (SELECT pk_material
          FROM bd_material
         WHERE code IN (SELECT  "wlcode"  FROM ZJ_104))                   
 �������        
 update bd_materialstock
   set stockbycheck  = 'N'
 where pk_org = (SELECT pk_stockorg FROM org_stockorg WHERE code = '104') 
   and pk_material IN
       (SELECT pk_material
          FROM bd_material
         WHERE code IN (SELECT "wlcode" FROM ZJ_104))   


�ˡ���ȫ��棨����������
��ѯ���
   SELECT  safetystocknum , maxstornum,  lowstocknum ,pk_org, dr
  FROM bd_materialplan
 WHERE pk_org = (SELECT pk_stockorg FROM org_stockorg WHERE code = '104') 
   and pk_material IN
       (SELECT pk_material
          FROM bd_material
         WHERE code IN (SELECT  wlcode FROM AQ_104))    
    
 �������(����exists �﷨,ͬʱ�ֱ����ݲ����ظ�)
 update bd_materialplan A
   set A.safetystocknum = (select  B.AQ  from AQ_1 B where    B.WLPK=A.pk_material)
 where  exists (select  *  from AQ_1 B where    B.WLPK=A.pk_material)
    
    and pk_org= (SELECT pk_stockorg FROM org_stockorg WHERE code = '1') 
   and pk_material IN
       (SELECT pk_material
          FROM bd_material
         WHERE code  in  (SELECT wlcode FROM AQ_1))           
              
         