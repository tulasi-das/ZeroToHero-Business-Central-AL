page 50112 EmployeeRegistrationsList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = EmployeeRegistrations;
    Caption = 'Employee Registration List';
    CardPageId = EmployeeRegistrationsCardPage;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(EmployeeRegistrations)
            {
                field(EmployeeRegistrationNumber; Rec.EmployeeRegistrationNumber)
                {
                    ApplicationArea = All;
                    Caption = 'Registration Number';
                }
                field(EmployeeName; Rec.EmployeeName)
                {
                    ApplicationArea = All;
                    Caption = 'Employee Name';
                }
                field(EmployeeRegistrationStatus; Rec.EmployeeRegistrationStatus)
                {
                    ApplicationArea = All;
                    Caption = 'Registration Status';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ExportToXML)
            {
                Caption = 'Export to XML';
                ApplicationArea = All;
                Image = Export;

                trigger OnAction()
                var
                    ExportEmployeeRegistrationsXML: XmlPort ExpEmployeeRegistrationsXML;
                begin
                    ExportEmployeeRegistrationsXML.Run();
                end;
            }
        }

    }
    var
        myInt: Integer;
}
