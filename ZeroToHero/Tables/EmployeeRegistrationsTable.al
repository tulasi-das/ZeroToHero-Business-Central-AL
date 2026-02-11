table 50105 EmployeeRegistrations
{
    DataClassification = ToBeClassified;
    Caption = 'Employee Registrations';

    fields
    {
        field(1; EmployeeRegistrationNumber; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Caption = 'Employee Registration Number';
        }
        field(2; EmployeeRegistrationStatus; Enum EmployeeRegistration)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Registration Status';
        }
        field(4; EmployeeName; Text[100])
        {
            Caption = 'Employee Name';
        }
        field(5; EmployeeAge; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Employee Age';
        }
        field(6; Gender; Enum EmployeeGender)
        {
            DataClassification = ToBeClassified;
            Caption = 'Gender';
        }
        field(7; EmployeeRegistrationCount; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(EmployeeRegistrations);
            Caption = 'Employee Registration Count';
        }
    }

    keys
    {
        key(Key1; EmployeeRegistrationNumber)
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