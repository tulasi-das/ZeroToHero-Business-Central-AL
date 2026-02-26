page 50117 EmployeeAPIPage
{
    PageType = API;
    APIVersion = 'v2.0';
    EntitySetName = 'Employees';
    EntityName = 'Employee';
    APIPublisher = 'Tulasidas';
    APIGroup = 'ZeroToHero';
    UsageCategory = Administration;
    SourceTable = EmployeeTable;
    DelayedInsert = true;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(EmployeeId; Rec.EmployeeId)
                {
                    ApplicationArea = All;
                    Caption = 'Employee ID';
                }
                field(EmployeeName; Rec.EmployeeName)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field(EmployeeAge; Rec.EmployeeAge)
                {
                    ApplicationArea = All;
                    Caption = 'Age';
                }
                field(EmployeeeAccountTypeOption; Rec.EmployeeeAccountTypeOption)
                {
                    ApplicationArea = All;
                    Caption = 'Account Type (Option)';
                }
                field(EmployeeeAccountTypeEnum; Rec.EmployeeeAccountTypeEnum)
                {
                    ApplicationArea = All;
                    Caption = 'Account Type (Enum)';
                }
                field(EmployeeIdValue; Rec.EmployeeIdValue)
                {
                    ApplicationArea = All;
                    Caption = 'Employee ID Value';
                }
                field(BasicSalary; Rec.BasicSalary)
                {
                    ApplicationArea = All;
                    Caption = 'Basic Salary';
                }
            }
        }
    }

}