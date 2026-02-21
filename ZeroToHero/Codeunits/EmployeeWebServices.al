codeunit 50102 EmployeeWebServices
{

    procedure GetEmployeeRegistrations()
    var
        HttpMethod: Enum "Http Method";
        HttpResponseText: Text;
    begin
        SendAPIRequest(HttpMethod::GET, HttpResponseText);
    end;

    procedure PostEmployeeRegistrations()
    var
        HttpMethod: Enum "Http Method";
        HttpResponseText: Text;
    begin
        SendAPIRequest(HttpMethod::GET, HttpResponseText);
    end;

    procedure PutEmployeeRegistrations()
    var
        HttpMethod: Enum "Http Method";
        HttpResponseText: Text;
    begin
        SendAPIRequest(HttpMethod::GET, HttpResponseText);
    end;

    procedure PatchEmployeeRegistrations()
    var
        HttpMethod: Enum "Http Method";
        HttpResponseText: Text;
    begin
        SendAPIRequest(HttpMethod::GET, HttpResponseText);
    end;

    procedure DeleteEmployeeRegistrations()
    var
        HttpMethod: Enum "Http Method";
        HttpResponseText: Text;
    begin
        SendAPIRequest(HttpMethod::GET, HttpResponseText);
    end;

    procedure SendAPIRequest(HttpMethod: Enum "Http Method"; var HttpResponseText: Text)
    var
        EmployeeSetupRec: Record EmployeeSetupTable;
        HttpClient: HttpClient;
        HttpRequestMessage: HttpRequestMessage;
        HttpResponseMessage: HttpResponseMessage;
        HttpHeaders: HttpHeaders;
        HttpContent: HttpContent;
    begin
        if not EmployeeSetupRec.Get() then
            exit;

        if EmployeeSetupRec.WebServicesURL = '' then
            exit;

        HttpRequestMessage.Method := Format(HttpMethod);
        HttpRequestMessage.SetRequestUri(EmployeeSetupRec.WebServicesURL);

        if HttpClient.Send(HttpRequestMessage, HttpResponseMessage) then begin
            Clear(HttpContent);
            HttpContent := HttpResponseMessage.Content();
            HttpContent.ReadAs(HttpResponseText);
        end;
    end;

    internal procedure GenereatePayLoadForRequest(HttpMethod: Enum "Http Method"): Text
    var
        JsonObject: JsonObject;
        PayLoad: Text;
    begin
        case HttpMethod of
            HttpMethod::GET:
                begin
                    exit(PayLoad);
                end;
            HttpMethod::POST, HttpMethod::PUT, HttpMethod::PATCH, HttpMethod::DELETE:
                begin
                    exit(GeneratePayLoad());
                end;
        end;
    end;

    internal procedure GeneratePayLoad(): Text
    var
        EmployeeRegistrationRec: Record EmployeeRegistrations;
        EmployeeRegistrationLinesRec: Record EmployeeRegistrationLines;
        JsonObject: JsonObject;
        JsonObjectLines: JsonObject;
        JsonArrayLines: JsonArray;
        SystemID: Guid;
        PayLoad: Text;
        EmployeeRegistrationLines: Label 'Employee Registration Lines';
    begin
        SystemID := GetRecordSystemID();
        if EmployeeRegistrationRec.GetBySystemId(SystemID) then begin
            JsonObject.Add(EmployeeRegistrationRec.FieldCaption(EmployeeRegistrationRec.EmployeeRegistrationNumber), EmployeeRegistrationRec.EmployeeRegistrationNumber);
            JsonObject.Add(EmployeeRegistrationRec.FieldCaption(EmployeeRegistrationRec.EmployeeName), EmployeeRegistrationRec.EmployeeName);
            JsonObject.Add(EmployeeRegistrationRec.FieldCaption(EmployeeRegistrationRec.EmployeeRegistrationStatus), EmployeeRegistrationRec.EmployeeRegistrationStatus.AsInteger());
            EmployeeRegistrationLinesRec.SetRange(EmployeeRegistrationNumber, EmployeeRegistrationRec.EmployeeRegistrationNumber);
            if EmployeeRegistrationLinesRec.FindSet() then
                repeat
                    Clear(JsonObjectLines);
                    JsonObjectLines.Add(EmployeeRegistrationLinesRec.FieldCaption(EmployeeRegistrationLinesRec.LineNumber), EmployeeRegistrationLinesRec.LineNumber);
                    JsonObjectLines.Add(EmployeeRegistrationLinesRec.FieldCaption(EmployeeRegistrationLinesRec.RegistrationDepartment), EmployeeRegistrationLinesRec.RegistrationDepartment.AsInteger());
                    JsonObjectLines.Add(EmployeeRegistrationLinesRec.FieldCaption(EmployeeRegistrationLinesRec.DesignationName), EmployeeRegistrationLinesRec.DesignationName);
                    JsonObjectLines.Add(EmployeeRegistrationLinesRec.FieldCaption(EmployeeRegistrationLinesRec.SalaryExpectations), EmployeeRegistrationLinesRec.SalaryExpectations);
                    JsonArrayLines.Add(JsonObjectLines.AsToken());
                until EmployeeRegistrationLinesRec.Next() = 0;
        end;
        JsonObject.Add(EmployeeRegistrationLines, JsonArrayLines);
        JsonObject.WriteTo(PayLoad);
        Message(PayLoad);
        exit(PayLoad);
    end;

    internal procedure SetRecordSytemID(SystemID: guid)
    begin
        GlobalSystemID := SystemID;
    end;

    internal procedure GetRecordSystemID(): Guid
    begin
        exit(GlobalSystemID);
    end;

    var
        GlobalSystemID: guid;
}
