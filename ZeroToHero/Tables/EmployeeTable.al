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
        field(6; EmployeeIdValue; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(7; FirstName; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(8; MiddleName; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(9; LastName; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(10; FullName; Text[150])
        {
            DataClassification = ToBeClassified;
        }
        field(11; Gender; Enum EmployeeGender)
        {
            DataClassification = ToBeClassified;
        }
        field(12; DateOfBirth; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(13; MaritialStatus; Enum MaritialStatus)
        {
            DataClassification = ToBeClassified;
        }
        field(14; Nationality; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(15; Email; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(16; PhoneNumber; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(17; EmergencyContact; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(18; Address; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(19; Addres2; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(20; City; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(21; PostCode; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(22; Stateprovince; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(23; Country; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(24; DepartmentCode; Enum DepartmentEnum)
        {
            DataClassification = ToBeClassified;
        }
        field(25; DesignationId; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(26; DateOfJoining; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(27; EmploymentStatus; Enum EmploymentStatus)
        {
            DataClassification = ToBeClassified;
        }
        field(28; BankAccountNo; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(29; BankName; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(30; BasicSalary; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(31; Comments; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(32; EmployeeCount; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(EmployeeTable);
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


