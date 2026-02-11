page 50108 EmployeeManagementRoleCenter
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Employee Management';
    // SourceTable = TableName;

    layout
    {
        area(RoleCenter)
        {
            part(Designations; DesignationsListPartPage)
            {
                ApplicationArea = All;
                Caption = 'Designations';
            }
            part(Employees; EmployeeListPart)
            {
                ApplicationArea = All;
                Caption = 'Employees';
            }
            part(Departments; DepartmentListPart)
            {
                ApplicationArea = All;
                Caption = 'Departments';
            }
            part(EmployeeRegistrations; EmployeeRegistrationsCardPart)
            {
                ApplicationArea = All;
                Caption = 'Employee Registrations';
            }
        }
    }

    var
        myInt: Integer;
}