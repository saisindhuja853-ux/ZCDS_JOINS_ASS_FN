@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS : price_with_tax (product tbl)'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMSCDS_I_ASS1 as select from zmsapr20_dt_prod
{
     key prod_id as ProdId,
     descpt as Descpt,
     @Semantics.amount.currencyCode: 'Currency'
     price as Price,
     currency as Currency,
//     cast(price as abap.fltp) *1.18 as price_with_tax
cast(cast(price as abap.fltp) *1.18 as abap.dec(7,3)) as price_with_tax
}
