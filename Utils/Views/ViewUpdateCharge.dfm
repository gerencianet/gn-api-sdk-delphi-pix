object ViewUpdateCharge: TViewUpdateCharge
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
      Left = 3
      Top = 18
      Width = 61
      Height = 13
      Caption = 'Identificador'
    end
    object txtIdent: TEdit
      Left = 70
      Top = 15
      Width = 510
      Height = 21
      TabOrder = 0
    end
    object gbDevedor: TGroupBox
      Left = 3
      Top = 36
      Width = 577
      Height = 64
      Caption = 'Devedor'
      TabOrder = 1
      object Label2: TLabel
        Left = 16
        Top = 17
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object Label3: TLabel
        Left = 16
        Top = 41
        Width = 19
        Height = 13
        Caption = 'CPF'
      end
      object txtName: TEdit
        Left = 56
        Top = 14
        Width = 518
        Height = 21
        TabOrder = 0
      end
      object txtCpf: TEdit
        Left = 57
        Top = 38
        Width = 518
        Height = 21
        TabOrder = 1
      end
    end
    object GroupBox1: TGroupBox
      Left = 3
      Top = 100
      Width = 278
      Height = 43
      Caption = 'Calend'#225'rio'
      TabOrder = 2
      object Label4: TLabel
        Left = 5
        Top = 18
        Width = 47
        Height = 13
        Caption = 'Expira'#231#227'o'
      end
      object txtExpiration: TEdit
        Left = 56
        Top = 15
        Width = 219
        Height = 21
        TabOrder = 0
        Text = '3600'
      end
    end
    object gbValor: TGroupBox
      Left = 285
      Top = 100
      Width = 296
      Height = 43
      Caption = 'Valor'
      TabOrder = 3
      object Label5: TLabel
        Left = 13
        Top = 18
        Width = 36
        Height = 13
        Caption = 'Original'
      end
      object txtValue: TEdit
        Left = 54
        Top = 15
        Width = 238
        Height = 21
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 3
      Top = 142
      Width = 278
      Height = 43
      Caption = 'Chave'
      TabOrder = 4
      object txtKey: TEdit
        Left = 5
        Top = 16
        Width = 270
        Height = 21
        TabOrder = 0
      end
    end
    object GroupBox4: TGroupBox
      Left = 285
      Top = 142
      Width = 295
      Height = 43
      Caption = 'Solicita'#231#227'o do Pagador'
      TabOrder = 5
      object txtPayerRequest: TEdit
        Left = 5
        Top = 17
        Width = 287
        Height = 21
        TabOrder = 0
      end
    end
    object btnConfirmRequest: TButton
      Left = 289
      Top = 226
      Width = 291
      Height = 32
      Caption = 'Confirmar a Requisi'#231#227'o'
      TabOrder = 7
      OnClick = btnConfirmRequestClick
    end
    object btnCancelRequest: TButton
      Left = 3
      Top = 226
      Width = 280
      Height = 32
      Caption = 'Cancelar a Requisi'#231#227'o'
      TabOrder = 8
      OnClick = btnCancelRequestClick
    end
    object GroupBox5: TGroupBox
      Left = 3
      Top = 184
      Width = 578
      Height = 43
      Caption = 'Informa'#231#245'es Adicionais'
      TabOrder = 6
      object Label7: TLabel
        Left = 296
        Top = 18
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object Label6: TLabel
        Left = 16
        Top = 18
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object txtAddInfoName: TEdit
        Left = 49
        Top = 15
        Width = 231
        Height = 21
        TabOrder = 0
      end
      object txtAddInfoValue: TEdit
        Left = 326
        Top = 15
        Width = 248
        Height = 21
        TabOrder = 1
      end
    end
  end
end
