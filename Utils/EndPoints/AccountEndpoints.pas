unit AccountEndpoints;

interface

uses
  Classes, Connections, IdHTTP, XSuperObject, IdGlobal, Vcl.Dialogs, System.SysUtils,
  MainCode, Forms, ViewAccountConfig;

Procedure GNDetailSettings;
Procedure GnDetailBalance;
Procedure GnUpdateSettings;

implementation

threadvar
  HttpClient: TIdHTTP;
  AccessToken, ObjResult : iSuperObject;
  JsonToSend: TMemoryStream;

procedure GNDetailSettings;
var
  sResponse: string;
begin
  try
    AccessToken := Connections.OauthToken;
    HttpClient := Connections.SetupClient;
    HttpClient.Request.CustomHeaders.Values['Authorization'] := ('Bearer '+ AccessToken.S['access_token']);
    sResponse := HttpClient.Get(MainCode.MainFrm.Enviroment + '/v2/gn/config');

    MainCode.MainFrm.MemoResponse.text := sresponse;

  except
    on E: Exception do
    begin
      ShowMessage('Erro na Requisição GET /v2/gn/Config.'#13#10#13#10 + e.Message);
    end;
  end;
end;

procedure GnDetailBalance;
var
  sResponse: string;
begin
  try
    AccessToken := Connections.OauthToken;
    HttpClient := Connections.SetupClient;

    HttpClient.Request.CustomHeaders.Values['Authorization'] := ('Bearer '+ AccessToken.S['access_token']);
    sResponse := HttpClient.Get(MainCode.MainFrm.Enviroment + '/v2/gn/saldo');

    MainCode.MainFrm.MemoResponse.text := sresponse;

  except
    on E: Exception do
    begin
      ShowMessage('Erro na Requisição GET /v2/gn/saldo '#13#10#13#10 + e.Message);
    end;
  end;
end;

procedure GnUpdateSettings;
var
  sResponse: String;
  Modal    : TViewAccountConfig;
begin
  try
    try
      if not Assigned(Modal) then
        Application.CreateForm(TViewAccountConfig, Modal);

      if Modal.ShowModal = 1 then
      begin

        AccessToken := Connections.OauthToken;
        HttpClient := Connections.SetupClient;

        HttpClient.Request.CustomHeaders.Values['Authorization'] := ('Bearer '+ AccessToken.S['access_token']);

        JsonToSend := TMemoryStream.Create;
        WriteStringToStream(JsonToSend, Modal.TransformObjectJson , IndyTextEncoding_UTF8);
        JsonToSend.Position := 0;


        sResponse := HttpClient.Put( MainCode.MainFrm.Enviroment +'/v2/gn/config', JsonToSend);

        MainCode.MainFrm.MemoResponse.text := sresponse;
      end;

    except
      on E: Exception do
      begin
        ShowMessage('Erro na Requisição PUT /v2/gn/config '#13#10#13#10 + e.Message);
      end;
    end;
  finally
    Modal.ClearRequestfields;
  end;
end;

end.
