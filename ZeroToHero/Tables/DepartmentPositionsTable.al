table 50103 DepartmentPositionsTable
{
    DataClassification = ToBeClassified;
    Caption = 'Department Postions';

    fields
    {
        field(1; LineNo; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; DepartmentID; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Department ID';
        }
        field(3; DesignationID; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Designation ID';
            trigger OnLookup()
            var
                DesignationsRec: Record Designations;
                DepartmentsTable: Record DepartmentsTable;
                DesignationsListPage: Page DesignationsListPage;
            begin
                DepartmentsTable.Get(Rec.DepartmentID);
                DesignationsRec.SetRange(DesignationDepartment, DepartmentsTable.Department);
                DesignationsListPage.SetTableView(DesignationsRec);
                DesignationsListPage.LookupMode(true);
                if DesignationsListPage.RunModal() = Action::LookupOK then begin
                    DesignationsListPage.GetRecord(DesignationsRec);
                    Rec.DesignationID := DesignationsRec.DesignationID;
                    Rec.DesignationName := DesignationsRec.DesignationName;
                    Rec.AvailablePositions := DesignationsRec.AvaialablePositions;
                end;
            end;
        }
        field(5; DesignationName; Text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Designation Name';
        }
        field(4; AvailablePositions; Integer)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Available Positions';
        }
    }

    keys
    {
        key(Key1; DepartmentID, LineNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

}
