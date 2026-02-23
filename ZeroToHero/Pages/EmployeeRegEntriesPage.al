page 50116 EmployeeRegistrationEntries
{
    Caption = 'Employee Registration Entries';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = EmployeeRegistrationEntries;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(EmployeeRegistrationEntries)
            {
                field(EmployeeRegistrationNumber; Rec.EmployeeRegistrationNumber)
                {
                    ApplicationArea = All;
                }
                field(EmployeeName; Rec.EmployeeName)
                {
                    ApplicationArea = All;
                }
                field(EmployeeGender; Rec.EmployeeGender)
                {
                    ApplicationArea = All;
                }
                field(EmployeeAge; Rec.EmployeeAge)
                {
                    ApplicationArea = All;
                }
                field(LineNumber; Rec.LineNumber)
                {
                    ApplicationArea = All;
                }
                field(EntryNo; Rec.EntryNo)
                {
                    ApplicationArea = All;
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                }
                field(Designation; Rec.Designation)
                {
                    ApplicationArea = All;
                }
                field(SalaryExpectations; Rec.SalaryExpectations)
                {
                    ApplicationArea = All;
                }
            }
        }

    }
}
