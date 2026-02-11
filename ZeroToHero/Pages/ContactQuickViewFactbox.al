page 50103 ContactQuickViewFactBox
{
    PageType = CardPart;
    UsageCategory = Administration;
    SourceTable = EmployeeTable;
    Caption = 'Contact Quick Information';

    layout
    {
        area(Content)
        {
            group(QuickInformation)
            {
                Caption = 'Quick Information';
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    Caption = 'Email';
                }
                field(PhoneNumber; Rec.PhoneNumber)
                {
                    ApplicationArea = All;
                    Caption = 'Phone Number';
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    Caption = 'Address';
                }
            }
        }
    }

    var
        myInt: Integer;
}
