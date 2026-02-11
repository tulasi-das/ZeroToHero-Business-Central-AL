page 50106 DepartmentPostitions
{
    PageType = ListPart;
    SourceTable = DepartmentPositionsTable;
    Caption = 'Department Positions';

    layout
    {
        area(Content)
        {
            repeater(DepartmentList)
            {
                field(LineNo; Rec.LineNo)
                {
                    ApplicationArea = All;
                    Caption = 'Line No';
                }
                field(DesignationID; Rec.DesignationID)
                {
                    ApplicationArea = All;
                    Caption = 'Designation ID';
                }
                field(DesignationName; Rec.DesignationName)
                {
                    ApplicationArea = All;
                    Caption = 'Designation Name';
                }
                field(PositionCount; Rec.AvailablePositions)
                {
                    ApplicationArea = All;
                    Caption = 'Available Positions';
                }
            }
        }
    }

    var
        myInt: Integer;
}
