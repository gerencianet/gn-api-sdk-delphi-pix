unit ViewPixDetailDevolution;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TViewPixDetailDevolution = class(TForm)
    GroupBox3: TGroupBox;
    txtE2eid: TEdit;
    txtId: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnConfirmRequest: TButton;
    btnCancelRequest: TButton;
    procedure btnConfirmRequestClick(Sender: TObject);
    procedure btnCancelRequestClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function GetE2eid: String;
    function GetId: String;
  public
    property e2eid: String read GetE2eid;
    property id:    String read GetId;
    procedure ClearRequestfields;
  end;

implementation

{$R *.dfm}

function TViewPixDetailDevolution.GetE2eid: String;
begin
  Result := txtE2eid.Text;
end;

procedure TViewPixDetailDevolution.btnCancelRequestClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TViewPixDetailDevolution.btnConfirmRequestClick(Sender: TObject);
begin
  if txtE2eid.Text = EmptyStr then
  begin
    MessageDlg('O campo EndToEndId não pode ser vazio', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    if txtE2eid.CanFocus then
      txtE2eid.SetFocus;
  end
  else if txtId.Text = EmptyStr then
  begin
    MessageDlg('O campo Id não pode ser vazio', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    if txtId.CanFocus then
      txtId.SetFocus;
  end
  else
    ModalResult := mrOk;
end;

procedure TViewPixDetailDevolution.FormCreate(Sender: TObject);
begin
  Self.Position := poScreenCenter;
end;

function TViewPixDetailDevolution.GetId: String;
begin
  Result := txtId.Text;
end;

procedure TViewPixDetailDevolution.ClearRequestfields;
begin
  txtE2eid.Text := '';
  txtId.Text := '';
end;

end.
