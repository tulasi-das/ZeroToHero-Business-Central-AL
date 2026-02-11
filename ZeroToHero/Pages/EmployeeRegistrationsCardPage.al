page 50114 EmployeeRegistrationsCardPage
{
    PageType = Card;
    UsageCategory = Administration;
    SourceTable = EmployeeRegistrations;
    Caption = 'Employee Registrations Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(EmployeeRegistrationNumber; Rec.EmployeeRegistrationNumber)
                {
                    ApplicationArea = All;
                    Caption = 'Registration Number';
                }
                field(EmployeeName; Rec.EmployeeName)
                {
                    ApplicationArea = All;
                    Caption = 'Employee Name';
                }
                field(EmployeeRegistrationStatus; Rec.EmployeeRegistrationStatus)
                {
                    ApplicationArea = All;
                    Caption = 'Registration Status';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    Caption = 'Gender';
                }
                field(EmployeeAge; Rec.EmployeeAge)
                {
                    ApplicationArea = All;
                    Caption = 'Age';
                }
            }
            part(EmployeeRegistrationLines; EmployeeRegistrationLines)
            {
                SubPageLink = EmployeeRegistrationNumber = field(EmployeeRegistrationNumber);
                ApplicationArea = all;
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
