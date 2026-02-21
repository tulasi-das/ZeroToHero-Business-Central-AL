page 50112 EmployeeRegistrationsList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = EmployeeRegistrations;
    Caption = 'Employee Registration List';
    CardPageId = EmployeeRegistrationsCardPage;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(EmployeeRegistrations)
            {
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
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(GetEmployeeRegistrations)
            {
                Caption = 'Get Employee Registrations';
                trigger OnAction()
                var
                    EmployeeWebServices: Codeunit EmployeeWebServices;
                begin
                    EmployeeWebServices.GetEmployeeRegistrations();
                end;
            }
        }
    }

    var
        myInt: Integer;
}
