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
    MainCode.MainFrm.MemoResponse.Text := 'Autenticação Realizada com Sucesso!';
    except
    on E: Exception do
    begin
      MainCode.MainFrm.MemoResponse.Text := 'Erro na Requisião de Autenticação! "GET /OAuth/Token"';
    end;
  end;
end;

end.
