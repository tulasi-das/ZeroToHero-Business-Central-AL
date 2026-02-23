xmlport 50100 ExpEmployeeRegistrationsXML
{
    Direction = Export;
    UseRequestPage = true;
    schema
    {
        textelement(EmployeeRegistrationsRoot)
        {
            textattribute(EmployeeRegistrationsRootVallue)
            {

            }
            tableelement(EmployeeRegistrations; EmployeeRegistrations)
            {
                XmlName = 'EmployeeRegistration';

                fieldelement(EmployeeRegistrationNumber; EmployeeRegistrations.EmployeeRegistrationNumber)
                {
                    trigger OnAfterAssignField()
                    begin
                        Message('The Employee Registration Number is %1', EmployeeRegistrations.EmployeeRegistrationNumber);
                    end;
                }
                fieldelement(EmployeeName; EmployeeRegistrations.EmployeeName)
                {

                }
                fieldelement(EmployeeGender; EmployeeRegistrations.Gender)
                {

                }
                fieldelement(EmployeeAge; EmployeeRegistrations.EmployeeAge)
                {

                }
                fieldelement(RegistrationStatus; EmployeeRegistrations.EmployeeRegistrationStatus)
                {

                }

                tableelement(EmployeeRegistrationLines; EmployeeRegistrationLines)
                {
                    LinkTable = EmployeeRegistrations;
                    LinkFields = EmployeeRegistrationNumber = field(EmployeeRegistrationNumber);
                    XmlName = 'EmployeeRegistrationLines';

                    fieldelement(LineNumber; EmployeeRegistrationLines.LineNumber)
                    {

                    }
                    fieldelement(Department; EmployeeRegistrationLines.RegistrationDepartment)
                    {

                    }
                    fieldelement(Designation; EmployeeRegistrationLines.DesignationName)
                    {

                    }
                    fieldelement(SalaryExpectations; EmployeeRegistrationLines.SalaryExpectations)
                    {
                        trigger OnAfterAssignField()
                        begin
                            Message('The Employee Registration Number is %1', EmployeeRegistrations.EmployeeRegistrationNumber);
                        end;
                    }

                }
            }
            trigger OnAfterAssignVariable()
            begin
                Message('This is called onafterassignvariable');
            end;
        }
    }

    requestpage
    {
        Caption = 'Export Employee Registrations to XML';
        SaveValues = true;

        layout
        {
            area(Content)
            {
                group(EmployeeRegistrationsFilter)
                {
                    Caption = 'Employee Registrations Filter';
                    field(MaxResults; myInt)
                    {
                        Caption = 'Max Results';
                        ApplicationArea = All;
                    }

                    field(IncludeLines; IncludeLines)
                    {
                        Caption = 'Include Registration Lines';
                        ApplicationArea = All;
                    }

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(FirstAction)
                {
                    Caption = 'First Action';
                    trigger OnAction()
                    begin
                        Message('The first action is triggered');
                    end;


                }
            }
        }
    }

    var
        myInt: Integer;
        IncludeLines: Boolean;

    trigger OnInitXmlPort()
    begin
        Message('The OnInitXmlPort XML Port is called');
    end;

    trigger OnPreXmlPort()
    begin
        Message('The On Pre XML Port is called');
    end;

    trigger OnPostXmlPort()
    begin
        Message('The On Post XML Port is called');
    end;
}