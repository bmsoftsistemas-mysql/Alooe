unit ufrmTabelas;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Json,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  DateUtils,
  Data.DB,
  cxDBData,
  cxTextEdit,
  cxButtonEdit,
  cxDBLookupComboBox,
  cxCheckBox,
  cxCurrencyEdit,
  cxCalendar,
  cxLabel,
  dbisamtb,
  frxClass,
  frxDBSet,
  Vcl.Menus,
  RzShellDialogs,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  cxMemo,
  cxDBEdit,
  RzButton,
  Vcl.StdCtrls,
  Vcl.Mask,
  RzEdit,
  RzBckgnd,
  RzLabel,
  Vcl.ExtCtrls,
  RzPanel,
  IdBaseComponent,
  IdComponent,
  IdTCPConnection,
  IdTCPClient,
  IdHTTP,
  jpeg,
  RzTabs,
  Vcl.DBCtrls,
  RzRadChk,
  RzTray, Vcl.Grids, Vcl.DBGrids;

type
  TfrmTabelas = class(TForm)
    RzPanel1: TRzPanel;
    dtProdutos: TDataSource;
    qrProdutos: TDBISAMQuery;
    serverTray: TIdHTTP;
    tempTrayProdutos: TDBISAMTable;
    tempTrayProdutosid: TIntegerField;
    tempTrayProdutosnome: TStringField;
    tempTrayProdutoscodigo: TStringField;
    dtTempTrayProdutos: TDataSource;
    tempTrayProdutosultima_alteracao: TDateTimeField;
    qrProdutosID_PRO: TAutoIncField;
    qrProdutosID_REF: TAutoIncField;
    qrProdutosIDREFPRODMP: TIntegerField;
    qrProdutosREFERENCIA: TStringField;
    qrProdutosDESCRICAO_PRO: TStringField;
    qrProdutosDESCRICAO_REF: TStringField;
    qrProdutosPRECO_TABELA: TFloatField;
    qrProdutosPRECO_MINIMO: TFloatField;
    qrProdutosIPI: TIntegerField;
    qrProdutosTIPO_IPI: TStringField;
    qrProdutosST: TIntegerField;
    qrProdutosGRADE_CORES: TStringField;
    qrProdutosGRADE_TAMANHOS: TStringField;
    qrProdutosMOEDA: TIntegerField;
    qrProdutosUNIDADE: TStringField;
    qrProdutosSALDO_ESTOQUE: TFloatField;
    qrProdutosOBSERVACOES: TStringField;
    qrProdutosULTIMA_ALTERACAO: TDateField;
    qrProdutosEXCLUIDO: TBooleanField;
    qrProdutosATIVO: TBooleanField;
    qrProdutosCATEGORIA_ID: TIntegerField;
    qrProdutosNCM: TStringField;
    qrProdutosMULTIPLO: TIntegerField;
    qrProdutosPESO_BRUTO: TFloatField;
    qrProdutosHASH: TStringField;
    qrProdutosULTIMA_ATIVIDADE: TDateTimeField;
    qrProdutosMENSAGEM: TStringField;
    qrProdutosHASH_NOVO: TStringField;
    pTabelasSincronizacao: TRzPageControl;
    TabSheet1: TRzTabSheet;
    gridProdutosBM: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    gridProdutosTray: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3id: TcxGridDBColumn;
    cxGridDBTableView3codigo: TcxGridDBColumn;
    cxGridDBTableView3nome: TcxGridDBColumn;
    cxGridDBTableView3ultima_alteracao: TcxGridDBColumn;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    JSONprodutosTray: TRzMemo;
    TabSheet2: TRzTabSheet;
    RzPanel4: TRzPanel;
    btnAtualizarProdutos: TRzButton;
    btnExcluir: TRzButton;
    RzPanel5: TRzPanel;
    RzPanel6: TRzPanel;
    RzPanel7: TRzPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    img: TDBImage;
    qrProdutosIDPRODBM: TIntegerField;
    qrProdutosIDREFPRODBM: TIntegerField;
    cxGridDBTableView5ID: TcxGridDBColumn;
    cxGridDBTableView5ID_PRODUTO: TcxGridDBColumn;
    cxGridDBTableView5DESCRICAO_PRODUTO: TcxGridDBColumn;
    cxGridDBTableView5DESCRICAO_FOTO: TcxGridDBColumn;
    cxGridDBTableView5IDREFPRODMP: TcxGridDBColumn;
    cxGridDBTableView5IDPRODBM: TcxGridDBColumn;
    cxGridDBTableView5IDIMAGEMMP: TcxGridDBColumn;
    cxGridDBTableView5IDMP: TcxGridDBColumn;
    cxGridDBTableView5MENSAGEM: TcxGridDBColumn;
    btnIncluirProdutoUnico: TRzButton;
    tbTrayProdutos: TDBISAMTable;
    btnRelacionarTrayBM: TRzButton;
    qrProdutosIDCLASSE: TAutoIncField;
    TabSheet3: TRzTabSheet;
    RzPageControl4: TRzPageControl;
    RzTabSheet3: TRzTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    JSONcategoriasTray: TRzMemo;
    RzPanel8: TRzPanel;
    btnAtualizarCategorias: TRzButton;
    RzButton3: TRzButton;
    btnIncluirCategoria: TRzButton;
    RzPanel9: TRzPanel;
    RzPanel10: TRzPanel;
    cxGrid4: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridDBTableView12: TcxGridDBTableView;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    qrProClasses: TDBISAMQuery;
    dtProClasses: TDataSource;
    dtTempTrayCategorais: TDataSource;
    tempTrayCategorias: TDBISAMTable;
    tempTrayCategoriasnome: TStringField;
    tempTrayCategoriascategoria_pai_id: TIntegerField;
    tempTrayCategoriasexcluido: TBooleanField;
    cxGridDBTableView9id: TcxGridDBColumn;
    cxGridDBTableView9nome: TcxGridDBColumn;
    cxGridDBTableView9categoria_pai_id: TcxGridDBColumn;
    cxGridDBTableView9excluido: TcxGridDBColumn;
    cxGridDBTableView9ultima_alteracao: TcxGridDBColumn;
    tempTrayCategoriasid: TIntegerField;
    tempTrayCategoriasultima_alteracao: TDateTimeField;
    qrProClassesID: TAutoIncField;
    qrProClassesNIVEL: TStringField;
    qrProClassesGRUPO1: TStringField;
    qrProClassesID_GRUPO1: TIntegerField;
    qrProClassesGRUPO2: TStringField;
    qrProClassesID_GRUPO2: TIntegerField;
    qrProClassesGRUPO3: TStringField;
    qrProClassesID_GRUPO3: TIntegerField;
    qrProClassesGRUPO4: TStringField;
    qrProClassesID_GRUPO4: TIntegerField;
    qrProClassesGRUPO5: TStringField;
    qrProClassesID_GRUPO5: TIntegerField;
    qrProClassesCLASSE: TStringField;
    qrProClassesID_PAI: TIntegerField;
    qrProClassesDESCRICAO: TStringField;
    qrProClassesIDCLASSEBM: TIntegerField;
    qrProClassesDESCRICAOCLASSEBM: TStringField;
    qrProClassesHASH: TStringField;
    qrProClassesHASH_NOVO: TStringField;
    cxGridDBTableView11ID: TcxGridDBColumn;
    cxGridDBTableView11NIVEL: TcxGridDBColumn;
    cxGridDBTableView11CLASSE: TcxGridDBColumn;
    cxGridDBTableView11ID_PAI: TcxGridDBColumn;
    cxGridDBTableView11DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView11IDCLASSEBM: TcxGridDBColumn;
    cxGridDBTableView11HASH: TcxGridDBColumn;
    cxGridDBTableView11HASH_NOVO: TcxGridDBColumn;
    qrProClassesIDCLASSEMP: TIntegerField;
    cxGridDBTableView11IDCLASSEMP: TcxGridDBColumn;
    tbTrayClasses: TDBISAMTable;
    tbTrayClassesID: TAutoIncField;
    tbTrayClassesIDclasseBM: TIntegerField;
    tbTrayClassesDescricaoClasseBM: TStringField;
    tbTrayClassesIDclasseMP: TIntegerField;
    tbTrayClassesHash: TStringField;
    tbTrayClassesultimo_status: TStringField;
    tbTrayClassesultima_atividade: TDateTimeField;
    tbTrayClassesmensagem: TStringField;
    tbTrayClasseserro_codigo: TStringField;
    tbTrayClasseserro_json: TMemoField;
    tbTrayClassesIDclasseBM_pai: TIntegerField;
    tbTrayClassesIDclasseMP_pai: TIntegerField;
    qrProClassesIDCLASSEBM_PAI: TIntegerField;
    qrProClassesIDCLASSEMP_PAI: TIntegerField;
    cxGridDBTableView11IDCLASSEMP_PAI: TcxGridDBColumn;
    qrProdutosIDCLASSEMP: TIntegerField;
    qrProdutosPRECOVENDA2: TFloatField;
    qrProdutosPRECOVENDA3: TFloatField;
    TabSheet4: TRzTabSheet;
    cxGrid5: TcxGrid;
    cxGridDBTableView13: TcxGridDBTableView;
    cxGridDBTableView14: TcxGridDBTableView;
    cxGridDBColumn78: TcxGridDBColumn;
    cxGridDBColumn79: TcxGridDBColumn;
    cxGridDBColumn80: TcxGridDBColumn;
    cxGridDBColumn81: TcxGridDBColumn;
    cxGridDBColumn82: TcxGridDBColumn;
    cxGridDBColumn83: TcxGridDBColumn;
    cxGridDBColumn84: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    RzPageControl5: TRzPageControl;
    RzTabSheet4: TRzTabSheet;
    cxGrid6: TcxGrid;
    cxGridDBTableView15: TcxGridDBTableView;
    cxGridDBTableView16: TcxGridDBTableView;
    cxGridDBColumn89: TcxGridDBColumn;
    cxGridDBColumn90: TcxGridDBColumn;
    cxGridDBColumn91: TcxGridDBColumn;
    cxGridDBColumn92: TcxGridDBColumn;
    cxGridDBColumn93: TcxGridDBColumn;
    cxGridDBColumn94: TcxGridDBColumn;
    cxGridDBColumn95: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    JSONtabelasTray: TRzMemo;
    RzPanel11: TRzPanel;
    RzButton7: TRzButton;
    RzButton9: TRzButton;
    cxGridDBTableView13ID: TcxGridDBColumn;
    cxGridDBTableView13IDMP: TcxGridDBColumn;
    cxGridDBTableView13NOME: TcxGridDBColumn;
    cxGridDBTableView13TIPO: TcxGridDBColumn;
    cxGridDBTableView13ACRESCIMO: TcxGridDBColumn;
    cxGridDBTableView13DESCONTO: TcxGridDBColumn;
    cxGridDBTableView13EXCLUIDO: TcxGridDBColumn;
    cxGridDBTableView13ULTIMA_ALTERACAO: TcxGridDBColumn;
    cxGridDBTableView15idMP: TcxGridDBColumn;
    cxGridDBTableView15nome: TcxGridDBColumn;
    cxGridDBTableView15tipo: TcxGridDBColumn;
    cxGridDBTableView15acrescimo: TcxGridDBColumn;
    cxGridDBTableView15desconto: TcxGridDBColumn;
    cxGridDBTableView15excluido: TcxGridDBColumn;
    cxGridDBTableView15ultima_alteracao: TcxGridDBColumn;
    qrProdutosIDTABELAPRECO2: TIntegerField;
    qrProdutosIDPRECO2MP: TIntegerField;
    qrProdutosVALORPRECO2: TFloatField;
    qrProdutosIDTABELAPRECO3: TIntegerField;
    qrProdutosIDPRECO3MP: TIntegerField;
    qrProdutosVALORPRECO3: TFloatField;
    cxGridDBTableView1ID_PRO: TcxGridDBColumn;
    cxGridDBTableView1ID_REF: TcxGridDBColumn;
    cxGridDBTableView1IDPRODBM: TcxGridDBColumn;
    cxGridDBTableView1IDREFPRODBM: TcxGridDBColumn;
    cxGridDBTableView1IDREFPRODMP: TcxGridDBColumn;
    cxGridDBTableView1IDCLASSE: TcxGridDBColumn;
    cxGridDBTableView1IDCLASSEMP: TcxGridDBColumn;
    cxGridDBTableView1REFERENCIA: TcxGridDBColumn;
    cxGridDBTableView1DESCRICAO_PRO: TcxGridDBColumn;
    cxGridDBTableView1DESCRICAO_REF: TcxGridDBColumn;
    cxGridDBTableView1PRECO_TABELA: TcxGridDBColumn;
    cxGridDBTableView1PRECO_MINIMO: TcxGridDBColumn;
    cxGridDBTableView1IPI: TcxGridDBColumn;
    cxGridDBTableView1TIPO_IPI: TcxGridDBColumn;
    cxGridDBTableView1ST: TcxGridDBColumn;
    cxGridDBTableView1MOEDA: TcxGridDBColumn;
    cxGridDBTableView1UNIDADE: TcxGridDBColumn;
    cxGridDBTableView1SALDO_ESTOQUE: TcxGridDBColumn;
    cxGridDBTableView1OBSERVACOES: TcxGridDBColumn;
    cxGridDBTableView1ULTIMA_ALTERACAO: TcxGridDBColumn;
    cxGridDBTableView1EXCLUIDO: TcxGridDBColumn;
    cxGridDBTableView1ATIVO: TcxGridDBColumn;
    cxGridDBTableView1CATEGORIA_ID: TcxGridDBColumn;
    cxGridDBTableView1NCM: TcxGridDBColumn;
    cxGridDBTableView1MULTIPLO: TcxGridDBColumn;
    cxGridDBTableView1PESO_BRUTO: TcxGridDBColumn;
    cxGridDBTableView1HASH: TcxGridDBColumn;
    cxGridDBTableView1HASH_NOVO: TcxGridDBColumn;
    cxGridDBTableView1ULTIMA_ATIVIDADE: TcxGridDBColumn;
    cxGridDBTableView1MENSAGEM: TcxGridDBColumn;
    cxGridDBTableView1PRECOVENDA2: TcxGridDBColumn;
    cxGridDBTableView1PRECOVENDA3: TcxGridDBColumn;
    cxGridDBTableView1IDTABELAPRECO2: TcxGridDBColumn;
    cxGridDBTableView1IDPRECO2MP: TcxGridDBColumn;
    cxGridDBTableView1VALORPRECO2: TcxGridDBColumn;
    cxGridDBTableView1IDTABELAPRECO3: TcxGridDBColumn;
    cxGridDBTableView1IDPRECO3MP: TcxGridDBColumn;
    cxGridDBTableView1VALORPRECO3: TcxGridDBColumn;
    cxGridDBTableView5REFERENCIA: TcxGridDBColumn;
    RzButton8: TRzButton;
    tbBMprodutos: TDBISAMTable;
    tempTrayProdutosexcluido: TBooleanField;
    cxGridDBTableView3excluido: TcxGridDBColumn;
    btnAlterarCategoria: TRzButton;
    tempTrayClientes: TDBISAMTable;
    dtTempTrayClientes: TDataSource;
    tempTrayClientesid: TIntegerField;
    tempTrayClientesrazao_social: TStringField;
    tempTrayClientesnome_fantasia: TStringField;
    tempTrayClientestipo: TStringField;
    tempTrayClientescnpj: TStringField;
    tempTrayClientesinscricao_estadual: TStringField;
    tempTrayClientessuframa: TStringField;
    tempTrayClientesrua: TStringField;
    tempTrayClientesnumero: TStringField;
    tempTrayClientescomplemento: TStringField;
    tempTrayClientescep: TStringField;
    tempTrayClientesbairro: TStringField;
    tempTrayClientescidade: TStringField;
    tempTrayClientesestado: TStringField;
    tempTrayClientesobservacao: TStringField;
    tempTrayClientesemail1: TStringField;
    tempTrayClientesemail2: TStringField;
    tempTrayClientesemail3: TStringField;
    tempTrayClientestelefone1: TStringField;
    tempTrayClientestelefone2: TStringField;
    tempTrayClientestelefone3: TStringField;
    tempTrayClientesnome_excecao_fiscal: TStringField;
    tempTrayClientessegmento_id: TIntegerField;
    tempTrayClientesrede_id: TIntegerField;
    tempTrayClientesexcluido: TBooleanField;
    tempTrayClientesenderecos_adicionais: TStringField;
    tempTrayClientesultima_alteracao: TDateTimeField;
    tbTrayClientes: TDBISAMTable;
    qrClientes: TDBISAMQuery;
    qrClientesID: TAutoIncField;
    qrClientesRAZAO_SOCIAL: TStringField;
    qrClientesNOME_FANTASIA: TStringField;
    qrClientesTIPO: TStringField;
    qrClientesCNPJ: TStringField;
    qrClientesINSCRICAO_ESTADUAL: TStringField;
    qrClientesSUFRAMA: TStringField;
    qrClientesRUA: TStringField;
    qrClientesNUMERO: TStringField;
    qrClientesCOMPLEMENTO: TStringField;
    qrClientesCEP: TStringField;
    qrClientesBAIRRO: TStringField;
    qrClientesCIDADE: TStringField;
    qrClientesESTADO: TStringField;
    qrClientesOBSERVACAO: TMemoField;
    qrClientesEMAIL1: TStringField;
    qrClientesEMAIL2: TStringField;
    qrClientesEMAIL3: TStringField;
    qrClientesTELEFONE1: TStringField;
    qrClientesTELEFONE2: TStringField;
    qrClientesTELEFONE3: TStringField;
    qrClientesNOME_EXCECAO_FISCAL: TStringField;
    qrClientesSEGMENTO_ID: TIntegerField;
    qrClientesREDE_ID: TIntegerField;
    qrClientesEXCLUIDO: TBooleanField;
    qrClientesENDERECOS_ADICIIONAIS: TStringField;
    qrClientesULTIMA_ALTERACAO: TDateField;
    qrClientesHASH: TStringField;
    qrClientesHASH_NOVO: TStringField;
    qrClientesULTIMA_ATIVIDADE: TDateTimeField;
    qrClientesMENSAGEM: TStringField;
    qrClientesIDMP: TIntegerField;
    qrProdutosATUALIZAR: TStringField;
    cxGridDBTableView1ATUALIZAR: TcxGridDBColumn;
    cxGridDBTableView1ERRO_CODIGO: TcxGridDBColumn;
    qrProdutosERRO_CODIGO: TStringField;
    qrProdutosERRO_JSON: TMemoField;
    btnAlterarTudoCategorias: TRzButton;
    qrProClassesATUALIZAR: TStringField;
    qrProClassesERRO_CODIGO: TStringField;
    qrProClassesERRO_JSON: TMemoField;
    cxGridDBTableView11ATUALIZAR: TcxGridDBColumn;
    cxGridDBTableView11ERRO_CODIGO: TcxGridDBColumn;
    qrClientesATUALIZAR: TStringField;
    qrClientesERRO_CODIGO: TStringField;
    qrClientesERRO_JSON: TMemoField;
    TabSheet6: TRzTabSheet;
    cxGrid9: TcxGrid;
    cxGridDBTableView21: TcxGridDBTableView;
    cxGridDBTableView22: TcxGridDBTableView;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn65: TcxGridDBColumn;
    cxGridDBColumn66: TcxGridDBColumn;
    cxGridDBColumn67: TcxGridDBColumn;
    cxGridDBColumn68: TcxGridDBColumn;
    cxGridLevel11: TcxGridLevel;
    RzPageControl7: TRzPageControl;
    RzTabSheet6: TRzTabSheet;
    cxGrid10: TcxGrid;
    cxGridDBTableView23: TcxGridDBTableView;
    cxGridDBTableView24: TcxGridDBTableView;
    cxGridDBColumn97: TcxGridDBColumn;
    cxGridDBColumn98: TcxGridDBColumn;
    cxGridDBColumn99: TcxGridDBColumn;
    cxGridDBColumn100: TcxGridDBColumn;
    cxGridDBColumn101: TcxGridDBColumn;
    cxGridDBColumn102: TcxGridDBColumn;
    cxGridDBColumn103: TcxGridDBColumn;
    cxGridLevel12: TcxGridLevel;
    JSONvendedoresTray: TRzMemo;
    RzPanel14: TRzPanel;
    RzButton5: TRzButton;
    RzButton6: TRzButton;
    cxGridDBTableView21ID: TcxGridDBColumn;
    cxGridDBTableView21NOMEVENDBM: TcxGridDBColumn;
    cxGridDBTableView21IDVENDBM: TcxGridDBColumn;
    cxGridDBTableView21IDVENDMP: TcxGridDBColumn;
    cxGridDBTableView21NOMEVENDMP: TcxGridDBColumn;
    tempTrayVendedores: TDBISAMTable;
    tempTrayVendedoresnome: TStringField;
    tempTrayVendedoresemail: TStringField;
    tempTrayVendedorestelefone: TStringField;
    tempTrayVendedoresadministrador: TBooleanField;
    tempTrayVendedoresexcluido: TBooleanField;
    tempTrayVendedoresultima_alteracao: TDateTimeField;
    cxGridDBTableView23id: TcxGridDBColumn;
    cxGridDBTableView23nome: TcxGridDBColumn;
    cxGridDBTableView23email: TcxGridDBColumn;
    cxGridDBTableView23telefone: TcxGridDBColumn;
    cxGridDBTableView23administrador: TcxGridDBColumn;
    cxGridDBTableView23excluido: TcxGridDBColumn;
    cxGridDBTableView23ultima_alteracao: TcxGridDBColumn;
    tempTrayVendedoresid: TIntegerField;
    TabSheet8: TRzTabSheet;
    cxGrid13: TcxGrid;
    cxGridDBTableView29: TcxGridDBTableView;
    cxGridDBTableView30: TcxGridDBTableView;
    cxGridDBColumn104: TcxGridDBColumn;
    cxGridDBColumn105: TcxGridDBColumn;
    cxGridDBColumn106: TcxGridDBColumn;
    cxGridDBColumn107: TcxGridDBColumn;
    cxGridDBColumn115: TcxGridDBColumn;
    cxGridDBColumn116: TcxGridDBColumn;
    cxGridDBColumn117: TcxGridDBColumn;
    cxGridLevel15: TcxGridLevel;
    RzPageControl9: TRzPageControl;
    RzTabSheet8: TRzTabSheet;
    cxGrid14: TcxGrid;
    cxGridDBTableView31: TcxGridDBTableView;
    cxGridDBTableView32: TcxGridDBTableView;
    cxGridDBColumn122: TcxGridDBColumn;
    cxGridDBColumn123: TcxGridDBColumn;
    cxGridDBColumn124: TcxGridDBColumn;
    cxGridDBColumn125: TcxGridDBColumn;
    cxGridDBColumn126: TcxGridDBColumn;
    cxGridDBColumn127: TcxGridDBColumn;
    cxGridDBColumn128: TcxGridDBColumn;
    cxGridLevel16: TcxGridLevel;
    JSONtranspTray: TRzMemo;
    RzPanel16: TRzPanel;
    btnAtualizarTransp: TRzButton;
    btnIncluirTranspMP: TRzButton;
    btnAlterarTranspMP: TRzButton;
    btnAlterarTudoTransp: TRzButton;
    cxGridDBTableView31id: TcxGridDBColumn;
    cxGridDBTableView31nome: TcxGridDBColumn;
    cxGridDBTableView31cidade: TcxGridDBColumn;
    cxGridDBTableView31estado: TcxGridDBColumn;
    cxGridDBTableView31telefone1: TcxGridDBColumn;
    cxGridDBTableView31telefone2: TcxGridDBColumn;
    cxGridDBTableView31excluido: TcxGridDBColumn;
    cxGridDBTableView31ultima_alteracao: TcxGridDBColumn;
    cxGridDBTableView29ATUALIZAR: TcxGridDBColumn;
    cxGridDBTableView29ID: TcxGridDBColumn;
    cxGridDBTableView29NOME: TcxGridDBColumn;
    cxGridDBTableView29CIDADE: TcxGridDBColumn;
    cxGridDBTableView29UF: TcxGridDBColumn;
    cxGridDBTableView29FONE1: TcxGridDBColumn;
    cxGridDBTableView29FONE2: TcxGridDBColumn;
    cxGridDBTableView29IDTRANSP: TcxGridDBColumn;
    cxGridDBTableView29IDMP: TcxGridDBColumn;
    cxGridDBTableView29HASH: TcxGridDBColumn;
    cxGridDBTableView29HASH_NOVO: TcxGridDBColumn;
    cxGridDBTableView29ERRO_CODIGO: TcxGridDBColumn;
    cxGridDBTableView29ERRO_JSON: TcxGridDBColumn;
    TabSheet9: TRzTabSheet;
    cxGrid15: TcxGrid;
    cxGridDBTableView33: TcxGridDBTableView;
    cxGridDBTableView34: TcxGridDBTableView;
    cxGridDBColumn130: TcxGridDBColumn;
    cxGridDBColumn131: TcxGridDBColumn;
    cxGridDBColumn132: TcxGridDBColumn;
    cxGridDBColumn133: TcxGridDBColumn;
    cxGridDBColumn134: TcxGridDBColumn;
    cxGridDBColumn135: TcxGridDBColumn;
    cxGridDBColumn136: TcxGridDBColumn;
    cxGridLevel17: TcxGridLevel;
    RzPageControl10: TRzPageControl;
    RzTabSheet9: TRzTabSheet;
    cxGrid16: TcxGrid;
    cxGridDBTableView35: TcxGridDBTableView;
    cxGridDBTableView36: TcxGridDBTableView;
    cxGridDBColumn146: TcxGridDBColumn;
    cxGridDBColumn147: TcxGridDBColumn;
    cxGridDBColumn148: TcxGridDBColumn;
    cxGridDBColumn149: TcxGridDBColumn;
    cxGridDBColumn150: TcxGridDBColumn;
    cxGridDBColumn151: TcxGridDBColumn;
    cxGridDBColumn152: TcxGridDBColumn;
    cxGridLevel18: TcxGridLevel;
    JSONplanosTray: TRzMemo;
    RzPanel17: TRzPanel;
    btnAtualizarPlanos: TRzButton;
    btnIncluirPlanoUnico: TRzButton;
    btnAlterarPlanoUnico: TRzButton;
    btnAlterarTudoPlano: TRzButton;
    cxGridDBTableView33ID: TcxGridDBColumn;
    cxGridDBTableView33DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView33ATIVO: TcxGridDBColumn;
    cxGridDBTableView33IDPLANOBM: TcxGridDBColumn;
    cxGridDBTableView33IDPLANOMP: TcxGridDBColumn;
    cxGridDBTableView33HASH: TcxGridDBColumn;
    cxGridDBTableView33ERRO_CODIGO: TcxGridDBColumn;
    cxGridDBTableView33ERRO_JSON: TcxGridDBColumn;
    cxGridDBTableView35id: TcxGridDBColumn;
    cxGridDBTableView35nome: TcxGridDBColumn;
    cxGridDBTableView35valor_minimo: TcxGridDBColumn;
    cxGridDBTableView35excluido: TcxGridDBColumn;
    cxGridDBTableView35ultima_alteracao: TcxGridDBColumn;
    cxGridDBTableView33ATUALIZAR: TcxGridDBColumn;
    cxGridDBTableView33HASH_NOVO: TcxGridDBColumn;
    TabSheet11: TRzTabSheet;
    cxGrid19: TcxGrid;
    cxGridDBTableView41: TcxGridDBTableView;
    cxGridDBTableView42: TcxGridDBTableView;
    cxGridDBColumn142: TcxGridDBColumn;
    cxGridDBColumn157: TcxGridDBColumn;
    cxGridDBColumn158: TcxGridDBColumn;
    cxGridDBColumn159: TcxGridDBColumn;
    cxGridDBColumn160: TcxGridDBColumn;
    cxGridDBColumn161: TcxGridDBColumn;
    cxGridDBColumn162: TcxGridDBColumn;
    cxGridLevel21: TcxGridLevel;
    cxGrid20: TcxGrid;
    cxGridDBTableView43: TcxGridDBTableView;
    cxGridDBTableView44: TcxGridDBTableView;
    cxGridDBColumn174: TcxGridDBColumn;
    cxGridDBColumn175: TcxGridDBColumn;
    cxGridDBColumn176: TcxGridDBColumn;
    cxGridDBColumn177: TcxGridDBColumn;
    cxGridDBColumn178: TcxGridDBColumn;
    cxGridDBColumn179: TcxGridDBColumn;
    cxGridDBColumn180: TcxGridDBColumn;
    cxGridLevel22: TcxGridLevel;
    RzPanel19: TRzPanel;
    btnAtualizarPedidos: TRzButton;
    btnIncluirPedidoBM: TRzButton;
    btnAlterarTudoPedidos: TRzButton;
    cxGridDBTableView41id: TcxGridDBColumn;
    cxGridDBTableView41cliente_id: TcxGridDBColumn;
    cxGridDBTableView41cliente_razao_social: TcxGridDBColumn;
    cxGridDBTableView41cliente_nome_fantasia: TcxGridDBColumn;
    cxGridDBTableView41transportadora_id: TcxGridDBColumn;
    cxGridDBTableView41criador_id: TcxGridDBColumn;
    cxGridDBTableView41nome_contato: TcxGridDBColumn;
    cxGridDBTableView41status: TcxGridDBColumn;
    cxGridDBTableView41total: TcxGridDBColumn;
    cxGridDBTableView41condicao_pagamento: TcxGridDBColumn;
    cxGridDBTableView41condicao_pagamento_id: TcxGridDBColumn;
    cxGridDBTableView41data_emissao: TcxGridDBColumn;
    cxGridDBTableView41observacoes: TcxGridDBColumn;
    JSONpedidosTray: TRzMemo;
    cxGridDBTableView43id: TcxGridDBColumn;
    cxGridDBTableView43produto_id: TcxGridDBColumn;
    cxGridDBTableView43produto_codigo: TcxGridDBColumn;
    cxGridDBTableView43produto_nome: TcxGridDBColumn;
    cxGridDBTableView43tabela_preco_id: TcxGridDBColumn;
    cxGridDBTableView43quantidade: TcxGridDBColumn;
    cxGridDBTableView43preco_bruto: TcxGridDBColumn;
    cxGridDBTableView43preco_liquido: TcxGridDBColumn;
    cxGridDBTableView43observacoes: TcxGridDBColumn;
    cxGridDBTableView43excluido: TcxGridDBColumn;
    cxGridDBTableView43ipi: TcxGridDBColumn;
    cxGridDBTableView43tipo_ipi: TcxGridDBColumn;
    cxGridDBTableView43st: TcxGridDBColumn;
    cxGridDBTableView43subtotal: TcxGridDBColumn;
    cxGridDBTableView41cliente_idBM: TcxGridDBColumn;
    cxGridDBTableView43produto_idBM: TcxGridDBColumn;
    cxGridDBTableView41atualizar: TcxGridDBColumn;
    cxGridDBTableView43atualizar: TcxGridDBColumn;
    cxGridDBTableView43produto_idBMref: TcxGridDBColumn;
    cxGridDBTableView41campoExtra_desconto: TcxGridDBColumn;
    cxGridDBTableView41campoExtra_pedidoVendedor: TcxGridDBColumn;
    cxGridDBTableView41condicao_pagamento_idBM: TcxGridDBColumn;
    ExcluirCondPgtoMP: TRzButton;
    cxGridDBTableView43descontos_perc: TcxGridDBColumn;
    cxGridDBTableView43descontos_valor: TcxGridDBColumn;
    cxGridDBTableView1ERRO_JSON: TcxGridDBColumn;
    cxGridDBTableView21ADMIN: TcxGridDBColumn;
    btnTodosHoje: TRzButton;
    btnBuscarTodosMes: TRzButton;
    cxGridDBTableView41ultima_alteracao: TcxGridDBColumn;
    RzPanel3: TRzPanel;
    btnAtualizarImagens: TRzButton;
    RzButton2: TRzButton;
    btnIncluirImagemUnica: TRzButton;
    btnAlterarTudoImagens: TRzButton;
    TabSheet13: TRzTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBColumn139: TcxGridDBColumn;
    cxGridDBColumn140: TcxGridDBColumn;
    cxGridDBColumn141: TcxGridDBColumn;
    cxGridDBColumn170: TcxGridDBColumn;
    cxGridDBColumn171: TcxGridDBColumn;
    cxGridDBColumn172: TcxGridDBColumn;
    cxGridDBColumn173: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGridDBTableView7ATUALIZAR: TcxGridDBColumn;
    cxGridDBTableView7ID_ORCAMENTOM: TcxGridDBColumn;
    cxGridDBTableView7NUMERO_DAV: TcxGridDBColumn;
    cxGridDBTableView7ID_MP: TcxGridDBColumn;
    cxGridDBTableView7ID_NF: TcxGridDBColumn;
    cxGridDBTableView7SERIE_NF: TcxGridDBColumn;
    cxGridDBTableView7NUMERO_NF: TcxGridDBColumn;
    cxGridDBTableView7DATA_EMISSAO_NF: TcxGridDBColumn;
    cxGridDBTableView7TOTAL_NF: TcxGridDBColumn;
    cxGridDBTableView7IDPEDIDOBM: TcxGridDBColumn;
    cxGridDBTableView7IDPEDIDOMP: TcxGridDBColumn;
    cxGridDBTableView7HASH: TcxGridDBColumn;
    cxGridDBTableView7ERRO_CODIGO: TcxGridDBColumn;
    cxGridDBTableView7ERRO_JSON: TcxGridDBColumn;
    cxGridDBTableView7HASH_NOVO: TcxGridDBColumn;
    RzPanel21: TRzPanel;
    btnAtualizarFatur: TRzButton;
    btnIncluirFaturUnico: TRzButton;
    btnAlterarTudoFatur: TRzButton;
    RzButton1: TRzButton;
    RzButton4: TRzButton;
    RzButton13: TRzButton;
    cxGridDBTableView11ERRO_JSON: TcxGridDBColumn;
    btnTodosDesdeOntem: TRzButton;
    cxGridDBTableView41empresa_id: TcxGridDBColumn;
    RzButton14: TRzButton;
    btnRelacionarTrayBMeste: TRzButton;
    dtTempTrayVendedores: TDataSource;
    Marcas: TRzTabSheet;
    tbTrayMarcas: TDBISAMTable;
    DBGrid1: TDBGrid;
    RzPanel12: TRzPanel;
    btn_get_marcas: TRzButton;
    JSONtray_marcas: TRzMemo;
    btn_gerar_token: TRzButton;
    tray_token: TEdit;
    tray_refresh: TEdit;
    Clientes: TRzTabSheet;
    DBGrid2: TDBGrid;
    tray_refresh_clientes: TEdit;
    tray_token_clientes: TEdit;
    JSONtray_clientes: TRzMemo;
    RzPanel13: TRzPanel;
    tbTrayClientesid_cliente: TIntegerField;
    tbTrayClientesname: TStringField;
    tbTrayClientesrg: TStringField;
    tbTrayClientescpf: TStringField;
    tbTrayClientesphone: TStringField;
    tbTrayClientescellphone: TStringField;
    tbTrayClientesbirth_date: TDateField;
    tbTrayClientesid_gender: TIntegerField;
    tbTrayClientesemail: TStringField;
    tbTrayClientesnickname: TStringField;
    tbTrayClientestoken: TStringField;
    tbTrayClientestotal_orders: TIntegerField;
    tbTrayClientesobservation: TStringField;
    tbTrayClientesid_type: TIntegerField;
    tbTrayClientescnpj: TStringField;
    tbTrayClientescompany_name: TStringField;
    tbTrayClientesstate_inscription: TStringField;
    tbTrayClientesreseller: TIntegerField;
    tbTrayClientesdiscount: TFloatField;
    tbTrayClientesid_blocked: TIntegerField;
    tbTrayClientescredit_limit: TFloatField;
    tbTrayClientesindicator_id: TIntegerField;
    tbTrayClientesprofile_customer_id: TIntegerField;
    tbTrayClienteslast_sending_newsletter: TDateField;
    tbTrayClienteslast_purchase: TDateField;
    tbTrayClienteslast_visit: TDateField;
    tbTrayClienteslast_modification: TDateField;
    tbTrayClientesaddress: TStringField;
    tbTrayClienteszip_code: TStringField;
    tbTrayClientesnumber_address: TIntegerField;
    tbTrayClientescomplement: TStringField;
    tbTrayClientesneighborhood: TStringField;
    tbTrayClientescity: TStringField;
    tbTrayClientesstate: TStringField;
    tbTrayClientesnewslatter: TIntegerField;
    tbTrayClientescreated: TDateField;
    tbTrayClientesregistration_date: TDateField;
    tbTrayClientesmodifed: TDateField;
    Categorias: TRzTabSheet;
    JSONtray_categorias: TRzMemo;
    RzPanel18: TRzPanel;
    RzButton16: TRzButton;
    RzButton17: TRzButton;
    tray_refresh_categorias: TEdit;
    tray_token_categorias: TEdit;
    DBGrid3: TDBGrid;
    tbTrayCategorias: TDBISAMTable;
    tbTrayCategoriasid_categoria: TIntegerField;
    tbTrayCategoriasid_parent: TIntegerField;
    tbTrayCategoriasname: TStringField;
    tbTrayCategoriasdescription: TStringField;
    tbTrayCategoriassmall_description: TStringField;
    tbTrayCategoriasslug: TStringField;
    tbTrayCategoriasorder: TIntegerField;
    tbTrayCategoriashas_acceptance_term: TIntegerField;
    tbTrayCategoriasacceptance_term: TStringField;
    tbTrayCategoriashttp: TStringField;
    tbTrayCategoriashttps: TStringField;
    Produtos: TRzTabSheet;
    DBGrid4: TDBGrid;
    tray_refresh_produtos: TEdit;
    tray_token_produtos: TEdit;
    RzPanel20: TRzPanel;
    RzButton18: TRzButton;
    RzButton19: TRzButton;
    JSONtray_produtos: TRzMemo;
    tbTrayProdutosid_produto: TIntegerField;
    tbTrayProdutosean: TStringField;
    tbTrayProdutosmodifield: TDateField;
    tbTrayProdutosslug: TStringField;
    tbTrayProdutosncm: TStringField;
    tbTrayProdutosname: TStringField;
    tbTrayProdutostitle: TStringField;
    tbTrayProdutosdescription: TStringField;
    tbTrayProdutosdescription_small: TStringField;
    tbTrayProdutosprice: TFloatField;
    tbTrayProdutoscost_price: TFloatField;
    tbTrayProdutospromotional_price: TFloatField;
    tbTrayProdutosstart_promotion: TDateField;
    tbTrayProdutosend_promotion: TDateField;
    tbTrayProdutosbrand: TStringField;
    tbTrayProdutosmodel: TStringField;
    tbTrayProdutosweight: TIntegerField;
    tbTrayProdutoslength: TIntegerField;
    tbTrayProdutoswidth: TIntegerField;
    tbTrayProdutosheight: TIntegerField;
    tbTrayProdutoscubic_weight: TIntegerField;
    tbTrayProdutosstock: TIntegerField;
    tbTrayProdutosid_categoria: TIntegerField;
    tbTrayProdutosavailability: TStringField;
    tbTrayProdutosreference: TStringField;
    tbTrayProdutosadditional_button: TIntegerField;
    tbTrayProdutosadditional_message: TStringField;
    tbTrayProdutoswarranty: TStringField;
    tbTrayProdutosrating: TIntegerField;
    tbTrayProdutoscount_rating: TIntegerField;
    tbTrayProdutosquantity_sold: TIntegerField;
    tbTrayProdutoscreated: TDateField;
    tbTrayProdutospayment_option: TStringField;
    tbTrayProdutosrelease_date: TDateField;
    tbTrayProdutosshortcut: TStringField;
    tbTrayProdutosminimum_stock: TIntegerField;
    tbTrayProdutosminimum_stocl_alert: TIntegerField;
    tbTrayProdutospromotion_id: TIntegerField;
    tbTrayProdutosincluded_items: TStringField;
    tbTrayProdutosrelated_products: TIntegerField;
    tbTrayProdutoscurrent_price: TFloatField;
    tbTrayProdutosipi: TFloatField;
    tbTrayProdutosacceptance_term_option: TIntegerField;
    tbTrayProdutoswarranty_days: TIntegerField;
    tbTrayProdutosavailability_days: TIntegerField;
    tbTrayProdutosid_matetag: TIntegerField;
    tbTrayProdutosid_variant: TIntegerField;
    TabSheet7: TRzTabSheet;
    DBGrid5: TDBGrid;
    RzPanel22: TRzPanel;
    RzButton20: TRzButton;
    RzButton21: TRzButton;
    tray_refresh_enviar: TEdit;
    tray_token_enviar: TEdit;
    JSONtray_marcas_enviar: TRzMemo;
    DBGrid6: TDBGrid;
    tbBMmarcas: TDBISAMTable;
    dtBMmarcas: TDataSource;
    RzPanel23: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    tbBMmarcasMarca: TStringField;
    RzButton22: TRzButton;
    tbTrayMarcasid_marca: TIntegerField;
    tbTrayMarcasslug: TStringField;
    tbTrayMarcasbrand: TStringField;
    dtTrayMarcas: TDataSource;
    dtBMclientes: TDataSource;
    qrBMclientes: TDBISAMQuery;
    qrBMclientesID: TAutoIncField;
    qrBMclientesJURIDICAFISICA: TStringField;
    qrBMclientesNOME: TStringField;
    qrBMclientesRG: TStringField;
    qrBMclientesCPFCNPJ: TStringField;
    qrBMclientesFONE1: TStringField;
    qrBMclientesCELULAR: TStringField;
    qrBMclientesEMAIL: TStringField;
    qrBMclientesLEMBRETE: TStringField;
    qrBMclientesFANTASIA: TStringField;
    qrBMclientesLIMITECREDITO: TCurrencyField;
    qrBMclientesENDERECO: TStringField;
    qrBMclientesCEP: TStringField;
    qrBMclientesNUMERO: TStringField;
    qrBMclientesCOMPLEMENTO: TStringField;
    qrBMclientesBAIRRO: TStringField;
    qrBMclientesCIDADE: TStringField;
    qrBMclientesUF: TStringField;
    tbBMClientes: TDBISAMTable;
    tbBMClientesID: TAutoIncField;
    tbBMClientesJuridicaFisica: TStringField;
    tbBMClientesNome: TStringField;
    tbBMClientesFantasia: TStringField;
    tbBMClientesResponsavel: TStringField;
    tbBMClientesEndereco: TStringField;
    tbBMClientesNumero: TStringField;
    tbBMClientesComplemento: TStringField;
    tbBMClientesBairro: TStringField;
    tbBMClientesCEP: TStringField;
    tbBMClientesCod_Cidade: TStringField;
    tbBMClientesCidade: TStringField;
    tbBMClientesUF: TStringField;
    tbBMClientesCod_Pais: TStringField;
    tbBMClientesRegiao: TStringField;
    tbBMClientesRota: TStringField;
    tbBMClientesID_Localidade: TIntegerField;
    tbBMClientesID_TipoLogradouro: TIntegerField;
    tbBMClientesFone1: TStringField;
    tbBMClientesFone2: TStringField;
    tbBMClientesCelular: TStringField;
    tbBMClientesEmail: TStringField;
    tbBMClientesCPFCNPJ: TStringField;
    tbBMClientesIE: TStringField;
    tbBMClientesTipo_Contribuinte: TStringField;
    tbBMClientesIM: TStringField;
    tbBMClientesCIDASC: TIntegerField;
    tbBMClientesRG: TStringField;
    tbBMClientesI_PRural: TStringField;
    tbBMClientesNomeOutroDoc: TStringField;
    tbBMClientesOutroDoc: TStringField;
    tbBMClientesSuframa: TStringField;
    tbBMClientesCNAE: TStringField;
    tbBMClientesPracaPgtoEnd: TStringField;
    tbBMClientesPracaPgtoNum: TStringField;
    tbBMClientesPracaPgtoCom: TStringField;
    tbBMClientesPracaPgtoBai: TStringField;
    tbBMClientesPracaPgtoCid: TStringField;
    tbBMClientesPracaPgtoUF: TStringField;
    tbBMClientesPracaPgtoCEP: TStringField;
    tbBMClientesID_Vendedor: TIntegerField;
    tbBMClientesID_Vendedor2: TIntegerField;
    tbBMClientesComissaoVend1: TFloatField;
    tbBMClientesComissaoVend2: TFloatField;
    tbBMClientesID_Plano: TIntegerField;
    tbBMClientesID_Banco: TIntegerField;
    tbBMClientesID_Transp: TIntegerField;
    tbBMClientesEntrega_IDCliente: TIntegerField;
    tbBMClientesLimiteCredito: TCurrencyField;
    tbBMClientesCrediario: TStringField;
    tbBMClientesTipo_Crediario: TStringField;
    tbBMClientesPrazo: TIntegerField;
    tbBMClientesDia_Fixo: TIntegerField;
    tbBMClientesLiberado: TStringField;
    tbBMClientesDescontoMax_Liberado: TStringField;
    tbBMClientesLembrete: TStringField;
    tbBMClientesObs: TMemoField;
    tbBMClientesAtivo: TStringField;
    tbBMClientesData_Cadastro: TDateField;
    tbBMClientesID_Emp_Cad: TIntegerField;
    tbBMClientesID_User_Cad: TIntegerField;
    tbBMClientesData_Alter: TDateField;
    tbBMClientesID_Emp_Alt: TIntegerField;
    tbBMClientesID_User_Alt: TIntegerField;
    tbBMClientesFun_Aliq: TFloatField;
    tbBMClientesCSLL_Aliq: TFloatField;
    tbBMClientesST_Calc: TStringField;
    tbBMClientesSimples: TStringField;
    tbBMClientesTipo_Imposto: TStringField;
    tbBMClientesIPI_Calc: TStringField;
    tbBMClientesLista_Preco: TStringField;
    tbBMClientesClassificacao: TStringField;
    tbBMClientesID_Bloq: TIntegerField;
    tbBMClientesCod_Integracao: TStringField;
    tbBMClientesCons_Generico: TStringField;
    tbBMClientesCons_Final: TStringField;
    tbBMClientesNFSe_Especial: TStringField;
    tbBMClientesDesconto_Venda: TFloatField;
    tbBMClientesDesconto_Boleto: TFloatField;
    tbBMClientesInstrucao_Boleto: TStringField;
    tbBMClientesJuros_Especial: TFloatField;
    tbBMClientesCFPS: TStringField;
    tbBMClientesDocEstrangeiro: TStringField;
    tbBMClientesGrupo: TStringField;
    tbBMClientesModo_Retencoes: TStringField;
    tbBMClientesINSS_Calc: TStringField;
    tbBMClientesINSS_NAOReter: TBooleanField;
    tbBMClientesISS_Reter: TBooleanField;
    tbBMClientesDesonera_ICMS: TBooleanField;
    tbBMClientesDesonera_PISCOF: TBooleanField;
    tbBMClientesBenef_ProEmprego: TBooleanField;
    tbBMClientesPerfil_Cli: TBooleanField;
    tbBMClientesPerfil_For: TBooleanField;
    tbBMClientesPerfil_Tra: TBooleanField;
    tbBMClientesID_CCusto: TIntegerField;
    tbBMClientesID_Conta: TIntegerField;
    tbBMClientesUsuarios: TStringField;
    tbBMClientesTem_Foto: TBooleanField;
    tbBMClientesFoto: TGraphicField;
    tbBMClientesAssinatura: TGraphicField;
    tbBMClientesID_GrupoPlanos: TIntegerField;
    tbBMClientesTrans_Frete: TStringField;
    tbBMClientesPPE: TBooleanField;
    tbBMClientesTipos_Conjugados: TStringField;
    tbBMClientesDesconto_Fidelidade: TBooleanField;
    tbBMClientescontrato_assinado: TBooleanField;
    tbBMintaux: TDBISAMTable;
    tbBMintauxID_Int: TStringField;
    tbBMintauxID_BM: TIntegerField;
    tbBMintauxTipo: TStringField;
    tbBMintauxHASH: TStringField;
    dtBMintaux: TDataSource;
    qrBMintaux: TDBISAMQuery;
    qrBMintauxID_Int: TStringField;
    qrBMintauxID_BM: TIntegerField;
    qrBMintauxTipo: TStringField;
    qrBMintauxHASH: TStringField;
    dtTrayClientes: TDataSource;
    TabSheet5: TRzTabSheet;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel4: TPanel;
    Button6: TButton;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    Panel2: TPanel;
    DBGrid7: TDBGrid;
    Panel3: TPanel;
    DBGrid8: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    RzMemo1: TRzMemo;
    RzPanel15: TRzPanel;
    lblpage: TLabel;
    RzButton12: TRzButton;
    RzButton15: TRzButton;
    RzButton10: TRzButton;
    procedure btnAtualizarProdutosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirProdutoUnicoClick(Sender: TObject);
    procedure btnAtualizarCategoriasClick(Sender: TObject);
    procedure btnIncluirCategoriaClick(Sender: TObject);
    procedure RzButton3Click(Sender: TObject);
    procedure btnAtualizarClientesClick(Sender: TObject);
    procedure RzButton11Click(Sender: TObject);
    procedure btnIncluirClienteMPClick(Sender: TObject);
    procedure btnAlterarClienteMPClick(Sender: TObject);
    procedure btnIncluirClienteBMClick(Sender: TObject);
    procedure RzButton12Click(Sender: TObject);
    procedure btnAtualizarPedidosClick(Sender: TObject);
    procedure btnAlterarTudoCategoriasClick(Sender: TObject);
    procedure btnBuscarTodosMesClick(Sender: TObject);
    procedure RzButton13Click(Sender: TObject);
    procedure btn_get_marcasClick(Sender: TObject);
    procedure btn_gerar_tokenClick(Sender: TObject);
    procedure RzButton15Click(Sender: TObject);
    procedure RzButton17Click(Sender: TObject);
    procedure RzButton16Click(Sender: TObject);
    procedure RzButton19Click(Sender: TObject);
    procedure RzButton18Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzButton20Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure pTabelasSincronizacaoEnter(Sender: TObject);
    procedure RzButton21Click(Sender: TObject);
    procedure RzButton22Click(Sender: TObject);
    procedure RzButton10Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    procedure CalculaHASHProdutos;
    procedure CalculaHASHclientes;
    procedure CalculaHASHClasses;
    procedure CalculaHASHtransp;
    procedure CalculaHASHplanos;
    function CalculaHASH(chave: string): string;
    function ProcessaGet(xReq: string): string;
    function ProcessaPut(xReq: string; FStream: TStringStream): string;
    function ProcessaPost(xReq: string; FStream: TStringStream): string;
    function analisaexistenciastr(o: TJsonObject; s: string): string;
    function analisaexistenciadate(o: TJsonObject; s: string): TDateTime;
    function analisaexistenciainteger(o: TJsonObject; s: string): Integer;
    function analisaexistenciafloat(o: TJsonObject; s: string): double;
    function datatopadrao(s: string): string;
    procedure ProcessaCategoria(jObjCategoria: TJsonObject);
  end;

