table 50101 EmployeeSetupTable
{
    DataClassification = ToBeClassified;

    fields
    {
        //Stores whole numbers with values that range from -2,147,483,647 to 2,147,483,647.
        field(1; IntegerType; Integer)
        {
            DataClassification = ToBeClassified;
        }
        //Stores very large whole numbers that range from -9,223,372,036,854,775,807 to 9,223,372,036,854,775,807.
        field(2; BigIntegerType; BigInteger)
        {
            DataClassification = ToBeClassified;
        }
        field(3; OptionType; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = One,Two,Three;
        }
        field(4; DecimalType; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(5; TextType; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(6; BooleanType; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(7; DateTimeType; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(8; DateType; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(9; TimeType; Time)
        {
            DataClassification = ToBeClassified;
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