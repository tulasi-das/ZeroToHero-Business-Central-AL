codeunit 50100 EmployeeOperations
{
    trigger OnRun()
    var
        EmployeePage: PAGE EmployeePage;
    begin
        // Message('Employee Operations Codeunit Run');
        SampleLocalProcedure();
        // EmployeePage.SampleProtectedProcedure();
    end;


    local procedure SampleLocalProcedure()
    begin
        Message('Sample Local Procedure in Employee Operations Codeunit');
    end;

    internal procedure SampleInternalProcedure()
    begin
        Message('Sample Internal Procedure in Employee Operations Codeunit');
    end;

    procedure SampleGlobalProcedure()
    begin
        Message('Sample Global procedure in Employee Operations Codeunit');
    end;

    internal procedure RetriveRecordsFromEmployeeTable()
    var
        EmployeeRec: Record EmployeeTable;
    begin
        EmployeeRec.FindSet();
        repeat
            Message('Employee Name: %1', EmployeeRec.EmployeeName);
        until EmployeeRec.Next() = 0;
    end;

    internal procedure RetriveRecordsByFilterFromEmployeeTable()
    var
        EmployeeRec: Record EmployeeTable;
    begin
        EmployeeRec.SetFilter(EmployeeAge, '>%1 & <%2', 15, 30);
        EmployeeRec.FindFirst();
        Message('Employee Name: %1', EmployeeRec.EmployeeName);
        // repeat
        //     Message('Employee Name: %1', EmployeeRec.EmployeeName);
        // until EmployeeRec.Next() = 0;
    end;

    internal procedure InsertRecord()
    var
        EmployeeRec: Record EmployeeTable;
    begin
        EmployeeRec.Init();
        EmployeeRec.EmployeeId := 100;
        EmployeeRec.EmployeeName := 'John Doe';
        EmployeeRec.EmployeeAge := 30;
        EmployeeRec.Insert();
    end;

    internal procedure ModifyRecord()
    var
        EmployeeRec: Record EmployeeTable;
    begin
        EmployeeRec.SetRange(EmployeeId, 100);
        EmployeeRec.FindFirst();
        EmployeeRec.EmployeeAge := 25;
        EmployeeRec.Modify();
    end;

    internal procedure ModifyAllAges()
    var
        EmployeeRec: Record EmployeeTable;
    begin
        EmployeeRec.SetFilter(EmployeeID, '<=%1', 30);
        EmployeeRec.ModifyAll(EmployeeAge, 20);
    end;

    internal procedure DeleteRecord()
    var
        EmployeeRec: Record EmployeeTable;
    begin
        EmployeeRec.SetRange(EmployeeId, 100);
        EmployeeRec.FindFirst();
        EmployeeRec.Delete();
    end;

    internal procedure DeleteAllAgeswhereIDGT50()
    var
        EmployeeRec: Record EmployeeTable;
    begin
        EmployeeRec.SetFilter(EmployeeID, '>=%1', 50);
        EmployeeRec.DeleteAll();
        // myInt := 10;
        // Message('Number: %1', myInt);
    end;

    internal procedure UseVariable()
    var
        number: Integer;
        EmployeeRec: Record EmployeeTable;
    begin
        // number := 10;
        // Message('Number: %1', number);
        // EmployeeRec.SetRange(EmployeeId, 10);
        // EmployeeRec.FindFirst();
        // Message('Name: %1', EmployeeRec.EmployeeName);
        myInt := 10;
        Message('Number: %1', myInt);
    end;

    internal procedure OneDimensionalArray()
    var
        EmployeeAmount: array[3] of Integer;
        i: Integer;
    begin
        for i := 1 to 3 do
            EmployeeAmount[i] := i * 10;
        for i := 1 to 3 do
            Message('Array[%1] = %2', i, EmployeeAmount[i]);
    end;

    internal procedure TwoDimensionalArray()
    var
        EmployeeAmount: array[2, 3] of Integer;
        i, j : Integer;
    begin
        for i := 1 to 2 do
            for j := 1 to 3 do
                EmployeeAmount[i, j] := i * j * 10;

        for i := 1 to 2 do
            for j := 1 to 3 do
                Message('Array[%1, %2] = %3', i, j, EmployeeAmount[i, j]);
    end;

    internal procedure ListVariable()
    var
        EmployeeNames: List of [Text];
        EmployeeName: Text;
    begin
        EmployeeNames.Add('Tulsidas');
        EmployeeNames.Add('Ramesh');
        EmployeeNames.Add('Suresh');
        foreach EmployeeName in EmployeeNames do
            Message('List of Employee Names: %1', EmployeeName);
    end;

    internal procedure DictionaryVariable()
    var
        EmployeeCountries: Dictionary of [Text, Text];
        EmployeeName: Text;
    begin
        EmployeeCountries.Add('Tulsidas', 'India');
        EmployeeCountries.Add('Ramesh', 'USA');
        EmployeeCountries.Add('Suresh', 'UK');

        foreach EmployeeName in EmployeeCountries.Keys do
            Message('Employee Name: %1, Country: %2', EmployeeName, EmployeeCountries.Get(EmployeeName));
    end;

    internal procedure ConditionalStatements()
    var
        FirstNumber: Integer;
        SecondNumber: Integer;
        ThirdNumber: Integer;
    begin
        FirstNumber := 10;
        SecondNumber := 20;

        ThirdNumber := 40;

        // if FirstNumber < SecondNumber then
        //     Message('First Number %1 is less than Second Number %2', FirstNumber, SecondNumber)
        // else
        //     Message('First Number %1 is not less than Second Number %2', FirstNumber, SecondNumber);

        if FirstNumber < SecondNumber then
            if FirstNumber + SecondNumber > ThirdNumber then
                Message('Sum of First and Second Number %1 is less than Third Number %2', FirstNumber + SecondNumber, ThirdNumber)
            else
                Message('Sum of First and Second Number %1 is not greater than Third Number %2', FirstNumber + SecondNumber, ThirdNumber);
    end;

    internal procedure LoopingStatements()
    var
        IntCounter: Integer;
        Total: Integer;
        EmployeeNames: List of [Text[100]];
        EmployeeName: Text[100];
        Sales: array[5] of Integer;
        totalSales: Integer;
        index: Integer;
        EmployeeRec: Record EmployeeTable;
    begin
        // for IntCounter := 1 to 5 do
        //     Total := Total + IntCounter;
        // Message('Total Sum from 1 to 5 is: %1', Total);

        // for IntCounter := 5 downto 1 do begin
        //     Total := Total + IntCounter;
        //     Message('IntCount: %1', IntCounter);
        // end;
        // Message('Total Sum from 1 to 5 is: %1', Total);Total Sum from 1 to 5 is
        // EmployeeNames.Add('Tulsidas');
        // EmployeeNames.Add('Ramesh');
        // EmployeeNames.Add('Suresh');
        // foreach EmployeeName in EmployeeNames do
        //     Message('Employee Name: %1', EmployeeName);
        // Sales[1] := 1;
        // Sales[2] := 2;
        // Sales[3] := 5;
        // Sales[4] := 6;
        // Sales[5] := 7;
        // totalSales := 0;
        // index := 1;
        // while totalSales < 8 do begin
        //     totalSales := totalSales + Sales[index];
        //     Message('Total Sales so far: %1', totalSales);
        //     index := index + 1;
        // end;
        // Message('Total Sales: %1', totalSales);
        if EmployeeRec.FindSet() then
            repeat
                Message('Employee Name: %1', EmployeeRec.EmployeeName);
            until EmployeeRec.Next() = 0;
    end;

    internal procedure BuiltInFunctions()
    Var
        Days: Text;
        Selection: Integer;
    begin
        Days := 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday';
        Selection := StrMenu(Days, 1, 'Choose a day from the following');
        Message('You selected: %1', Selection);
        // Message('This is a test message');
        // if Confirm('Do you want to continue?', false) then
        //     Message('User chose to continue.')
        // else
        //     Message('User chose not to continue.');
        // Error('This is a sample error message.');

    end;

    internal procedure StringFunctions()
    var
        TextVar: Text;
        SubString: Text;
        SimpleText: Text;
        Position: Integer;
        IndexValue: Integer;
        NewString: Text;
        ListOfStrings: List of [Text];
        CommaSeperatedString: Text;
        MyLongString: Text;
        BCString: Text[100];
        StringText: Text;
    begin
        TextVar := 'Hello, Business Central!';
        // SubString := 'Business';
        // Position := StrPos(TextVar, SubString);
        // Message('Position of the sub string "%1": %2', SubString, Position);

        // SimpleText := 'u';
        // IndexValue := TextVar.IndexOf(SimpleText);
        // Message('Index of the character "%1": %2', SimpleText, IndexValue);

        // NewString := CopyStr(TextVar, 17, 7);
        // Message('Extracted Substring: "%1"', NewString);

        // NewString := TextVar.SubString(17, 7);
        // Message('Extracted Substring: "%1"', NewString);

        // CommaSeperatedString := 'Apple,Banana,Cherry,Date';
        // NewString := SelectStr(2, CommaSeperatedString);
        // Message('Selected String: "%1"', NewString);

        // CommaSeperatedString := 'Apple,Banana,Cherry,Date';
        // ListOfStrings := CommaSeperatedString.Split(',');
        // Message('First String is %1', ListOfStrings.Get(1));

        // MyLongString := 'Press ENTER to continue...';
        // NewString := InsStr(MyLongString, 'or ESC ', 13);
        // Message(NewString);


        // BCString := 'Hello, Business Central!';
        // Message('Length: %1', StrLen(BCString));
        // Message('Max Length: %1', MaxStrLen(BCString));

        // Message('Uppercase: "%1"', UpperCase(BCString));
        // Message('Lowercase: "%1"', LowerCase(BCString));

        // Message('Uppercase: "%1"', BCString.ToUpper());
        // Message('Lowercase: "%1"', BCString.ToLower());

        StringText := 'Account Number 99, money is $-10';
        Message(IncStr(StringText));
    end;

    internal procedure DateFunctions()
    var
        MyDatePart: Integer;
        MonthPart: Integer;
        WeekPart: Integer;
        YearPart: Integer;
        NewDate: Date;
    begin
        Message('Today is: %1', Today());
        // MyDatePart := Date2DMY(Today(), 1); // Get the day part     
        // Message('Day part of today''s date: %1', MyDatePart);

        // MonthPart := Date2DMY(Today(), 2); // Get the month part     
        // Message('Month part of today''s date: %1', MonthPart);

        // YearPart := Date2DMY(Today(), 3); // Get the year part     
        // Message('Year part of today''s date: %1', YearPart);


        MyDatePart := Date2DWY(CalcDate('1D', Today()), 1);
        Message('Date part of today''s date: %1', MyDatePart);

        // WeekPart := Date2DWY(Today(), 2);
        // Message('Week part of today''s date: %1', WeekPart);

        // YearPart := Date2DWY(Today(), 3);
        // Message('Year part of today''s date: %1', YearPart);

        // NewDate := CalcDate('1D', Today());
        // Message('Date after adding 1 day: %1', NewDate);

    end;

    internal procedure NumericFunctions()
    var
        NewNumber: Integer;
    begin
        // NewNumber := Round(1234.4567, 0.001, '<');
        // Message('Rounded Number: %1', NewNumber);
        // NewNumber := Abs(-1234.56);
        // Message('Absolute Value: %1', NewNumber);
        // NewNumber := Power(2, 3);
        // Message('2 raised to the power 3 is: %1', NewNumber);
        Randomize(100);
        NewNumber := Random(10);
        Message('Random Number: %1', NewNumber);
        NewNumber := Random(10);
        Message('Random Number: %1', NewNumber);
        NewNumber := Random(10);
        Message('Random Number: %1', NewNumber);
    end;

    internal procedure NumericFunctions2()
    var
        NewNumber: Integer;
    begin
        // NewNumber := Round(1234.4567, 0.001, '<');
        // Message('Rounded Number: %1', NewNumber);
        // NewNumber := Abs(-1234.56);
        // Message('Absolute Value: %1', NewNumber);
        // NewNumber := Power(2, 3);
        // Message('2 raised to the power 3 is: %1', NewNumber);
        Randomize(100);
        NewNumber := Random(10);
        Message('Random Number: %1', NewNumber);
        NewNumber := Random(10);
        Message('Random Number: %1', NewNumber);
        NewNumber := Random(10);
        Message('Random Number: %1', NewNumber);
    end;

    internal procedure ArrayFunctions()
    var
        EmployeeNames: array[5] of Text;
        DuplicateEmployeeNames: array[5] of Text;
        i: Integer;
    begin
        EmployeeNames[1] := 'Tulsidas';
        EmployeeNames[2] := 'Ramesh';
        EmployeeNames[4] := 'Suresh';

        for i := 1 to ArrayLen(DuplicateEmployeeNames) do
            Message('The element at index %1 is %2', i, DuplicateEmployeeNames[i]);

        CopyArray(DuplicateEmployeeNames, EmployeeNames, 1);
        // Message('The length of the arryay is %1', ArrayLen(EmployeeNames));

        for i := 1 to ArrayLen(DuplicateEmployeeNames) do
            Message('The element at index %1 is %2', i, DuplicateEmployeeNames[i]);

        // CompressArray(EmployeeNames);
        // for i := 1 to ArrayLen(EmployeeNames) do
        //     Message('The element at index %1 is %2', i, EmployeeNames[i]);
    end;

    internal procedure VariableFunctions()
    var
        myInt: Integer;
        MyText: Text;
    begin
        // myInt := 5;
        // MyText := 'Hello World';
        // Message('The Integer value is: %1', myInt);
        // Message('The Text value is: %1', MyText);
        // ClearAll();
        // Message('The Integer value is: %1', myInt);
        // Message('The Text value is: %1', MyText);
        // MyText := '10';
        // Evaluate(myInt, MyText);
        // Message('The Integer value is: %1', myInt);
        // myInt := 65;
        // MyText := Format(myInt);
        // Message('THe Text value of the Integer variable is: %1', MyText);
        Message('Work date is: %1', WorkDate());
    end;

    internal procedure ShowEmployeeAccountTypeContractor(EmployeeType: Option "Full-Time","Part-Time","Contractor","Intern")
    begin
        if EmployeeType = EmployeeType::Contractor then
            Message('Employee Type is Contractor');
    end;

    internal procedure ShowEmployeeAccountTypeFullTime(EmployeeType: Option "Full-Time","Part-Time","Contractor","Intern")
    begin
        if EmployeeType = EmployeeType::"Full-Time" then
            Message('Employee Type is Full-Time');
    end;

    internal procedure ShowEmployeeAccountTypeParttime(EmployeeType: Option "Full-Time","Part-Time","Contractor","Intern")
    begin
        if EmployeeType = EmployeeType::"Part-Time" then
            Message('Employee Type is Part-Time');
    end;

    internal procedure ShowEmployeeAccountTypeEnumContractor(EmployeeType: Enum EmployeeeAccountTypeEnum)
    begin
        if EmployeeType = EmployeeType::Contractor then
            Message('Employee Type is Enum Contractor');
    end;

    internal procedure ShowEmployeeAccountTypeEnumPartTime(EmployeeType: Enum EmployeeeAccountTypeEnum)
    begin
        if EmployeeType = EmployeeType::PartTime then
            Message('Employee Type is Enum Part-Time');
    end;

    internal procedure ShowEmployeeAccountTypeEnumFullTime(EmployeeType: Enum EmployeeeAccountTypeEnum)
    begin
        if EmployeeType = EmployeeType::FullTime then
            Message('Employee Type is Enum Full-Time');
    end;

    internal procedure PassParameters(var EmployeeRec: Record EmployeeTable)
    begin
        EmployeeRec.EmployeeName := 'Rajath';
    end;

    var
        myInt: Integer;

}