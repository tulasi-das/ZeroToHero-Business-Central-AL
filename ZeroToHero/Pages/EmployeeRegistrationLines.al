page 50115 EmployeeRegistrationLines
{
    PageType = ListPart;
    SourceTable = EmployeeRegistrationLines;
    Caption = 'Registration Lines';

    layout
    {
        area(Content)
        {
            repeater(EmployeeRegistrationLines)
            {
                Caption = 'Employee Registration Lines';
                field(LineNumber; Rec.LineNumber)
                {
                    ApplicationArea = All;
                    Caption = 'Line Number';
                }
                field(RegistrationDepartment; Rec.RegistrationDepartment)
                {
                    ApplicationArea = All;
                    Caption = 'Department';
                }
                field(EmployeeDesingation; Rec.DesignationName)
                {
                    ApplicationArea = All;
                    Caption = 'Designation';
                }
                field(SalaryExpectations; Rec.SalaryExpectations)
                {
                    ApplicationArea = All;
                    Caption = 'Salary Expectations';
                }
            }
        }
    }

    var
        myInt: Integer;
}
