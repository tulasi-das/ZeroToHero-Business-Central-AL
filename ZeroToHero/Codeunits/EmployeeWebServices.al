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
    begin

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


}
