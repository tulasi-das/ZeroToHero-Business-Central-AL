tableextension 50100 EmpleyeeTableExt extends EmployeeTable
{
    fields
    {
        // Add changes to table fields here
        field(50100; EmployeeSalary; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                Message('Number: %1', number);
                number := 10;
                Message('Number: %1', number);
            end;

        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }


    var
        myInt: Integer;
}