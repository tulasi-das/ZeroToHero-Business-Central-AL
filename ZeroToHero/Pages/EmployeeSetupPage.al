page 50101 EmployeeSetupPage
{
    PageType = Card;
    SourceTable = EmployeeSetupTable;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Employee Setup';
    DeleteAllowed = true;
    InsertAllowed = true;
    ModifyAllowed = true;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(IntegerType; Rec.IntegerType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the IntegerType field.';
                }
                field(BigIntegerType; Rec.BigIntegerType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the BigIntegerType field.';
                }
                field(OptionType; Rec.OptionType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the OptionType field.';
                }
                field(DecimalType; Rec.DecimalType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the DecimalType field.';
                }
                field(TextType; Rec.TextType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TextType field.';
                }
                field(BooleanType; Rec.BooleanType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the BooleanType field.';
                }
                field(DateTimeType; Rec.DateTimeType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the DateTimeType field.';
                }
                field(DateType; Rec.DateType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the DateType field.';
                }
                field(TimeType; Rec.TimeType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TimeType field.';
                }
                //Stores a single, 8-bit character as a value in the range 0 to 255. 
                //You can easily convert this data type from a number to a character and vice versa.
                //This means you can use mathematical operators on Byte variables.
                field(myByte; myByte)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Byte variable.';
                    trigger OnValidate()
                    var
                        IntegerValue: Integer;
                    begin
                        IntegerValue := myByte;
                        Message('The Integer value of the Byte variable is: %1', IntegerValue);
                    end;
                }
                //Stores a single, 16-bit character as a value in the range 0 to 65535.
                //You can convert this data type from a number to a character and vice versa.
                //This means you can use mathematical operators on Char variables.
                field(myChar; myChar)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Char variable.';
                    trigger OnValidate()
                    var
                        IntegerValue: Integer;
                    begin
                        IntegerValue := myChar;
                        Message('The Integer value of the Char variable is: %1', IntegerValue);
                    end;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
        }
    }
    var
        myByte: Byte;
        myChar: Char;
}
