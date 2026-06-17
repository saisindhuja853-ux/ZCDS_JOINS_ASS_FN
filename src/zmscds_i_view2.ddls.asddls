@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS : outer joins'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMSCDS_I_VIEW2 as select from zmsapr20_dt_so as header
right outer join zmsapr20_dt_cust as cust
on header.buyer = cust.cust_id
{
    key cust.cust_id as CustId,
    key header.soid as Soid,
    cust.name as Name,
    cust.company_name as CompanyName,
    cust.country as Country,
    cust.city as City,
    cust.mobile as Mobile,
    cust.local_last_changed as LocalLastChanged,
    cust.last_changed as LastChanged,
    cust.local_changed_by as LocalChangedBy,
    cust.last_changed_by as LastChangedBy,
    header.buyer as Buyer,
    header.sales_person as SalesPerson,
    header.sales_timestamp as SalesTimestamp,
    header.sales_manager as SalesManager,
    header.approval_timestamp as ApprovalTimestamp,
    header.created_by as CreatedBy,
    header.created_on as CreatedOn,
    header.changed_by as ChangedBy,
    header.changed_on as ChangedOn,
    header.url as Url
}
