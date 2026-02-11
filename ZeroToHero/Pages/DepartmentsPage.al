page 50104 DepartmentListPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = DepartmentsTable;
    CardPageId = DepartmentCardPage;
    Caption = 'Departments List';
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(DepartmentRepeater)
            {
                field(DepartmentID; Rec.DepartmentID)
                {
                    ApplicationArea = All;
                    Caption = 'Department ID';
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                    Caption = 'Department';
                }
                field(DepartmentHOD; Rec.DepartmentHOD)
                {
                    ApplicationArea = All;
                    Caption = 'HOD';
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