var
  frmTabelas: TfrmTabelas;

implementation

{$R *.dfm}

uses uDD,
  ufuncoesGerais,
  ufrmAviso, ufrmRequest, Super, MD5, ufrmMarcas;

function TfrmTabelas.ProcessaGet(xReq: string): string;
var
  strAux: TStringList;
  ObjErro: TJSONObject;
  SleepTime: integer;
begin

  result := '';
  pubTemMaisRegistros := false;
  strAux := TStringList.Create;

  while true do
  begin
    try
      result := dd.serverTray.Get(xReq);
      pubTemMaisRegistros := dd.serverTray.Response.RawHeaders.Values['MEUSPEDIDOS_LIMITOU_REGISTROS'] = '1';
      break;
    except
      on E: EIdHTTPProtocolException do
      begin
        strAux.Text := e.ErrorMessage;
        strAux.SaveToFile('erro_retorno.json');
        if E.ErrorCode = 429 then
        begin
          ObjErro := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(strAux.Text), 0) as TJSONObject;
          SleepTime := ObjErro.GetValue('tempo_ate_permitir_novamente').Value.ToInteger();
          AguardaServidor(SleepTime + 1);
          continue;
        end
        else
        begin
          ShowMessage(E.Message + #13 + #10 + e.ErrorMessage);
          break;
        end;
      end;
    end;
  end;

  strAux.Free;

end;

function TfrmTabelas.ProcessaPut(xReq: string; FStream: TStringStream): string;
var
  strAux: TStringList;
  ObjErro: TJSONObject;
  SleepTime: integer;
begin

  result := 'OK';
  pubTemMaisRegistros := false;
  strAux := TStringList.Create;

  while true do
  begin
    try
      //      result := dd.serverTray.Get(xReq);
      dd.serverTray.Put(xReq, FStream);
      break;
    except
      on E: EIdHTTPProtocolException do
      begin
        strAux.Text := e.ErrorMessage;
        strAux.SaveToFile('erro_retorno.json');
        if E.ErrorCode = 429 then
        begin
          ObjErro := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(strAux.Text), 0) as TJSONObject;
          //          ShowMessage(objerro.ToString);
          SleepTime := ObjErro.GetValue('tempo_ate_permitir_novamente').Value.ToInteger();
          AguardaServidor(SleepTime + 1);
          continue;
        end
        else
        begin
          //          ShowMessage(E.Message);
          result := e.ErrorMessage;
          break;
        end;
      end;
    end;
  end;

  strAux.Free;

