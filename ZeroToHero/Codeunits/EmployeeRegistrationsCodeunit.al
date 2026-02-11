codeunit 50101 EmployeeRegistrationCodeunit
{
    internal procedure RegisterEmployee(EmployeeRegistrations: Record EmployeeRegistrations)
    var
        EmployeeRegistrationLinesRec: Record EmployeeRegistrationLines;
        TypeHelper: Codeunit "Type Helper";
        ErrorMsg: Text;
    begin
        EmployeeRegistrationLinesRec.SetRange(EmployeeRegistrationNumber, EmployeeRegistrations.EmployeeRegistrationNumber);
        if EmployeeRegistrationLinesRec.FindSet() then
            repeat
                if CheckPostionAndSalary(EmployeeRegistrationLinesRec) then begin
                    if not CheckEntryExist(EmployeeRegistrations.EmployeeRegistrationNumber, EmployeeRegistrationLinesRec.LineNumber) then begin
                        InsertIntoEmployeeRegEntries(EmployeeRegistrations, EmployeeRegistrationLinesRec);
                        InssertIntoEmployees(EmployeeRegistrations, EmployeeRegistrationLinesRec);
                        UpdateDesignations(EmployeeRegistrationLinesRec.DesignationID);
                    end;
                end else
                    ErrorMsg := ErrorMsg + GetLastErrorText() + TypeHelper.CRLFSeparator();
            until EmployeeRegistrationLinesRec.Next() = 0;

        if ErrorMsg = '' then begin
            EmployeeRegistrations.EmployeeRegistrationStatus := EmployeeRegistrations.EmployeeRegistrationStatus::Submitted;
            EmployeeRegistrations.Modify();
        end else
            Message(ErrorMsg);

    end;

    internal procedure InssertIntoEmployees(EmployeeRegistrations: Record EmployeeRegistrations; EmployeeRegistrationLinesRec: Record EmployeeRegistrationLines)
    var
        EmployeeTable: Record EmployeeTable;
    begin
        EmployeeTable.Init();
        EmployeeTable.EmployeeId := 10 + GetLastEmployeeID();
        EmployeeTable.EmployeeName := EmployeeRegistrations.EmployeeName;
        EmployeeTable.EmployeeAge := EmployeeRegistrations.EmployeeAge;
        EmployeeTable.Gender := EmployeeRegistrations.Gender;
        EmployeeTable.DepartmentCode := EmployeeRegistrationLinesRec.RegistrationDepartment;
        EmployeeTable.DesignationId := EmployeeRegistrationLinesRec.DesignationID;
        EmployeeTable.BasicSalary := EmployeeRegistrationLinesRec.SalaryExpectations;
        EmployeeTable.Insert();
    end;

    internal procedure GetLastEmployeeID(): Integer
    var
        EmployeeTable: Record EmployeeTable;
    begin
        if EmployeeTable.FindLast() then
            exit(EmployeeTable.EmployeeId);
    end;

    internal procedure UpdateDesignations(DesignationID: Integer)
    var
        DesignationsRec: Record Designations;
        DepartmentPositions: Record DepartmentPositionsTable;
    begin
        if not DesignationsRec.Get(DesignationID) then
            exit;
        DesignationsRec.AvaialablePositions -= 1;
        DesignationsRec.Modify();
    end;

    [TryFunction]
    internal procedure CheckPostionAndSalary(EmployeeRegistrationLinesRec: Record EmployeeRegistrationLines)
    var
        DesignationsRec: Record Designations;
        SalaryExpectationsErr: Label 'The salary expectations for the line no. %1 cannot be 0.00', Comment = '%1 = Line No.';
        AvailablePositionsErr: Label 'There are no available postions for Department %1 for designation %2', Comment = '%1 = DepartmentName, %2 = Designation';
        SalaryExceedErr: Label 'The salary expectations cannot be more than %1 for Line No. %2', Comment = '%1 = Salary Expectations Threshold, %2 = LineNo.';
    begin
        if DesignationsRec.Get(EmployeeRegistrationLinesRec.DesignationID) then begin
            if DesignationsRec.AvaialablePositions = 0 then
                Error(AvailablePositionsErr, EmployeeRegistrationLinesRec.RegistrationDepartment, EmployeeRegistrationLinesRec.DesignationName);

            if EmployeeRegistrationLinesRec.SalaryExpectations > DesignationsRec.SalaryThreshold then
                Error(SalaryExceedErr, DesignationsRec.SalaryThreshold, EmployeeRegistrationLinesRec.LineNumber);
        end;

        if EmployeeRegistrationLinesRec.SalaryExpectations = 0.00 then
            Error(SalaryExpectationsErr, EmployeeRegistrationLinesRec.LineNumber);


    end;

    internal procedure CheckEntryExist(EmployeeRegistrationNumber: Integer; EmployeeRegistrationLineNumber: Integer): Boolean
    var
        EmployeeeRegistrationEntries: Record EmployeeRegistrationEntries;
    begin
        if EmployeeeRegistrationEntries.Get(EmployeeRegistrationNumber, EmployeeRegistrationLineNumber) then
            exit(true);
    end;


    internal procedure InsertIntoEmployeeRegEntries(EmployeeRegistrations: Record EmployeeRegistrations; EmployeeRegistrationLinesRec: Record EmployeeRegistrationLines)
    var
        EmployeeeRegistrationEntries: Record EmployeeRegistrationEntries;
    begin
        EmployeeeRegistrationEntries.Init();
        EmployeeeRegistrationEntries.EmployeeRegistrationNumber := EmployeeRegistrations.EmployeeRegistrationNumber;
        EmployeeeRegistrationEntries.EmployeeName := EmployeeRegistrations.EmployeeName;
        EmployeeeRegistrationEntries.EmployeeGender := EmployeeRegistrations.Gender;
        EmployeeeRegistrationEntries.EmployeeAge := EmployeeRegistrations.EmployeeAge;
        EmployeeeRegistrationEntries.LineNumber := EmployeeRegistrationLinesRec.LineNumber;
        EmployeeeRegistrationEntries.Department := EmployeeRegistrationLinesRec.RegistrationDepartment;
        EmployeeeRegistrationEntries.Designation := EmployeeRegistrationLinesRec.DesignationName;
        EmployeeeRegistrationEntries.SalaryExpectations := EmployeeRegistrationLinesRec.SalaryExpectations;
        EmployeeeRegistrationEntries.Insert();
    end;
}