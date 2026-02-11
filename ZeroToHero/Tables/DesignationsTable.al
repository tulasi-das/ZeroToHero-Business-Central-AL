table 50104 Designations
{
    DataClassification = ToBeClassified;
    Caption = 'Designations';
    LookupPageId = DesignationsListPage;
    DrillDownPageId = DesignationsListPage;

    fields
    {
        field(1; DesignationID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Caption = 'Designation ID';
        }
        field(2; DesignationName; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Designation Name';
        }
        field(3; DesignationDepartment; Enum DepartmentEnum)
        {
            DataClassification = ToBeClassified;
            Caption = 'Department';
        }
        field(4; DesignationCount; Integer)
        {

            FieldClass = FlowField;
            CalcFormula = count(Designations);
            Caption = 'Designation Count';
        }
        field(5; AvaialablePositions; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Available Positions';
        }
        field(6; SalaryThreshold; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Salary Threshold';
        }
    }

    keys
    {
        key(Key1; DesignationID)
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