unit PixEndpoints;

interface

uses
  Classes, Connections, IdHTTP, XSuperObject, IdGlobal, Vcl.Dialogs, System.SysUtils,
  MainCode, ViewDetail, ViewCreateImmediateCharge, Forms, ViewList,
  ViewPixDetailDevolution, ViewPixSend, ViewPixDevolution;

procedure PixListReceived;
procedure PixSend;
procedure PixDetail;
procedure PixDevolutionGet;
procedure PixDevolution;

implementation

threadvar
  HttpClient: TIdHTTP;
  AccessToken, ObjResult : iSuperObject;
  JsonToSend: TMemoryStream;

procedure PixListReceived;
var
  sResponse: string;
  Modal    : TViewList;
begin
  try
    try
      if not Assigned(Modal) then
        Application.CreateForm(TViewList, Modal);

      if Modal.ShowModal = 1 then
      begin

        AccessToken := Connections.OauthToken;
        HttpClient := Connections.SetupClient;

        HttpClient.Request.CustomHeaders.Values['Authorization'] := ('Bearer '+ AccessToken.S['access_token']);
        sResponse := HttpClient.Get(MainCode.MainFrm.Enviroment + '/v2/pix?inicio='+ Modal.StartDate +
          '&fim=' + Modal.EndDate );

        MainCode.MainFrm.MemoResponse.text := sresponse;
      end;

    except
      on E: Exception do
      begin
        ShowMessage('Erro na Requisição GET /v2/pix/'#13#10#13#10 + e.Message);
      end;
    end;
  finally
    Modal.ClearRequestfields;
  end;
end;

procedure PixSend;
var
  sResponse: string;
  Modal    : TViewPixSend;
begin
  try
    try
      if not Assigned(Modal) then
        Application.CreateForm(TViewPixSend, Modal);

      if Modal.ShowModal = 1 then
      begin

        AccessToken := Connections.OauthToken;
        HttpClient := Connections.SetupClient;

        HttpClient.Request.CustomHeaders.Values['Authorization'] := ('Bearer '+ AccessToken.S['access_token']);

        JsonToSend := TMemoryStream.Create;
        WriteStringToStream(JsonToSend, Modal.Body, IndyTextEncoding_UTF8);
        JsonToSend.Position := 0;

        sResponse := HttpClient.Post( MainCode.MainFrm.Enviroment  + '/v2/pix', JsonToSend);

        MainCode.MainFrm.MemoResponse.text := sresponse;
      end;

    except
      on E: Exception do
      begin
        ShowMessage('Erro na Requisição POST /v2/pix '#13#10#13#10 + e.Message);
      end;
    end;
  finally
    Modal.ClearRequestfields;
  end;
end;

procedure PixDetail;
var
  sResponse: string;
  Modal    : TViewDetail;
begin
  try
    try
      if not Assigned(Modal) then
        Application.CreateForm(TViewDetail, Modal);

      if Modal.ShowModal = 1 then
      begin
        AccessToken := Connections.OauthToken;
        HttpClient := Connections.SetupClient;

        HttpClient.Request.CustomHeaders.Values['Authorization'] := ('Bearer '+ AccessToken.S['access_token']);
        sResponse := HttpClient.Get(MainCode.MainFrm.Enviroment + '/v2/pix/'+ Modal.Identifier);

        MainCode.MainFrm.MemoResponse.text := sresponse;
      end;

    except
      on E: Exception do
      begin
        ShowMessage('Erro na Requisição GET /v2/pix/:e2id '#13#10#13#10 + e.Message);
      end;
    end;
  finally
    Modal.ClearRequestfields;
  end;
end;

procedure PixDevolutionGet;
var
  sResponse: string;
  Modal    : TViewPixDetailDevolution;
begin
  try
    try
      if not Assigned(Modal) then
        Application.CreateForm(TViewPixDetailDevolution, Modal);

      if Modal.ShowModal = 1 then
      begin
        AccessToken := Connections.OauthToken;
        HttpClient := Connections.SetupClient;

        HttpClient.Request.CustomHeaders.Values['Authorization'] := ('Bearer '+ AccessToken.S['access_token']);
        sResponse := HttpClient.Get(MainCode.MainFrm.Enviroment + '/v2/pix/'+ Modal.e2eid +
                                    '/devolucao/'+Modal.id);

        MainCode.MainFrm.MemoResponse.text := sresponse;
      end;

    except
      on E: Exception do
      begin
        ShowMessage('Erro na Requisição GET /v2/pix/:e2id/devolucao/:id '#13#10#13#10 + e.Message);
      end;
    end;
  finally
    Modal.ClearRequestfields;
  end;
end;

procedure PixDevolution;
var
  sResponse: string;
  Modal    : TViewPixDevolution;
begin
  try
    try
      if not Assigned(Modal) then
        Application.CreateForm(TViewPixDevolution, Modal);

      if Modal.ShowModal = 1 then
      begin
        AccessToken := Connections.OauthToken;
        HttpClient := Connections.SetupClient;

        HttpClient.Request.CustomHeaders.Values['Authorization'] := ('Bearer '+ AccessToken.S['access_token']);

        JsonToSend := TMemoryStream.Create;
        WriteStringToStream(JsonToSend, Modal.Body, IndyTextEncoding_UTF8);
        JsonToSend.Position := 0;

        sResponse := HttpClient.Put(MainCode.MainFrm.Enviroment + '/v2/pix/'+ Modal.e2eid +
                                    '/devolucao/'+ Modal.id, JsonToSend);

        MainCode.MainFrm.MemoResponse.text := sresponse;
      end;

    except
      on E: Exception do
      begin
        ShowMessage('Erro na Requisição PUT /v2/pix/:e2id/devolucao/:id '#13#10#13#10 + e.Message);
      end;
    end;
  finally
    Modal.ClearRequestfields;
  end;
end;

end.