end;

procedure TfrmTabelas.pTabelasSincronizacaoEnter(Sender: TObject);
begin
  tbTrayMarcas.EmptyTable;
end;

function TfrmTabelas.ProcessaPost(xReq: string; FStream: TStringStream): string;
var
  strAux: TStringList;
  ObjErro: TJSONObject;
  SleepTime: integer;
begin

  result := 'OK';
  pubTemMaisRegistros := false;
  strAux := TStringList.Create;

  while true do
  begin
    try
      //      result := dd.serverTray.Get(xReq);
      dd.serverTray.Post(xReq, FStream);
      Result := ('0000' + dd.serverTray.Response.RawHeaders.Values['MeusPedidosID']);
      break;
    except
      on E: EIdHTTPProtocolException do
      begin
        strAux.Text := e.ErrorMessage;
        strAux.SaveToFile('erro_retorno.json');
        if E.ErrorCode = 429 then
        begin
          ObjErro := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(strAux.Text), 0) as TJSONObject;
          //          ShowMessage(objerro.ToString);
          SleepTime := ObjErro.GetValue('tempo_ate_permitir_novamente').Value.ToInteger();
          AguardaServidor(SleepTime + 1);
          continue;
        end
        else
        begin
          //          ShowMessage(E.Message);
          result := e.ErrorMessage;
          break;
        end;
      end;
    end;
  end;

  strAux.Free;

end;

function TfrmTabelas.CalculaHASH(chave: string): string;
begin
  result := StrToCRC(chave);
end;

procedure TfrmTabelas.CalculaHASHProdutos;
begin
  qrProdutos.First;
  while not qrProdutos.Eof do
  begin
    qrProdutos.Edit;
    qrProdutosHASH_NOVO.AsString := CalculaHASH(qrProdutosDESCRICAO_PRO.AsString + qrProdutosDESCRICAO_REF.AsString +
      qrProdutosPRECO_TABELA.AsString + qrProdutosPRECOVENDA2.AsString + qrProdutosPRECOVENDA3.AsString +
      qrProdutosSALDO_ESTOQUE.AsString);

    if (qrProdutosIDREFPRODMP.AsString = '') then // produto novo!
    begin
      qrProdutosATUALIZAR.AsString := 'I';
    end
    else
    begin
      if qrProdutosHASH.AsString <> qrProdutosHASH_NOVO.AsString then
        qrProdutosATUALIZAR.AsString := 'A';
    end;

    qrProdutos.Post;

    qrProdutos.Next;
  end;
end;

procedure TfrmTabelas.CalculaHASHclientes;
begin
  qrClientes.First;
  while not qrClientes.Eof do
  begin
    qrClientes.Edit;
    qrClientesHASH_NOVO.AsString := CalculaHASH(qrClientesRAZAO_SOCIAL.AsString + qrClientesNOME_FANTASIA.AsString + qrClientesRUA.AsString
      + qrClientesCIDADE.AsString);

    if (qrClientesIDMP.AsString = '') then // CLIENTE novo!
    begin
      qrClientesATUALIZAR.AsString := 'I';
    end
    else
    begin
      if qrClientesHASH.AsString <> qrClientesHASH_NOVO.AsString then
        qrClientesATUALIZAR.AsString := 'A';
    end;

    qrClientes.Post;

    qrClientes.Next;
  end;
end;

procedure TfrmTabelas.CalculaHASHClasses;
begin
  qrProClasses.First;
  while not qrProClasses.Eof do
  begin
    qrProClasses.Edit;
    qrProClassesHASH_NOVO.AsString := CalculaHASH(qrProClassesDESCRICAO.AsString);
    if (qrProClassesIDCLASSEMP.AsString = '') then // classe nova!
    begin
      qrProClassesATUALIZAR.AsString := 'I';
    end
    else
    begin
      if qrProClassesHASH.AsString <> qrProClassesHASH_NOVO.AsString then
        qrProClassesATUALIZAR.AsString := 'A';
    end;
    qrProClasses.Post;

    qrProClasses.Next;
  end;
