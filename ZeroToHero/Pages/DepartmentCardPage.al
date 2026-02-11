page 50105 DepartmentCardPage
{
    PageType = Card;
    SourceTable = DepartmentsTable;
    Caption = 'Department Card';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                Caption = 'General';
                field(DepartmentID; Rec.DepartmentID)
                {
                    Caption = 'Department ID';
                    ApplicationArea = All;
                }
                field(DepartmentHOD; Rec.DepartmentHOD)
                {
                    Caption = 'HOD';
                    ApplicationArea = All;
                }
                field(Department; Rec.Department)
                {
                    Caption = 'Department';
                    ApplicationArea = All;
                }
            }
            part(DepartmentPostitions; DepartmentPostitions)
            {
                SubPageLink = DepartmentID = field(DepartmentID);
                ApplicationArea = All;
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
