unit AuthenticationEndpoints;

interface

uses
  Classes, Connections, IdHTTP, XSuperObject, IdGlobal, Vcl.Dialogs, System.SysUtils, MainCode;

procedure OauthToken;

implementation

threadvar
  AccessToken : iSuperObject;

procedure OauthToken;
begin
  try
    AccessToken := Connections.OauthToken;
    MainCode.MainFrm.MemoResponse.Text := 'Autentica��o Realizada com Sucesso!';
    except
    on E: Exception do
    begin
      MainCode.MainFrm.MemoResponse.Text := 'Erro na Requisi�o de Autentica��o! "GET /OAuth/Token"';
    end;
  end;
end;

end.