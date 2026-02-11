page 50114 EmployeeRegistrationsCardPage
{
    PageType = Card;
    SourceTable = EmployeeRegistrations;
    Caption = 'Employee Registrations Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
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
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    Caption = 'Gender';
                }
                field(EmployeeAge; Rec.EmployeeAge)
                {
                    ApplicationArea = All;
                    Caption = 'Age';
                }
            }
            part(EmployeeRegistrationLines; EmployeeRegistrationLines)
            {
                SubPageLink = EmployeeRegistrationNumber = field(EmployeeRegistrationNumber);
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Submit)
            {
                Caption = 'Submit';
                ApplicationArea = All;
                Enabled = not IsSubmitEnable;
                trigger OnAction()
                var
                    EmployeeRegistrationsCodeunit: Codeunit EmployeeRegistrationCodeunit;
                begin
                    EmployeeRegistrationsCodeunit.RegisterEmployee(Rec);
                end;
            }
        }
    }
    trigger OnOpenPage()
    begin
        if REc.EmployeeRegistrationStatus = Rec.EmployeeRegistrationStatus::Submitted then
            IsSubmitEnable := true;
    end;

    var
        IsSubmitEnable: Boolean;
}
