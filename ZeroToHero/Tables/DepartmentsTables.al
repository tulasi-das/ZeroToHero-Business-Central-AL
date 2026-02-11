table 50102 DepartmentsTable
{
    DataClassification = ToBeClassified;
    Caption = 'Departments';

    fields
    {
        field(1; DepartmentID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Caption = 'Department ID';
        }
        field(2; Department; Enum DepartmentEnum)
        {
            DataClassification = ToBeClassified;
            Caption = 'Department';
            trigger OnValidate()
            var
                DepartmentLinesRec: Record DepartmentPositionsTable;
            begin
                if Rec.Department <> xRec.Department then begin
                    DepartmentLinesRec.SetRange(DepartmentID, Rec.DepartmentID);
                    DepartmentLinesRec.DeleteAll();
                end;

            end;
        }
        field(3; DepartmentHOD; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Department HOD';
        }
        field(4; DepartmentCount; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(DepartmentsTable);
            Caption = 'Department Count';
        }
    }

    keys
    {
        key(Key1; DepartmentID)
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