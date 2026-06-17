@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS : Sales per customer'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMSCDS_I_VIEW5 as select from zmsapr20_dt_so as head
//inner join zmsapr20_dt_cust as cust
//on head.buyer = cust.cust_id
inner join zmsapr20_dt_soit as item
on head.soid = item.soid
{
    head.buyer as CustomerID,
//    cust.name as CustomerName,
    
//    @Semantics.amount.currencyCode: 'Targetcurrency'
////    sum( item.amount) as Amount,
   item.currency as Currency,
   cast(sum(item.amount) as abap.dec(7,2) ) as Amount
//sum( currency_conversion(
//amount => item.amount,
//source_currency =>item.currency,
//target_currency => cast('EUR' as abap.cuky),
//exchange_rate_date=>head.sy
//
//)) as TotalAmount,
//cast('EUR' as abap.cuky) as Targetcurrency
//   
}
group by head.buyer,item.currency
