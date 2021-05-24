unit ViewAccountConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, BodyAccountClass, xSuperObject, xSuperJSON,
  System.RTTI, System.UITypes;

type
  TViewAccountConfig = class(TForm)
    GroupBox3: TGroupBox;
    btnCancelRequest: TButton;
    btnConfirmRequest: TButton;
    cbxReceiveKey: TCheckBox;
    Chaves: TGroupBox;
    Chave: TLabel;
    txtKey: TEdit;
    cbxTxidMandatory: TCheckBox;
    cbxRefuseAll: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnConfirmRequestClick(Sender: TObject);
    procedure btnCancelRequestClick(Sender: TObject);
  private
    function GetBody: String;
  public
    property Body: String read GetBody;
    function TransformObjectJson : String;
    procedure ClearRequestfields;
    function NewAliasKey : String;
  end;

implementation

{$R *.dfm}

procedure TViewAccountConfig.btnCancelRequestClick(Sender: TObject);
begin
  ModalResult := mrCancel
end;

procedure TViewAccountConfig.btnConfirmRequestClick(Sender: TObject);
begin
  if txtKey.Text = EmptyStr then
  begin
    MessageDlg('A chave não pode ser vazia!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    if txtKey.CanFocus then
      txtKey.SetFocus;
  end
  else
    ModalResult := mrOk;

end;

procedure TViewAccountConfig.ClearRequestfields;
begin
  txtKey.Text := '';
end;

procedure TViewAccountConfig.FormCreate(Sender: TObject);
begin
  Self.Position := poScreenCenter;
end;

function TViewAccountConfig.GetBody: String;
var
  BodyRequest : TBodyAccountClass;
  Key         : TKey;
  KeyGN       : TKeyGN;
  ReceiveKey  : TReceiveKey;
  RefuseAll   : TRefuseAll;
  Pix         : TPix;
begin
  BodyRequest := TBodyAccountClass.Create;

  KeyGN       := TKeyGN.Create;
  Key         := TKey.Create;
  ReceiveKey  := TReceiveKey.Create;
  Pix         := TPix.Create;

  RefuseAll.RefuseAll := cbxRefuseAll.Checked;
  ReceiveKey.TxidMandatory := cbxTxidMandatory.Checked;
  Pix.ReceiveKey := cbxReceiveKey.Checked;

  ReceiveKey.QrCodeStatic := RefuseAll;
  KeyGN.Receive := ReceiveKey;
  Key.KeyGN := KeyGN;
  Pix.Key := Key;
  BodyRequest.Pix := Pix;

  Result := BodyRequest.AsJSON;
end;

function TViewAccountConfig.TransformObjectJson : String;
begin
  //Transformando o Json altarando o valor de 'aliasChavePix' -> 'txtKey'
  Result := StringReplace(GetBody , 'aliasKeyGN' , txtKey.Text, [rfReplaceAll]);
end;

function TViewAccountConfig.NewAliasKey : String;
begin
  Result := txtKey.Text;
end;

end.
