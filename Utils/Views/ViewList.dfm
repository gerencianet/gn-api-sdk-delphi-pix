object ViewList: TViewList
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
    Caption = 'Requisi'#231#227'o Datas | '#39'2021-10-19T23:00:00.000Z'#39
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 25
      Width = 25
      Height = 13
      Caption = 'Inicio'
    end
    object Label2: TLabel
      Left = 8
      Top = 68
      Width = 16
      Height = 13
      Caption = 'Fim'
    end
    object txtStartDate: TEdit
      Left = 8
      Top = 41
      Width = 569
      Height = 21
      TabOrder = 0
    end
    object txtEndDate: TEdit
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
      Height = 31
      Caption = 'Confirmar a Requisi'#231#227'o'
      TabOrder = 2
      OnClick = btnConfirmRequestClick
    end
    object btnCancelRequest: TButton
      Left = 8
      Top = 110
      Width = 275
      Height = 32
      Caption = 'Cancelar a Requisi'#231#227'o'
      TabOrder = 3
      OnClick = btnCancelRequestClick
    end
  end
end
