namespace sap.capire.incidents;

using {
    cuid,
    sap.common.CodeList
} from '@sap/cds/common';
entity Incidents : cuid {
    status:  Association to Status ;
    title: String(150);
    urgency: Association to Urgency;
    customer: Association to Customers;
}
entity Customers : cuid {
    name: String(300);
    
}
entity Status : CodeList {
    key code: String enum{
        assigned= 'A';
        in_process ='I';
        on_hold='H';
        resolved='R';
        closed = 'C';
    };
    criticality: Integer;
    
}

entity Urgency : CodeList  {
    key code: String enum{
        high= 'H';
        medium = 'M';
        low = 'L';
    };
    
}

type EMailAddress : String;
type PhoneNumber : String;
