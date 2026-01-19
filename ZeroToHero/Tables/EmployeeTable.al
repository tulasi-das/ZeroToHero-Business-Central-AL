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

}