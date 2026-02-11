page 50100 EmployeePage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = EmployeeTable;
    CardPageId = EmployeeCardPage;
    Caption = 'Employees List';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(EmployeeId; Rec.EmployeeId)
                {
                    ApplicationArea = All;
                    Caption = 'Employee ID';
                }
                field(EmployeeName; Rec.EmployeeName)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field(EmployeeAge; Rec.EmployeeAge)
                {
                    ApplicationArea = All;
                    Caption = 'Age';
                }
                field(EmployeeeAccountTypeOption; Rec.EmployeeeAccountTypeOption)
                {
                    ApplicationArea = All;
                    Caption = 'Account Type (Option)';
                }
                field(EmployeeeAccountTypeEnum; Rec.EmployeeeAccountTypeEnum)
                {
                    ApplicationArea = All;
                    Caption = 'Account Type (Enum)';
                }
                field(EmployeeIdValue; Rec.EmployeeIdValue)
                {
                    ApplicationArea = All;
                    Caption = 'Employee ID Value';
                }
                field(BasicSalary; Rec.BasicSalary)
                {
                    ApplicationArea = All;
                    Caption = 'Basic Salary';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ProcessingAction)
            {
                Caption = 'Processing Action';
                trigger OnAction()
                begin
                    Message('Processing Action Triggered');
                end;
            }
            action(ProcessingAction2)
            {
                Caption = 'Processing Action 2';
                trigger OnAction()
                begin
                    Message('Processing Action 2 Triggered');
                end;
            }
            action(CallEmployeeOprationsCodeunit)
            {
                Caption = 'Call Employee Operations';
                trigger OnAction()
                var
                    EmployeeCodeunit: Codeunit EmployeeOperations;
                begin
                    EmployeeCodeunit.Run();
                end;
            }
            action(CallEmployeeOprationsCodeunitInternalProcedure)
            {
                Caption = 'Call Employee Operations - Internal';
                trigger OnAction()
                var
                    EmployeeCodeunit: Codeunit EmployeeOperations;
                begin
                    EmployeeCodeunit.SampleInternalProcedure();
                end;
            }
            action(RetriveRecord)
            {
                Caption = 'Retrieve Record';
                trigger OnAction()
                var
                    EmployeeOperations: Codeunit EmployeeOperations;
                begin
                    EmployeeOperations.RetriveRecordsFromEmployeeTable();
                end;
            }
            action(RetriveRecordByFilter)
            {
                Caption = 'Retrieve Record by Filter';
                trigger OnAction()
                var
                    EmployeeOperations: Codeunit EmployeeOperations;
                begin
                    EmployeeOperations.RetriveRecordsByFilterFromEmployeeTable();
                end;
            }
            action(DoRecordOperations)
            {
                Caption = 'Delete Records';
                trigger OnAction()
                var
                    EmployeeOperations: Codeunit EmployeeOperations;
                begin
                    EmployeeOperations.DeleteAllAgeswhereIDGT50();
                end;
            }
            action(CallVariables)
            {
                Caption = 'Use Variables';
                trigger OnAction()
                var
                    EmployeeOperations: Codeunit EmployeeOperations;
                begin
                    EmployeeOperations.UseVariable();
                end;
            }

        }
        area(Creation)
        {
            action(CreationAction)
            {
                Caption = 'Creation Action';
                trigger OnAction()
                begin
                    Message('Creation Action Triggered');
                end;
            }
        }
        area(Navigation)
        {
            action(NavigationAction)
            {
                Caption = 'Navigation Action';
                trigger OnAction()
                begin
                    Message('Navigation Action Triggered');
                end;
            }
        }
        area(Reporting)
        {
            action(ReportingAction)
            {
                Caption = 'Reporting Action';
                trigger OnAction()
                begin
                    Message('Reporting Action Triggered');
                end;
            }
        }

        area(Promoted)
        {
            actionref(PromotedAction; ProcessingAction2) { }
        }
    }
    trigger OnOpenPage()
    begin
        // Message('Employee Page Opened');
    end;

    trigger OnAfterGetCurrRecord()
    begin
        // Message('Current Employee ID: %1', Rec.EmployeeId);
    end;

    trigger OnAfterGetRecord()
    begin

        // Message('Current Employee ID: %1', Rec.EmployeeId);
    end;

    trigger OnClosePage()
    begin
        // Message('Closing Employee Page, getting triggered from OnClosePage');
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        // Message('Closing Employee Page, getting triggered from OnQueryClosePage');
        // exit(true);
    end;

    protected procedure SampleProtectedProcedure()
    begin
        Message('Sample Protected Procedure in Employee Page');
    end;

    var
        myInt: Integer;
}
