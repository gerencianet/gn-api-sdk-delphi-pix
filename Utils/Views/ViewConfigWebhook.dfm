object ViewConfigWebhook: TViewConfigWebhook
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
    Caption = 'Requisi'#231#227'o Identificador'
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Chave'
    end
    object txtIdent: TEdit
      Left = 6
      Top = 41
      Width = 569
      Height = 21
      TabOrder = 0
    end
    object btnCancelRequest: TButton
      Left = 6
      Top = 152
      Width = 280
      Height = 32
      Caption = 'Cancelar a Requisi'#231#227'o'
      TabOrder = 2
      OnClick = btnCancelRequestClick
    end
    object btnConfirmRequest: TButton
      Left = 290
      Top = 152
      Width = 285
      Height = 32
      Caption = 'Confirmar a Requisi'#231#227'o'
      TabOrder = 1
      OnClick = btnConfirmRequestClick
    end
    object cbxSkipmtls: TCheckBox
      Left = 6
      Top = 130
      Width = 211
      Height = 17
      Caption = 'Skip MTLS'
      TabOrder = 3
    end
  end
  object gbBody: TGroupBox
    Left = 6
    Top = 63
    Width = 569
    Height = 63
    Caption = 'Body'
    TabOrder = 1
    object Label2: TLabel
      Left = 7
      Top = 16
      Width = 67
      Height = 13
      Caption = 'URL Webhook'
    end
    object txtWebhookURL: TEdit
      Left = 7
      Top = 35
      Width = 559
      Height = 21
      TabOrder = 0
    end
  end
end