end;

procedure TfrmTabelas.CalculaHASHtransp;
begin

end;

procedure TfrmTabelas.CalculaHASHplanos;
begin
end;

procedure TfrmTabelas.btnAtualizarClientesClick(Sender: TObject);
var
  ObjMain: TJSONObject;
  ObjErro: TJSONObject;
  ObjListaClientes: TJSONPair;
  ObjArrayClientes: TJSONArray;
  ObjCliente: TJSONObject;

  ObjArrayEmails: TJSONArray;
  ObjEmail: TJSONObject;

  ObjArrayTelefones: TJSONArray;
  ObjTelefone: TJSONObject;

  i, j: Integer;
  xUltimaAlteracao: string;
  xTemMaisRegistros: boolean;
  strAux: TStringList;
  SleepTime: integer;

begin
  (*
    AvisoAtt('Buscando clientes no Tray...');

    tbTrayClientes.Open;
    tbBMClientes.Open;

    qrClientes.Close;

    qrClientes.Open;
    qrClientes.DisableControls;
    CalculaHASHClientes;
    qrClientes.EnableControls;
    qrClientes.First;

    PreparaTemp(tempTrayClientes);
    tempTrayClientes.IndexName := 'idx_nome';

    xUltimaAlteracao := dd.i.ReadString('config', 'UltimaAlteracaoClientes', '2019-01-01 00:00:00'); // YYYY-MM-DD HH:MM:SS
    xUltimaAlteracao := copy(xUltimaAlteracao, 1, 10) + ' 00:00:00';
    xTemMaisRegistros := true;
    strAux := TstringList.Create;

    tempTrayClientes.DisableControls;

    while xTemMaisRegistros do
    begin

      xUltimaAlteracao := StrTran(xUltimaAlteracao, ' ', '%20');
      JSONClientesTray.Text := ProcessaGet(defHost + defURLCli + '?alterado_apos=' + xUltimaAlteracao);
      xTemMaisRegistros := pubTemMaisRegistros;

      ObjArrayClientes := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(JSONClientesTray.Text), 0) as TJSONArray;

      for i := 0 to ObjArrayClientes.Count - 1 do
      begin

        ObjCliente := ObjArrayClientes.Items[i] as TJSONObject;

        xUltimaAlteracao := ObjCliente.GetValue('ultima_alteracao').Value;

        tempTrayClientes.Append;
        tempTrayClientesid.AsString := ObjCliente.GetValue('id').Value;
        tempTrayClientesrazao_social.AsString := ObjCliente.GetValue('razao_social').Value;
        tempTrayClientesnome_fantasia.AsString := ObjCliente.GetValue('nome_fantasia').Value;
        tempTrayClientestipo.AsString := ObjCliente.GetValue('tipo').Value;
        tempTrayClientescnpj.AsString := ObjCliente.GetValue('cnpj').Value;
        tempTrayClientesinscricao_estadual.AsString := ObjCliente.GetValue('inscricao_estadual').Value;
        tempTrayClientessuframa.AsString := ObjCliente.GetValue('suframa').Value;
        tempTrayClientesrua.AsString := ObjCliente.GetValue('rua').Value;
        tempTrayClientesnumero.AsString := ObjCliente.GetValue('numero').Value;
        tempTrayClientescomplemento.AsString := ObjCliente.GetValue('complemento').Value;
        tempTrayClientescep.AsString := ObjCliente.GetValue('cep').Value;
        tempTrayClientesbairro.AsString := ObjCliente.GetValue('bairro').Value;
        tempTrayClientescidade.AsString := ObjCliente.GetValue('cidade').Value;
        tempTrayClientesestado.AsString := ObjCliente.GetValue('estado').Value;
        tempTrayClientesobservacao.AsString := ObjCliente.GetValue('observacao').Value;

        tempTrayClientesexcluido.AsBoolean := StrToBool(ObjCliente.GetValue('excluido').Value);
        tempTrayClientesultima_alteracao.AsString := copy(xUltimaAlteracao, 9, 2) + '/' + copy(xUltimaAlteracao, 6, 2) + '/' + copy(xUltimaAlteracao, 1, 4) + ' ' + copy(xUltimaAlteracao, 12, 8);

        // emails...
        ObjEmail := TJSONObject.Create;
        ObjArrayEmails := ObjCliente.Get('emails').JsonValue as TJSONArray;
        for j := 0 to ObjArrayEmails.Count - 1 do
        begin
          ObjEmail := ObjArrayEmails.Items[j] as TJSONobject;
          if tempTrayClientesemail1.AsString = '' then
            tempTrayClientesemail1.AsString := ObjEmail.GetValue('email').Value
          else
            if tempTrayClientesemail2.AsString = '' then
              tempTrayClientesemail2.AsString := ObjEmail.GetValue('email').Value
            else
              if tempTrayClientesemail3.AsString = '' then
                tempTrayClientesemail3.AsString := ObjEmail.GetValue('email').Value;
        end;

        // telefones...
        ObjTelefone := TJSONObject.Create;
        ObjArrayTelefones := ObjCliente.Get('telefones').JsonValue as TJSONArray;
        for j := 0 to ObjArrayTelefones.Count - 1 do
        begin
          ObjTelefone := ObjArrayTelefones.Items[j] as TJSONobject;
          if tempTrayClientesTelefone1.AsString = '' then
            tempTrayClientesTelefone1.AsString := ObjTelefone.GetValue('numero').Value
          else
            if tempTrayClientesTelefone2.AsString = '' then
              tempTrayClientesTelefone2.AsString := ObjTelefone.GetValue('numero').Value
            else
              if tempTrayClientesTelefone3.AsString = '' then
                tempTrayClientesTelefone3.AsString := ObjTelefone.GetValue('numero').Value;
        end;

        // enderecos...

        tempTrayClientes.Post;

        if xUltimaAlteracao <> '' then
          dd.i.WriteString('config', 'UltimaAlteracaoClientes', xUltimaAlteracao);

      end;

      application.ProcessMessages;

    end;

    strAux.Free;
    tempTrayClientes.First;
    tempTrayClientes.EnableControls;

    AvisoOFF;
  *)
end;

procedure TfrmTabelas.btnAtualizarPedidosClick(Sender: TObject);
var
  ObjMain: TJSONObject;
  ObjErro: TJSONObject;
  ObjListaPedidos: TJSONPair;
  ObjArrayPedidos: TJSONArray;
  ObjPedido: TJSONObject;

  ObjArrayItens: TJSONArray;
  ObjItem: TJSONObject;
  xDescontoItemPerc, xDescontoItemValor: double;

  ObjArrayDescontos: TJSONArray;
  ObjDesconto: TJSONObject;
  xDescontoTray: double;

  ObjArrayCamposExtras: TJSONArray;
  ObjCampoExtra: TJSONObject;
  idMPdesconto: integer;
  idMPpedidoVendedor: integer;
  xValorDescontoExtra: double;
  xPedidoVendedor: string;

  i, j, x: Integer;
  xUltimaAlteracao: string;
  xTemMaisRegistros: boolean;
  strAux: TStringList;

begin
  (*
    AvisoAtt('..Buscando Pedidos..');

    tbTrayPedidos.Open;
    tbTrayClientes.Open;
    tbTrayProdutos.Open;
    tbTrayCamposExtras.Open;
    tbTrayPlanosPgto.Open;
    tbTrayVendedores.Open;

    tbBMpedidos.Open;
    tbBMitensPedidos.Open;

    PreparaTemp(tempTrayPedidos);
    PreparaTemp(tempTrayItensPedidos);
    //  xAlteradoApos := '2019-06-01%2000:00:00'; // YYYY-MM-DD HH:MM:SS

  //  xAlteradoApos := dd.i.ReadString('config', 'UltimaAlteracao', '2019-01-01 00:00:00'); // YYYY-MM-DD HH:MM:SS
  //  xAlteradoApos := StrTran(xAlteradoApos, ' ', '%20');
  //  xUltimaAlteracao := dd.i.ReadString('config', 'UltimaAlteracaoPedidos', '2019-01-01 00:00:00'); // YYYY-MM-DD HH:MM:SS
  //  xUltimaAlteracao := FormatDateTime('yyyy-mm-dd 00:00:00', now); // coloquei para sempre pegar todos os pedidos de hoje!!
  //  xUltimaAlteracao := copy(dd.i.ReadString('config', 'UltimaAlteracaoPedidos', '2019-01-01 00:00:00'), 1, 10) + ' 00:00:00'; // YYYY-MM-DD HH:MM:SS
    xUltimaAlteracao := FormatDateTime('yyyy-mm-dd 00:00:00', now - 3); // coloquei para sempre pegar todos os pedidos de 3 dias!!
    xTemMaisRegistros := true;

    tempTrayPedidos.DisableControls;
    tempTrayItensPedidos.DisableControls;
    tempTrayItensPedidos.Filtered := true;

    while xTemMaisRegistros do
    begin

      xUltimaAlteracao := StrTran(xUltimaAlteracao, ' ', '%20');
      JSONpedidosTray.Text := ProcessaGet(defHost + defURLPedidos + '?alterado_apos=' + xUltimaAlteracao);
      xTemMaisRegistros := pubTemMaisRegistros;

      ObjArrayPedidos := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(JSONpedidosTray.Text), 0) as TJSONArray;

      for i := 0 to ObjArrayPedidos.Count - 1 do
      begin

        ObjPedido := ObjArrayPedidos.Items[i] as TJSONObject;

        if ObjPedido.GetValue('status').Value = '1' then // orçamento não vai
        begin
          continue;
        end;

        xUltimaAlteracao := ObjPedido.GetValue('ultima_alteracao').Value;

        tempTrayPedidos.Append;
        tempTrayPedidosid.AsString := ObjPedido.GetValue('id').Value;

        if defUsaDefinirEmpresaPedido = 'N' then
          tempTrayPedidosempresa_id.AsInteger := pubEmpresaAtiva
        else
          tempTrayPedidosempresa_id.Clear;

        tempTrayPedidoscliente_id.AsString := ObjPedido.GetValue('cliente_id').Value;
        tempTrayPedidoscliente_razao_social.AsString := ObjPedido.GetValue('cliente_razao_social').Value;
        tempTrayPedidoscliente_nome_fantasia.AsString := ObjPedido.GetValue('cliente_nome_fantasia').Value;
        tempTrayPedidoscliente_cnpj.AsString := ObjPedido.GetValue('cliente_cnpj').Value;
        tempTrayPedidoscliente_inscricao_estadual.AsString := ObjPedido.GetValue('cliente_inscricao_estadual').Value;
        tempTrayPedidoscliente_rua.AsString := ObjPedido.GetValue('cliente_rua').Value;
        tempTrayPedidoscliente_numero.AsString := ObjPedido.GetValue('cliente_numero').Value;
        tempTrayPedidoscliente_complemento.AsString := ObjPedido.GetValue('cliente_complemento').Value;
        tempTrayPedidoscliente_cep.AsString := ObjPedido.GetValue('cliente_cep').Value;
        tempTrayPedidoscliente_bairro.AsString := ObjPedido.GetValue('cliente_bairro').Value;
        tempTrayPedidoscliente_cidade.AsString := ObjPedido.GetValue('cliente_cidade').Value;
        tempTrayPedidoscliente_estado.AsString := ObjPedido.GetValue('cliente_estado').Value;
        tempTrayPedidoscliente_suframa.AsString := ObjPedido.GetValue('cliente_suframa').Value;

        tempTrayPedidosrepresentada_id.AsString := ObjPedido.GetValue('representada_id').Value;
        tempTrayPedidosrepresentada_razao_social.AsString := ObjPedido.GetValue('representada_razao_social').Value;
        tempTrayPedidosrepresentada_nome_fantasia.AsString := ObjPedido.GetValue('representada_nome_fantasia').Value;

        tempTrayPedidostransportadora_id.AsString := ObjPedido.GetValue('transportadora_id').Value;
        tempTrayPedidoscriador_id.AsString := ObjPedido.GetValue('criador_id').Value;

        tempTrayPedidosnome_contato.AsString := ObjPedido.GetValue('nome_contato').Value;
        tempTrayPedidosstatus.AsString := ObjPedido.GetValue('status').Value;
        tempTrayPedidosnumero.AsString := ObjPedido.GetValue('numero').Value;
        tempTrayPedidostotal.AsString := ObjPedido.GetValue('total').Value;
        tempTrayPedidoscondicao_pagamento.AsString := ObjPedido.GetValue('condicao_pagamento').Value;
        tempTrayPedidoscondicao_pagamento_id.AsString := NullInt(ObjPedido.GetValue('condicao_pagamento_id').Value);
        tempTrayPedidostipo_pedido_id.AsString := NullInt(ObjPedido.GetValue('tipo_pedido_id').Value);
        tempTrayPedidosdata_emissao.AsDateTime := SqlToDate(ObjPedido.GetValue('data_emissao').Value);

        tempTrayPedidosobservacoes.AsString := ObjPedido.GetValue('observacoes').Value;
        tempTrayPedidosstatus_custom_id.AsString := NullInt(ObjPedido.GetValue('status_custom_id').Value);
        tempTrayPedidosultima_alteracao.AsString := copy(xUltimaAlteracao, 9, 2) + '/' + copy(xUltimaAlteracao, 6, 2) + '/' + copy(xUltimaAlteracao, 1, 4) + ' ' + copy(xUltimaAlteracao, 12, 8);

        ObjCampoExtra := TJSONObject.Create;
        ObjArrayCamposExtras := ObjPedido.Get('extras').JsonValue as TJSONArray;
        for j := 0 to ObjArrayCamposExtras.Count - 1 do
        begin
          ObjCampoExtra := ObjArrayCamposExtras.Items[j] as TJSONobject;
          if Pos('DESCONTO', UpperCase(ObjCampoExtra.GetValue('nome').Value)) > 0 then
            //          xValorDescontoExtra := StrToFloat(ObjCampoExtra.GetValue('valor').Value);
            xValorDescontoExtra := StrToFloat(NullFloat(ObjCampoExtra.GetValue('valor').Value));
          if Pos('PEDIDO', UpperCase(ObjCampoExtra.GetValue('nome').Value)) > 0 then
            xPedidoVendedor := ObjCampoExtra.GetValue('valor').Value;

        end;

        tempTrayPedidoscampoExtra_desconto.AsFloat := xValorDescontoExtra;
        tempTrayPedidoscampoExtra_pedidoVendedor.AsString := xPedidoVendedor;

        tempTrayPedidos.Post;

        // itens...
        ObjItem := TJSONObject.Create;
        ObjArrayItens := ObjPedido.Get('items').JsonValue as TJSONArray;
        for j := 0 to ObjArrayItens.Count - 1 do
        begin
          ObjItem := ObjArrayItens.Items[j] as TJSONobject;
          tempTrayItensPedidos.Append;
          tempTrayItensPedidospedido_id.AsInteger := tempTrayPedidosid.AsInteger;
          tempTrayItensPedidosproduto_id.AsString := ObjItem.GetValue('produto_id').Value;
          tempTrayItensPedidosproduto_codigo.AsString := ObjItem.GetValue('produto_codigo').Value;
          tempTrayItensPedidosproduto_nome.AsString := ObjItem.GetValue('produto_nome').Value;
          tempTrayItensPedidostabela_preco_id.AsString := ObjItem.GetValue('tabela_preco_id').Value;
          tempTrayItensPedidosquantidade.AsString := ObjItem.GetValue('quantidade').Value;
          tempTrayItensPedidospreco_bruto.AsString := ObjItem.GetValue('preco_bruto').Value; // preço tabela do BM
          tempTrayItensPedidospreco_liquido.AsString := ObjItem.GetValue('preco_liquido').Value;
          tempTrayItensPedidoscotacao_moeda.AsString := ObjItem.GetValue('cotacao_moeda').Value;
          tempTrayItensPedidosobservacoes.AsString := ObjItem.GetValue('observacoes').Value;
          tempTrayItensPedidosexcluido.AsBoolean := StrToBool(ObjItem.GetValue('excluido').Value);
          tempTrayItensPedidosipi.AsString := ObjItem.GetValue('ipi').Value;
          tempTrayItensPedidostipo_ipi.AsString := ObjItem.GetValue('tipo_ipi').Value;
          tempTrayItensPedidosst.AsString := ObjItem.GetValue('st').Value;
          tempTrayItensPedidossubtotal.AsString := ObjItem.GetValue('subtotal').Value;

          ObjArrayDescontos := ObjItem.Get('descontos').JsonValue as TJSONArray;
          xDescontoTray := 1;
          for x := 0 to ObjArrayDescontos.Count - 1 do
          begin
            //          ShowMessage( ObjArrayDescontos.Items[x].Value );
            xDescontoTray := xDescontoTray * (1 - (StrToFloat(ObjArrayDescontos.Items[x].Value) / 100));
          end;

          xDescontoTray := (1 - (xDescontoTray)) * 100;

          tempTrayItensPedidosdescontos_valor.AsFloat := Arredonda(tempTrayItensPedidospreco_liquido.AsFloat * (xDescontoTray / 100));
          tempTrayItensPedidosdescontos_perc.AsFloat := xDescontoTray;

          tempTrayItensPedidos.Post;
        end;

      end;

      if xUltimaAlteracao <> '' then
        dd.i.WriteString('config', 'UltimaAlteracaoPedidos', xUltimaAlteracao);

    end;

    tempTrayPedidos.EnableControls;
    tempTrayItensPedidos.EnableControls;

    // criar indice pelo id do MeusPedidos...
    if tempTrayItensPedidos.IndexDefs.IndexOf('pedido_id') = -1 then
      tempTrayItensPedidos.AddIndex('pedido_id', 'pedido_id');

    tempTrayItensPedidos.IndexName := 'pedido_id';
    tempTrayItensPedidos.MasterSource := dtTempTrayPedidos;
    tempTrayItensPedidos.MasterFields := 'id';

    // consistir pra ver se tem todos os codigos necessários...
    tempTrayPedidos.First;
    while not tempTrayPedidos.Eof do
    begin

      //      if tbTrayPedidos.Locate('idMPped', tempTrayPedidosid.AsInteger, []) then // já foi capturado e enviado para o bm
      if tbBMpedidos.Locate('id_mp', tempTrayPedidosid.AsInteger, []) then // já foi capturado e enviado para o bm
      begin
        tempTrayPedidos.Edit;
        tempTrayPedidosatualizar.AsString := 'ENVIADO';
        tempTrayPedidos.Post;
      end
      else // ainda não foi enviado para bm
      begin

        // colocar para enviar padrão...
        tempTrayPedidos.Edit;
        tempTrayPedidoscondicao_pagamento_idBM.AsInteger := tbTrayPlanosPgtoIDPlanoBM.AsInteger;
        tempTrayPedidosatualizar.AsString := 'ENVIAR';
        tempTrayPedidos.Post;

        // cliente...
        if not tbTrayClientes.Locate('idMP', tempTrayPedidoscliente_id.AsInteger, []) then
        begin
          tempTrayPedidos.Edit;
          tempTrayPedidosatualizar.AsString := 'ERRO CLIENTE';
          tempTrayPedidos.Post;
        end
        else // achou o cliente...
        begin
          tempTrayPedidos.Edit;
          tempTrayPedidoscliente_idBM.AsInteger := tbTrayClientesIDCliente.AsInteger;
          tempTrayPedidosatualizar.AsString := 'ENVIAR';
          tempTrayPedidos.Post;
        end;

        if tempTrayPedidosatualizar.AsString = 'ENVIAR' then // se cleinte ok então consiste id do plano se já bloqueou no cliente então não precisa consistir plano...
        begin

          if not tbTrayPlanosPgto.Locate('idPlanoMP', tempTrayPedidoscondicao_pagamento_id.AsInteger, []) then
          begin
            tempTrayPedidos.Edit;
            tempTrayPedidosatualizar.AsString := 'ERRO COND.PGTO';
            tempTrayPedidos.Post;
          end
          else // achou o plano relacionado...
          begin
            tempTrayPedidos.Edit;
            tempTrayPedidoscondicao_pagamento_idBM.AsInteger := tbTrayPlanosPgtoIDPlanoBM.AsInteger;
            tempTrayPedidosatualizar.AsString := 'ENVIAR';
            tempTrayPedidos.Post;
          end;

        end;

        if tempTrayPedidosatualizar.AsString = 'ENVIAR' then // se cleinte e plano ok então consiste id do vendedor se já bloqueou no cliente ou plano então não precisa consistir...
        begin

          if not tbTrayVendedores.Locate('idVendMP', tempTrayPedidoscriador_id.AsInteger, []) then
          begin
            tempTrayPedidos.Edit;
            tempTrayPedidosatualizar.AsString := 'ERRO VENDEDOR';
            tempTrayPedidos.Post;
          end
          else // achou o vendedor relacionado...
          begin
            tempTrayPedidos.Edit;
            tempTrayPedidoscriador_idBM.AsInteger := tbTrayVendedoresIDVendBM.AsInteger;
            tempTrayPedidosatualizar.AsString := 'ENVIAR';
            tempTrayPedidos.Post;
          end;

        end;

      end;

      if tempTrayPedidosatualizar.AsString <> 'ENVIADO' then
      begin
        // verificar itens...
        tempTrayItensPedidos.First;
        while not tempTrayItensPedidos.Eof do
        begin

          if tempTrayItensPedidosexcluido.AsBoolean = true then
          begin
            tempTrayItensPedidos.Edit;
            tempTrayItensPedidosatualizar.AsString := 'EXCLUIDO';
            tempTrayItensPedidos.Post;

            tempTrayItensPedidos.Next;
            continue;

          end;

          if not tbTrayProdutos.Locate('idRefProdMP', tempTrayItensPedidosproduto_id.AsInteger, []) then
          begin
            tempTrayItensPedidos.Edit;
            tempTrayItensPedidosatualizar.AsString := 'ERRO PRODUTO';
            tempTrayItensPedidos.Post;

            tempTrayPedidos.Edit;
            tempTrayPedidoscriador_idBM.AsInteger := tbTrayVendedoresIDVendBM.AsInteger;
            tempTrayPedidosatualizar.AsString := 'ERRO PRODUTO';
            tempTrayPedidos.Post;

          end
          else
          begin
            tempTrayItensPedidos.Edit;
            tempTrayItensPedidosproduto_idBM.AsInteger := tbTrayProdutosIDProdBM.AsInteger;
            tempTrayItensPedidosproduto_idBMref.AsInteger := tbTrayProdutosIDRefProdBM.AsInteger;
            tempTrayItensPedidosatualizar.AsString := 'ENVIAR';
            tempTrayItensPedidos.Post;
          end;

          tempTrayItensPedidos.Next;

        end;

      end;

      tempTrayPedidos.Next;

    end;

    AvisoOFF;
  *)
