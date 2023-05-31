using SalesOrders as sd from '../db/schema';

service SalesService@(path:'/Sales')

{

//    entity SHeader as select from sd.SHeader;
    entity SHeader as projection on sd.SHeader;
    annotate SHeader with @odata.draft.enabled;
    
    entity SItem as projection on  sd.SItem;
    annotate SItem with @odata.draft.enabled;
}

