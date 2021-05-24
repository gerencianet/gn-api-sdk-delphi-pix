unit ViewList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TViewList = class(TForm)
    GroupBox3: TGroupBox;
    txtStartDate: TEdit;
    txtEndDate: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnConfirmRequest: TButton;
    btnCancelRequest: TButton;
    procedure btnConfirmRequestClick(Sender: TObject);
    procedure btnCancelRequestClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function GetStartDate: String;
    function GetEndDate: String;
  public
    property StartDate: String read GetStartDate;
    property EndDate:    String read GetEndDate;
    procedure ClearRequestfields;
  end;

implementation

{$R *.dfm}

function TViewList.GetStartDate: String;
begin
  Result := txtStartDate.Text;
end;

procedure TViewList.btnCancelRequestClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TViewList.btnConfirmRequestClick(Sender: TObject);
begin
  if txtStartDate.Text = EmptyStr then
  begin
    MessageDlg('A data de início não pode ser vazia', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    if txtStartDate.CanFocus then
      txtStartDate.SetFocus;
  end
  else if txtEndDate.Text = EmptyStr then
  begin
    MessageDlg('A data de fim não pode ser vazia', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    if txtEndDate.CanFocus then
      txtEndDate.SetFocus;
  end
  else
    ModalResult := mrOk;
end;

procedure TViewList.ClearRequestfields;
begin
  txtStartDate.Text := '';
  txtEndDate.Text   := '';
end;

procedure TViewList.FormCreate(Sender: TObject);
begin
  Self.Position := poScreenCenter;
end;

function TViewList.GetEndDate: String;
begin
  Result := txtEndDate.Text;
end;



end.