end;

procedure TfrmTabelas.btnAtualizarProdutosClick(Sender: TObject);
var
  ObjMain: TJSONObject;
  ObjErro: TJSONObject;
  ObjTemp: TJSONObject;
  ObjListaProdutos: TJSONPair;
  ObjArrayProdutos: TJSONArray;
  ObjProduto: TJSONObject;
  i, a: Integer;
  xUltimaAlteracao: string;
  xAlteradoApos: string;
  xTemMaisRegistros: boolean;
  strAux, log: TStringList;
  SleepTime: integer;

begin
  (*
    AvisoAtt('..Atualizando produtos..');

    tbTrayTabelasPrecos.Open;
    tbBMprodutos.Open;
    tbBMref.Open;

    qrProdutos.Close;

    qrProdutos.Open;
    qrProdutos.DisableControls;
    CalculaHASHprodutos;
    qrProdutos.EnableControls;
    qrProdutos.First;

    PreparaTemp(tempTrayProdutos);
    xAlteradoApos := '';
    xTemMaisRegistros := true;

    tempTrayProdutos.DisableControls;

    log := TStringList.Create;
    a := 0;

    if chkBuscarTray.Checked then
    begin

      while xTemMaisRegistros do
      begin

        JSONprodutosTray.Text := ProcessaGet(defHost + defURLProdutos + '?alterado_apos=' + xAlteradoApos);
        xTemMaisRegistros := pubTemMaisRegistros;

        JSONprodutosTray.Lines.SaveToFile('produtos_Tray_' + a.ToString + '.json');

        ObjArrayProdutos := TJSONObject.ParseJSONValue(JSONProdutosTray.Text) as TJSONArray;

        for i := 0 to ObjArrayProdutos.Count - 1 do
        begin

          ObjProduto := ObjArrayProdutos.Items[i] as TJSONObject;

          xUltimaAlteracao := ObjProduto.GetValue('ultima_alteracao').Value;

          tempTrayProdutos.Append;
          tempTrayProdutosid.AsString := ObjProduto.GetValue('id').Value;
          tempTrayProdutoscodigo.AsString := ObjProduto.GetValue('codigo').Value;
          tempTrayProdutosnome.AsString := ObjProduto.GetValue('nome').Value;
          tempTrayProdutosultima_alteracao.AsString := copy(xUltimaAlteracao, 9, 2) + '/' + copy(xUltimaAlteracao, 6, 2) + '/' + copy(xUltimaAlteracao, 1, 4) + ' ' + copy(xUltimaAlteracao, 12, 8);
          tempTrayProdutosexcluido.AsBoolean := StrToBool(ObjProduto.GetValue('excluido').Value);
          tempTrayProdutos.Post;

          xAlteradoApos := DateTimeToURL(tempTrayProdutosultima_alteracao.AsDateTime);

        end;

        application.ProcessMessages;

      end;

    end;

    tempTrayProdutos.First;
    tempTrayProdutos.EnableControls;

    log.Free;
    AvisoOFF;
  *)
end;

procedure TfrmTabelas.btnBuscarTodosMesClick(Sender: TObject);
var
  xUltimaAlteracao: string;
begin
  xUltimaAlteracao := FormatDateTime('yyyy-mm-dd 00:00:00', StartOfTheMonth(now));
  dd.i.WriteString('config', 'UltimaAlteracaoPedidos', xUltimaAlteracao);
  //  btnAtualizarPedidos.Click;
end;

procedure TfrmTabelas.btnIncluirClienteBMClick(Sender: TObject);
var
  i: integer;
begin
  (*
    i := 0;

    while not tempTrayClientes.Eof do
    begin

      if not tempTrayClientesexcluido.AsBoolean then
      begin

        AvisoAtt('..Verificando inclusão de cliente do Tray>BM..');

        if not tbBMclientes.Locate('CPFCNPJ', tempTrayClientescnpj.AsString, []) then
        begin

          AvisoAtt('Incluindo cliente cadastrado no Tray no BMsoft...');

          // incluir um cliente novo cadastrado no Tray...
          tbBMclientes.Append;
          tbBMclientesJuridicaFisica.AsString := tempTrayClientestipo.AsString;
          tbBMclientesNome.AsString := tempTrayClientesrazao_social.AsString;
          tbBMclientesFantasia.AsString := tempTrayClientesnome_fantasia.AsString;
          tbBMclientesEndereco.AsString := tempTrayClientesrua.AsString;
          if tempTrayClientesnumero.AsString <> 'null' then
            tbBMclientesNumero.AsString := tempTrayClientesnumero.AsString;
          tbBMclientesComplemento.AsString := tempTrayClientescomplemento.AsString;
          tbBMclientesBairro.AsString := tempTrayClientesbairro.AsString;
          tbBMclientesCEP.AsString := tempTrayClientescep.AsString;
          //        tbBMclientesCod_Cidade.AsString :=
          tbBMclientesCidade.AsString := tempTrayClientescidade.AsString;
          tbBMclientesUF.AsString := tempTrayClientesestado.AsString;
          tbBMclientesCod_Pais.AsString := '1058';
          tbBMclientesFone1.AsString := tempTrayClientestelefone1.AsString;
          tbBMclientesFone2.AsString := tempTrayClientestelefone2.AsString;
          tbBMclientesEmail.AsString := tempTrayClientesemail1.AsString;
          tbBMclientesCPFCNPJ.AsString := tempTrayClientescnpj.AsString;
          tbBMclientesIE.AsString := tempTrayClientesinscricao_estadual.AsString;
          tbBMclientesTipo_Contribuinte.AsString := 'C';
          tbBMclientesSuframa.AsString := tempTrayClientessuframa.AsString;
          tbBMclientesPracaPgtoEnd.AsString := tempTrayClientesrua.AsString;
          if tempTrayClientesnumero.AsString <> 'null' then
            tbBMclientesPracaPgtoNum.AsString := tempTrayClientesnumero.AsString;
          tbBMclientesPracaPgtoCom.AsString := tempTrayClientescomplemento.AsString;
          tbBMclientesPracaPgtoBai.AsString := tempTrayClientesbairro.AsString;
          tbBMclientesPracaPgtoCid.AsString := tempTrayClientescidade.AsString;
          tbBMclientesPracaPgtoUF.AsString := tempTrayClientesestado.AsString;
          tbBMclientesPracaPgtoCEP.AsString := tempTrayClientescep.AsString;
          tbBMclientesObs.AsString := tempTrayClientesobservacao.AsString;
          tbBMclientesPerfil_Cli.AsBoolean := true;
          tbBMclientesPerfil_For.AsBoolean := false;
          tbBMclientesPerfil_Tra.AsBoolean := false;
          tbBMclientesID_Emp_Cad.AsInteger := 1;
          tbBMclientesID_Emp_Alt.AsInteger := 1;
          tbBMclientesSimples.AsString := 'N';
          tbBMclientesTipo_Imposto.AsString := 'A';
          tbBMclientesCons_Generico.AsString := 'N';
          tbBMclientesCons_Final.AsString := 'N';
          tbBMclientesINSS_NAOReter.AsBoolean := false;
          tbBMclientesISS_Reter.AsBoolean := false;
          tbBMclientesDesonera_ICMS.AsBoolean := false;
          tbBMclientesDesonera_PISCOF.AsBoolean := false;
          tbBMclientesBenef_ProEmprego.AsBoolean := false;
          tbBMclientesPPE.AsBoolean := false;

          tbBMclientesData_Cadastro.AsDateTime := Date;
          tbBMclientesData_Alter.AsDateTime := Date;
          tbBMclientes.Post;

          // incluir relacionamento no Tray...
          tbTrayClientes.Append;
          tbTrayClientesIDCliente.AsInteger := tbBMclientesID.AsInteger;
          tbTrayClientesIDMP.AsInteger := tempTrayClientesid.AsInteger;
          tbTrayClientesHash.AsString := CalculaHASH(tbBMclientesNome.AsString + tbBMclientesFantasia.AsString + tbBMclientesEndereco.AsString + tbBMclientesCidade.AsString);
          tbTrayClientesultimo_status.AsString := 'OK';
          tbTrayClientesultima_atividade.AsDateTime := now;
          tbTrayClientes.Post;

          AvisoOFF;

        end;

      end;

      tempTrayClientes.Next;

      i := i + 1;

    end;

    AvisoOFF;
  *)
end;

procedure TfrmTabelas.btnIncluirClienteMPClick(Sender: TObject);
var
  JSONCliente: TJSONObject;
  JSONArrayTelefones: TJSONArray;
  JSONObjTelefone1, JSONObjTelefone2: TJSONObject;
  JSONArrayEmails: TJSONArray;
  JSONObjEmail1, JSONObjEmail2: TJSONObject;
  AStream: TMemoryStream;
  FStream: TStringStream;
  str, s, retornoPOST: string;
  strAux: TStringList;
  IDClienteMP: integer;
begin
  (*
    if qrClientesIDMP.AsInteger > 0 then
    begin
      //    AvisoAtt('Cliente ' + qrClientesID.AsString + '-' + qrClientesRAZAO_SOCIAL.AsString + ' já tem ID no Tray!', -3, -2);
      if tbTrayClientes.Locate('idCliente', qrClientesID.AsInteger, []) then
      begin
        tbTrayClientes.Edit;
        tbTrayClienteserro_codigo.AsString := 'ERRO';
        tbTrayClienteserro_json.AsString := 'CLIENTE JÁ TEM ID NO MERCOS';
        tbTrayClientes.Post;

        qrClientes.Edit;
        qrClientesERRO_CODIGO.AsString := 'ERRO';
        qrClientesERRO_JSON.AsString := 'CLIENTE JÁ TEM ID NO MERCOS';
        qrClientes.Post;

      end;
      exit;
    end;

    // se não tiver registro no Tray_Clientes então criar...
    if not tbTrayClientes.Locate('idCliente', qrClientesID.AsInteger, []) then
    begin
      tbTrayClientes.Append;
      tbTrayClientesIDcliente.AsInteger := qrClientesID.AsInteger;
      tbTrayClientes.Post;
    end;

    AvisoAtt('Incluindo cliente no Tray... ' + qrClientesRAZAO_SOCIAL.AsString);

    strAux := TStringList.Create;
    JSONCliente := TJSONObject.Create;

    AddPairString(JSONCliente, 'razao_social', qrClientesRAZAO_SOCIAL.AsString);
    AddPairString(JSONCliente, 'nome_fantasia', qrClientesNOME_FANTASIA.AsString);
    AddPairString(JSONCliente, 'tipo', qrClientesTIPO.AsString);
    AddPairString(JSONCliente, 'cnpj', qrClientesCNPJ.AsString);
    AddPairString(JSONCliente, 'inscricao_estadual', qrClientesINSCRICAO_ESTADUAL.AsString);
    AddPairString(JSONCliente, 'suframa', qrClientesSUFRAMA.AsString);
    AddPairString(JSONCliente, 'rua', qrClientesRUA.AsString);
    AddPairString(JSONCliente, 'numero', qrClientesNUMERO.AsString);
    AddPairString(JSONCliente, 'complemento', qrClientesCOMPLEMENTO.AsString);
    AddPairString(JSONCliente, 'cep', qrClientesCEP.AsString);
    AddPairString(JSONCliente, 'bairro', qrClientesBAIRRO.AsString);
    AddPairString(JSONCliente, 'cidade', qrClientesCIDADE.AsString);
    AddPairString(JSONCliente, 'estado', qrClientesESTADO.AsString);
    AddPairString(JSONCliente, 'observacao', qrClientesOBSERVACAO.AsString);
    AddPairString(JSONCliente, 'nome_excecao_fiscal', qrClientesNOME_EXCECAO_FISCAL.AsString);
    JSONcliente.AddPair('segmento_id', TJSONNull.Create);

    // telefone criar array
    JSONArrayTelefones := TJSONArray.Create;
    JSONObjTelefone1 := TJSONObject.Create;
    JSONObjTelefone2 := TJSONObject.Create;

    if qrClientesTELEFONE1.AsString <> '' then
    begin
      JSONObjTelefone1.AddPair('numero', qrClientesTELEFONE1.AsString);
      JSONArrayTelefones.AddElement(JSONObjTelefone1);
      //  JSONArrayTelefones.AddElement(TJSONObject.ParseJSONValue('"numero":"' + qrClientesTELEFONE1.AsString+'"',0) as TJSONObject);
    end;

    if qrClientesTELEFONE2.AsString <> '' then
    begin
      JSONObjTelefone2.AddPair('numero', qrClientesTELEFONE2.AsString);
      JSONArrayTelefones.AddElement(JSONObjTelefone2);
    end;

    JSONCliente.AddPair('telefones', JSONArrayTelefones);

    // email criar array
    JSONArrayEmails := TJSONArray.Create;
    JSONObjEmail1 := TJSONObject.Create;
    JSONObjEmail2 := TJSONObject.Create;

    if qrClientesEMAIL1.AsString <> '' then
    begin
      JSONObjEmail1.AddPair('email', qrClientesEMAIL1.AsString);
      JSONArrayEmails.AddElement(JSONObjEmail1);
    end;

    JSONCliente.AddPair('emails', JSONArrayEmails);

    // enderecos adicionais criar array

    FStream := TStringStream.Create(JSONCliente.ToString, TEncoding.UTF8);
    FStream.Position := 0;

    FStream.SaveToFile('cliente.json');
    //  exit;

    AjustaEnvio;

    //  try

    //    dd.serverTray.Post(defHost + defURLCli, FStream);

    retornoPOST := ProcessaPost(defHost + defURLCli, FStream);

    if Copy(retornoPost, 1, 4) = '0000' then // deu certo... (veio o codigo)
    begin

      IDClienteMP := StrToInt('0' + retornoPOST);

      if tbTrayClientes.Locate('idCliente', qrClientesID.AsInteger, []) then
      begin

        tbTrayClientes.Edit;
        tbTrayClientesIDMP.AsInteger := IDClienteMP;
        tbTrayClientesHash.AsString := CalculaHASH(qrClientesRAZAO_SOCIAL.AsString + qrClientesNOME_FANTASIA.AsString + qrClientesRUA.AsString + qrClientesCIDADE.AsString);
        tbTrayClienteserro_codigo.Clear;
        tbTrayClienteserro_json.Clear;
        tbTrayClientes.Post;

        qrClientes.Edit;
        //      qrClientesATUALIZAR.AsString := 'OK';
        qrClientesERRO_CODIGO.Clear;
        qrClientesIDMP.AsInteger := IDClienteMP;
        qrClientes.Post;

      end;

    end
    else
    begin

      if tbTrayClientes.Locate('idCliente', qrClientesID.AsInteger, []) then
      begin
        tbTrayClientes.Edit;
        tbTrayClienteserro_codigo.AsString := 'ERRO';
        tbTrayClienteserro_json.AsString := retornoPOST;
        tbTrayClientes.Post;

        qrClientes.Edit;
        qrClientesERRO_CODIGO.AsString := 'ERRO';
        qrClientesERRO_JSON.AsString := retornoPOST;
        qrClientes.Post;

      end;

    end;

    AvisoOFF;
  *)
end;

procedure TfrmTabelas.btnIncluirProdutoUnicoClick(Sender: TObject);
var
  JSONproduto: TJSONObject;
  AStream: TMemoryStream;
  FStream: TStringStream;
  str, s, retornoPost: string;
  strAux: TStringList;
  IDprodutoMP: integer;
