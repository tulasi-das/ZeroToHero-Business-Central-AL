table 50107 EmployeeRegistrationEntries
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; EmployeeRegistrationNumber; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; EmployeeName; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(3; EmployeeGender; Enum EmployeeGender)
        {
            DataClassification = ToBeClassified;

        }
        field(4; EmployeeAge; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(5; LineNumber; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(6; EntryNo; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(7; Department; enum DepartmentEnum)
        {
            DataClassification = ToBeClassified;
        }
        field(8; Designation; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(9; SalaryExpectations; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; EmployeeRegistrationNumber, LineNumber)
        {
            Clustered = true;
        }
    }

}