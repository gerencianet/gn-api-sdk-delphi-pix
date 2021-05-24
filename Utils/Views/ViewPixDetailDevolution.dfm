object ViewPixDetailDevolution: TViewPixDetailDevolution
  Left = 0
  Top = 0
  Caption = 'Modal da Requisi'#231#227'o'
  ClientHeight = 261
  ClientWidth = 584
  Color = 6001140
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 584
    Height = 261
    Align = alClient
    Caption = 'Requisi'#231#227'o'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 22
      Width = 26
      Height = 13
      Caption = 'e2eid'
    end
    object Label2: TLabel
      Left = 8
      Top = 68
      Width = 8
      Height = 13
      Caption = 'id'
    end
    object txtE2eid: TEdit
      Left = 8
      Top = 41
      Width = 569
      Height = 21
      TabOrder = 0
    end
    object txtId: TEdit
      Left = 8
      Top = 83
      Width = 569
      Height = 21
      TabOrder = 1
    end
    object btnConfirmRequest: TButton
      Left = 286
      Top = 110
      Width = 291
      Height = 32
      Caption = 'Confirmar a Requisi'#231#227'o'
      TabOrder = 2
      OnClick = btnConfirmRequestClick
    end
    object btnCancelRequest: TButton
      Left = 8
      Top = 110
      Width = 277
      Height = 32
      Caption = 'Cancelar a Requisi'#231#227'o'
      TabOrder = 3
      OnClick = btnCancelRequestClick
    end
  end
end
