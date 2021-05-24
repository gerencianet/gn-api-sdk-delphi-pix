unit Connections;

interface

Uses Classes, XSuperObject, IdHTTP, Vcl.Controls,Vcl.ExtDlgs, System.SysUtils,
IdServerIOHandler, IdSSL, IdSSLOpenSSL, IdIOHandler, IdIOHandlerSocket,
IdIOHandlerStack, idLogFile, IdGlobal, MainCode;

function OauthToken: iSuperObject;
function SetupClient: TIdHTTP;

implementation

threadvar
  HttpClient: TIdHTTP;
  {$IFDEF DEBUG}
  HttpLog: TIdLogFile;
  {$ENDIF}
  JsonToSend: TMemoryStream;

{ TConnections }

function OauthToken : iSuperObject ;
Const
  Body = '{"grant_type": "client_credentials"}';
var
  sResponse : String;
begin

  MainCode.MainFrm.CleanQrCodeImage;

  HttpClient := SetupClient;

  HttpClient.Request.Username := MainCode.MainFrm.ClientID;
  HttpClient.Request.Password := MainCode.MainFrm.ClientSecret;

  HttpClient.Request.BasicAuthentication := True;

  JsonToSend := TMemoryStream.Create;
  WriteStringToStream(JsonToSend, Body, IndyTextEncoding_UTF8);
  JsonToSend.Position := 0;

  sResponse := HttpClient.Post(MainCode.MainFrm.Enviroment +'/oauth/token',JsonToSend);

  Result := SO(sResponse);

end;

function SetupClient: TIdHTTP;
begin
  Result := TIdHTTP.Create( nil );
  Result.ConnectTimeout := 20000;
  Result.IOHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

  with TIdSSLIOHandlerSocketOpenSSL(Result.IOHandler).SSLOptions do
  begin
    CertFile := MainCode.MainFrm.CertFilePem;
    KeyFile  := MainCode.MainFrm.KeyFilePem;

    Mode := sslmUnassigned;
    SSLVersions := [sslvTLSv1_2];
  end;

  with Result do
  begin
    Request.CustomHeaders.Values['Content-Type'] := 'application/json; application/x-www-form-urlencoded;';
    Request.ContentType := 'application/json';
    Request.CharSet     := 'utf-8';
    Request.UserAgent := 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Acoo Browser; GTB5; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; Maxthon; InfoPath.1; .NET CLR 3.5.30729; .NET CLR 3.0.30618)';
    HandleRedirects := True;
    HTTPOptions := [hoKeepOrigProtocol, hoInProcessAuth];
  end;

  {$IFDEF DEBUG}
    Result.Intercept := HttpLog;
  {$ENDIF}
end;

end.
