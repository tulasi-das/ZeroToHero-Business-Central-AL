page 50111 DepartmentListPart
{
    PageType = CardPart;
    ApplicationArea = All;
    SourceTable = DepartmentsTable;
    Caption = 'Departments';

    layout
    {
        area(Content)
        {
            cuegroup(DepartmentList)
            {
                Caption = 'Departments';
                field(DepartmentCount; Rec.DepartmentCount)
                {
                    ApplicationArea = All;
                    Caption = 'Department Count';
                    DrillDownPageId = DepartmentListPage;
                }
            }
        }
    }

    var
        myInt: Integer;
}
