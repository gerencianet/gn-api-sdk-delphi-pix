unit ViewConfigWebhook;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, BodyWebhookClass, XSuperObject;

type
  TViewConfigWebhook = class(TForm)
    GroupBox3: TGroupBox;
    Label1: TLabel;
    txtIdent: TEdit;
    btnCancelRequest: TButton;
    btnConfirmRequest: TButton;
    gbBody: TGroupBox;
    Label2: TLabel;
    txtWebhookURL: TEdit;
    cbxSkipmtls: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnConfirmRequestClick(Sender: TObject);
    procedure btnCancelRequestClick(Sender: TObject);
  private
    function GetIdent: String;
    function GetBody : String;
    function GetSkipMTLS : String;
  public
    property Identifier: String read GetIdent;
    property Body: String read GetBody;
    property SkipMTLS: String read GetSkipMTLS;
    procedure ClearRequestfields;
  end;

implementation

{$R *.dfm}

procedure TViewConfigWebhook.btnCancelRequestClick(Sender: TObject);
begin
  ModalResult := mrCancel
end;

procedure TViewConfigWebhook.btnConfirmRequestClick(Sender: TObject);
begin
  if txtIdent.Text = EmptyStr then
  begin
    MessageDlg('A chave não pode ser vazia', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    if txtIdent.CanFocus then
      txtIdent.SetFocus;
  end
  else if txtWebhookURL.Text = EmptyStr then
  begin
    MessageDlg('Necessário uma URL de notificação', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    if txtWebhookURL.CanFocus then
      txtWebhookURL.SetFocus;
  end
  else
    ModalResult := mrOk;
end;

procedure TViewConfigWebhook.ClearRequestfields;
begin
  txtIdent.Text := '';
  txtWebhookURL.Text := '';
end;

procedure TViewConfigWebhook.FormCreate(Sender: TObject);
begin
  Self.Position := poScreenCenter;
end;

function TViewConfigWebhook.GetIdent: String;
begin
  Result := txtIdent.Text;
end;


function TViewConfigWebhook.GetSkipMTLS: String;
begin
  if cbxSkipmtls.Checked then
    Result := 'true'
  else
    Result := 'false';
end;

function TViewConfigWebhook.GetBody: String;
var
  BodyRequest : TBodyWebhookClass;
begin

  BodyRequest := TBodyWebhookClass.Create;

  BodyRequest.WebhookUrl := txtWebhookUrl.Text;

  Result := BodyRequest.AsJSON;
end;

end.
