page 50100 EmployeePage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = EmployeeTable;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(EmployeeId; Rec.EmployeeId)
                {

                }
                field(EmployeeName; Rec.EmployeeName)
                {

                }
                field(EmployeeAge; Rec.EmployeeAge)
                {

                }
                field(EmployeeeAccountTypeOption; Rec.EmployeeeAccountTypeOption)
                {

                }
                field(EmployeeeAccountTypeEnum; Rec.EmployeeeAccountTypeEnum)
                {

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
                trigger OnAction()
                begin
                    Message('Processing Action Triggered');
                end;
            }
            action(ProcessingAction2)
            {
                // Promoted = true;
                trigger OnAction()
                begin
                    Message('Processing Action 2 Triggered');
                end;
            }
            action(CallEmployeeOprationsCodeunit)
            {
                // Promoted = true;
                trigger OnAction()
                var
                    EmployeeCodeunit: Codeunit EmployeeOperations;
                begin
                    EmployeeCodeunit.Run();
                end;
            }
            action(CallEmployeeOprationsCodeunitInternalProcedure)
            {
                // Promoted = true;
                trigger OnAction()
                var
                    EmployeeCodeunit: Codeunit EmployeeOperations;
                begin
                    // EmployeeCodeunit.Run();
                    EmployeeCodeunit.SampleInternalProcedure();
                end;
            }
            action(RetriveRecord)
            {

                trigger OnAction()
                var
                    EmployeeOperations: Codeunit EmployeeOperations;
                begin
                    EmployeeOperations.RetriveRecordsFromEmployeeTable();
                end;
            }
            action(RetriveRecordByFilter)
            {

                trigger OnAction()
                var
                    EmployeeOperations: Codeunit EmployeeOperations;
                begin
                    EmployeeOperations.RetriveRecordsByFilterFromEmployeeTable();
                end;
            }
            action(DoRecordOperations)
            {
                trigger OnAction()
                var
                    EmployeeOperations: Codeunit EmployeeOperations;
                begin
                    EmployeeOperations.DeleteAllAgeswhereIDGT50();
                end;
            }
            action(CallVariables)
            {
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