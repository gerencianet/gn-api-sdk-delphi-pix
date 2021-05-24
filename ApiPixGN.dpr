program ApiPixGN;

uses
  Forms,
  MainCode in 'Utils\MainCode.pas' {MainFrm},
  ChargesEndpoints in 'Utils\EndPoints\ChargesEndpoints.pas',
  LocEndpoints in 'Utils\EndPoints\LocEndpoints.pas',
  WebhookEndpoints in 'Utils\EndPoints\WebhookEndpoints.pas',
  PixEndpoints in 'Utils\EndPoints\PixEndpoints.pas',
  AccountEndpoints in 'Utils\EndPoints\AccountEndpoints.pas',
  KeyPixEndpoints in 'Utils\EndPoints\KeyPixEndpoints.pas',
  Connections in 'Utils\EndPoints\Connections.pas',
  AuthenticationEndpoints in 'Utils\EndPoints\AuthenticationEndpoints.pas',
  ViewPixDetailDevolution in 'Utils\Views\ViewPixDetailDevolution.pas' {ViewPixDetailDevolution},
  ViewCreateImmediateCharge in 'Utils\Views\ViewCreateImmediateCharge.pas' {ViewCreateImmediateCharge},
  ViewCreateCharge in 'Utils\Views\ViewCreateCharge.pas' {ViewCreateCharge},
  ViewUpdateCharge in 'Utils\Views\ViewUpdateCharge.pas' {ViewUpdateCharge},
  ViewDetail in 'Utils\Views\ViewDetail.pas' {ViewDetail},
  ViewList in 'Utils\Views\ViewList.pas' {ViewList},
  BodyChargesClass in 'Utils\Classes\BodyChargesClass.pas',
  BodyPixClass in 'Utils\Classes\BodyPixClass.pas',
  DelphiZXIngQRCode in 'Utils\External\DelphiZXIngQRCode.pas',
  XSuperJSON in 'Utils\External\XSuperJSON.pas',
  XSuperObject in 'Utils\External\XSuperObject.pas',
  ViewPixSend in 'Utils\Views\ViewPixSend.pas' {ViewPixSend},
  ViewConfigWebhook in 'Utils\Views\ViewConfigWebhook.pas' {ViewConfigWebhook},
  BodyWebhookClass in 'Utils\Classes\BodyWebhookClass.pas',
  ViewPixDevolution in 'Utils\Views\ViewPixDevolution.pas' {ViewPixDevolution},
  BodyAccountClass in 'Utils\Classes\BodyAccountClass.pas',
  ViewAccountConfig in 'Utils\Views\ViewAccountConfig.pas' {ViewAccountConfig};

{$R *.res}

begin
  Application.Initialize;
  {$IFDEF UNICODE}
  Application.MainFormOnTaskbar := True;
  {$ENDIF}
  Application.CreateForm(TMainFrm, MainFrm);
  Application.Run;
end.
