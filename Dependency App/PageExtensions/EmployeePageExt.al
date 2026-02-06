pageextension 50101 EmployeePageExt extends EmployeePage
{
    layout
    {
        // Add changes to page layout here
        addafter(EmployeeAge)
        {
            field(EmployeeSalary; Rec.EmployeeSalary)
            {
                ApplicationArea = All;
                trigger OnValidate()
                var
                    EmployeeOperations: Codeunit EmployeeOperations;
                begin
                    // SampleProtectedProcedure();
                    EmployeeOperations.SampleGlobalProcedure();
                    
                    // EmployeeOperations.

                end;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;


}