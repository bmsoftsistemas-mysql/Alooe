object frmconfig: Tfrmconfig
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Configura'#231#245'es'
  ClientHeight = 359
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 620
    Height = 359
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 17
      Top = 293
      Width = 49
      Height = 16
      Caption = 'Server:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 1
      Top = 129
      Width = 618
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 35
        Width = 37
        Height = 16
        Caption = 'Email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edt_email: TEdit
        Left = 111
        Top = 30
        Width = 443
        Height = 21
        TabOrder = 1
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 612
        Height = 24
        Align = alTop
        Caption = 'Email Alooe'
        Color = 15770519
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 65
      Width = 618
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label5: TLabel
        Left = 16
        Top = 35
        Width = 83
        Height = 16
        Caption = 'Url do Alooe:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel7: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 612
        Height = 24
        Align = alTop
        Caption = 'URL Alooe'
        Color = 15770519
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
      object edt_url: TEdit
        Left = 111
        Top = 30
        Width = 443
        Height = 21
        TabOrder = 0
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 618
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object Label7: TLabel
        Left = 16
        Top = 35
        Width = 196
        Height = 16
        Caption = 'Sincroniza'#231#227'o Autom'#225'tica em:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 271
        Top = 35
        Width = 55
        Height = 16
        Caption = 'minutos.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel9: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 612
        Height = 24
        Align = alTop
        Caption = 'Tempo de Atualiza'#231#227'o '
        Color = 15770519
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object edt_sync: TRzSpinEdit
        Left = 218
        Top = 31
        Width = 47
        Height = 21
        Max = 100.000000000000000000
        TabOrder = 1
      end
    end
    object btngravar: TButton
      AlignWithMargins = True
      Left = 257
      Top = 325
      Width = 89
      Height = 29
      Caption = 'Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btngravarClick
    end
    object Panel10: TPanel
      Left = 1
      Top = 193
      Width = 618
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      object Label3: TLabel
        Left = 16
        Top = 35
        Width = 45
        Height = 16
        Caption = 'Senha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 612
        Height = 24
        Align = alTop
        Caption = 'Senha Alooe'
        Color = 15770519
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object edt_senha: TEdit
        Left = 109
        Top = 33
        Width = 342
        Height = 21
        PasswordChar = '*'
        TabOrder = 2
      end
      object CkSenha: TCheckBox
        Left = 457
        Top = 37
        Width = 97
        Height = 17
        Caption = 'Mostrar Senha'
        TabOrder = 1
        OnClick = CkSenhaClick
      end
    end
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 260
      Width = 612
      Height = 24
      Align = alTop
      Caption = 'Server'
      Color = 15770519
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
    end
    object edt_server: TEdit
      Left = 112
      Top = 291
      Width = 342
      Height = 21
      TabOrder = 3
    end
  end
  object QrConfig: TFDQuery
    Connection = DD.DB
    SQL.Strings = (
      'SELECT'
      '  ID,'
      '  USER,'
      '  TEMPO_ATUALIZA,'
      '  URL,'
      '  EMAIL,'
      '  SENHA,'
      '  SERVER'
      ''
      'FROM config;')
    Left = 568
    Top = 280
    object QrConfigUSER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USER'
      Origin = '`USER`'
      Size = 255
    end
    object QrConfigTEMPO_ATUALIZA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TEMPO_ATUALIZA'
      Origin = 'TEMPO_ATUALIZA'
    end
    object QrConfigURL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'URL'
      Origin = 'URL'
      Size = 255
    end
    object QrConfigEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object QrConfigSENHA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 255
    end
    object QrConfigSERVER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SERVER'
      Origin = 'SERVER'
      Size = 255
    end
    object QrConfigID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
