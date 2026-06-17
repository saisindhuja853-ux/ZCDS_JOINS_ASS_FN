@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS : Associations(join on demand)'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMSCDS_I_VIEW3 as select from zmsapr20_dt_so as head
association[1..1] to zmsapr20_dt_cust as _cust
on head.buyer = _cust.cust_id
{
    key head.soid as Soid,
    head.buyer as Buyer,
    head.sales_person as SalesPerson,
    head.sales_timestamp as SalesTimestamp,
    head.sales_manager as SalesManager,
    head.approval_timestamp as ApprovalTimestamp,
    head.created_by as CreatedBy,
    head.created_on as CreatedOn,
    head.changed_by as ChangedBy,
    head.changed_on as ChangedOn,
    head.url as Url,
    _cust
}