begin
  (*
    if qrProdutosIDREFPRODMP.AsInteger > 0 then
    begin
      //    AvisoAtt('Produto ' + qrProdutosID_PRO.AsString + '-' + qrProdutosDESCRICAO_PRO.AsString + ' já tem ID no Tray!', -3, -2);
      if tbTrayProdutos.Locate('idRefProdBM', qrProdutosID_REF.AsInteger, []) then
        tbTrayProdutos.Edit
      else
        tbTrayProdutos.Append;

      tbTrayProdutosIDProdBM.AsInteger := qrProdutosID_PRO.AsInteger;
      tbTrayProdutosIDRefProdBM.AsInteger := qrProdutosID_REF.AsInteger;
      tbTrayProdutoserro_codigo.AsString := 'ERRO';
      tbTrayProdutoserro_json.AsString := 'PRODUTO JÁ TEM ID NO MERCOS';
      tbTrayProdutos.Post;
      exit;

    end;

    AvisoAtt('Incluindo produto: ' + qrProdutosDESCRICAO_PRO.AsString);

    // se não tiver registro no Tray_produtos então criar...
    if not tbTrayProdutos.Locate('idRefProdBM', qrProdutosID_REF.AsInteger, []) then
    begin
      tbTrayProdutos.Append;
      tbTrayProdutosIDProdBM.AsInteger := qrProdutosID_PRO.AsInteger;
      tbTrayProdutosIDRefProdBM.AsInteger := qrProdutosID_REF.AsInteger;
      tbTrayProdutos.Post;
    end;

    strAux := TStringList.Create;
    JSONproduto := TJSONObject.Create;

    AddPairString(JSONProduto, 'codigo', qrProdutosREFERENCIA.AsString);
    AddPairString(JSONProduto, 'nome', qrProdutosDESCRICAO_PRO.AsString + ' ' + qrProdutosDESCRICAO_REF.AsString);
    JSONproduto.AddPair('comissao', TJSONNull.Create);
    AddPairFloat(JSONproduto, 'preco_tabela', qrProdutosPRECO_TABELA.AsFloat);
    AddPairFloat(JSONproduto, 'preco_minimo', qrProdutosPRECO_MINIMO.AsFloat);
    JSONproduto.AddPair('ipi', TJSONNull.Create);
    JSONproduto.AddPair('tipo_ipi', TJSONNull.Create);
    JSONproduto.AddPair('st', TJSONNull.Create);
    JSONproduto.AddPair('grade_cores', TJSONNull.Create);
    JSONproduto.AddPair('grade_tamanhos', TJSONNull.Create);
    AddPairString(JSONProduto, 'moeda', '0');
    AddPairString(JSONproduto, 'unidade', qrProdutosUNIDADE.AsString);
    AddPairFloat(JSONproduto, 'saldo_estoque', qrProdutosSALDO_ESTOQUE.AsFloat);
    AddPairString(JSONproduto, 'observacoes', qrProdutosOBSERVACOES.AsString);
    JSONproduto.AddPair('ativo', TJSONBool.Create(qrProdutosATIVO.AsBoolean));
    if qrProdutosIDCLASSEMP.AsInteger > 0 then
      AddPairInt(JSONProduto, 'categoria_id', qrProdutosIDCLASSEMP.AsInteger);
    AddPairString(JSONproduto, 'codigo_ncm', qrProdutosNCM.AsString);
    AddPairFloat(JSONproduto, 'peso_bruto', qrProdutosPESO_BRUTO.AsFloat);

    FStream := TStringStream.Create(JSONproduto.ToString, TEncoding.UTF8);
    FStream.Position := 0;

    FStream.SaveToFile('produto.json');

    AjustaEnvio;

    retornoPost := ProcessaPost(defHost + defURLProdutos, FStream);

    if Copy(retornoPost, 1, 4) = '0000' then // deu certo... (veio o codigo)
    begin

      IDprodutoMP := StrToInt(retornoPost);

      if tbTrayProdutos.Locate('idRefProdBM', qrProdutosID_REF.AsInteger, []) then
      begin

        tbTrayProdutos.Edit;
        tbTrayProdutosIDRefProdMP.AsInteger := IDprodutoMP;
        tbTrayProdutosValorPreco2.Value := qrProdutosPRECOVENDA2.AsFloat;
        tbTrayProdutosValorPreco3.Value := qrProdutosPRECOVENDA3.AsFloat;
        tbTrayProdutosHash.AsString := CalculaHASH(qrProdutosDESCRICAO_PRO.AsString + qrProdutosDESCRICAO_REF.AsString + qrProdutosPRECO_TABELA.AsString + qrProdutosPRECOVENDA2.AsString + qrProdutosPRECOVENDA3.AsString + qrProdutosSALDO_ESTOQUE.AsString);
        tbTrayProdutoserro_codigo.Clear;
        tbTrayProdutoserro_json.Clear;
        tbTrayProdutos.Post;

        qrProdutos.Edit;
        //      qrProdutosATUALIZAR.AsString := 'OK';
        qrProdutosERRO_CODIGO.Clear;
        qrProdutosERRO_JSON.Clear;
        qrProdutosIDREFPRODMP.AsInteger := IDprodutoMP;
        qrProdutosIDPRODBM.AsInteger := qrProdutosID_PRO.AsInteger;
        qrProdutosIDREFPRODBM.AsInteger := qrProdutosID_REF.AsInteger;
        qrProdutos.Post;

      end;
    end
    else
    begin

      if tbTrayProdutos.Locate('idRefProdBM', qrProdutosID_REF.AsInteger, []) then
      begin
        tbTrayProdutos.Edit;
        tbTrayProdutoserro_codigo.AsString := 'ERRO';
        tbTrayProdutoserro_json.AsString := UnicodeToAnsi(retornoPost);
        tbTrayProdutos.Post;
      end;

    end;

    AvisoOFF;
  *)
end;

procedure TfrmTabelas.btn_get_marcasClick(Sender: TObject);
var
  jValue: TJsonValue;
  jObj, jObjMarca, jObjCampos, jObjpagina: TJsonObject;
  jArrayMarcas: TJsonArray;
  i: integer;
  j: integer;
  total: integer;
  limit: integer;
  n_paginas: integer;
  n_pagina: integer;
begin
  tbTrayMarcas.Open;
  JSONtray_marcas.Clear;
  tray_token.Clear;
  tray_refresh.Clear;
  n_pagina := 1;

  while True do
  begin
//    frmRequest.RESTRequestMarcas.Params[3].Value := def_access_token;
//    frmRequest.RESTRequestMarcas.Params[4].Value := n_pagina.ToString;
//    frmRequest.RESTRequestMarcas.Execute;
//    JSONtray_marcas.Text := frmRequest.RESTResponseMarcas.Content;
    jValue := TJSONObject.ParseJSONValue(JSONtray_marcas.Text);
    //ShowMessage(jvalue.ToJSON);
    jObj := jValue as TJsonObject;
    //ShowMessage(jObj.ToJSON);
    JSONtray_marcas.Text := jObj.ToJSON;
    jArrayMarcas := jObj.Get('Brands').JsonValue as TJSONArray;
    jObjpagina := jObj.Get('paging').JsonValue as TJSONObject;
    total := jObjpagina.GetValue('total').Value.ToInteger;
    limit := jObjpagina.GetValue('limit').Value.ToInteger;

    for I := 0 to jArrayMarcas.Size - 1 do
    begin
      jObjMarca := jArrayMarcas.Get(i) as TJSONObject;
      jObjCampos := jObjMarca.Get('Brand').JsonValue as TJsonObject;
      tbTrayMarcas.Append;
      tbTrayMarcasid_marca.AsString := jObjCampos.Get('id').JsonValue.Value;
      tbTrayMarcasslug.AsString := jObjCampos.Get('slug').JsonValue.Value;
      tbTrayMarcasbrand.AsString := jObjCampos.Get('brand').JsonValue.Value;
      tbTrayMarcas.Post;

    end;

    n_pagina := n_pagina + 1;
    n_paginas := Trunc((total / limit));
    if (total mod limit) > 0 then
      n_paginas := n_paginas + 1;
    if n_paginas < n_pagina then
      break;

  end;
end;

procedure TfrmTabelas.Button1Click(Sender: TObject);
begin
  frmmarcas.tbBMintaux.Close;
  frmmarcas.qrBMmarcas.Close;
  frmmarcas.tbBMintaux.Open;
  frmmarcas.qrBMmarcas.Open;
end;

procedure TfrmTabelas.Button6Click(Sender: TObject);
var
  ObjMarca, ObjMarcaBrand, ObjResult: TJSONObject;
  FStream: TStringStream;
  jValue: TJsonValue;

begin
  frmmarcas.qrBMmarcas.First;

  while not frmmarcas.qrBMmarcas.Eof do
  begin
    frmmarcas.qrBMintaux.Close;
    frmmarcas.qrBMintaux.ParamByName('HASH').Value := frmmarcas.qrBMmarcasMARCA.Value;
    frmmarcas.qrBMintaux.Open;
    frmmarcas.tbBMintaux.Close;
    frmmarcas.tbBMintaux.Open;
    if not frmmarcas.qrBMintaux.IsEmpty then
    begin
      frmmarcas.qrBMmarcas.Next;
      Continue;
    end;
    ObjMarca := TJSONObject.Create;
    ObjMarcaBrand := TJSONObject.Create;
    //showmessage(ObjMarcaBrand.ToJSON);
    AddPairString(ObjMarca, 'slug', frmmarcas.qrBMmarcasMARCA.AsString);
    AddPairString(ObjMarca, 'brand', frmmarcas.qrBMmarcasMARCA.AsString);
    ObjMarcaBrand.AddPair('Brand', ObjMarca);
    //showmessage(ObjMarcaBrand.ToJSON);
    //fazer post
//    frmRequest.RESTClientMarcasPost.BaseURL := 'https://trayparceiros.commercesuite.com.br/web_api/products/brands?access_token=' +
//      def_access_token;
//    frmRequest.RESTRequestMarcasPost.Body.ClearBody;
//    frmRequest.RESTRequestMarcasPost.AddBody(ObjMarcaBrand);
//    frmRequest.RESTRequestMarcasPost.Execute;
//    //ShowMessage(frmRequest.RESTResponseMarcasPost.Content.ToLower);
//    jValue := TJSONObject.ParseJSONValue(frmRequest.RESTResponseCategoriasPost.Content.ToLower);
    ObjResult := jValue as TJsonObject;
    if ObjResult.Get('code').JsonValue.Value.ToInteger <> 201 then
    begin
      Logar(ObjResult.Get('message').JsonValue.Value);
      frmmarcas.qrBMmarcas.Next;
      continue;
    end;

    frmmarcas.tbBMintaux.Append;
    frmmarcas.tbBMintauxHASH.AsString := frmmarcas.qrBMmarcasMARCA.AsString;
    frmmarcas.tbBMintauxTipo.AsString := 'TM';
    frmmarcas.tbBMintaux.Post;
    frmmarcas.qrBMmarcas.Next;
  end;

end;

procedure TfrmTabelas.btn_gerar_tokenClick(Sender: TObject);
var
  ArrayAuth: TJSONObject;
  json: string;
  jv: TJSONValue;
begin
  frmRequest.RESTRequestAuth.Execute;
  JSONtray_marcas.Clear;
  JSONtray_marcas.Text := frmRequest.RESTResponseAuth.Content;
  json := JSONtray_marcas.Text;
  ArrayAuth := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(json), 0) as TJSONObject;
  jv := ArrayAuth.Get('access_token').JsonValue;
  tray_token.Text := jv.Value;
  def_access_token := jv.Value;
  jv := ArrayAuth.Get('refresh_token').JsonValue;
  tray_refresh.Text := jv.Value;
  ArrayAuth.DisposeOf;
end;

procedure TfrmTabelas.FormCreate(Sender: TObject);
begin
  (*
    AjustaEnvio;

    tbTrayProdutos.Open;
    tbTrayProdutosImagens.Open;

    tbTrayClasses.Open;
    tbTrayClassesAux.Open;

    //  pTabelasSincronizacao.Pages[12].TabVisible := false;
    pTabelasSincronizacao.ActivePageIndex := 0;
  *)
end;

procedure TfrmTabelas.RzBitBtn1Click(Sender: TObject);
begin
  tbTrayMarcas.Delete;
end;

procedure TfrmTabelas.RzBitBtn2Click(Sender: TObject);
begin
  if tbTrayMarcas.Locate('brand', tbBMmarcasMarca.AsString, []) then
  begin
    showmessage('Marca já está adicionada na tabela')
  end

  else
  begin
    tbTrayMarcas.Append;
    tbTrayMarcasbrand.AsString := tbBMmarcasMarca.AsString;
    tbTrayMarcasslug.AsString := tbBMmarcasMarca.AsString;
    tbTrayMarcas.Post;
  end;
end;

procedure TfrmTabelas.RzButton10Click(Sender: TObject);
begin
  tbBMClientes.Close;
  tbBMClientes.Open;
  tbBMintaux.Close;
  tbBMintaux.Open;
  if tbBMintaux.Locate('ID_Int', tbTrayClientesid_cliente.AsInteger, []) then
  begin
    if MD5String(tbTrayClientesaddress.AsString + tbTrayClienteszip_code.AsString + tbTrayClientesnumber_address.AsString +
      tbTrayClientescity.AsString + tbTrayClientesstate.AsString + tbTrayClientescredit_limit.AsString) <> (qrBMintauxHASH.AsString) then

    begin
      //showmessage('O pedido já foi capturado');
      exit;
    end
    else
    begin
      tbBMClientes.Edit;
      tbBMClientesNome.AsString := AnsiUpperCase(tbTrayClientesname.AsString);
      tbBMClientesRG.AsString := AnsiUpperCase(tbTrayClientesrg.AsString);
      tbBMClientesCPFCNPJ.AsString := AnsiUpperCase(tbTrayClientescpf.AsString);
      tbBMClientesFone1.AsString := AnsiUpperCase(tbTrayClientesphone.AsString);
      tbBMClientesCelular.AsString := AnsiUpperCase(tbTrayClientescellphone.AsString);
      tbBMClientesemail.AsString := AnsiUpperCase(tbTrayClientesemail.AsString);
      tbBMClientesLembrete.AsString := AnsiUpperCase(tbTrayClientesobservation.AsString);
      tbBMClientesJuridicaFisica.AsString := AnsiUpperCase(tbTrayClientesid_type.AsString);
      tbBMClientesCPFCNPJ.AsString := AnsiUpperCase(tbTrayClientescnpj.AsString);
      tbBMClientesLimiteCredito.AsString := AnsiUpperCase(tbTrayClientescredit_limit.AsString);
      tbBMClientesEndereco.AsString := AnsiUpperCase(tbTrayClientesaddress.AsString);
      tbBMClientesCEP.AsString := AnsiUpperCase(tbTrayClienteszip_code.AsString);
      tbBMClientesNumero.AsString := AnsiUpperCase(tbTrayClientesnumber_address.AsString);
      tbBMClientesComplemento.AsString := AnsiUpperCase(tbTrayClientescomplement.AsString);
      tbBMClientesBairro.AsString := AnsiUpperCase(tbTrayClientesneighborhood.AsString);
      tbBMClientesCidade.AsString := AnsiUpperCase(tbTrayClientescity.AsString);
      tbBMClientesUF.AsString := AnsiUpperCase(tbTrayClientesstate.AsString);
      tbBMClientes.Post;

      tbBMintaux.Edit;
      tbBMintauxHASH.AsString := MD5String(tbTrayClientesaddress.AsString + tbTrayClienteszip_code.AsString +
        tbTrayClientesnumber_address.AsString
        +
        tbTrayClientescity.AsString + tbTrayClientesstate.AsString + tbTrayClientescredit_limit.AsString);
      tbBMintaux.Post;
      showmessage('Cadastro de cliente modificado');
    end;
  end
  else
  begin
    tbBMClientes.Append;
    tbBMClientesNome.AsString := AnsiUpperCase(tbTrayClientesname.AsString);
    tbBMClientesRG.AsString := AnsiUpperCase(tbTrayClientesrg.AsString);
    tbBMClientesCPFCNPJ.AsString := AnsiUpperCase(tbTrayClientescpf.AsString);
    tbBMClientesFone1.AsString := AnsiUpperCase(tbTrayClientesphone.AsString);
    tbBMClientesCelular.AsString := AnsiUpperCase(tbTrayClientescellphone.AsString);
    tbBMClientesemail.AsString := AnsiUpperCase(tbTrayClientesemail.AsString);
    tbBMClientesLembrete.AsString := AnsiUpperCase(tbTrayClientesobservation.AsString);
    tbBMClientesJuridicaFisica.AsString := AnsiUpperCase(tbTrayClientesid_type.AsString);
    tbBMClientesCPFCNPJ.AsString := AnsiUpperCase(tbTrayClientescnpj.AsString);
    tbBMClientesLimiteCredito.AsString := AnsiUpperCase(tbTrayClientescredit_limit.AsString);
    tbBMClientesEndereco.AsString := AnsiUpperCase(tbTrayClientesaddress.AsString);
    tbBMClientesCEP.AsString := AnsiUpperCase(tbTrayClienteszip_code.AsString);
    tbBMClientesNumero.AsString := AnsiUpperCase(tbTrayClientesnumber_address.AsString);
    tbBMClientesComplemento.AsString := AnsiUpperCase(tbTrayClientescomplement.AsString);
    tbBMClientesBairro.AsString := AnsiUpperCase(tbTrayClientesneighborhood.AsString);
    tbBMClientesCidade.AsString := AnsiUpperCase(tbTrayClientescity.AsString);
    tbBMClientesUF.AsString := AnsiUpperCase(tbTrayClientesstate.AsString);
    tbBMClientes.Post;

    tbBMintaux.Append;
    tbBMintauxID_Int.AsInteger := tbTrayClientesid_cliente.AsInteger;
    tbBMintauxHASH.AsString := MD5String(tbTrayClientesaddress.AsString + tbTrayClienteszip_code.AsString +
      tbTrayClientesnumber_address.AsString
      +
      tbTrayClientescity.AsString + tbTrayClientesstate.AsString + tbTrayClientescredit_limit.AsString);
    tbBMintauxID_BM.AsString := tbBMClientesID.AsString;
    tbBMintauxTipo.AsString := 'CLT';
    tbBMintaux.Post;
    showmessage('Cadastro de cliente criado');
  end;
end;

procedure TfrmTabelas.RzButton11Click(Sender: TObject);
begin
  (*
    tempTrayClientes.First;
    while not tempTrayClientes.Eof do
    begin

      if tempTrayClientesexcluido.AsBoolean then
      begin
        tempTrayClientes.Next;
        continue;
      end;

      if tbBMclientes.Locate('CPFCNPJ', tempTrayClientescnpj.AsString, []) then
      begin

        if not tbTrayClientes.Locate('idCliente', tbBMclientesID.AsInteger, []) then
        begin
          tbTrayClientes.Append;
          tbTrayClientesIDCliente.AsInteger := tbBMclientesID.AsInteger;
        end
        else
        begin
          tbTrayClientes.Edit;
        end;

        tbTrayClientesIDMP.AsInteger := tempTrayClientesid.AsInteger;
        tbTrayClientesHash.AsString := CalculaHASH(tbBMclientesNome.AsString + tbBMclientesFantasia.AsString + tbBMclientesEndereco.AsString + tbBMclientesCidade.AsString);
        tbTrayClientesultimo_status.AsString := 'OK';
        tbTrayClientesultima_atividade.AsDateTime := now;
        tbTrayClientesmensagem.AsString := 'RELACIONADO COM O MERCOS';
        tbTrayClientes.Post;

      end;

      tempTrayClientes.Next;

    end;
  *)
