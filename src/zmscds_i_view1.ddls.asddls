@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS : Joins'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMSCDS_I_VIEW1 as select from zmsapr20_dt_cust as cust
join zmsapr20_dt_so as head
on head.buyer = cust.cust_id
{
    key cust.cust_id as CustId,
    key head.soid as Soid,
    cust.name as Name,
    cust.company_name as CompanyName,
    cust.country as Country,
    cust.city as City,
    cust.mobile as Mobile,
    cust.local_last_changed as LocalLastChanged,
    cust.last_changed as LastChanged,
    cust.local_changed_by as LocalChangedBy,
    cust.last_changed_by as LastChangedBy,
    head.buyer as Buyer,
    head.sales_person as SalesPerson,
    head.sales_timestamp as SalesTimestamp,
    head.sales_manager as SalesManager,
    head.approval_timestamp as ApprovalTimestamp,
    head.created_by as CreatedBy,
    head.created_on as CreatedOn,
    head.changed_by as ChangedBy,
    head.changed_on as ChangedOn,
    head.url as Url
}
