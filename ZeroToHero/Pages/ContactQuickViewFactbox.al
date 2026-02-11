page 50103 ContactQuickViewFactBox
{
    PageType = CardPart;
    ApplicationArea = All;
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

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                Caption = 'New Action';
                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}
