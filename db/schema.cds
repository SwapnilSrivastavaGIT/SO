namespace SalesOrders;
using {managed, Currency} from '@sap/cds/common';
using from '@sap/cds-common-content';

entity SHeader : managed {

 key ID : Integer; //UUID @(Core.Computed : true);
 OrderNumber : Integer;
 Customer : String;
 Amount : Decimal;
 Ckey : Currency;
 items : Association to SItem;
}

entity SItem { // : managed {
    key ID : Integer; //UUID @(Core.Computed : true);
    OrderItem : Integer;
    Product : String(40);
    Quantity: Integer;
    UOM: String;
    header: Association to many SHeader on header.items = $self

}