end;

function TfrmTabelas.datatopadrao(s: string): string;
var
  dia: string;
  mes: string;
  ano: string;
  datacompleta: string;

begin
  if (s = '0000-00-00') or (s = '') then
    s := '1980-01-01';

  dia := copy(s, 9, 2);
  mes := copy(s, 6, 2);
  ano := copy(s, 1, 4);
  datacompleta := dia + '/' + mes + '/' + ano;

  result := datacompleta;

end;

function TfrmTabelas.analisaexistenciastr(o: TJsonObject; s: string): string;
begin
  if o.GetValue(s) <> nil then
    result := o.Get(s).JsonValue.Value
  else
    result := '';
end;

function TfrmTabelas.analisaexistenciadate(o: TJsonObject; s: string): TDateTime;
begin

  if (o.GetValue(s) <> (nil)) then
    result := StrToDateTime(datatopadrao(o.Get(s).JsonValue.Value))
  else
    result := StrToDateTime(datatopadrao('0001-01-01'));

end;

function TfrmTabelas.analisaexistenciainteger(o: TJsonObject; s: string): Integer;
begin
  if o.GetValue(s) <> nil then
    result := StrToInt('0' + o.Get(s).JsonValue.Value)
  else
    result := 0;
end;

function TfrmTabelas.analisaexistenciafloat(o: TJsonObject; s: string): double;
begin
  if o.GetValue(s) <> nil then
    result := StrToFloat(StringReplace(o.Get(s).JsonValue.Value, '.', ',', [rfReplaceAll]))
  else
    result := 0;
end;

procedure TfrmTabelas.RzButton12Click(Sender: TObject);
var
  jValue: TJsonValue;
  jObj, jObjCliente, jObjCampos, jObjpagina: TJsonObject;
  jArrayClientes: TJsonArray;
  i: integer;
  total: integer;
  limit: integer;
  n_paginas: integer;
  n_pagina: integer;
  n_paginas_total: integer;

begin
  tbTrayClientes.Open;
  JSONtray_clientes.Clear;
  tray_token_clientes.Clear;
  tray_refresh_clientes.Clear;
  tbTrayClientes.EmptyTable;
  n_pagina := 600;

  while True do
  begin
//    frmRequest.RESTRequestCliente.Params[3].Value := def_access_token;
//    frmRequest.RESTRequestCliente.Params[4].Value := n_pagina.ToString;
//    frmRequest.RESTRequestCliente.Execute;
//    JSONtray_clientes.Text := frmRequest.RESTResponseCliente.Content;
    jValue := TJSONObject.ParseJSONValue(JSONtray_clientes.Text);
    jObj := jValue as TJsonObject;
    JSONtray_clientes.Text := jObj.ToJSON;
    jArrayClientes := jObj.Get('Customers').JsonValue as TJSONArray;
    jObjpagina := jObj.Get('paging').JsonValue as TJSONObject;
    total := jObjpagina.GetValue('total').Value.ToInteger;
    limit := jObjpagina.GetValue('limit').Value.ToInteger;
    lblpage.Caption := 'Atualizando...' + n_pagina.ToString + '/' + n_paginas_total.ToString;
    application.ProcessMessages;

    for I := 0 to jArrayClientes.Size - 1 do
    begin
      jObjCliente := jArrayClientes.Get(i) as TJSONObject;
      jObjCampos := jObjCliente.Get('Customer').JsonValue as TJsonObject;
      tbTrayClientes.Append;
      tbTrayClientesid_cliente.AsString := analisaexistenciastr(jObjCampos, 'id');
      tbTrayClientesname.AsString := analisaexistenciastr(jObjCampos, 'name');
      tbTrayClientesrg.AsString := analisaexistenciastr(jObjCampos, 'rg');
      tbTrayClientescpf.AsString := analisaexistenciastr(jObjCampos, 'cpf');
      tbTrayClientesphone.AsString := analisaexistenciastr(jObjCampos, 'phone');
      tbTrayClientescellphone.AsString := analisaexistenciastr(jObjCampos, 'cellphone');
      tbTrayClientesbirth_date.AsDateTime := analisaexistenciadate(jObjCampos, 'birth_date');
      tbTrayClientesid_gender.AsInteger := analisaexistenciainteger(jObjCampos, 'gender');
      tbTrayClientesemail.AsString := analisaexistenciastr(jObjCampos, 'email');
      tbTrayClientesnickname.AsString := analisaexistenciastr(jObjCampos, 'nickname');
      tbTrayClientestoken.AsString := analisaexistenciastr(jObjCampos, 'token');
      tbTrayClientestotal_orders.AsInteger := analisaexistenciainteger(jObjCampos, 'total_orders');
      tbTrayClientesobservation.AsString := analisaexistenciastr(jObjCampos, 'observation');
      tbTrayClientesid_type.AsInteger := analisaexistenciainteger(jObjCampos, 'type');
      tbTrayClientescnpj.AsString := analisaexistenciastr(jObjCampos, 'cnpj');
      tbTrayClientescompany_name.AsString := analisaexistenciastr(jObjCampos, 'company_name');
      tbTrayClientesstate_inscription.AsString := analisaexistenciastr(jObjCampos, 'state_inscription');
      tbTrayClientesreseller.AsInteger := analisaexistenciainteger(jObjCampos, 'reseller');
      tbTrayClientesdiscount.AsFloat := analisaexistenciafloat(jObjCampos, 'discount');
      tbTrayClientesid_blocked.AsInteger := analisaexistenciainteger(jObjCampos, 'blocked');
      tbTrayClientescredit_limit.AsFloat := analisaexistenciafloat(jObjCampos, 'credit_limit');
      tbTrayClientesindicator_id.AsInteger := analisaexistenciainteger(jObjCampos, 'indicator_id');
      tbTrayClientesprofile_customer_id.AsInteger := analisaexistenciainteger(jObjCampos, 'profile_customer_id');
      tbTrayClienteslast_sending_newsletter.AsDateTime := analisaexistenciadate(jObjCampos, 'last_sending_newsletter');
      tbTrayClienteslast_purchase.AsDateTime := analisaexistenciadate(jObjCampos, 'last_purchase');
      tbTrayClienteslast_visit.AsDateTime := analisaexistenciadate(jObjCampos, 'last_visit');
      tbTrayClienteslast_modification.AsDateTime := analisaexistenciadate(jObjCampos, 'last_modification');
      tbTrayClientesaddress.AsString := analisaexistenciastr(jObjCampos, 'address');
      tbTrayClienteszip_code.AsString := analisaexistenciastr(jObjCampos, 'zip_code');
      tbTrayClientesnumber_address.AsInteger := analisaexistenciainteger(jObjCampos, 'number_address');
      tbTrayClientescomplement.AsString := analisaexistenciastr(jObjCampos, 'complement');
      tbTrayClientesneighborhood.AsString := analisaexistenciastr(jObjCampos, 'neighborhood');
      tbTrayClientescity.AsString := analisaexistenciastr(jObjCampos, 'city');
      tbTrayClientesstate.AsString := analisaexistenciastr(jObjCampos, 'state');
      tbTrayClientesnewslatter.AsInteger := analisaexistenciainteger(jObjCampos, 'newslatter');
      //tbTrayClientescreated.AsDateTime := analisaexistenciadate(jObjCampos, 'created');
      tbTrayClientesregistration_date.AsDateTime := analisaexistenciadate(jObjCampos, 'registration_date');
      tbTrayClientesmodifed.AsDateTime := analisaexistenciadate(jObjCampos, 'modifed');
      tbTrayClientes.Post;

    end;
    n_pagina := n_pagina + 1;
    n_paginas_total := Trunc((total / limit));
    n_paginas := Trunc((total / limit));
    if (total mod limit) > 0 then
      n_paginas := n_paginas + 1;
    if n_paginas < n_pagina then
      break;
  end;
  lblpage.Caption := 'Atualizado com sucesso';
end;

procedure TfrmTabelas.RzButton13Click(Sender: TObject);
begin
  (*
    if tbTrayProdutosImagens.Locate('idProdBM', qrProFotosIDPRODBM.AsInteger, []) then
    begin

      tbTrayProdutosImagens.Edit;
      tbTrayProdutosImagensIDImagemMP.Clear;
      tbTrayProdutosImagens.Post;

      qrProFotos.Edit;
      qrProFotosIDIMAGEMMP.Clear;
      qrProFotos.Post;

    end;
  *)
end;

procedure TfrmTabelas.RzButton15Click(Sender: TObject);
var
  ArrayAuth: TJSONObject;
  json: string;
  jv: TJSONValue;
begin
  frmRequest.RESTRequestAuth.Execute;
  JSONtray_clientes.Clear;
  JSONtray_clientes.Text := frmRequest.RESTResponseAuth.Content;
  json := JSONtray_clientes.Text;
  ArrayAuth := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(json), 0) as TJSONObject;
  jv := ArrayAuth.Get('access_token').JsonValue;
  tray_token_clientes.Text := jv.Value;
  def_access_token := jv.Value;
  jv := ArrayAuth.Get('refresh_token').JsonValue;
  tray_refresh_clientes.Text := jv.Value;
  ArrayAuth.DisposeOf;

end;

procedure TfrmTabelas.ProcessaCategoria(jObjCategoria: TJsonObject);
var
  jValue: TJsonValue;
  jArrayChildren: TJsonArray;
  jObjCampos, jObjLink, jObjChildrenCategoria, jObjCamposChildren: TJsonObject;
  j: integer;
begin
  jObjCampos := jObjCategoria.Get('Category').JsonValue as TJsonObject;
  jObjLink := jObjCampos.Get('link').JsonValue as TJSONObject;
  tbTrayCategorias.Append;
  tbTrayCategoriasid_categoria.AsString := analisaexistenciastr(jObjCampos, 'id');
  tbTrayCategoriasslug.AsString := analisaexistenciastr(jObjCampos, 'slug');
  tbTrayCategoriasid_parent.AsInteger := analisaexistenciainteger(jObjCampos, 'parent_id');
  tbTrayCategoriasname.AsString := analisaexistenciastr(jObjCampos, 'name');
  tbTrayCategoriasdescription.AsString := analisaexistenciastr(jObjCampos, 'description');
  tbTrayCategoriassmall_description.AsString := analisaexistenciastr(jObjCampos, 'small_description');
  tbTrayCategoriasorder.AsInteger := analisaexistenciainteger(jObjCampos, 'order');
  tbTrayCategoriashas_acceptance_term.AsInteger := analisaexistenciainteger(jObjCampos, 'has_acceptance_term');
  tbTrayCategoriasacceptance_term.AsString := analisaexistenciastr(jObjCampos, 'acceptance_term');
  tbTrayCategoriashttp.AsString := analisaexistenciastr(jObjLink, 'http');
  tbTrayCategoriashttps.AsString := analisaexistenciastr(jObjLink, 'https');
  tbTrayCategorias.Post;
  if jObjCampos.Get('children').ToJSON <> '"children":null' then

  begin
    //showmessage(jObjCampos.Get('children').ToJSON);
    jArrayChildren := jObjCampos.Get('children').JsonValue as TJSONArray;
    for j := 0 to jArrayChildren.Size - 1 do
    begin
      jObjChildrenCategoria := jArrayChildren.Get(j) as TJsonObject;
      jObjCamposChildren := jObjChildrenCategoria.Get('Category').JsonValue as TJsonObject;
      ProcessaCategoria(jArrayChildren.Get(j) as TJsonObject);

    end;
  end;

end;

procedure TfrmTabelas.RzButton16Click(Sender: TObject);
var
  jValue: TJsonValue;
  jObj, jObjCategoria, jObjCampos, jObjLink: TJsonObject;
  jArrayCategoria: TJsonArray;
  i: integer;

begin
  tbTrayCategorias.Open;
  JSONtray_categorias.Clear;
  tray_token_categorias.Clear;
  tray_refresh_categorias.Clear;
//
//  frmRequest.RESTRequestCategorias.Params[3].Value := def_access_token;
//  frmRequest.RESTRequestCategorias.Execute;
//  JSONtray_categorias.Text := frmRequest.RESTResponseCategorias.Content;
  //showmessage(JSONtray_categorias.Text);
  jValue := TJSONObject.ParseJSONValue(JSONtray_categorias.Text);
  jObj := jValue as TJsonObject;
  //ShowMessage(jObj.ToJSON);
  JSONtray_categorias.Text := jObj.ToJSON;
  jArrayCategoria := jObj.Get('Category').JsonValue as TJSONArray;
  //ShowMessage(jArrayCategoria.ToJSON);
  tbTrayCategorias.EmptyTable;
  for I := 0 to jArrayCategoria.Size - 1 do
  begin
    ProcessaCategoria(jArrayCategoria.Get(i) as TJsonObject);
  end;
end;

procedure TfrmTabelas.RzButton17Click(Sender: TObject);
var
  ArrayAuth: TJSONObject;
  json: string;
  jv: TJSONValue;
begin
  frmRequest.RESTRequestAuth.Execute;
  JSONtray_categorias.Clear;
  JSONtray_categorias.Text := frmRequest.RESTResponseAuth.Content;
  json := JSONtray_categorias.Text;
  ArrayAuth := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(json), 0) as TJSONObject;
  jv := ArrayAuth.Get('access_token').JsonValue;
  tray_token_categorias.Text := jv.Value;
  def_access_token := jv.Value;
  jv := ArrayAuth.Get('refresh_token').JsonValue;
  tray_refresh_categorias.Text := jv.Value;
  ArrayAuth.DisposeOf;
end;

procedure TfrmTabelas.RzButton18Click(Sender: TObject);
var
  jValue: TJsonValue;
  jObj, jObjProdutos, jObjCampos: TJsonObject;
  jArrayProdutos: TJsonArray;
  i: integer;

begin
  tbTrayProdutos.Open;
  JSONtray_produtos.Clear;
  tray_token_produtos.Clear;
  tray_refresh_produtos.Clear;
//  frmRequest.RESTRequestProdutos.Params[3].Value := def_access_token;
//  frmRequest.RESTRequestProdutos.Execute;
//  JSONtray_produtos.Text := frmRequest.RESTResponseProdutos.Content;
  jValue := TJSONObject.ParseJSONValue(JSONtray_produtos.Text);
  //ShowMessage(jvalue.ToJSON);
  jObj := jValue as TJsonObject;
  //ShowMessage(jObj.ToJSON);
  JSONtray_produtos.Text := jObj.ToJSON;
  jArrayProdutos := jObj.Get('Products').JsonValue as TJSONArray;
  //ShowMessage(jArrayClientes.ToJSON);
  tbTrayProdutos.EmptyTable;
  for I := 0 to jArrayProdutos.Size - 1 do
  begin
    jObjProdutos := jArrayProdutos.Get(i) as TJSONObject;
    //ShowMessage(jObjCliente.ToJSON);
    jObjCampos := jObjProdutos.Get('Product').JsonValue as TJsonObject;
    //ShowMessage(jObjCampos.ToJSON);
    //showmessage(jObjCampos.Get('id').JsonValue.Value);
    tbTrayProdutos.Append;
    tbTrayProdutosid_produto.AsString := analisaexistenciastr(jObjCampos, 'id');
    tbTrayProdutosean.AsString := analisaexistenciastr(jObjCampos, 'ean');
    tbTrayProdutosmodifield.AsDateTime := analisaexistenciadate(jObjCampos, 'modifield');
    tbTrayProdutosslug.AsString := analisaexistenciastr(jObjCampos, 'slug');
    tbTrayProdutosncm.AsString := analisaexistenciastr(jObjCampos, 'ncm');
    tbTrayProdutosname.AsString := analisaexistenciastr(jObjCampos, 'name');
    tbTrayProdutostitle.AsString := analisaexistenciastr(jObjCampos, 'title');
    tbTrayProdutosdescription.AsString := analisaexistenciastr(jObjCampos, 'description');
    tbTrayProdutosdescription_small.AsString := analisaexistenciastr(jObjCampos, 'description_small');
    tbTrayProdutosprice.AsFloat := analisaexistenciafloat(jObjCampos, 'price');
    tbTrayProdutoscost_price.AsFloat := analisaexistenciafloat(jObjCampos, 'cost_price');
    tbTrayProdutospromotional_price.AsFloat := analisaexistenciafloat(jObjCampos, 'promotional_price');
    tbTrayProdutosstart_promotion.AsDateTime := analisaexistenciadate(jObjCampos, 'start_promotion');
    tbTrayProdutosend_promotion.AsDateTime := analisaexistenciadate(jObjCampos, 'end_promotional');
    tbTrayProdutosbrand.AsString := analisaexistenciastr(jObjCampos, 'brand');
    tbTrayProdutosmodel.AsString := analisaexistenciastr(jObjCampos, 'model');
    tbTrayProdutosweight.AsInteger := analisaexistenciainteger(jObjCampos, 'weight');
    tbTrayProdutoslength.AsInteger := analisaexistenciainteger(jObjCampos, 'length');
    tbTrayProdutoswidth.AsInteger := analisaexistenciainteger(jObjCampos, 'width');
    tbTrayProdutosheight.AsInteger := analisaexistenciainteger(jObjCampos, 'height');
    tbTrayProdutoscubic_weight.AsInteger := analisaexistenciainteger(jObjCampos, 'cubic_weight');
    tbTrayProdutosstock.AsInteger := analisaexistenciainteger(jObjCampos, 'stock');
    tbTrayProdutosid_categoria.AsInteger := analisaexistenciainteger(jObjCampos, 'category_id');
    tbTrayProdutosavailability.AsString := analisaexistenciastr(jObjCampos, 'availability');
    tbTrayProdutosreference.AsString := analisaexistenciastr(jObjCampos, 'reference');
    tbTrayProdutosadditional_button.AsInteger := analisaexistenciainteger(jObjCampos, 'additional_button');
    tbTrayProdutosadditional_message.AsString := analisaexistenciastr(jObjCampos, 'additional_message');
    tbTrayProdutoswarranty.AsString := analisaexistenciastr(jObjCampos, 'warranty');
    tbTrayProdutosrating.AsInteger := analisaexistenciainteger(jObjCampos, 'rating');
    tbTrayProdutoscount_rating.AsInteger := analisaexistenciainteger(jObjCampos, 'count_rating');
    tbTrayProdutosquantity_sold.AsInteger := analisaexistenciainteger(jObjCampos, 'quantity_sold');
    tbTrayProdutoscreated.AsDateTime := analisaexistenciadate(jObjCampos, 'created');
    tbTrayProdutospayment_option.AsString := analisaexistenciastr(jObjCampos, 'payment_option');
    tbTrayProdutosrelease_date.AsDateTime := analisaexistenciadate(jObjCampos, 'release_date');
    tbTrayProdutosshortcut.AsString := analisaexistenciastr(jObjCampos, 'shortcut');
    tbTrayProdutosminimum_stock.AsInteger := analisaexistenciainteger(jObjCampos, 'minimum_stock');
    tbTrayProdutosminimum_stocl_alert.AsInteger := analisaexistenciainteger(jObjCampos, 'minimum_stocl_alert');
    tbTrayProdutospromotion_id.AsInteger := analisaexistenciainteger(jObjCampos, 'promotion_id');
    tbTrayProdutosincluded_items.AsString := analisaexistenciastr(jObjCampos, 'included_items');
    tbTrayProdutosrelated_products.AsInteger := analisaexistenciainteger(jObjCampos, 'related_products');
    tbTrayProdutoscurrent_price.AsFloat := analisaexistenciafloat(jObjCampos, 'current_price');
    tbTrayProdutosipi.AsFloat := analisaexistenciafloat(jObjCampos, 'ipi');
    tbTrayProdutosacceptance_term_option.AsInteger := analisaexistenciainteger(jObjCampos, 'acceptance_term_option');
    tbTrayProdutoswarranty_days.AsInteger := analisaexistenciainteger(jObjCampos, 'warranty_days');
    tbTrayProdutosavailability_days.AsInteger := analisaexistenciainteger(jObjCampos, 'availability_days');
    tbTrayProdutosid_matetag.AsInteger := analisaexistenciainteger(jObjCampos, 'metatag');
    tbTrayProdutosid_variant.AsInteger := analisaexistenciainteger(jObjCampos, 'variant');
    tbTrayProdutos.Post;

  end;
