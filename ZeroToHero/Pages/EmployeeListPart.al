page 50110 EmployeeListPart
{
    PageType = CardPart;
    ApplicationArea = All;
    SourceTable = EmployeeTable;
    Caption = 'Employees';

    layout
    {
        area(Content)
        {
            cuegroup(Desingnation)
            {
                Caption = 'Employee List';
                field(EmployeeCount; Rec.EmployeeCount)
                {
                    ApplicationArea = All;
                    Caption = 'Employee Count';
                    DrillDownPageId = EmployeePage;
                }
            }

        }
    }
}
