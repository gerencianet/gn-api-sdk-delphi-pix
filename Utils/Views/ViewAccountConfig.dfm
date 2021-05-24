object ViewAccountConfig: TViewAccountConfig
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
    object btnCancelRequest: TButton
      Left = 6
      Top = 225
      Width = 280
      Height = 32
      Caption = 'Cancelar a Requisi'#231#227'o'
      TabOrder = 1
      OnClick = btnCancelRequestClick
    end
    object btnConfirmRequest: TButton
      Left = 290
      Top = 225
      Width = 285
      Height = 32
      Caption = 'Confirmar a Requisi'#231#227'o'
      TabOrder = 0
      OnClick = btnConfirmRequestClick
    end
    object cbxReceiveKey: TCheckBox
      Left = 6
      Top = 18
      Width = 121
      Height = 17
      Caption = 'Receber sem Chave'
      TabOrder = 2
    end
    object Chaves: TGroupBox
      Left = 6
      Top = 39
      Width = 569
      Height = 98
      Caption = 'Chaves'
      TabOrder = 3
      object Chave: TLabel
        Left = 13
        Top = 18
        Width = 31
        Height = 13
        Caption = 'Chave'
      end
      object txtKey: TEdit
        Left = 50
        Top = 15
        Width = 516
        Height = 21
        TabOrder = 0
      end
      object cbxTxidMandatory: TCheckBox
        Left = 13
        Top = 45
        Width = 121
        Height = 17
        Caption = 'Txid Obrigat'#243'rio'
        TabOrder = 1
      end
      object cbxRefuseAll: TCheckBox
        Left = 13
        Top = 66
        Width = 180
        Height = 17
        Caption = 'QRCode Estatico - Recusar Todos '
        TabOrder = 2
      end
    end
  end
end
