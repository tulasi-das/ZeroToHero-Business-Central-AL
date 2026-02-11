page 50113 EmployeeRegistrationsCardPart
{
    PageType = CardPart;
    UsageCategory = Administration;
    SourceTable = EmployeeRegistrations;

    layout
    {
        area(Content)
        {
            cuegroup(EmployeeRegistrations)
            {
                field(EmployeeRegistrationCount; Rec.EmployeeRegistrationCount)
                {
                    ApplicationArea = All;
                    DrillDownPageId = EmployeeRegistrationsList;
                }
            }
        }
    }


    var
        myInt: Integer;
}
