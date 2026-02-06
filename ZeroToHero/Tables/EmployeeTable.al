table 50100 EmployeeTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; EmployeeId; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; EmployeeName; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(3; EmployeeAge; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(4; EmployeeeAccountTypeOption; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Full-Time","Part-Time","Contractor","Intern";
            trigger OnValidate()
            var
                EmployeeOps: Codeunit EmployeeOperations;
            begin
                if EmployeeeAccountTypeOption = EmployeeeAccountTypeOption::Contractor then
                    EmployeeOps.ShowEmployeeAccountTypeContractor(EmployeeeAccountTypeOption);
                if EmployeeeAccountTypeOption = EmployeeeAccountTypeOption::"Part-Time" then
                    EmployeeOps.ShowEmployeeAccountTypeParttime(EmployeeeAccountTypeOption);
                if EmployeeeAccountTypeOption = EmployeeeAccountTypeOption::"Full-Time" then
                    EmployeeOps.ShowEmployeeAccountTypeFullTime(EmployeeeAccountTypeOption);
            end;

        }
        field(5; EmployeeeAccountTypeEnum; Enum EmployeeeAccountTypeEnum)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                EmployeeOps: Codeunit EmployeeOperations;
            begin
                if EmployeeeAccountTypeEnum = EmployeeeAccountTypeEnum::Contractor then
                    EmployeeOps.ShowEmployeeAccountTypeEnumContractor(EmployeeeAccountTypeEnum);
                if EmployeeeAccountTypeEnum = EmployeeeAccountTypeEnum::PartTime then
                    EmployeeOps.ShowEmployeeAccountTypeEnumPartTime(EmployeeeAccountTypeEnum);
                if EmployeeeAccountTypeEnum = EmployeeeAccountTypeEnum::FullTime then
                    EmployeeOps.ShowEmployeeAccountTypeEnumFullTime(EmployeeeAccountTypeEnum);
            end;
        }
    }

    keys
    {
        key(Key1; EmployeeId)
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
        // Message('Inserting new employee record');
    end;

    trigger OnModify()
    begin
        // Message('Modidfying the record %1', Rec.EmployeeId);
    end;

    trigger OnDelete()
    begin
        // Message('Deleting the record %1', Rec.EmployeeId);
    end;

    trigger OnRename()
    begin
        // Message('Renaming the record %1', Rec.EmployeeId);
    end;

    protected var
        number: Integer;
}