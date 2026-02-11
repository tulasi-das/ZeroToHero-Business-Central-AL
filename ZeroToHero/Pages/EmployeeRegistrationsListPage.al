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

    var
        myInt: Integer;
}
