table 50106 EmployeeRegistrationLines
{
    DataClassification = ToBeClassified;
    Caption = 'Employee Registration Lines';

    fields
    {
        field(1; LineNumber; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Line Number';
        }
        field(2; EmployeeRegistrationNumber; Integer)
        {
            Caption = 'Employee Registration Number';
        }
        field(3; RegistrationDepartment; Enum DepartmentEnum)
        {
            Caption = 'Department';
        }
        field(4; SalaryExpectations; Decimal)
        {
            Caption = 'Salary Expectations';
        }
        field(5; DesignationName; Text[100])
        {
            Caption = 'Designation Name';
            trigger OnLookup()
            var
                DesignationsRec: Record Designations;
                DesignationsListPage: Page DesignationsListPage;
                NoPositionsAvailableErr: Label 'No available postions for department %1';
            begin
                DesignationsRec.SetRange(DesignationDepartment, Rec.RegistrationDepartment);
                DesignationsListPage.SetTableView(DesignationsRec);
                DesignationsListPage.LookupMode(true);
                DesignationsListPage.SetIsOpenedFromEmpReg(true);
                if DesignationsListPage.RunModal() = Action::LookupOK then begin
                    DesignationsListPage.GetRecord(DesignationsRec);
                    if DesignationsRec.AvaialablePositions = 0 then
                        Error(NoPositionsAvailableErr, DesignationsRec.DesignationDepartment);
                    Rec.DesignationName := DesignationsRec.DesignationName;
                    Rec.DesignationID := DesignationsRec.DesignationID;
                    DesignationsListPage.SetIsOpenedFromEmpReg(false);
                end;

            end;
        }
        field(6; DesignationID; Integer)
        {
            Caption = 'Designation ID';
        }
    }

    keys
    {
        key(Key1; LineNumber, EmployeeRegistrationNumber)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}