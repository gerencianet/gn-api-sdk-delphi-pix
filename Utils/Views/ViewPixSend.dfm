object ViewPixSend: TViewPixSend
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
    object btnConfirmRequest: TButton
      Left = 286
      Top = 226
      Width = 291
      Height = 32
      Caption = 'Confirmar a Requisi'#231#227'o'
      TabOrder = 1
      OnClick = btnConfirmRequestClick
    end
    object btnCancelRequest: TButton
      Left = 8
      Top = 226
      Width = 275
      Height = 32
      Caption = 'Cancelar a Requisi'#231#227'o'
      TabOrder = 2
      OnClick = btnCancelRequestClick
    end
    object GroupBox1: TGroupBox
      Left = 7
      Top = 16
      Width = 569
      Height = 208
      Caption = 'Body'
      TabOrder = 0
      object Label3: TLabel
        Left = 8
        Top = 22
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object txtValue: TEdit
        Left = 38
        Top = 19
        Width = 525
        Height = 21
        TabOrder = 0
      end
      object GroupBox2: TGroupBox
        Left = 6
        Top = 142
        Width = 560
        Height = 51
        Caption = 'Favorecido'
        TabOrder = 2
        object Label4: TLabel
          Left = 5
          Top = 24
          Width = 31
          Height = 13
          Caption = 'Chave'
        end
        object txtKeyFav: TEdit
          Left = 41
          Top = 21
          Width = 516
          Height = 21
          TabOrder = 0
        end
      end
      object GroupBox4: TGroupBox
        Left = 6
        Top = 51
        Width = 560
        Height = 83
        Caption = 'Pagador'
        TabOrder = 1
        object Label5: TLabel
          Left = 6
          Top = 24
          Width = 31
          Height = 13
          Caption = 'Chave'
        end
        object Label6: TLabel
          Left = 3
          Top = 55
          Width = 113
          Height = 13
          Caption = 'Informa'#231#227'o do Pagador'
        end
        object txtKeyPag: TEdit
          Left = 41
          Top = 21
          Width = 516
          Height = 21
          TabOrder = 0
        end
        object txtPayerInfo: TEdit
          Left = 120
          Top = 52
          Width = 437
          Height = 21
          TabOrder = 1
        end
      end
    end
  end
end
