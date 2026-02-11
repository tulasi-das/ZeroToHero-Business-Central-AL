table 50101 EmployeeSetupTable
{
    DataClassification = ToBeClassified;
    Caption = 'Employee Setup';

    fields
    {
        //Stores whole numbers with values that range from -2,147,483,647 to 2,147,483,647.
        field(1; IntegerType; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Integer Type';
        }
        //Stores very large whole numbers that range from -9,223,372,036,854,775,807 to 9,223,372,036,854,775,807.
        field(2; BigIntegerType; BigInteger)
        {
            DataClassification = ToBeClassified;
            Caption = 'Big Integer Type';
        }
        field(3; OptionType; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = One,Two,Three;
            Caption = 'Option Type';
        }
        field(4; DecimalType; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Decimal Type';
        }
        field(5; TextType; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Text Type';
        }
        field(6; BooleanType; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Boolean Type';
        }
        field(7; DateTimeType; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date Time Type';
        }
        field(8; DateType; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date Type';
        }
        field(9; TimeType; Time)
        {
            DataClassification = ToBeClassified;
            Caption = 'Time Type';
        }
        field(10; EmployeeCount; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(EmployeeTable);
            Caption = 'Employee Count';
        }
        field(11; SalarySum; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum(EmployeeTable.BasicSalary);
            Caption = 'Salary Sum';
        }
        field(12; MaxSalary; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = max(EmployeeTable.BasicSalary);
            Caption = 'Max Salary';
        }
        field(13; MinSalary; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = min(EmployeeTable.BasicSalary);
            Caption = 'Min Salary';
        }
        field(14; AverageSalary; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = average(EmployeeTable.BasicSalary);
            Caption = 'Average Salary';
        }
        field(15; LookUpName; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(EmployeeTable.EmployeeName where(EmployeeId = field(EmployeeId)));
            Caption = 'Look Up Name';
        }
        field(16; RecordExists; Boolean)
        {
            FieldClass = FlowField;
            CalcFormula = exist(EmployeeTable where(EmployeeId = field(EmployeeId)));
            Caption = 'Record Exists';
        }
        field(17; EmployeeId; Integer)
        {
            Caption = 'Employee ID';
        }
    }
    keys
    {
        key(Key1; IntegerType)
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
        myDec: Decimal;
        myBigInt: BigInteger;
        myOption: Option One,Two,Three;
        myBool: Boolean;
        myText: Text[100];


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