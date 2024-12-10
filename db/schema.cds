
entity Status : CodeList {
    key code: String enum{
        assigned= 'A';
        in_process ='I';
        on_hold='H';
        resolved='R';
        closed = 'C';
    };
    critical: Integer;
    
}

entity Urgency : CodeList {
    key code: String enum{
        high= 'H';
        medium = 'M';
        low = 'L';
    };
    
}
type EMailAddress : String;
type PhoneNumber : String;