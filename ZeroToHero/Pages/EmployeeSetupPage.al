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
                    Caption = 'Integer Type';
                }
                field(BigIntegerType; Rec.BigIntegerType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the BigIntegerType field.';
                    Caption = 'Big Integer Type';
                }
                field(OptionType; Rec.OptionType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the OptionType field.';
                    Caption = 'Option Type';
                }
                field(DecimalType; Rec.DecimalType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the DecimalType field.';
                    Caption = 'Decimal Type';
                }
                field(TextType; Rec.TextType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TextType field.';
                    Caption = 'Text Type';
                }
                field(BooleanType; Rec.BooleanType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the BooleanType field.';
                    Caption = 'Boolean Type';
                }
                field(DateTimeType; Rec.DateTimeType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the DateTimeType field.';
                    Caption = 'Date Time Type';
                }
                field(DateType; Rec.DateType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the DateType field.';
                    Caption = 'Date Type';
                }
                field(TimeType; Rec.TimeType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TimeType field.';
                    Caption = 'Time Type';
                }
                //Stores a single, 8-bit character as a value in the range 0 to 255. 
                //You can easily convert this data type from a number to a character and vice versa.
                //This means you can use mathematical operators on Byte variables.
                field(myByte; myByte)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Byte variable.';
                    Caption = 'Byte';
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
                    Caption = 'Char';
                    trigger OnValidate()
                    var
                        IntegerValue: Integer;
                    begin
                        IntegerValue := myChar;
                        Message('The Integer value of the Char variable is: %1', IntegerValue);
                    end;
                }

            }
            group(FlowFields)
            {
                Caption = 'Flow Fields';
                field(EmployeeId; Rec.EmployeeId)
                {
                    ApplicationArea = All;
                    Caption = 'Employee ID';
                }
                field(EmployeeCount; Rec.EmployeeCount)
                {
                    ApplicationArea = All;
                    Caption = 'Employee Count';
                }
                field(MaxSalary; Rec.MaxSalary)
                {
                    ApplicationArea = All;
                    Caption = 'Max Salary';
                }
                field(AverageSalary; Rec.AverageSalary)
                {
                    ApplicationArea = All;
                    Caption = 'Average Salary';
                }
                field(MinSalary; Rec.MinSalary)
                {
                    ApplicationArea = All;
                    Caption = 'Min Salary';
                }
                field(SalarySum; Rec.SalarySum)
                {
                    ApplicationArea = All;
                    Caption = 'Salary Sum';
                }
                field(LookUpName; Rec.LookUpName)
                {
                    ApplicationArea = All;
                    Caption = 'Look Up Name';
                }
                field(RecordExists; Rec.RecordExists)
                {
                    ApplicationArea = All;
                    Caption = 'Record Exists';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Collections)
            {
                Caption = 'Collections';
                trigger OnAction()
                var
                    EmployeeOps: Codeunit EmployeeOperations;
                begin
                    EmployeeOps.DictionaryVariable();
                end;
            }
            action(CallConditionalStatements)
            {
                Caption = 'Conditional Statements';
                trigger OnAction()
                var
                    EmployeeOps: Codeunit EmployeeOperations;
                begin
                    EmployeeOps.ConditionalStatements();
                end;
            }
            action(LoopControlStatements)
            {
                Caption = 'Loop Control Statements';
                trigger OnAction()
                var
                    EmployeeOps: Codeunit EmployeeOperations;
                begin
                    EmployeeOps.LoopingStatements();
                end;
            }
            action(BuiltInFunctions)
            {
                Caption = 'Built In Functions';
                trigger OnAction()
                var
                    EmployeeOps: Codeunit EmployeeOperations;
                begin
                    EmployeeOps.BuiltInFunctions();
                end;
            }
            action(StringFunctions)
            {
                Caption = 'String Functions';
                trigger OnAction()
                var
                    EmployeeOps: Codeunit EmployeeOperations;
                begin
                    EmployeeOps.StringFunctions();
                end;
            }
            action(DateFunctions)
            {
                Caption = 'Date Functions';
                trigger OnAction()
                var
                    EmployeeOps: Codeunit EmployeeOperations;
                begin
                    EmployeeOps.DateFunctions();
                end;
            }
            action(NumbericFunctions)
            {
                Caption = 'Numeric Functions';
                trigger OnAction()
                var
                    EmployeeOps: Codeunit EmployeeOperations;
                begin
                    EmployeeOps.NumericFunctions2();
                end;
            }
            action(VariableFunctions)
            {
                Caption = 'Variable Functions';
                trigger OnAction()
                var
                    EmployeeOps: Codeunit EmployeeOperations;
                begin
                    EmployeeOps.VariableFunctions();
                end;
            }
            action(PassParameters)
            {
                Caption = 'Pass Parameters';
                trigger OnAction()
                var
                    EmployeeOps: Codeunit EmployeeOperations;
                    Number: Integer;
                    EmployeeRec: Record EmployeeTable;
                begin
                    EmployeeRec.Get(10);
                    Message('The value of the Name  before passing to Codeunit: %1', EmployeeRec.EmployeeName);
                    EmployeeOps.PassParameters(EmployeeRec);
                    Message('The value of the Name  after passing to Codeunit: %1', EmployeeRec.EmployeeName);
                end;
            }
            action(Debugging)
            {
                Caption = 'Debugging';
                trigger OnAction()
                var
                    EmployeeRec: Record EmployeeTable;
                    EmployeeOps: Codeunit EmployeeOperations;
                    Number: Integer;
                begin
                    EmployeeRec.Get(10);
                    Number := 20;
                    EmployeeOps.DebuggingProcedure();
                    Number := 30;
                end;
            }
        }
    }
    var
        myByte: Byte;
        myChar: Char;
}
