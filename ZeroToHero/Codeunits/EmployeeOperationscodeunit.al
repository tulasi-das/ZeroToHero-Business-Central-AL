codeunit 50100 EmployeeOperations
{
    trigger OnRun()
    var
        EmployeePage: PAGE EmployeePage;
    begin
        // Message('Employee Operations Codeunit Run');
        SampleLocalProcedure();
        // EmployeePage.SampleProtectedProcedure();
    end;


    local procedure SampleLocalProcedure()
    begin
        Message('Sample Local Procedure in Employee Operations Codeunit');
    end;

    internal procedure SampleInternalProcedure()
    begin
        Message('Sample Internal Procedure in Employee Operations Codeunit');
    end;

    procedure SampleGlobalProcedure()
    begin
        Message('Sample Global procedure in Employee Operations Codeunit');
    end;

    internal procedure RetriveRecordsFromEmployeeTable()
    var
        EmployeeRec: Record EmployeeTable;
    begin
        EmployeeRec.FindSet();
        repeat
            Message('Employee Name: %1', EmployeeRec.EmployeeName);
        until EmployeeRec.Next() = 0;
    end;

    internal procedure RetriveRecordsByFilterFromEmployeeTable()
    var
        EmployeeRec: Record EmployeeTable;
    begin
        EmployeeRec.SetFilter(EmployeeAge, '>%1 & <%2', 15, 30);
        EmployeeRec.FindFirst();
        Message('Employee Name: %1', EmployeeRec.EmployeeName);
        // repeat
        //     Message('Employee Name: %1', EmployeeRec.EmployeeName);
        // until EmployeeRec.Next() = 0;
    end;

    internal procedure InsertRecord()
    var
        EmployeeRec: Record EmployeeTable;
    begin
        EmployeeRec.Init();
        EmployeeRec.EmployeeId := 100;
        EmployeeRec.EmployeeName := 'John Doe';
        EmployeeRec.EmployeeAge := 30;
        EmployeeRec.Insert();
    end;

    internal procedure ModifyRecord()
    var
        EmployeeRec: Record EmployeeTable;
    begin
        EmployeeRec.SetRange(EmployeeId, 100);
        EmployeeRec.FindFirst();
        EmployeeRec.EmployeeAge := 25;
        EmployeeRec.Modify();
    end;

    internal procedure ModifyAllAges()
    var
        EmployeeRec: Record EmployeeTable;
    begin
        EmployeeRec.SetFilter(EmployeeID, '<=%1', 30);
        EmployeeRec.ModifyAll(EmployeeAge, 20);
    end;

    internal procedure DeleteRecord()
    var
        EmployeeRec: Record EmployeeTable;
    begin
        EmployeeRec.SetRange(EmployeeId, 100);
        EmployeeRec.FindFirst();
        EmployeeRec.Delete();
    end;

    internal procedure DeleteAllAgeswhereIDGT50()
    var
        EmployeeRec: Record EmployeeTable;
    begin
        EmployeeRec.SetFilter(EmployeeID, '>=%1', 50);
        EmployeeRec.DeleteAll();
        // myInt := 10;
        // Message('Number: %1', myInt);
    end;

    internal procedure UseVariable()
    var
        number: Integer;
        EmployeeRec: Record EmployeeTable;
    begin
        // number := 10;
        // Message('Number: %1', number);
        // EmployeeRec.SetRange(EmployeeId, 10);
        // EmployeeRec.FindFirst();
        // Message('Name: %1', EmployeeRec.EmployeeName);
        myInt := 10;
        Message('Number: %1', myInt);
    end;


    var
        myInt: Integer;
}