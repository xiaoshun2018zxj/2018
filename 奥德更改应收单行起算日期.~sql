   业务:应收单账龄分析表的日期不对:  
   原因:应收单的【起算日期】不正确,  二期供应链上线后的的从发票传递过来，受销售订单"收款协议"的生效日期影响.
    解决:前台无法更改起算日期,后台更改收款协议,再更改应收单的起算日期.
     很多单据如何加上''可设置一个编码,然后在记事本替换;
update ar_recitem set busidate='2018-07-01 00:00:00' where billno in('D0TA20180719010','D0SA20180723033','D0SA20180723044','D0AT20180803145')



  select  busidate,billno  from arap_busidata where billno='D0AT20180726030'     
