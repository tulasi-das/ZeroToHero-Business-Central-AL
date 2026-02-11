page 50109 DesignationsListPartPage
{
    PageType = CardPart;
    SourceTable = Designations;
    Caption = 'Designations';

    layout
    {
        area(Content)
        {
            cuegroup(Desingnation)
            {
                Caption = 'Designations List';
                field(DesignationID; Rec.DesignationCount)
                {
                    ApplicationArea = All;
                    Caption = 'Designation Count';
                    DrillDownPageId = DesignationsListPage;
                }
            }

        }
    }
}