end;

procedure TfrmTabelas.RzButton19Click(Sender: TObject);
var
  ArrayAuth: TJSONObject;
  json: string;
  jv: TJSONValue;
begin
  frmRequest.RESTRequestAuth.Execute;
  JSONtray_produtos.Clear;
  JSONtray_produtos.Text := frmRequest.RESTResponseAuth.Content;
  json := JSONtray_produtos.Text;
  ArrayAuth := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(json), 0) as TJSONObject;
  jv := ArrayAuth.Get('access_token').JsonValue;
  tray_token_produtos.Text := jv.Value;
  def_access_token := jv.Value;
  jv := ArrayAuth.Get('refresh_token').JsonValue;
  tray_refresh_produtos.Text := jv.Value;
  ArrayAuth.DisposeOf;
end;

procedure TfrmTabelas.RzButton20Click(Sender: TObject);
begin
  tbTrayMarcas.Open;
  tbBMmarcas.Open;
end;

procedure TfrmTabelas.RzButton21Click(Sender: TObject);
var
  ArrayAuth: TJSONObject;
  json: string;
  jv: TJSONValue;
begin
  frmRequest.RESTRequestAuth.Execute;
  JSONtray_marcas_enviar.Clear;
  JSONtray_marcas_enviar.Text := frmRequest.RESTResponseAuth.Content;
  json := JSONtray_marcas_enviar.Text;
  ArrayAuth := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(json), 0) as TJSONObject;
  jv := ArrayAuth.Get('access_token').JsonValue;
  tray_token_enviar.Text := jv.Value;
  def_access_token := jv.Value;
  jv := ArrayAuth.Get('refresh_token').JsonValue;
  tray_refresh_enviar.Text := jv.Value;
  ArrayAuth.DisposeOf;
end;

procedure TfrmTabelas.RzButton22Click(Sender: TObject);
var
  ObjMarca, ObjMarcaBrand: TJSONObject;
  FStream: TStringStream;

begin

  tbTrayMarcas.First;
  while not tbTrayMarcas.Eof do
  begin
    ObjMarca := TJSONObject.Create;
    ObjMarcaBrand := TJSONObject.Create;
    //showmessage(ObjMarcaBrand.ToJSON);
    //frmRequest.RESTRequestMarcasPost.Params[0].Value := '';
    AddPairString(ObjMarca, 'slug', tbTrayMarcasslug.AsString);
    AddPairString(ObjMarca, 'brand', tbTrayMarcasbrand.AsString);
    ObjMarcaBrand.AddPair('Brand', ObjMarca);
    //fazer post
     //FStream := TStringStream.Create(ObjMarcaBrand.ToString, TEncoding.UTF8);
    //FStream.Position := 0;
//    frmRequest.RESTClientMarcasPost.BaseURL := 'https://trayparceiros.commercesuite.com.br/web_api/products/brands?access_token=' +
//      def_access_token;
//    frmRequest.RESTRequestMarcasPost.Body.ClearBody;
//    frmRequest.RESTRequestMarcasPost.AddBody(ObjMarcaBrand);
//    //    showmessage(frmRequest.RESTRequestMarcas.);
//    frmRequest.RESTRequestMarcasPost.Execute;
//    ShowMessage(frmRequest.RESTResponseMarcasPost.Content.ToLower);
    tbTrayMarcas.Next;
  end;

  //exit;
end;

procedure TfrmTabelas.btnAtualizarCategoriasClick(Sender: TObject);
var
  ObjMain: TJSONObject;
  ObjListaCategorias: TJSONPair;
  ObjArrayCategorias: TJSONArray;
  ObjCategoria: TJSONObject;
  i: Integer;
  xUltimaAlteracao: string;
  xAlteradoApos: string;
  xTemMaisRegistros: boolean;
begin

  AvisoAtt('..Atualizando Categorias..');

  qrProClasses.Close;

  qrProClasses.Open;
  qrProClasses.DisableControls;
  CalculaHASHclasses;
  qrProClasses.EnableControls;
  qrProClasses.First;

  PreparaTemp(tempTrayCategorias);
  xAlteradoApos := '';
  xTemMaisRegistros := true;

  tempTrayCategorias.DisableControls;

  while xTemMaisRegistros do
  begin

    // alterado_apos = 2014-03-01%2007:21:44
    JSONcategoriasTray.Text := dd.serverTray.Get(defHost + defURLcategorias + '?alterado_apos=' + xAlteradoApos);

    xTemMaisRegistros := pubTemMaisRegistros;

    ObjArraycategorias := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(JSONcategoriasTray.Text), 0) as TJSONArray;

    for i := 0 to ObjArraycategorias.Count - 1 do
    begin

      ObjCategoria := ObjArraycategorias.Items[i] as TJSONObject;

      xUltimaAlteracao := ObjCategoria.GetValue('ultima_alteracao').Value;

      tempTrayCategorias.Append;
      tempTrayCategoriasid.AsString := ObjCategoria.GetValue('id').Value;
      tempTrayCategoriasnome.AsString := Objcategoria.GetValue('nome').Value;
      if Pos('categoria_pai_id', ObjCategoria.ToString) > 0 then
        tempTrayCategoriascategoria_pai_id.AsString := Objcategoria.GetValue('categoria_pai_id').Value;
      tempTrayCategoriasultima_alteracao.AsString := copy(xUltimaAlteracao, 9, 2) + '/' + copy(xUltimaAlteracao, 6, 2) + '/' +
        copy(xUltimaAlteracao, 1, 4) + ' ' + copy(xUltimaAlteracao, 12, 8);
      tempTrayCategoriasexcluido.AsBoolean := (Objcategoria.GetValue('excluido').Value = 'true');
      tempTrayCategorias.Post;

      xAlteradoApos := DateTimeToURL(tempTrayCategoriasultima_alteracao.AsDateTime);

    end;

    application.ProcessMessages;
    //    break; // tirar esse break em producao...

  end;

  tempTrayCategorias.First;
  tempTrayCategorias.EnableControls;

  AvisoOFF;

end;

procedure TfrmTabelas.RzButton3Click(Sender: TObject);
begin
  btnAlterarCategoria.Tag := 1;
  btnAlterarCategoria.Click;
end;

procedure TfrmTabelas.btnIncluirCategoriaClick(Sender: TObject);
var
  JSONcategoria: TJSONObject;
  AStream: TMemoryStream;
  FStream: TStringStream;
  str, s, retornoPOST: string;
  strAux: TStringList;
  IDcategoriaMP, IDcategoriaMP_pai: integer;

begin
  (*
    if qrProClassesIDCLASSEMP.AsInteger > 0 then
    begin
      //    AvisoAtt('Categoria ' + qrProClassesCLASSE.AsString + '-' + qrProClassesDESCRICAO.AsString + ' já tem ID no Tray!', -3, -2);
      if tbTrayClasses.Locate('idClasseBM', qrProClassesID.AsInteger, []) then
      begin
        tbTrayClasses.Edit;
        tbTrayClassesultima_atividade.AsDateTime := now;
        tbTrayClasseserro_codigo.AsString := 'ERRO';
        tbTrayClasseserro_json.AsString := 'CATEGORIA JÁ TEM ID NO MERCOS';
        tbTrayClasses.Post;
      end;
      exit;
    end;

    // se não tiver registro no Tray_categorias então criar...
    if not tbTrayClasses.Locate('idClasseBM', qrProClassesID.AsInteger, []) then
    begin
      tbTrayClasses.Append;
      tbTrayClassesDescricaoClasseBM.AsString := qrProClassesDESCRICAO.AsString;
      tbTrayClassesIDclasseBM.AsInteger := qrProClassesID.AsInteger;
      tbTrayClassesIDclasseBM_pai.AsInteger := qrProClassesID_PAI.AsInteger;
      tbTrayClassesultimo_status.AsString := 'OK';
      tbTrayClasseserro_codigo.Clear;
      tbTrayClasseserro_json.Clear;
      tbTrayClasses.Post;

      qrProClasses.Edit;
      qrProClassesATUALIZAR.AsString := 'OK';
      qrProClassesIDCLASSEBM.AsInteger := qrProClassesID.AsInteger;
      qrProClassesIDCLASSEBM_PAI.AsInteger := qrProClassesID_PAI.AsInteger;
      qrProClasses.Post;

    end;

    AvisoAtt('Incluindo categoria no Tray...' + qrProClassesDESCRICAO.AsString);

    strAux := TStringList.Create;
    JSONcategoria := TJSONObject.Create;

    AddPairString(JSONcategoria, 'nome', qrProClassesDESCRICAO.AsString);

    IDcategoriaMP_pai := 0;
    if qrProClassesID_PAI.AsInteger > 0 then
    begin
      tbTrayClassesAux.Refresh;
      tbTrayClassesAux.Locate('IDclasseBM', qrProClassesID_PAI.AsInteger, []);
      IDcategoriaMP_pai := tbTrayClassesAuxIDclasseMP.AsInteger;
      AddPairInt(JSONcategoria, 'categoria_pai_id', IDcategoriaMP_pai);
    end;

    FStream := TStringStream.Create(JSONcategoria.ToString, TEncoding.UTF8);
    FStream.Position := 0;

    FStream.SaveToFile('categorias.json');

    //  ShowMessage('1 ' + defHost + defURLcategorias);
    AjustaEnvio;

    //  try

    //    dd.serverTray.Post(defHost + defURLcategorias, FStream);

    retornoPOST := ProcessaPost(defHost + defURLcategorias, FStream);

    if Copy(retornoPost, 1, 4) = '0000' then // deu certo... (veio o codigo)
    begin

      IDcategoriaMP := StrToInt('0' + retornoPOST);

      if tbTrayClasses.Locate('idClasseBM', qrProClassesID.AsInteger, []) then
      begin

        tbTrayClasses.Edit;
        tbTrayClassesIDclasseMP.AsInteger := IDcategoriaMP;
        tbTrayClassesIDclasseMP_pai.AsInteger := IDcategoriaMP_pai;
        tbTrayClassesHash.AsString := CalculaHASH(qrProClassesDESCRICAO.AsString);
        tbTrayClassesultimo_status.AsString := 'OK';
        tbTrayClasseserro_codigo.Clear;
        tbTrayClasseserro_json.Clear;
        tbTrayClassesultima_atividade.AsDateTime := now;
        tbTrayClasses.Post;

        qrProClasses.Edit;
        qrProClassesIDCLASSEMP.AsInteger := IDcategoriaMP;
        qrProClassesIDCLASSEMP_PAI.AsInteger := IDcategoriaMP_pai;
        qrProClasses.Post;

      end;

    end
    else
    begin

      if tbTrayClasses.Locate('idClasseBM', qrProClassesID.AsInteger, []) then
      begin
        tbTrayClasses.Edit;
        tbTrayClassesultimo_status.AsString := 'ERRO';
        tbTrayClassesultima_atividade.AsDateTime := now;
        tbTrayClasseserro_codigo.AsString := 'ERRO';
        tbTrayClasseserro_json.AsString := retornoPOST;
        tbTrayClasses.Post;

        qrProClasses.Edit;
        qrProClassesERRO_CODIGO.AsString := 'ERRO';
        qrProClassesERRO_JSON.AsString := retornoPOST;
        qrProClasses.Post;

      end;

    end;

    AvisoOFF;
  *)
end;

procedure TfrmTabelas.btnAlterarTudoCategoriasClick(Sender: TObject);
begin

  btnAtualizarCategorias.Click;

  qrProClasses.First;
  while not qrProClasses.Eof do
  begin
    if qrProClassesATUALIZAR.AsString = 'I' then
      btnIncluirCategoria.Click;
    if qrProClassesATUALIZAR.AsString = 'A' then
      btnAlterarCategoria.Click;
    qrProClasses.Next;
  end;

end;

procedure TfrmTabelas.btnAlterarClienteMPClick(Sender: TObject);
var
  JSONCliente: TJSONObject;
  JSONArrayTelefones: TJSONArray;
  JSONObjTelefone1, JSONObjTelefone2: TJSONObject;
  JSONArrayEmails: TJSONArray;
  JSONObjEmail1, JSONObjEmail2: TJSONObject;
  AStream: TMemoryStream;
  FStream: TStringStream;
  str, s, retornoPUT: string;
  strAux: TStringList;
  IDClienteMP: integer;
begin
  (*
    if qrClientesIDMP.AsInteger = 0 then
    begin

      if tbTrayClientes.Locate('idCliente', qrClientesID.AsInteger, []) then
      begin
        tbTrayClientes.Edit;
      end
      else
      begin
        tbTrayClientes.append;
        tbTrayClientesIDCliente.AsInteger := qrClientesID.AsInteger;
      end;

      tbTrayClienteserro_codigo.AsString := 'ERRO';
      tbTrayClienteserro_json.AsString := 'CLIENTE AINDA NÃO TEM ID NO MERCOS';
      tbTrayClientes.Post;

      qrClientes.Edit;
      qrClientesERRO_CODIGO.AsString := 'ERRO';
      qrClientesERRO_JSON.AsString := 'CLIENTE AINDA NÃO TEM ID NO MERCOS';
      qrClientes.Post;

      exit;

    end;

    AvisoAtt('Alterando cliente no Tray... ' + qrClientesRAZAO_SOCIAL.AsString);

    strAux := TStringList.Create;
    JSONCliente := TJSONObject.Create;

    AddPairString(JSONCliente, 'razao_social', qrClientesRAZAO_SOCIAL.AsString);
    AddPairString(JSONCliente, 'nome_fantasia', qrClientesNOME_FANTASIA.AsString);
    AddPairString(JSONCliente, 'tipo', qrClientesTIPO.AsString);
    AddPairString(JSONCliente, 'cnpj', qrClientesCNPJ.AsString);
    AddPairString(JSONCliente, 'inscricao_estadual', qrClientesINSCRICAO_ESTADUAL.AsString);
    AddPairString(JSONCliente, 'suframa', qrClientesSUFRAMA.AsString);
    AddPairString(JSONCliente, 'rua', qrClientesRUA.AsString);
    AddPairString(JSONCliente, 'numero', qrClientesNUMERO.AsString);
    AddPairString(JSONCliente, 'complemento', qrClientesCOMPLEMENTO.AsString);
    AddPairString(JSONCliente, 'cep', qrClientesCEP.AsString);
    AddPairString(JSONCliente, 'bairro', qrClientesBAIRRO.AsString);
    AddPairString(JSONCliente, 'cidade', qrClientesCIDADE.AsString);
    AddPairString(JSONCliente, 'estado', qrClientesESTADO.AsString);
    AddPairString(JSONCliente, 'observacao', qrClientesOBSERVACAO.AsString);
    AddPairString(JSONCliente, 'nome_excecao_fiscal', qrClientesNOME_EXCECAO_FISCAL.AsString);
    JSONcliente.AddPair('segmento_id', TJSONNull.Create);

    // telefone criar array
    JSONArrayTelefones := TJSONArray.Create;
    JSONObjTelefone1 := TJSONObject.Create;
    JSONObjTelefone2 := TJSONObject.Create;

    if qrClientesTELEFONE1.AsString <> '' then
    begin
      JSONObjTelefone1.AddPair('numero', qrClientesTELEFONE1.AsString);
      JSONArrayTelefones.AddElement(JSONObjTelefone1);
    end;

    if qrClientesTELEFONE2.AsString <> '' then
    begin
      JSONObjTelefone2.AddPair('numero', qrClientesTELEFONE2.AsString);
      JSONArrayTelefones.AddElement(JSONObjTelefone2);
    end;

    JSONCliente.AddPair('telefones', JSONArrayTelefones);

    // email criar array
    JSONArrayEmails := TJSONArray.Create;
    JSONObjEmail1 := TJSONObject.Create;
    JSONObjEmail2 := TJSONObject.Create;

    if qrClientesEMAIL1.AsString <> '' then
    begin
      JSONObjEmail1.AddPair('email', qrClientesEMAIL1.AsString);
      JSONArrayEmails.AddElement(JSONObjEmail1);
    end;

    JSONCliente.AddPair('emails', JSONArrayEmails);

    // enderecos adicionais criar array  (não usado por enquanto)

    FStream := TStringStream.Create(JSONCliente.ToString, TEncoding.UTF8);
    FStream.Position := 0;

    FStream.SaveToFile('cliente.json');

    AjustaEnvio;

    retornoPUT := ProcessaPUT(defHost + defURLCli + qrClientesIDMP.AsString, FStream);

    if retornoPUT = 'OK' then // deu certo...
    begin

      if tbTrayClientes.Locate('idCliente', qrClientesID.AsInteger, []) then
      begin

        tbTrayClientes.Edit;
        tbTrayClientesHash.AsString := CalculaHASH(qrClientesRAZAO_SOCIAL.AsString + qrClientesNOME_FANTASIA.AsString + qrClientesRUA.AsString + qrClientesCIDADE.AsString);
        tbTrayClienteserro_codigo.Clear;
        tbTrayClienteserro_json.Clear;
        tbTrayClientes.Post;

        qrClientes.Edit;
        //      qrClientesATUALIZAR.AsString := 'OK';
        qrClientesERRO_CODIGO.Clear;
        qrClientes.Post;

      end;

    end
    else
    begin

      if tbTrayClientes.Locate('idCliente', qrClientesID.AsInteger, []) then
      begin
        tbTrayClientes.Edit;
        tbTrayClienteserro_codigo.AsString := 'ERRO';
        tbTrayClienteserro_json.AsString := retornoPUT;
        tbTrayClientes.Post;

        qrClientes.Edit;
        qrClientesERRO_CODIGO.AsString := 'ERRO';
        qrClientesERRO_JSON.AsString := retornoPUT;
        qrClientes.Post;

      end;

    end;

    AvisoOFF;
  *)
end;

end.

