page 50107 DesignationsListPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Designations;
    Caption = 'Designation List';

    layout
    {
        area(Content)
        {
            repeater(Designation)
            {
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
                field(DesignationDepartment; Rec.DesignationDepartment)
                {
                    ApplicationArea = All;
                    Caption = 'Department';
                }
                field(AvaialablePositions; Rec.AvaialablePositions)
                {
                    ApplicationArea = All;
                    Caption = 'Available Positions';
                    Visible = not IsOpenedFromEmpReg;
                }
                field(SalaryThreshold; Rec.SalaryThreshold)
                {
                    ApplicationArea = All;
                    Caption = 'Salary Threshold';
                    Visible = not IsOpenedFromEmpReg;
                }
            }
        }
    }

    internal procedure SetIsOpenedFromEmpReg(IsOpenedFromEmpRegVar: Boolean)
    begin
        IsOpenedFromEmpReg := IsOpenedFromEmpRegVar;
    end;

    var
        IsOpenedFromEmpReg: Boolean;
}
