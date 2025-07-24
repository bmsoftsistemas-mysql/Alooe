object frmmarcas: Tfrmmarcas
  Left = 0
  Top = 0
  Caption = 'Marcas'
  ClientHeight = 699
  ClientWidth = 1150
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 569
    Height = 586
    Align = alLeft
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 25
      Width = 567
      Height = 560
      Align = alClient
      DataSource = dtBMmarcas
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'MARCA'
          Title.Caption = 'Marcas'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 553
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 567
      Height = 24
      Align = alTop
      Caption = 'Marcas da BM'
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
  end
  object Panel3: TPanel
    Left = 569
    Top = 0
    Width = 581
    Height = 586
    Align = alClient
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 1
      Top = 25
      Width = 579
      Height = 560
      Align = alClient
      DataSource = dtBMintaux
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_Int'
          Title.Caption = 'ID da Integra'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_BM'
          Title.Caption = 'ID da BM'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tipo'
          Title.Caption = 'Caracteres de Identifica'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HASH'
          Title.Caption = 'Caracteres de Controle'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 191
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 579
      Height = 24
      Align = alTop
      Caption = 'Marcas Enviadas'
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
  end
  object JSONtray_marcas_enviar: TRzMemo
    AlignWithMargins = True
    Left = 2
    Top = 671
    Width = 1146
    Height = 26
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    BorderStyle = bsNone
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    Visible = False
    WordWrap = False
  end
  object tray_refresh_enviar: TEdit
    Left = 0
    Top = 648
    Width = 1150
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    TabOrder = 3
    Visible = False
  end
  object tray_token_enviar: TEdit
    Left = 0
    Top = 627
    Width = 1150
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    TabOrder = 4
    Visible = False
  end
  object RzPanel15: TRzPanel
    Left = 0
    Top = 586
    Width = 1150
    Height = 41
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    BorderOuter = fsNone
    BorderColor = 15770519
    BorderWidth = 3
    Color = 15770519
    TabOrder = 5
    object btsmarcas: TButton
      Left = 3
      Top = 3
      Width = 75
      Height = 35
      Align = alLeft
      Caption = 'Abrir Tabelas'
      TabOrder = 0
      Visible = False
      OnClick = btsmarcasClick
    end
    object btnenviartodasmarcas: TButton
      Left = 169
      Top = 3
      Width = 91
      Height = 35
      Align = alLeft
      Caption = 'Enviar Todas'
      TabOrder = 1
      OnClick = btnenviartodasmarcasClick
    end
    object btnenviarum: TButton
      Left = 78
      Top = 3
      Width = 91
      Height = 35
      Align = alLeft
      Caption = 'Enviar Marca'
      TabOrder = 2
      OnClick = btnenviarumClick
    end
  end
  object dtBMmarcas: TDataSource
    DataSet = qrBMmarcas
    OnDataChange = dtBMmarcasDataChange
    Left = 628
    Top = 168
  end
  object serverTray: TIdHTTP
    AllowCookies = True
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.CacheControl = 'no-cache'
    Request.ContentEncoding = 'utf-8'
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.ContentType = 'application/json'
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 700
    Top = 77
  end
  object qrBMmarcas: TDBISAMQuery
    DatabaseName = 'db'
    EngineVersion = '4.44 Build 3'
    SQL.Strings = (
      'SELECT'
      'MARCA'
      ''
      'FROM PRODUTOSMARCAS'
      'ORDER BY MARCA'
      '')
    Params = <>
    Left = 625
    Top = 120
    object qrBMmarcasMARCA: TStringField
      FieldName = 'MARCA'
      Size = 15
    end
  end
  object tbBMintaux: TDBISAMTable
    DatabaseName = 'db'
    EngineVersion = '4.44 Build 3'
    TableName = 'Integracoes_Aux'
    Left = 768
    Top = 76
    object tbBMintauxID_Int: TStringField
      FieldName = 'ID_Int'
    end
    object tbBMintauxID_BM: TIntegerField
      FieldName = 'ID_BM'
    end
    object tbBMintauxTipo: TStringField
      FieldName = 'Tipo'
      Size = 3
    end
    object tbBMintauxHASH: TStringField
      FieldName = 'HASH'
      Size = 32
    end
  end
  object qrBMintaux: TDBISAMQuery
    DatabaseName = 'db'
    EngineVersion = '4.44 Build 3'
    SQL.Strings = (
      'SELECT *'
      'FROM Integracoes_Aux'
      'WHERE (Tipo = '#39'TM'#39') AND (HASH = :HASH)'
      '')
    Params = <
      item
        DataType = ftString
        Name = 'HASH'
      end>
    Left = 697
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'HASH'
      end>
    object qrBMintauxID_Int: TStringField
      FieldName = 'ID_Int'
    end
    object qrBMintauxID_BM: TIntegerField
      FieldName = 'ID_BM'
    end
    object qrBMintauxTipo: TStringField
      FieldName = 'Tipo'
      Size = 3
    end
    object qrBMintauxHASH: TStringField
      FieldName = 'HASH'
      Size = 32
    end
  end
  object dtBMintaux: TDataSource
    DataSet = qrBMintaux2
    Left = 772
    Top = 176
  end
  object qrBMintaux2: TDBISAMQuery
    DatabaseName = 'db'
    EngineVersion = '4.44 Build 3'
    SQL.Strings = (
      'SELECT *'
      'FROM Integracoes_Aux'
      'WHERE Tipo = '#39'TM'#39
      '')
    Params = <>
    Left = 769
    Top = 128
    object StringField1: TStringField
      FieldName = 'ID_Int'
    end
    object IntegerField1: TIntegerField
      FieldName = 'ID_BM'
    end
    object StringField2: TStringField
      FieldName = 'Tipo'
      Size = 3
    end
    object StringField3: TStringField
      FieldName = 'HASH'
      Size = 32
    end
  end
  object tbBMmarcas: TDBISAMTable
    DatabaseName = 'db'
    EngineVersion = '4.44 Build 3'
    TableName = 'ProdutosMarcas'
    Left = 624
    Top = 76
    object tbBMmarcasMarca: TStringField
      FieldName = 'Marca'
      Size = 15
    end
  end
  object tbBMauxerros: TDBISAMTable
    DatabaseName = 'db'
    EngineVersion = '4.44 Build 3'
    TableName = 'Integracao_erros'
    Left = 840
    Top = 80
    object tbBMauxerrosid: TAutoIncField
      FieldName = 'id'
    end
    object tbBMauxerrosid_tabela: TIntegerField
      FieldName = 'id_tabela'
    end
    object tbBMauxerrostipo: TStringField
      FieldName = 'tipo'
      Size = 3
    end
    object tbBMauxerrosdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object tbBMauxerrosdatahora_registro: TDateTimeField
      FieldName = 'datahora_registro'
    end
    object tbBMauxerrostipo_metodo: TStringField
      FieldName = 'tipo_metodo'
      Size = 4
    end
  end
end
