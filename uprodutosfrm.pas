unit uprodutosfrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.Json, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, RzEdit, RzButton,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, dbisamtb, vcl.imaging.jpeg, RzPanel,
  Vcl.Buttons;

type
  Tprodutosfrm = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    tray_token_enviar: TEdit;
    tray_refresh_enviar: TEdit;
    JSONtray_marcas_enviar: TRzMemo;
    Panel2: TPanel;
    DBGrid3: TDBGrid;
    qrBMprodutos: TDBISAMQuery;
    qrBMintaux: TDBISAMQuery;
    qrBMintauxID_Int: TStringField;
    qrBMintauxID_BM: TIntegerField;
    qrBMintauxTipo: TStringField;
    qrBMintauxHASH: TStringField;
    dtBMprodutos: TDataSource;
    dtBMintaux: TDataSource;
    tbTrayProdutos: TDBISAMTable;
    tbBMintaux: TDBISAMTable;
    serverTray: TIdHTTP;
    Panel6: TPanel;
    DBGrid4: TDBGrid;
    tbTrayFotos: TDBISAMTable;
    tbTrayFotosID: TAutoIncField;
    tbTrayFotosID_Produto: TIntegerField;
    tbTrayFotosFoto: TGraphicField;
    RzPanel15: TRzPanel;
    btsprodutos: TButton;
    Panel5: TPanel;
    btnenviartodos: TButton;
    Button2: TButton;
    Panel7: TPanel;
    btnenviarum: TButton;
    Panel4: TPanel;
    tbBMauxerros: TDBISAMTable;
    tbBMauxerrosid: TAutoIncField;
    tbBMauxerrosid_tabela: TIntegerField;
    tbBMauxerrostipo: TStringField;
    tbBMauxerrosdescricao: TStringField;
    tbBMauxerrosdatahora_registro: TDateTimeField;
    tbBMauxerrostipo_metodo: TStringField;
    tbBMprodutos: TDBISAMTable;
    tbBMreferencia: TDBISAMTable;
    tbBMrefempresa: TDBISAMTable;
    tbBMclasse: TDBISAMTable;
    tbBMemp: TDBISAMTable;
    tbBMprodutosID: TAutoIncField;
    tbBMprodutosDescricao: TStringField;
    tbBMprodutosClasse: TStringField;
    tbBMprodutosMarca: TStringField;
    tbBMprodutosTipo: TStringField;
    tbBMprodutosOrigem: TStringField;
    tbBMprodutosFonte: TStringField;
    tbBMprodutosID_Trib: TIntegerField;
    tbBMprodutosPrecoVenda1: TFloatField;
    tbBMprodutosPrecoVenda2: TFloatField;
    tbBMprodutosPrecoVenda3: TFloatField;
    tbBMprodutosPrecoVenda4: TFloatField;
    tbBMprodutosPrecoVenda5: TFloatField;
    tbBMprodutosPrecoVenda6: TFloatField;
    tbBMprodutosRelacao1_2: TFloatField;
    tbBMprodutosRelacao1_3: TFloatField;
    tbBMprodutosRelacao1_4: TFloatField;
    tbBMprodutosRelacao1_5: TFloatField;
    tbBMprodutosRelacao1_6: TFloatField;
    tbBMprodutosPreco_Minimo: TFloatField;
    tbBMprodutosPreco_Promocao: TFloatField;
    tbBMprodutosPromocao_Data_Ini: TDateField;
    tbBMprodutosPromocao_Data_Fim: TDateField;
    tbBMprodutosPromocao_Hora_Ini: TStringField;
    tbBMprodutosPromocao_Hora_Fim: TStringField;
    tbBMprodutosPromocao_Semana: TStringField;
    tbBMprodutosUNCompra: TStringField;
    tbBMprodutosConv_Operador: TStringField;
    tbBMprodutosUNConversao: TFloatField;
    tbBMprodutosUNVenda: TStringField;
    tbBMprodutosID_Embalagem: TIntegerField;
    tbBMprodutosVolume_Qtd: TIntegerField;
    tbBMprodutosVolume_Unit: TIntegerField;
    tbBMprodutosID_Volume: TIntegerField;
    tbBMprodutosVolume_Cubagem: TFloatField;
    tbBMprodutosMultiplo_Venda: TFloatField;
    tbBMprodutosPeso_Liquido: TFloatField;
    tbBMprodutosPeso_Bruto: TFloatField;
    tbBMprodutosComissao: TStringField;
    tbBMprodutosLucro_Venda_P1: TFloatField;
    tbBMprodutosLucro_Venda_P2: TFloatField;
    tbBMprodutosLucro_Venda_P3: TFloatField;
    tbBMprodutosLucro_Venda_P4: TFloatField;
    tbBMprodutosLucro_Venda_P5: TFloatField;
    tbBMprodutosLucro_Venda_P6: TFloatField;
    tbBMprodutosISS: TFloatField;
    tbBMprodutosNFSe_TribEsp: TStringField;
    tbBMprodutosIRRF: TFloatField;
    tbBMprodutosINSS: TFloatField;
    tbBMprodutosINSS_Base: TFloatField;
    tbBMprodutosAplicacao: TStringField;
    tbBMprodutosTexto: TMemoField;
    tbBMprodutosLembrete: TMemoField;
    tbBMprodutosSintegra_NCM: TStringField;
    tbBMprodutosNCM_Sub: TStringField;
    tbBMprodutosCodigo_NBS: TStringField;
    tbBMprodutosECF_Busca: TStringField;
    tbBMprodutosID_PISCOF: TIntegerField;
    tbBMprodutosEstoque_Local: TStringField;
    tbBMprodutosEstoque_PercMaxVenda: TFloatField;
    tbBMprodutosBalanca: TStringField;
    tbBMprodutosReceita: TStringField;
    tbBMprodutosAtivo: TStringField;
    tbBMprodutosData_Cad: TDateField;
    tbBMprodutosID_Emp_Cad: TIntegerField;
    tbBMprodutosID_User_Cad: TIntegerField;
    tbBMprodutosData_Alt: TDateField;
    tbBMprodutosID_Emp_Alt: TIntegerField;
    tbBMprodutosID_User_Alt: TIntegerField;
    tbBMprodutosCod_Integracao: TStringField;
    tbBMprodutosID_Integracao: TIntegerField;
    tbBMprodutosPAF_IAT: TStringField;
    tbBMprodutosPAF_IPPT: TStringField;
    tbBMprodutosCod_Genero: TStringField;
    tbBMprodutosCod_Servico: TStringField;
    tbBMprodutosCNAE: TStringField;
    tbBMprodutosANP: TStringField;
    tbBMprodutospGLP: TFloatField;
    tbBMprodutospGNn: TFloatField;
    tbBMprodutospGNi: TFloatField;
    tbBMprodutosvPart: TFloatField;
    tbBMprodutosSeries_Aceitas: TStringField;
    tbBMprodutosControle_Lote: TStringField;
    tbBMprodutosID_Justif: TIntegerField;
    tbBMprodutosID_Conta: TIntegerField;
    tbBMprodutosUltima_Compra: TDateField;
    tbBMprodutosID_For_Ultima_Compra: TIntegerField;
    tbBMprodutosExportaPalm: TStringField;
    tbBMprodutosExportaIntegrador: TStringField;
    tbBMprodutosUn_Alternativa: TStringField;
    tbBMprodutosID_UnRelat: TIntegerField;
    tbBMprodutosun_menor_qtd: TFloatField;
    tbBMprodutosID_Sim: TIntegerField;
    tbBMprodutosValidade: TIntegerField;
    tbBMprodutosArquivo_Foto: TStringField;
    tbBMprodutosNovo_Preco: TFloatField;
    tbBMprodutosCusto_Reposicao: TFloatField;
    tbBMprodutosVeiculo_Novo: TStringField;
    tbBMprodutosOP_Dimensoes: TIntegerField;
    tbBMprodutosOP_Conversao: TFloatField;
    tbBMprodutosOP_Unidade: TStringField;
    tbBMprodutosOP_EPI: TStringField;
    tbBMprodutosOP_EPI_Tipo: TStringField;
    tbBMprodutosOP_EPI_CA: TStringField;
    tbBMprodutosTax_Fed: TFloatField;
    tbBMprodutosTax_Est: TFloatField;
    tbBMprodutosTax_Mun: TFloatField;
    tbBMprodutosNVE: TStringField;
    tbBMprodutosFicha_FCI: TMemoField;
    tbBMprodutosHASH: TStringField;
    tbBMreferenciaID: TAutoIncField;
    tbBMreferenciaID_Produto: TIntegerField;
    tbBMreferenciaReferencia: TStringField;
    tbBMreferenciaEAN: TStringField;
    tbBMreferenciaDescricao: TStringField;
    tbBMreferenciaCod_Fornec: TStringField;
    tbBMreferenciaCod_Fornec_Ex: TStringField;
    tbBMreferenciaqtdeti: TIntegerField;
    tbBMreferenciaAtivo: TStringField;
    tbBMreferenciaHASH: TStringField;
    tbBMrefempresaID: TAutoIncField;
    tbBMrefempresaID_Empresa: TIntegerField;
    tbBMrefempresaID_Ref: TIntegerField;
    tbBMrefempresaEstoque: TFloatField;
    tbBMrefempresaEstoque_PosseTer: TFloatField;
    tbBMrefempresaEstoque_PropTer: TFloatField;
    tbBMrefempresaData_Estoque: TDateField;
    tbBMrefempresaResv_DAV: TFloatField;
    tbBMrefempresaResv_OS: TFloatField;
    tbBMrefempresaResv_PV: TFloatField;
    tbBMrefempresaResv_EF: TFloatField;
    tbBMrefempresaEstoque_Minimo: TFloatField;
    tbBMrefempresaEstoque_Maximo: TFloatField;
    tbBMrefempresaHASH: TStringField;
    tbBMclasseID: TAutoIncField;
    tbBMclasseNivel: TStringField;
    tbBMclasseClasse: TStringField;
    tbBMclasseDescricao: TStringField;
    tbBMclasseCultura: TStringField;
    tbBMclasseDias_Giro: TIntegerField;
    tbBMclasseComissao: TStringField;
    tbBMclassePRural: TBooleanField;
    tbBMclassePrecoTabelado: TBooleanField;
    tbBMclasseEstoque_Local: TStringField;
    tbBMclasseAtivo: TBooleanField;
    tbBMempID: TAutoIncField;
    tbBMempID_Empresa: TIntegerField;
    tbBMempID_Produto: TIntegerField;
    tbBMempPrecoCusto: TFloatField;
    tbBMempCustoReal: TFloatField;
    tbBMempCustoTotal: TFloatField;
    tbBMempCustoMedio_Real: TFloatField;
    tbBMempCustoMedio_Total: TFloatField;
    tbBMemppIPI_Compra: TFloatField;
    tbBMemppFrete_Compra: TFloatField;
    tbBMemppSeguro_Compra: TFloatField;
    tbBMemppDespesas_Compra: TFloatField;
    tbBMemppDescontos_Compra: TFloatField;
    tbBMempSTBase_Compra: TFloatField;
    tbBMempSTValor_Compra: TFloatField;
    tbBMempSTPorc_Compra: TFloatField;
    tbBMempICMSBase_Compra: TFloatField;
    tbBMempICMSAliq_Compra: TFloatField;
    tbBMemppPIS_Compra: TFloatField;
    tbBMemppCOFINS_Compra: TFloatField;
    tbBMemppPIS_Venda: TFloatField;
    tbBMemppCOFINS_Venda: TFloatField;
    tbBMempop_CustoProcessos: TFloatField;
    tbBMempop_SomaPrecoVenda1: TFloatField;
    tbBMempICMSBase_Venda: TFloatField;
    tbBMempICMSBase_Venda2: TFloatField;
    tbBMempICMSBase_Venda3: TFloatField;
    tbBMempICMSBase_Venda4: TFloatField;
    tbBMempICMSBase_Venda5: TFloatField;
    tbBMempICMSBase_Venda6: TFloatField;
    tbBMempICMSAliq_Venda: TFloatField;
    tbBMempICMSAliq_Venda2: TFloatField;
    tbBMempICMSAliq_Venda3: TFloatField;
    tbBMempICMSAliq_Venda4: TFloatField;
    tbBMempICMSAliq_Venda5: TFloatField;
    tbBMempICMSAliq_Venda6: TFloatField;
    tbBMemppDespesas_Venda: TFloatField;
    tbBMemppDespesas_Venda2: TFloatField;
    tbBMemppDespesas_Venda3: TFloatField;
    tbBMemppDespesas_Venda4: TFloatField;
    tbBMemppDespesas_Venda5: TFloatField;
    tbBMemppDespesas_Venda6: TFloatField;
    tbBMemppComissao_Venda: TFloatField;
    tbBMemppComissao_Venda2: TFloatField;
    tbBMemppComissao_Venda3: TFloatField;
    tbBMemppComissao_Venda4: TFloatField;
    tbBMemppComissao_Venda5: TFloatField;
    tbBMemppComissao_Venda6: TFloatField;
    Button1: TButton;
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
    qrBMmontaraux: TDBISAMQuery;
    AutoIncField1: TAutoIncField;
    FloatField1: TFloatField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    DateField1: TDateField;
    DateField2: TDateField;
    FloatField4: TFloatField;
    StringField4: TStringField;
    DateField3: TDateField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    AutoIncField2: TAutoIncField;
    StringField7: TStringField;
    FloatField7: TFloatField;
    IntegerField1: TIntegerField;
    lblpage: TLabel;
    dtTrayprodutos: TDataSource;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    dtBMreferencia: TDataSource;
    qrBMProduto: TDBISAMQuery;
    qrBMProdutoID: TAutoIncField;
    qrBMProdutoDESCRICAO: TStringField;
    qrBMProdutoPRECOVENDA1: TFloatField;
    QDelProdutos: TDBISAMQuery;
    TbPersonal: TDBISAMTable;
    SpeedButton1: TSpeedButton;
    qrBMProdutoPRECOVENDA2: TFloatField;
    TbPersonalID: TAutoIncField;
    TbPersonalID_Produto: TIntegerField;
    QrPersonal: TDBISAMQuery;
    qrBMprodutosID: TAutoIncField;
    qrBMprodutosPESO_BRUTO: TFloatField;
    qrBMprodutosMARCA: TStringField;
    qrBMprodutosSINTEGRA_NCM: TStringField;
    qrBMprodutosDESCRICAO: TStringField;
    qrBMprodutosPRECOVENDA1: TFloatField;
    qrBMprodutosPRECOVENDA2: TFloatField;
    qrBMprodutosPRECOVENDA4: TFloatField;
    qrBMprodutosPRECO_PROMOCAO: TFloatField;
    qrBMprodutosPROMOCAO_DATA_INI: TDateField;
    qrBMprodutosPROMOCAO_DATA_FIM: TDateField;
    qrBMprodutosVOLUME_CUBAGEM: TFloatField;
    qrBMprodutosATIVO: TStringField;
    qrBMprodutosDATA_CAD: TDateField;
    qrBMprodutosEXPORTAPALM: TStringField;
    qrBMprodutosEXPORTAINTEGRADOR: TStringField;
    qrBMprodutosCOMPRIMENTO: TFloatField;
    qrBMprodutosLARGURA: TFloatField;
    qrBMprodutosALTURA: TFloatField;
    qrBMprodutosTEXTO: TMemoField;
    qrBMprodutosID_PRODUTOSREFERENCIA: TAutoIncField;
    qrBMprodutosEAN: TStringField;
    qrBMprodutosREFERENCIA: TStringField;
    qrBMprodutosID_REF: TIntegerField;
    qrBMprodutosESTOQUE: TFloatField;
    qrBMprodutosESTOQUE_MINIMO: TFloatField;
    qrBMprodutosID_CLASSE: TAutoIncField;
    qrBMprodutosID_INT: TStringField;
    qrBMprodutosID_PRODUTO: TIntegerField;
    qrBMprodutosPRECOCUSTO: TFloatField;
    qrBMprodutosCUSTOMEDIO_TOTAL: TFloatField;
    qrBMprodutosID_EMPRESA: TIntegerField;
    tbTrayProdutostitulo: TStringField;
    tbTrayProdutosdescricaosimplificada: TStringField;
    tbTrayProdutospalavrachave: TStringField;
    Button3: TButton;
    TbPersonalModelo: TStringField;
    TbPersonalReferencia: TStringField;
    TbPersonalDisponibilidade: TStringField;
    TbPersonalGarantia: TStringField;
    TbPersonalLancamento: TStringField;
    TbPersonalDestaque: TStringField;
    TbPersonalPromocao: TStringField;
    TbPersonalTituloPagina: TStringField;
    TbPersonalDescricaoSimplificada: TStringField;
    TbPersonalPalavraChave: TStringField;
    TbPersonalItensInclusos: TStringField;
    tbBMprodutosComprimento: TFloatField;
    tbBMprodutosLargura: TFloatField;
    tbBMprodutosAltura: TFloatField;
    qrBMprodutosDESCRICAO_VAR: TStringField;
    QrProdVar: TDBISAMQuery;
    QrProdVarID_Int: TStringField;
    QrProdVarID_BM: TIntegerField;
    QrProdVarTipo: TStringField;
    QrProdVarHASH: TStringField;
    QrProdVarObservacoes: TStringField;
    QrProdVarBusca: TDBISAMQuery;
    QrProdVarBuscaID_Int: TStringField;
    QrProdVarBuscaID_BM: TIntegerField;
    QrProdVarBuscaTipo: TStringField;
    QrProdVarBuscaHASH: TStringField;
    QrProdVarBuscaObservacoes: TStringField;
    tbBMintauxID_Int: TStringField;
    tbBMintauxID_BM: TIntegerField;
    tbBMintauxTipo: TStringField;
    tbBMintauxHASH: TStringField;
    tbBMintauxObservacoes: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btsprodutosClick(Sender: TObject);
    procedure btnenviartodosClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    function getfotosprodutos(IDprod: Integer; VariacaoFotos: Boolean = False): string;
    procedure btnenviarumClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Panel4DblClick(Sender: TObject);
  private
    function analisaexistenciadate(o: TJsonObject; s: string): TDateTime;
    function analisaexistenciafloat(o: TJsonObject; s: string): double;
    function analisaexistenciainteger(o: TJsonObject; s: string): Integer;
    function analisaexistenciastr(o: TJsonObject; s: string): string;
    function datatopadrao(s: string): string;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  produtosfrm: Tprodutosfrm;
  Variacao, HashFotos: Boolean;
  Order: integer;
  Id_Int: string;

implementation

{$R *.dfm}

uses ufrmRequest, uDD, Super, MD5, math, ufrmAviso, uMain, ufuncoesGerais;

//Função utilizada para alterar datas que venham em branco ou com formato incorreto

function Tprodutosfrm.datatopadrao(s: string): string;
var
  dia: string;
  mes: string;
  ano: string;
  datacompleta: string;

begin
  s := copy(s, 1, 10);
  if (s = '0000-00-00') or (s = '') then
    s := '1980-01-01';

  dia := copy(s, 9, 2);
  mes := copy(s, 6, 2);
  ano := copy(s, 1, 4);
  datacompleta := dia + '/' + mes + '/' + ano;

  result := datacompleta;

end;

//Função para analisar tipos String se estão no formato de envio correto

function Tprodutosfrm.analisaexistenciastr(o: TJsonObject; s: string): string;
begin
  if o.GetValue(s) <> nil then
    result := o.Get(s).JsonValue.Value
  else
    result := '';
end;

//Função para analisar tipos Date se estão no formato de envio correto

function Tprodutosfrm.analisaexistenciadate(o: TJsonObject; s: string): TDateTime;
begin

  if (o.GetValue(s) <> nil) then
    result := StrToDateTime(datatopadrao(o.Get(s).JsonValue.Value))
  else
    result := StrToDateTime(datatopadrao('1900-01-01'));

end;

//Função para analisar tipos Integer se estão no formato de envio correto

function Tprodutosfrm.analisaexistenciainteger(o: TJsonObject; s: string): Integer;
begin
  if o.GetValue(s) <> nil then
    result := StrToInt('0' + o.Get(s).JsonValue.Value)
  else
    result := 0;
end;

//Função para analisar tipos Float se estão no formato de envio correto

function Tprodutosfrm.analisaexistenciafloat(o: TJsonObject; s: string): double;
begin
  if o.GetValue(s) <> nil then
    result := StrToFloat(StringReplace(o.Get(s).JsonValue.Value, '.', ',', [rfReplaceAll]))
  else
    result := 0;
end;

//Procedure responsável por abrir as tabelas que serão utilizadas no FORM

procedure Tprodutosfrm.btsprodutosClick(Sender: TObject);
begin
  try

    tbBMprodutos.Open;
    tbBMreferencia.Open;
    tbBMrefempresa.Open;
    tbBMclasse.Open;
    tbBMemp.Open;
    tbBMprodutos.Close;
    tbBMreferencia.Close;
    tbBMrefempresa.Close;
    tbBMclasse.Close;
    tbBMemp.Close;
  except

    AvisoAtt('Não foi possível abrir as tabelas, favor fechar o sistema BM e reparar tabelas.', -5, -1);
    frmMain.T.FecharTudo;
    abort;
  end;

  try
    tbBMintaux.Close;
    tbBMintaux.Exclusive := false;
    tbBMintaux.Open;

    qrBMintaux.Close;
    qrBMintaux.Open;
    qrBMprodutos.Close;
    qrBMprodutos.Open;

  except
    AvisoAtt('Não foi possível abrir as tabelas, favor fechar o sistema BM e reparar tabelas.', -5, -1);
    frmMain.T.FecharTudo;
    abort;
  end;

end;

//procedure responsável por fazer o POST e PUT das categorias no tray

procedure Tprodutosfrm.btnenviarumClick(Sender: TObject);
var
  ObjProdutos, ObjProdutosProduct, ObjMetatagTitle, ObjMetatagDesc, ObjMetatagKey, ObjResult, ObjBranco, Objproduct, Objcauses, ObjSkuCor, ObjSkuTamanho: TJSONObject;
  jArrayMetatag, jArrayRelated, jArrayslug, jArraySku: TJsonArray;
  FStream: TStringStream;
  OValue: TJsonValue;
  I, N: integer;
  ids_fotos, hash: string;

begin
  //Todo:Envio produto
  try
    tbBMintaux.Close;
    tbBMintaux.Exclusive := false;
    tbBMintaux.Open;
    qrBMintaux.Open;

    tbBMintaux.Open;
    qrBMintaux.Open;
    tbBMauxerros.Close;
    tbBMauxerros.Open;

    QrPersonal.Close;
    QrPersonal.Open;

  except
    AvisoAtt('Não foi possível abrir as tabelas, favor fechar o sistema BM e reparar tabelas.', -5, -1);
    frmMain.T.FecharTudo;
    abort;
  end;

  HashFotos := False;
  if defusaenviofotos = 'sim' then
  begin
    ids_fotos := getfotosprodutos(qrBMprodutosID.AsInteger);
  end;
  HashFotos := True;

  if (Trunc(1000 * qrBMprodutosPESO_BRUTO.AsFloat) <= 0) or (qrBMprodutosCOMPRIMENTO.AsFloat <= 0) or (qrBMprodutosLARGURA.AsFloat <= 0) or (qrBMprodutosALTURA.AsFloat <= 0) then
  begin
    def_erro := true;
    if (Trunc(1000 * qrBMprodutosPESO_BRUTO.AsFloat) <= 0) then
    begin
      tbBMauxerros.Append;
      tbBMauxerrosid_tabela.AsInteger := qrBMprodutosID.AsInteger;
      tbBMauxerrosdescricao.AsString := 'O produto de id: ' + qrBMprodutosID.AsString + ' possui PESO BRUTO menor ou igual a 0';
      tbBMauxerrostipo.AsString := 'PRD';
      tbBMauxerrostipo_metodo.AsString := 'POST';
      tbBMauxerrosdatahora_registro.AsDateTime := now;
      tbBMauxerros.post;
    end;
    if (qrBMprodutosCOMPRIMENTO.AsFloat <= 0) then
    begin
      tbBMauxerros.Append;
      tbBMauxerrosid_tabela.AsInteger := qrBMprodutosID.AsInteger;
      tbBMauxerrosdescricao.AsString := 'O produto de id: ' + qrBMprodutosID.AsString + ' possui COMPRIMENTO menor ou igual a 0';
      tbBMauxerrostipo.AsString := 'PRD';
      tbBMauxerrostipo_metodo.AsString := 'POST';
      tbBMauxerrosdatahora_registro.AsDateTime := now;
      tbBMauxerros.post;
    end;
    if (qrBMprodutosLARGURA.AsFloat <= 0) then
    begin
      tbBMauxerros.Append;
      tbBMauxerrosid_tabela.AsInteger := qrBMprodutosID.AsInteger;
      tbBMauxerrosdescricao.AsString := 'O produto de id: ' + qrBMprodutosID.AsString + ' possui LARGURA menor ou igual a 0';
      tbBMauxerrostipo.AsString := 'PRD';
      tbBMauxerrostipo_metodo.AsString := 'POST';
      tbBMauxerrosdatahora_registro.AsDateTime := now;
      tbBMauxerros.post;
    end;
    if (qrBMprodutosALTURA.AsFloat <= 0) then
    begin
      tbBMauxerros.Append;
      tbBMauxerrosid_tabela.AsInteger := qrBMprodutosID.AsInteger;
      tbBMauxerrosdescricao.AsString := 'O produto de id: ' + qrBMprodutosID.AsString + ' possui ALTURA menor ou igual a 0';
      tbBMauxerrostipo.AsString := 'PRD';
      tbBMauxerrostipo_metodo.AsString := 'POST';
      tbBMauxerrosdatahora_registro.AsDateTime := now;
      tbBMauxerros.post;
    end;

    exit;
  end
  else
  begin
    if Variacao = False then
    begin
      if qrBMintaux.Locate('ID_BM;Tipo', vararrayof([qrBMprodutosID.AsInteger, 'PRD']), []) then
      begin
        QrPersonal.Locate('id_produto', qrBMprodutosID.AsInteger, []);

        if (defusaPersonal = 'sim') and (defurl = 'https://www.hgdiesel.com.br/web_api') then
        begin
          hash := MD5String(qrBMprodutosDESCRICAO.AsString + qrBMprodutosPRECOVENDA1.AsString + qrBMprodutosPRECOVENDA2.AsString +
            qrBMprodutosPRECO_PROMOCAO.AsString + qrBMprodutosPROMOCAO_DATA_INI.AsString + qrBMprodutosPROMOCAO_DATA_FIM.AsString +
            qrBMprodutosMARCA.AsString + qrBMprodutosESTOQUE.AsString + qrBMprodutosATIVO.AsString + qrBMprodutosREFERENCIA.AsString +
            ids_fotos + qrBMprodutosPESO_BRUTO.AsString + qrBMprodutosCOMPRIMENTO.AsString + qrBMprodutosLARGURA.AsString +
            qrBMprodutosALTURA.AsString + qrBMprodutosTEXTO.AsString + QrPersonal.FieldByName('Modelo').AsString +
            QrPersonal.FieldByName('Garantia').AsString + QrPersonal.FieldByName('TituloPagina').AsString +
            QrPersonal.FieldByName('DescricaoSimplificada').AsString + QrPersonal.FieldByName('PalavraChave').AsString);
        end
        else
        begin
          hash := MD5String(qrBMprodutosDESCRICAO.AsString + qrBMprodutosPRECOVENDA1.AsString + qrBMprodutosPRECOVENDA4.AsString +
            qrBMprodutosPRECO_PROMOCAO.AsString + qrBMprodutosPROMOCAO_DATA_INI.AsString + qrBMprodutosPROMOCAO_DATA_FIM.AsString +
            qrBMprodutosMARCA.AsString + qrBMprodutosESTOQUE.AsString + qrBMprodutosATIVO.AsString + qrBMprodutosREFERENCIA.AsString +
            ids_fotos + qrBMprodutosPESO_BRUTO.AsString + qrBMprodutosCOMPRIMENTO.AsString + qrBMprodutosLARGURA.AsString +
            qrBMprodutosALTURA.AsString + qrBMprodutosTEXTO.AsString);
        end;

        if hash <> (qrBMintauxHASH.AsString) then
        begin
          QrPersonal.Locate('id_produto', qrBMprodutosID.AsInteger, []);
          ObjProdutos := TJSONObject.Create;
          ObjProdutosProduct := TJSONObject.Create;
          ObjMetatagTitle := TJSONObject.Create;
          ObjMetatagDesc := TJSONObject.Create;
          ObjMetatagKey := TJSONObject.Create;
          ObjBranco := TJSONObject.Create;
          jArrayMetatag := TJSONArray.Create;
          jArrayRelated := TJSONArray.Create;
          AddPairString(ObjProdutos, 'ean', qrBMprodutosEAN.AsString);

          if (defusaPersonal = 'sim') and (defusaDescricaoWeb = 'sim') then
          begin
            AddPairString(ObjProdutos, 'name', QrPersonal.FieldByName('DescricaoWeb').AsString);
            //TbPersonal.FieldByName('DescricaoWeb').AsString);
          end
          else
          begin
            AddPairString(ObjProdutos, 'name', qrBMprodutosDESCRICAO.AsString);
          end;

          AddPairString(ObjProdutos, 'ncm', qrBMprodutosSINTEGRA_NCM.AsString);
          AddPairString(ObjProdutos, 'description', (StringReplace(qrBMprodutosTEXTO.AsString, #13#10, '<br>', [rfReplaceAll])));
          AddPairString(ObjProdutos, 'description small', qrBMprodutosDESCRICAO.AsString);

          if defusaPersonal = 'sim' then
          begin
            if defusaVenda4 = 'sim' then
            begin
              AddPairFloat(ObjProdutos, 'price', qrBMprodutosPRECOVENDA4.AsFloat);
            end
            else
            begin
              AddPairFloat(ObjProdutos, 'price', qrBMprodutosPRECOVENDA2.AsFloat);
            end;
          end
          else
          begin
            AddPairFloat(ObjProdutos, 'price', qrBMprodutosPRECOVENDA1.AsFloat);
          end;

          AddPairFloat(ObjProdutos, 'cost_price', qrBMprodutosPRECOCUSTO.AsFloat);
          AddPairFloat(ObjProdutos, 'promotional_price', qrBMprodutosPRECO_PROMOCAO.AsFloat);
          AddPairString(ObjProdutos, 'start_promotion', qrBMprodutosPROMOCAO_DATA_INI.AsString);
          AddPairString(ObjProdutos, 'end_promotion', qrBMprodutosPROMOCAO_DATA_FIM.AsString);
          AddPairString(ObjProdutos, 'ipi_value', '');
          AddPairString(ObjProdutos, 'brand', qrBMprodutosMARCA.AsString);
          //rever depois para a HGDiesel pq só ela usa

          if (defusaPersonal = 'sim') and (defusaModelo = 'sim') then
          begin
            AddPairString(ObjProdutos, 'model', (QrPersonal.FieldByName('Modelo').AsString + '<br>' + 'Código: ' + QrPersonal.FieldByName('Referencia').AsString));
          end
          else
          begin
            AddPairString(ObjProdutos, 'model', '');
          end;

          AddPairFloat(ObjProdutos, 'weight', Trunc(1000 * qrBMprodutosPESO_BRUTO.AsFloat));
          AddPairFloat(ObjProdutos, 'length', qrBMprodutosCOMPRIMENTO.AsFloat);
          AddPairFloat(ObjProdutos, 'width', qrBMprodutosLARGURA.AsFloat);
          AddPairFloat(ObjProdutos, 'height', qrBMprodutosALTURA.AsFloat);
          AddPairInt(ObjProdutos, 'stock', qrBMprodutosESTOQUE.AsInteger);
          AddPairString(ObjProdutos, 'category_id', qrBMprodutosID_INT.AsString);
          if qrBMprodutosATIVO.AsString = 'S' then
          begin
            AddPairString(ObjProdutos, 'available', '1');
          end
          else
          begin
            AddPairString(ObjProdutos, 'available', '0');
          end;
          //passar aqui garantia
          if (defusaPersonal = 'sim') and (defusaDisponibilidade = 'sim') then
          begin
            AddPairString(ObjProdutos, 'availability', QrPersonal.FieldByName('Disponibilidade').AsString);
            AddPairString(ObjProdutos, 'availability_days', '');
          end
          else
          begin
            AddPairString(ObjProdutos, 'availability', '');
            AddPairString(ObjProdutos, 'availability_days', '');
          end;

          // passar dias de disponiblidade aqui
          if (defusaPersonal = 'sim') and (defusaGarantia = 'sim') then
          begin
            AddPairString(ObjProdutos, 'warranty', QrPersonal.FieldByName('Garantia').AsString);
          end
          else
          begin
            AddPairString(ObjProdutos, 'warranty', '');
          end;

          AddPairString(ObjProdutos, 'reference', qrBMprodutosREFERENCIA.AsString);
          //rever depois para a HGDiesel pq só ela usa

          if (defusaPersonal = 'sim') and (defusaDestaque = 'sim') then
          begin

            if QrPersonal.FieldByName('Destaque').AsString = 'S' then
            begin
              AddPairString(ObjProdutos, 'hot', '1');
            end
            else
            begin
              AddPairString(ObjProdutos, 'hot', '0');
            end;
          end;

          if (defusaPersonal = 'sim') and (defusaLancamento = 'sim') then
          begin
            if QrPersonal.FieldByName('Lancamento').AsString = 'S' then
            begin
              AddPairString(ObjProdutos, 'release', '1');
            end
            else
            begin
              AddPairString(ObjProdutos, 'release', '0');
            end;
          end;

          ObjProdutos.AddPair('related_categories', jArrayRelated);
          AddPairString(ObjProdutos, 'release_date', datetosql(qrBMprodutosDATA_CAD.AsDateTime));

          if defusaenviofotos = 'sim' then
          begin
            ids_fotos := getfotosprodutos(qrBMprodutosID.AsInteger, Variacao);
          end;

          if (defusaPersonal = 'sim') and (defusaSEO = 'sim') then
          begin
            AddPairString(ObjMetatagTitle, 'type', 'title');
            AddPairString(ObjMetatagTitle, 'content', QrPersonal.FieldByName('TituloPagina').AsString);
            AddPairString(ObjMetatagDesc, 'type', 'description');
            AddPairString(ObjMetatagDesc, 'content', QrPersonal.FieldByName('DescricaoSimplificada').AsString);
            AddPairString(ObjMetatagKey, 'type', 'keywords');
            AddPairString(ObjMetatagKey, 'content', QrPersonal.FieldByName('PalavraChave').AsString);
            //showmessage(ObjMetatag.ToString);

            jArrayMetatag.Add(ObjMetatagDesc);
            jArrayMetatag.Add(ObjMetatagKey);
            jArrayMetatag.Add(ObjMetatagTitle);

          end
          else
          begin
            AddPairString(ObjMetatagTitle, 'type', qrBMprodutosEAN.AsString);
            AddPairString(ObjMetatagTitle, 'content', '');
            AddPairString(ObjMetatagTitle, 'local', '');
          end;

          ObjProdutos.AddPair('metatag', jArrayMetatag);
          AddPairString(ObjProdutos, 'virtual_product', '');

          if (defusaPersonal = 'sim') and (defurl = 'https://www.hgdiesel.com.br/web_api') then
          begin
            AddPairString(ObjProdutos, 'included_items', QrPersonal.FieldByName('ItensInclusos').AsString);
          end;

          ObjProdutosProduct.AddPair('Product', ObjProdutos);
          //StringToFile(ObjProdutosProduct.ToString, 'D:\bmsoft\BM2Tray\extras\ALTERPROD.json');

           //Todo:PUT

           //showmessage(qrBMintauxID_Int.AsString);
//          frmRequest.RESTClientProdutosPut.BaseURL := defurl + defprodutos + '/' +
//            qrBMintauxID_Int.AsString + '/?access_token=' + def_access_token;
//          //
//          frmRequest.RESTRequestProdutosPut.Body.ClearBody;
//          frmRequest.RESTRequestProdutosPut.AddBody(ObjProdutosProduct);
//          frmRequest.RESTRequestProdutosPut.Execute;
//          OValue := TJSONObject.ParseJSONValue(frmRequest.RESTResponseProdutosPut.Content.ToLower);
          //ShowMessage(frmRequest.RESTResponseProdutosPut.Content);
          ObjResult := OValue as TJsonObject;
          //showmessage(ObjProdutosProduct.ToString);

          if ObjResult.Get('code').JsonValue.Value.ToInteger <> 200 then
          begin
            Objcauses := ObjResult.Get('causes').JsonValue as TJSONObject;
            Objproduct := Objcauses.Get('product').JsonValue as TJSONObject;
            jArraySlug := Objproduct.Get('name').JsonValue as TJSONArray;
            //AvisoAtt('Não foi possível alterar as informações do produto.', -3, -1);
            //Logar(jArraySlug.ToString);
            tbBMauxerros.Append;
            tbBMauxerrosid_tabela.AsInteger := qrBMprodutosID.AsInteger;
            //tbBMauxerrosdescricao.AsString := frmMain.traduzir(jArraySlug.ToString);
            tbBMauxerrostipo.AsString := 'PRD';
            tbBMauxerrostipo_metodo.AsString := 'PUT';
            tbBMauxerrosdatahora_registro.AsDateTime := now;
            tbBMauxerros.post;
            exit;
          end;

          tbBMintaux.Locate('ID_Int', qrBMintauxID_Int.AsInteger, []);
          tbBMintaux.Edit;
          if (defusaPersonal = 'sim') and (defurl = 'https://www.hgdiesel.com.br/web_api') then
          begin
            tbBMintauxHASH.AsString := MD5String(qrBMprodutosDESCRICAO.AsString + qrBMprodutosPRECOVENDA1.AsString + qrBMprodutosPRECOVENDA2.AsString +
              qrBMprodutosPRECO_PROMOCAO.AsString + qrBMprodutosPROMOCAO_DATA_INI.AsString + qrBMprodutosPROMOCAO_DATA_FIM.AsString +
              qrBMprodutosMARCA.AsString + qrBMprodutosESTOQUE.AsString + qrBMprodutosATIVO.AsString + qrBMprodutosREFERENCIA.AsString +
              ids_fotos + qrBMprodutosPESO_BRUTO.AsString + qrBMprodutosCOMPRIMENTO.AsString + qrBMprodutosLARGURA.AsString +
              qrBMprodutosALTURA.AsString + qrBMprodutosTEXTO.AsString + QrPersonal.FieldByName('Modelo').AsString +
              QrPersonal.FieldByName('Garantia').AsString + QrPersonal.FieldByName('TituloPagina').AsString +
              QrPersonal.FieldByName('DescricaoSimplificada').AsString + QrPersonal.FieldByName('PalavraChave').AsString);
          end
          else
          begin
            tbBMintauxHASH.AsString := MD5String(qrBMprodutosDESCRICAO.AsString + qrBMprodutosPRECOVENDA1.AsString + qrBMprodutosPRECOVENDA4.AsString +
              qrBMprodutosPRECO_PROMOCAO.AsString + qrBMprodutosPROMOCAO_DATA_INI.AsString + qrBMprodutosPROMOCAO_DATA_FIM.AsString +
              qrBMprodutosMARCA.AsString + qrBMprodutosESTOQUE.AsString + qrBMprodutosATIVO.AsString + qrBMprodutosREFERENCIA.AsString +
              ids_fotos + qrBMprodutosPESO_BRUTO.AsString + qrBMprodutosCOMPRIMENTO.AsString + qrBMprodutosLARGURA.AsString +
              qrBMprodutosALTURA.AsString + qrBMprodutosTEXTO.AsString);
          end;
          tbBMintaux.Post;
          qrBMintaux.Close;
          qrBMintaux.Open;
          exit;
        end
        else
        begin
          //showmessage('Produto já cadastrado e sem alterações');
          //AvisoAtt('Produto já enviado e sem alterações.', 3, -1);
          exit;
        end;

      end
      else
      begin
        QrPersonal.Locate('id_produto', qrBMprodutosID.AsInteger, []);

        ObjProdutos := TJSONObject.Create;
        ObjProdutosProduct := TJSONObject.Create;
        ObjMetatagTitle := TJSONObject.Create;
        ObjMetatagDesc := TJSONObject.Create;
        ObjMetatagKey := TJSONObject.Create;
        ObjBranco := TJSONObject.Create;
        jArrayMetatag := TJSONArray.Create;
        jArrayRelated := TJSONArray.Create;
        AddPairString(ObjProdutos, 'ean', qrBMprodutosEAN.AsString);

        if (defusaPersonal = 'sim') and (defusaDescricaoWeb = 'sim') then
        begin
          AddPairString(ObjProdutos, 'name', QrPersonal.FieldByName('DescricaoWeb').AsString);
        end
        else
        begin
          AddPairString(ObjProdutos, 'name', qrBMprodutosDESCRICAO.AsString);
        end;

        AddPairString(ObjProdutos, 'ncm', qrBMprodutosSINTEGRA_NCM.AsString);
        AddPairString(ObjProdutos, 'description', (StringReplace(qrBMprodutosTEXTO.AsString, #13#10, '<br>', [rfReplaceAll])));
        AddPairString(ObjProdutos, 'description small', qrBMprodutosDESCRICAO.AsString);

        if defusaPersonal = 'sim' then
        begin
          if defusaVenda4 = 'sim' then
          begin
            AddPairFloat(ObjProdutos, 'price', qrBMprodutosPRECOVENDA4.AsFloat);
          end
          else
          begin
            AddPairFloat(ObjProdutos, 'price', qrBMprodutosPRECOVENDA2.AsFloat);
          end;
        end
        else
        begin
          AddPairFloat(ObjProdutos, 'price', qrBMprodutosPRECOVENDA1.AsFloat);
        end;

        AddPairFloat(ObjProdutos, 'cost_price', qrBMprodutosPRECOCUSTO.AsFloat);
        AddPairFloat(ObjProdutos, 'promotional_price', qrBMprodutosPRECO_PROMOCAO.AsFloat);
        AddPairString(ObjProdutos, 'start_promotion', qrBMprodutosPROMOCAO_DATA_INI.AsString);
        AddPairString(ObjProdutos, 'end_promotion', qrBMprodutosPROMOCAO_DATA_FIM.AsString);
        AddPairString(ObjProdutos, 'ipi_value', '');
        AddPairString(ObjProdutos, 'brand', qrBMprodutosMARCA.AsString);
        //rever depois para a HGDiesel pq só ela usa

        if (defusaPersonal = 'sim') and (defusaModelo = 'sim') then
        begin
          AddPairString(ObjProdutos, 'model', (QrPersonal.FieldByName('Modelo').AsString + '<br>' + ' Código: ' + QrPersonal.FieldByName('Referencia').AsString));
        end
        else
        begin
          AddPairString(ObjProdutos, 'model', '');
        end;

        AddPairFloat(ObjProdutos, 'weight', Trunc(1000 * qrBMprodutosPESO_BRUTO.AsFloat));
        AddPairFloat(ObjProdutos, 'length', qrBMprodutosCOMPRIMENTO.AsFloat);
        AddPairFloat(ObjProdutos, 'width', qrBMprodutosLARGURA.AsFloat);
        AddPairFloat(ObjProdutos, 'height', qrBMprodutosALTURA.AsFloat);
        AddPairInt(ObjProdutos, 'stock', qrBMprodutosESTOQUE.AsInteger);
        AddPairString(ObjProdutos, 'category_id', qrBMprodutosID_INT.AsString);
        if qrBMprodutosATIVO.AsString = 'S' then
        begin
          AddPairString(ObjProdutos, 'available', '1');
        end
        else
        begin
          AddPairString(ObjProdutos, 'available', '0');
        end;
        //passar aqui garantia
        if (defusaPersonal = 'sim') and (defusaDisponibilidade = 'sim') then
        begin
          AddPairString(ObjProdutos, 'availability', QrPersonal.FieldByName('Disponibilidade').AsString);
          AddPairString(ObjProdutos, 'availability_days', '');
        end
        else
        begin
          AddPairString(ObjProdutos, 'availability', '');
          AddPairString(ObjProdutos, 'availability_days', '');
        end;

        // passar dias de disponiblidade aqui
        AddPairString(ObjProdutos, 'availability_days', '');
        if (defusaPersonal = 'sim') and (defusaGarantia = 'sim') then
        begin
          AddPairString(ObjProdutos, 'warranty', QrPersonal.FieldByName('Garantia').AsString);
        end
        else
        begin
          AddPairString(ObjProdutos, 'warranty', '');
        end;
        AddPairString(ObjProdutos, 'reference', qrBMprodutosREFERENCIA.AsString);
        //rever depois para a HGDiesel pq só ela usa

        if (defusaPersonal = 'sim') and (defusaDestaque = 'sim') and (defusaLancamento = 'sim') then
        begin

          if QrPersonal.FieldByName('Destaque').AsString = 'S' then
          begin
            AddPairString(ObjProdutos, 'hot', '1');
          end
          else
          begin
            AddPairString(ObjProdutos, 'hot', '0');
          end;

          if QrPersonal.FieldByName('Lancamento').AsString = 'S' then
          begin
            AddPairString(ObjProdutos, 'release', '1');
          end
          else
          begin
            AddPairString(ObjProdutos, 'release', '0');
          end;

        end;

        ObjProdutos.AddPair('related_categories', jArrayRelated);
        AddPairString(ObjProdutos, 'release_date', datetosql(qrBMprodutosDATA_CAD.AsDateTime));

        if defusaenviofotos = 'sim' then
        begin
          ids_fotos := getfotosprodutos(qrBMprodutosID.AsInteger, Variacao);
        end;

        //      if (defusaPersonal = 'sim') and (defusaSEO = 'sim') then
        //      begin
        //        AddPairString(ObjMetatagTitle, 'type', 'title');
        //        AddPairString(ObjMetatagTitle, 'content', QrPersonal.FieldByName('TituloPagina').AsString);
        //        AddPairString(ObjMetatagDesc, 'type', 'description');
        //        AddPairString(ObjMetatagDesc, 'content', QrPersonal.FieldByName('DescricaoSimplificada').AsString);
        //        AddPairString(ObjMetatagKey, 'type', 'keywords');
        //        AddPairString(ObjMetatagKey, 'content', QrPersonal.FieldByName('PalavraChave').AsString);
        //        //showmessage(ObjMetatag.ToString);
        //
        //        jArrayMetatag.Add(ObjMetatagDesc);
        //        jArrayMetatag.Add(ObjMetatagKey);
        //        jArrayMetatag.Add(ObjMetatagTitle);
        //
        //        jArrayMetatag.Add(ObjMetatagDesc);
        //        jArrayMetatag.Add(ObjMetatagTitle);
        //        jArrayMetatag.Add(ObjMetatagKey);
        //      end
        //      else
        //      begin
        //        AddPairString(ObjMetatagTitle, 'type', qrBMprodutosEAN.AsString);
        //        AddPairString(ObjMetatagTitle, 'content', '');
        //        AddPairString(ObjMetatagTitle, 'local', '');
        //      end;

        ObjProdutos.AddPair('metatag', jArrayMetatag);
        AddPairString(ObjProdutos, 'virtual_product', '');

        if (defusaPersonal = 'sim') and (defurl = 'https://www.hgdiesel.com.br/web_api') then
        begin
          AddPairString(ObjProdutos, 'included_items', QrPersonal.FieldByName('ItensInclusos').AsString);
        end;

        ObjProdutosProduct.AddPair('Product', ObjProdutos);
        //StringToFile(ObjProdutosProduct.ToString, 'D:\bmsoft\BM2Tray\extras\PROD.json');
        //StringToFile(ObjProdutosProduct.ToString, 'C:\bmsoft\BM2Tray\PROD.json');
        //fazer post
//        frmRequest.RESTClientProdutosVarPost.BaseURL := defurl + defprodutos + '/?access_token=' +
//          def_access_token;
//        frmRequest.RESTRequestProdutosVarPost.Body.ClearBody;
//        frmRequest.RESTRequestProdutosVarPost.AddBody(ObjProdutosProduct);
//        frmRequest.RESTRequestProdutosVarPost.Execute;
//        OValue := TJSONObject.ParseJSONValue(frmRequest.RESTResponseProdutosVarPost.Content.ToLower);
//        ObjResult := OValue as TJsonObject;
        //ShowMessage(frmRequest.RESTResponseProdutosPost.Content);
        //SHOWMESSAGE(ObjProdutosProduct.ToString);

        if ObjResult.Get('code').JsonValue.Value.ToInteger <> 201 then
        begin
          Objcauses := ObjResult.Get('causes').JsonValue as TJSONObject;
          Objproduct := Objcauses.Get('product').JsonValue as TJSONObject;
          if pos('name', Objproduct.ToString) > 0 then
          begin
            //AvisoAtt('Não foi possível cadastrar o produto, erro na descrição.', -3, -1);
            jArraySlug := Objproduct.Get('name').JsonValue as TJSONArray;
          end
          else
          begin
            //AvisoAtt('Não foi possível cadastrar o produto, erro na categoria.', -3, -1);
            jArraySlug := Objproduct.Get('category_id').JsonValue as TJSONArray;
          end;
          //Logar(jArraySlug.ToString);
          tbBMauxerros.Append;
          tbBMauxerrosid_tabela.AsInteger := qrBMprodutosID.AsInteger;
          //tbBMauxerrosdescricao.AsString := frmMain.traduzir(jArraySlug.ToString);
          tbBMauxerrostipo.AsString := 'PRD';
          tbBMauxerrostipo_metodo.AsString := 'POST';
          tbBMauxerrosdatahora_registro.AsDateTime := now;
          tbBMauxerros.post;
          exit;
        end;

        tbBMintaux.Append;
        if (defusaPersonal = 'sim') and (defurl = 'https://www.hgdiesel.com.br/web_api') then
        begin
          tbBMintauxHASH.AsString := MD5String(qrBMprodutosDESCRICAO.AsString + qrBMprodutosPRECOVENDA1.AsString + qrBMprodutosPRECOVENDA2.AsString +
            qrBMprodutosPRECO_PROMOCAO.AsString + qrBMprodutosPROMOCAO_DATA_INI.AsString + qrBMprodutosPROMOCAO_DATA_FIM.AsString +
            qrBMprodutosMARCA.AsString + qrBMprodutosESTOQUE.AsString + qrBMprodutosATIVO.AsString + qrBMprodutosREFERENCIA.AsString +
            ids_fotos + qrBMprodutosPESO_BRUTO.AsString + qrBMprodutosCOMPRIMENTO.AsString + qrBMprodutosLARGURA.AsString +
            qrBMprodutosALTURA.AsString + qrBMprodutosTEXTO.AsString + QrPersonal.FieldByName('Modelo').AsString +
            QrPersonal.FieldByName('Garantia').AsString + QrPersonal.FieldByName('TituloPagina').AsString +
            QrPersonal.FieldByName('DescricaoSimplificada').AsString + QrPersonal.FieldByName('PalavraChave').AsString);
        end
        else
        begin
          tbBMintauxHASH.AsString := MD5String(qrBMprodutosDESCRICAO.AsString + qrBMprodutosPRECOVENDA1.AsString + qrBMprodutosPRECOVENDA4.AsString +
            qrBMprodutosPRECO_PROMOCAO.AsString + qrBMprodutosPROMOCAO_DATA_INI.AsString + qrBMprodutosPROMOCAO_DATA_FIM.AsString +
            qrBMprodutosMARCA.AsString + qrBMprodutosESTOQUE.AsString + qrBMprodutosATIVO.AsString + qrBMprodutosREFERENCIA.AsString +
            ids_fotos + qrBMprodutosPESO_BRUTO.AsString + qrBMprodutosCOMPRIMENTO.AsString + qrBMprodutosLARGURA.AsString +
            qrBMprodutosALTURA.AsString + qrBMprodutosTEXTO.AsString);
        end;
        tbBMintauxTipo.AsString := 'PRD';
        tbBMintauxID_Int.AsString := ObjResult.Get('id').JsonValue.Value;
        tbBMintauxID_BM.Value := qrBMprodutosID.Value;
        tbBMintauxObservacoes.Value := qrBMprodutosREFERENCIA.Value;
        tbBMintaux.Post;
        qrBMintaux.Close;
        qrBMintaux.Open;
        qrBMintaux.Locate('ID_BM', qrBMprodutosID.AsInteger, []);
        //AvisoAtt('Produto enviado com sucesso.', 3, -1);
        exit;
      end;
    end
    else
    begin
      //Começa aqui as variações
      //Todo:Variações;

      if QrProdVarBusca.Locate('ID_BM;Tipo;Observacoes', vararrayof([qrBMprodutosID.AsInteger, 'PRV', qrBMprodutosREFERENCIA.Value]), []) then
      begin
        QrPersonal.Locate('id_produto', qrBMprodutosID.AsInteger, []);

        if (defusaPersonal = 'sim') and (defurl = 'https://www.hgdiesel.com.br/web_api') then
        begin
          hash := MD5String(qrBMprodutosDESCRICAO.AsString + qrBMprodutosPRECOVENDA1.AsString + qrBMprodutosPRECOVENDA2.AsString +
            qrBMprodutosPRECO_PROMOCAO.AsString + qrBMprodutosPROMOCAO_DATA_INI.AsString + qrBMprodutosPROMOCAO_DATA_FIM.AsString +
            qrBMprodutosMARCA.AsString + qrBMprodutosESTOQUE.AsString + qrBMprodutosATIVO.AsString + qrBMprodutosREFERENCIA.AsString +
            qrBMprodutosPESO_BRUTO.AsString + qrBMprodutosCOMPRIMENTO.AsString + qrBMprodutosLARGURA.AsString +
            qrBMprodutosALTURA.AsString + qrBMprodutosTEXTO.AsString + QrPersonal.FieldByName('Modelo').AsString +
            QrPersonal.FieldByName('Garantia').AsString + QrPersonal.FieldByName('TituloPagina').AsString +
            QrPersonal.FieldByName('DescricaoSimplificada').AsString + QrPersonal.FieldByName('PalavraChave').AsString);
        end
        else
        begin
          hash := MD5String(qrBMprodutosDESCRICAO.AsString + qrBMprodutosPRECOVENDA1.AsString + qrBMprodutosPRECOVENDA4.AsString +
            qrBMprodutosPRECO_PROMOCAO.AsString + qrBMprodutosPROMOCAO_DATA_INI.AsString + qrBMprodutosPROMOCAO_DATA_FIM.AsString +
            qrBMprodutosMARCA.AsString + qrBMprodutosESTOQUE.AsString + qrBMprodutosATIVO.AsString + qrBMprodutosREFERENCIA.AsString +
            qrBMprodutosPESO_BRUTO.AsString + qrBMprodutosCOMPRIMENTO.AsString + qrBMprodutosLARGURA.AsString +
            qrBMprodutosALTURA.AsString + qrBMprodutosTEXTO.AsString);
        end;

        if hash <> (QrProdVarBuscaHASH.AsString) then
        begin
          QrPersonal.Locate('id_produto', qrBMprodutosID.AsInteger, []);
          ObjProdutos := TJSONObject.Create;
          ObjProdutosProduct := TJSONObject.Create;
          ObjMetatagTitle := TJSONObject.Create;
          ObjMetatagDesc := TJSONObject.Create;
          ObjMetatagKey := TJSONObject.Create;
          ObjBranco := TJSONObject.Create;
          ObjSkuCor := TJSONObject.Create;
          ObjSkuTamanho := TJSONObject.Create;

          jArrayMetatag := TJSONArray.Create;
          jArrayRelated := TJSONArray.Create;
          jArraySku := TJSONArray.Create;

          AddPairString(ObjProdutos, 'ean', qrBMprodutosEAN.AsString);
          AddPairInt(ObjProdutos, 'order', Order);
          if defusaPersonal = 'sim' then
          begin
            if defusaVenda4 = 'sim' then
            begin
              AddPairFloat(ObjProdutos, 'price', qrBMprodutosPRECOVENDA4.AsFloat);
            end
            else
            begin
              AddPairFloat(ObjProdutos, 'price', qrBMprodutosPRECOVENDA2.AsFloat);
            end;
          end
          else
          begin
            AddPairFloat(ObjProdutos, 'price', qrBMprodutosPRECOVENDA1.AsFloat);
          end;

          AddPairFloat(ObjProdutos, 'cost_price', qrBMprodutosPRECOCUSTO.AsFloat);
          AddPairInt(ObjProdutos, 'stock', qrBMprodutosESTOQUE.AsInteger);
          AddPairInt(ObjProdutos, 'minimum_stock', 0);
          AddPairString(ObjProdutos, 'reference', qrBMprodutosREFERENCIA.AsString);
          AddPairFloat(ObjProdutos, 'weight', Trunc(1000 * qrBMprodutosPESO_BRUTO.AsFloat));
          AddPairFloat(ObjProdutos, 'length', qrBMprodutosCOMPRIMENTO.AsFloat);
          AddPairFloat(ObjProdutos, 'width', qrBMprodutosLARGURA.AsFloat);
          AddPairFloat(ObjProdutos, 'height', qrBMprodutosALTURA.AsFloat);
          AddPairString(ObjProdutos, 'start_promotion', qrBMprodutosPROMOCAO_DATA_INI.AsString);
          AddPairString(ObjProdutos, 'end_promotion', qrBMprodutosPROMOCAO_DATA_FIM.AsString);
          AddPairFloat(ObjProdutos, 'promotional_price', qrBMprodutosPRECO_PROMOCAO.AsFloat);

          //          AddPairString(ObjSkuCor, 'type_1', 'Cor');
          //          AddPairString(ObjSkuCor, 'value_1', qrBMprodutosDESCRICAO_VAR.AsString);
          //          jArraySku.Add(ObjSkuCor);
          //          jArraySku.Add(ObjSkuTamanho);
          //          ObjProdutos.AddPair('Sku', jArraySku);

          AddPairString(ObjProdutos, 'type_1', 'Cor');
          AddPairString(ObjProdutos, 'value_1', qrBMprodutosDESCRICAO_VAR.AsString);

          AddPairInt(ObjProdutos, 'quantity_sold', 0);

          ObjProdutosProduct.AddPair('Variant', ObjProdutos);
          //StringToFile(ObjProdutosProduct.ToString, 'D:\bmsoft\BM2Tray\extras\PRODVARPUT.json');

          //PUT
          if defusaenviofotos = 'sim' then
          begin
            getfotosprodutos(QrProdVarBuscaID_Int.AsInteger, Variacao);
          end;
//
//          frmRequest.RESTClientProdutosVarPut.BaseURL := defurl + defvariacoes + '/' +
//            QrProdVarBuscaID_Int.AsString + '/?access_token=' + def_access_token;
//          //
//          //ShowMessage(frmRequest.RESTClientProdutosVarPut.BaseURL);
//          frmRequest.RESTRequestProdutosVarPut.Body.ClearBody;
//          frmRequest.RESTRequestProdutosVarPut.AddBody(ObjProdutosProduct);
//          frmRequest.RESTRequestProdutosVarPut.Execute;
//          OValue := TJSONObject.ParseJSONValue(frmRequest.RESTResponseProdutosVarPut.Content.ToLower);
          //ShowMessage(frmRequest.RESTResponseProdutosVarPut.Content);
          ObjResult := OValue as TJsonObject;
          //showmessage(ObjProdutosProduct.ToString);

          if ObjResult.Get('code').JsonValue.Value.ToInteger <> 200 then
          begin
            Objcauses := ObjResult.Get('causes').JsonValue as TJSONObject;
            Objproduct := Objcauses.Get('product').JsonValue as TJSONObject;
            jArraySlug := Objproduct.Get('name').JsonValue as TJSONArray;
            tbBMauxerros.Append;
            tbBMauxerrosid_tabela.AsInteger := qrBMprodutosID.AsInteger;
            //tbBMauxerrosdescricao.AsString := frmMain.traduzir(jArraySlug.ToString);
            tbBMauxerrostipo.AsString := 'PRV';
            tbBMauxerrostipo_metodo.AsString := 'PUT';
            tbBMauxerrosdatahora_registro.AsDateTime := now;
            tbBMauxerros.post;
            exit;
          end;

          tbBMintaux.Locate('ID_Int', QrProdVarBuscaID_Int.AsInteger, []);
          tbBMintaux.Edit;
          if (defusaPersonal = 'sim') and (defurl = 'https://www.hgdiesel.com.br/web_api') then
          begin
            tbBMintauxHASH.AsString := MD5String(qrBMprodutosDESCRICAO.AsString + qrBMprodutosPRECOVENDA1.AsString + qrBMprodutosPRECOVENDA2.AsString +
              qrBMprodutosPRECO_PROMOCAO.AsString + qrBMprodutosPROMOCAO_DATA_INI.AsString + qrBMprodutosPROMOCAO_DATA_FIM.AsString +
              qrBMprodutosMARCA.AsString + qrBMprodutosESTOQUE.AsString + qrBMprodutosATIVO.AsString + qrBMprodutosREFERENCIA.AsString +
              qrBMprodutosPESO_BRUTO.AsString + qrBMprodutosCOMPRIMENTO.AsString + qrBMprodutosLARGURA.AsString +
              qrBMprodutosALTURA.AsString + qrBMprodutosTEXTO.AsString + QrPersonal.FieldByName('Modelo').AsString +
              QrPersonal.FieldByName('Garantia').AsString + QrPersonal.FieldByName('TituloPagina').AsString +
              QrPersonal.FieldByName('DescricaoSimplificada').AsString + QrPersonal.FieldByName('PalavraChave').AsString);
          end
          else
          begin
            tbBMintauxHASH.AsString := MD5String(qrBMprodutosDESCRICAO.AsString + qrBMprodutosPRECOVENDA1.AsString + qrBMprodutosPRECOVENDA4.AsString +
              qrBMprodutosPRECO_PROMOCAO.AsString + qrBMprodutosPROMOCAO_DATA_INI.AsString + qrBMprodutosPROMOCAO_DATA_FIM.AsString +
              qrBMprodutosMARCA.AsString + qrBMprodutosESTOQUE.AsString + qrBMprodutosATIVO.AsString + qrBMprodutosREFERENCIA.AsString +
              qrBMprodutosPESO_BRUTO.AsString + qrBMprodutosCOMPRIMENTO.AsString + qrBMprodutosLARGURA.AsString +
              qrBMprodutosALTURA.AsString + qrBMprodutosTEXTO.AsString);
          end;
          tbBMintaux.Post;
          QrProdVarBusca.Close;
          QrProdVarBusca.Open;
          exit;
        end
        else
        begin
          exit;
        end;

      end
      else
      begin
        QrPersonal.Locate('id_produto', qrBMprodutosID.AsInteger, []);

        ObjProdutos := TJSONObject.Create;
        ObjProdutosProduct := TJSONObject.Create;
        ObjMetatagTitle := TJSONObject.Create;
        ObjMetatagDesc := TJSONObject.Create;
        ObjMetatagKey := TJSONObject.Create;
        ObjBranco := TJSONObject.Create;
        ObjSkuCor := TJSONObject.Create;
        ObjSkuTamanho := TJSONObject.Create;

        jArrayMetatag := TJSONArray.Create;
        jArrayRelated := TJSONArray.Create;
        jArraySku := TJSONArray.Create;

        AddPairInt(ObjProdutos, 'product_id', StrToInt(Id_Int));
        AddPairString(ObjProdutos, 'ean', qrBMprodutosEAN.AsString);
        AddPairInt(ObjProdutos, 'order', Order);
        if defusaPersonal = 'sim' then
        begin
          if defusaVenda4 = 'sim' then
          begin
            AddPairFloat(ObjProdutos, 'price', qrBMprodutosPRECOVENDA4.AsFloat);
          end
          else
          begin
            AddPairFloat(ObjProdutos, 'price', qrBMprodutosPRECOVENDA2.AsFloat);
          end;
        end
        else
        begin
          AddPairFloat(ObjProdutos, 'price', qrBMprodutosPRECOVENDA1.AsFloat);
        end;

        AddPairFloat(ObjProdutos, 'cost_price', qrBMprodutosPRECOCUSTO.AsFloat);
        AddPairInt(ObjProdutos, 'stock', qrBMprodutosESTOQUE.AsInteger);
        AddPairInt(ObjProdutos, 'minimum_stock', 0);
        AddPairString(ObjProdutos, 'reference', qrBMprodutosREFERENCIA.AsString);
        AddPairFloat(ObjProdutos, 'weight', Trunc(1000 * qrBMprodutosPESO_BRUTO.AsFloat));
        AddPairFloat(ObjProdutos, 'length', qrBMprodutosCOMPRIMENTO.AsFloat);
        AddPairFloat(ObjProdutos, 'width', qrBMprodutosLARGURA.AsFloat);
        AddPairFloat(ObjProdutos, 'height', qrBMprodutosALTURA.AsFloat);
        AddPairString(ObjProdutos, 'start_promotion', qrBMprodutosPROMOCAO_DATA_INI.AsString);
        AddPairString(ObjProdutos, 'end_promotion', qrBMprodutosPROMOCAO_DATA_FIM.AsString);
        AddPairFloat(ObjProdutos, 'promotional_price', qrBMprodutosPRECO_PROMOCAO.AsFloat);

        AddPairString(ObjProdutos, 'type_1', 'Cor');
        AddPairString(ObjProdutos, 'value_1', qrBMprodutosDESCRICAO_VAR.AsString);

        AddPairInt(ObjProdutos, 'quantity_sold', 0);

        ObjProdutosProduct.AddPair('Variant', ObjProdutos);

        //StringToFile(ObjProdutosProduct.ToString, 'D:\bmsoft\BM2Tray\extras\PROD.json');
        //fazer post RESTClientProdutosVarPost
//
//        frmRequest.RESTClientProdutosVarPost.BaseURL := defurl + defvariacoes + '/?access_token=' +
//          def_access_token;
//        frmRequest.RESTRequestProdutosVarPost.Body.ClearBody;
//        frmRequest.RESTRequestProdutosVarPost.AddBody(ObjProdutosProduct);
//        frmRequest.RESTRequestProdutosVarPost.Execute;
//        OValue := TJSONObject.ParseJSONValue(frmRequest.RESTResponseProdutosVarPost.Content.ToLower);
//        ObjResult := OValue as TJsonObject;
        //StringToFile(frmRequest.RESTResponseProdutosPost.Content, 'D:\bmsoft\BM2Tray\extras\ERRO.json');
        //ShowMessage(frmRequest.RESTResponseProdutosVarPost.Content);

        if ObjResult.Get('code').JsonValue.Value.ToInteger <> 201 then
        begin
          Objcauses := ObjResult.Get('causes').JsonValue as TJSONObject;
          Objproduct := Objcauses.Get('product').JsonValue as TJSONObject;
          if pos('name', Objproduct.ToString) > 0 then
          begin
            jArraySlug := Objproduct.Get('name').JsonValue as TJSONArray;
          end
          else
          begin
            jArraySlug := Objproduct.Get('category_id').JsonValue as TJSONArray;
          end;
          //Logar(jArraySlug.ToString);
          tbBMauxerros.Append;
          tbBMauxerrosid_tabela.AsInteger := qrBMprodutosID.AsInteger;
          //tbBMauxerrosdescricao.AsString := frmMain.traduzir(jArraySlug.ToString);
          tbBMauxerrostipo.AsString := 'PRV';
          tbBMauxerrostipo_metodo.AsString := 'POST';
          tbBMauxerrosdatahora_registro.AsDateTime := now;
          tbBMauxerros.post;
          exit;
        end;

        tbBMintaux.Append;
        if (defusaPersonal = 'sim') and (defurl = 'https://www.hgdiesel.com.br/web_api') then
        begin
          tbBMintauxHASH.AsString := MD5String(qrBMprodutosDESCRICAO.AsString + qrBMprodutosPRECOVENDA1.AsString + qrBMprodutosPRECOVENDA2.AsString +
            qrBMprodutosPRECO_PROMOCAO.AsString + qrBMprodutosPROMOCAO_DATA_INI.AsString + qrBMprodutosPROMOCAO_DATA_FIM.AsString +
            qrBMprodutosMARCA.AsString + qrBMprodutosESTOQUE.AsString + qrBMprodutosATIVO.AsString + qrBMprodutosREFERENCIA.AsString +
            qrBMprodutosPESO_BRUTO.AsString + qrBMprodutosCOMPRIMENTO.AsString + qrBMprodutosLARGURA.AsString +
            qrBMprodutosALTURA.AsString + qrBMprodutosTEXTO.AsString + QrPersonal.FieldByName('Modelo').AsString +
            QrPersonal.FieldByName('Garantia').AsString + QrPersonal.FieldByName('TituloPagina').AsString +
            QrPersonal.FieldByName('DescricaoSimplificada').AsString + QrPersonal.FieldByName('PalavraChave').AsString);
        end
        else
        begin
          tbBMintauxHASH.AsString := MD5String(qrBMprodutosDESCRICAO.AsString + qrBMprodutosPRECOVENDA1.AsString + qrBMprodutosPRECOVENDA4.AsString +
            qrBMprodutosPRECO_PROMOCAO.AsString + qrBMprodutosPROMOCAO_DATA_INI.AsString + qrBMprodutosPROMOCAO_DATA_FIM.AsString +
            qrBMprodutosMARCA.AsString + qrBMprodutosESTOQUE.AsString + qrBMprodutosATIVO.AsString + qrBMprodutosREFERENCIA.AsString +
            qrBMprodutosPESO_BRUTO.AsString + qrBMprodutosCOMPRIMENTO.AsString + qrBMprodutosLARGURA.AsString +
            qrBMprodutosALTURA.AsString + qrBMprodutosTEXTO.AsString);
        end;
        tbBMintauxTipo.AsString := 'PRV';
        tbBMintauxID_Int.AsString := ObjResult.Get('id').JsonValue.Value;
        tbBMintauxID_BM.Value := qrBMprodutosID.Value;
        tbBMintauxObservacoes.Value := qrBMprodutosREFERENCIA.Value;
        tbBMintaux.Post;

        if defusaenviofotos = 'sim' then
        begin
          getfotosprodutos(QrProdVarBuscaID_Int.AsInteger, True);
        end;

        QrProdVarBusca.Close;
        QrProdVarBusca.Open;
        QrProdVarBusca.Locate('ID_BM', qrBMprodutosID.AsInteger, []);
        exit;
      end;
    end;
  end;

end;

//Procedure que faz um GET em todos os produtos do tray, salva em uma tabela BM.
//compara com a tabela auxiliar e verifica quais produtos já estão no tray e não foram salvos na AUX
// fazendo assim o salvamento

procedure Tprodutosfrm.Button1Click(Sender: TObject);
var
  jValue: TJsonValue;
  jObj, jObjProdutos, jObjCampos, jObjpagina, jObjMetatag: TJsonObject;
  jArrayProdutos, jarraymetatag: TJsonArray;
  i, m: integer;
  total: integer;
  limit: integer;
  n_paginas: integer;
  n_pagina: integer;
  n_paginas_total: integer;

begin
  lblpage.Visible := true;
  DBGrid5.Visible := true;
  DBGrid6.Visible := true;
  Panel7.Caption := 'Produtos do Tray';
  Panel4.Caption := 'Produtos do Tab_Referência';

  try
    tbTrayProdutos.Close;
    //    tbTrayProdutos.Exclusive := true;
    tbTrayProdutos.Open;
    tbBMreferencia.Close;
    tbBMreferencia.Open;
  except
    AvisoAtt('Não foi possível abrir as tabelas, favor fechar o sistema BM e reparar tabelas.', -5, -1);
    frmMain.T.FecharTudo;
    abort;
  end;

  JSONtray_marcas_enviar.Clear;
  tray_token_enviar.Clear;
  tray_refresh_enviar.Clear;
  QDelProdutos.execSQL;
  n_pagina := 1;

  while True do
  begin
//    frmRequest.RESTRequestProdutos.Params[3].Value := def_access_token;
//    frmRequest.RESTRequestProdutos.Params[4].Value := n_pagina.ToString;
//    frmRequest.RESTRequestProdutos.Execute;
//    JSONtray_marcas_enviar.Text := frmRequest.RESTResponseProdutos.Content;
    jValue := TJSONObject.ParseJSONValue(JSONtray_marcas_enviar.Text);
    jObj := jValue as TJsonObject;
    JSONtray_marcas_enviar.Text := jObj.ToJSON;
    jArrayProdutos := jObj.Get('Products').JsonValue as TJSONArray;
    jObjpagina := jObj.Get('paging').JsonValue as TJSONObject;
    total := jObjpagina.GetValue('total').Value.ToInteger;
    limit := jObjpagina.GetValue('limit').Value.ToInteger;
    lblpage.Caption := 'Atualizando...' + n_pagina.ToString + '/' + n_paginas_total.ToString;
    application.ProcessMessages;

    for I := 0 to jArrayProdutos.Size - 1 do
    begin
      jObjProdutos := jArrayProdutos.Get(i) as TJSONObject;
      jObjCampos := jObjProdutos.Get('Product').JsonValue as TJsonObject;

      //StringToFile(jObjCampos.ToString, 'D:\bmsoft\BM2Tray\extras\PROD.json');
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
      //tbTrayProdutosstock.AsInteger := analisaexistenciainteger(jObjCampos, 'stock');
      tbTrayProdutosid_categoria.AsInteger := analisaexistenciainteger(jObjCampos, 'category_id');
      tbTrayProdutosavailability.AsString := analisaexistenciastr(jObjCampos, 'availability');
      tbTrayProdutosreference.AsString := analisaexistenciastr(jObjCampos, 'reference');
      tbTrayProdutosadditional_button.AsInteger := analisaexistenciainteger(jObjCampos, 'additional_button');
      tbTrayProdutosadditional_message.AsString := analisaexistenciastr(jObjCampos, 'additional_message');
      tbTrayProdutoswarranty.AsString := analisaexistenciastr(jObjCampos, 'warranty');
      tbTrayProdutosrating.AsInteger := analisaexistenciainteger(jObjCampos, 'rating');
      tbTrayProdutoscount_rating.AsInteger := analisaexistenciainteger(jObjCampos, 'count_rating');
      //tbTrayProdutosquantity_sold.AsInteger := analisaexistenciainteger(jObjCampos, 'quantity_sold');
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
      tbTrayProdutosid_variant.AsInteger := analisaexistenciainteger(jObjCampos, 'variant');

      jarraymetatag := jObjCampos.Get('metatag').JsonValue as TJSONArray;

      for M := 0 to jarraymetatag.Size - 1 do
      begin
        jObjMetatag := jarraymetatag.Get(m) as TJSONObject;
        if M = 0 then
        begin
          tbTrayProdutostitulo.AsString := analisaexistenciastr(jObjMetatag, 'content');
        end;
        if M = 1 then
        begin
          tbTrayProdutosdescricaosimplificada.AsString := analisaexistenciastr(jObjMetatag, 'content');
        end;
        if M = 2 then
        begin
          tbTrayProdutospalavrachave.AsString := analisaexistenciastr(jObjMetatag, 'content');
        end;

      end;

      tbTrayProdutos.Post;
    end;

    n_pagina := n_pagina + 1;
    n_paginas_total := Trunc((total / limit));
    n_paginas := Trunc((total / limit));
    if (total mod limit) > 0 then
      n_paginas := n_paginas + 1;
    if n_paginas < n_pagina then
      break;
  end;

  //  AvisoAtt('Produto enviado com sucesso.', 3, -2);
end;

//Procedure responsável por enviar as fotos dos produtos para o FileZilla,
// gerando assim a URL que será usada no POST ou PUT

procedure Tprodutosfrm.Button2Click(Sender: TObject);
var
  image: TJPEGImage;
  foto: TMemoryStream;
  nomefoto: string;
  total_registro, registro_atual: integer;
begin
  if defusaenviofotos = 'sim' then
  begin

    try
      tbTrayFotos.Close;
      tbTrayFotos.Open;
      tbBMintaux.Close;
      tbBMintaux.Open;
    except
      AvisoAtt('Não foi possível abrir as tabelas, favor fechar o sistema BM e reparar tabelas.', -5, -1);
      frmMain.T.FecharTudo;
      abort;
    end;

    tbTrayFotos.First;
    //Logar('Conectando FTP...');
    DD.conectaftp;
    //Logar('FTP conectado.');
    try
      total_registro := tbTrayFotos.RecordCount;
      registro_atual := 0;
      //Logar('total de registro: ' + total_registro.ToString + ' / Registro atual: ' + tbTrayFotos.RecNo.ToString);
      while not tbTrayFotos.Eof do
      begin
        //showmessage(tbTrayFotosID.AsString);
        if not tbBMintaux.Locate('ID_BM;Tipo', vararrayof([tbTrayFotosID.AsInteger, 'FOT']), []) then
        begin
          registro_atual := registro_atual + 1;
          AvisoAtt('Enviando fotos produto: ' + registro_atual.ToString + '/' + total_registro.ToString + '...', 0, -1);
          //Logar('Enviando fotos produto: ' + registro_atual.ToString + '/' + total_registro.ToString + '...');
          nomefoto := 'foto_' + tbTrayFotosID_Produto.AsString + '_' + tbTrayFotosID.AsString + '.JPEG';
          foto := TMemoryStream.Create;
          try
            image := TJPEGImage.Create;
            try
              image.Assign(tbTrayFotosFoto);
              image.SaveToStream(foto);
            finally
              image.Free;
            end;
            DD.exportaftp(foto, nomefoto);
          finally
            foto.Free;
          end;

          tbBMintaux.Append;
          tbBMintauxID_BM.AsString := tbTrayFotosID.AsString;
          tbBMintauxTipo.AsString := 'FOT';
          tbBMintaux.Post;
          tbTrayFotos.Next;
        end
        else
        begin
          tbTrayFotos.Next;
        end;

        AvisoAtt('Fotos envidas com sucesso.', 3, -1);
      end;
    finally
      DD.desconectaftp;
    end;
  end;
end;

procedure Tprodutosfrm.Button3Click(Sender: TObject);
begin
  TbPersonal.Close;
  TbPersonal.Open;

  tbTrayProdutos.First;
  //
  while not tbTrayProdutos.Eof do
  begin
    tbBMprodutos.Close;
    tbBMprodutos.Open;
    if tbBMprodutos.Locate('ID', tbTrayProdutosid_produto.AsInteger, []) then
    begin
      tbBMprodutos.Edit;
      tbBMprodutosDescricao.AsString := tbTrayProdutosname.AsString;
      tbBMprodutosClasse.AsString := '';
      tbBMprodutosMarca.AsString := tbTrayProdutosbrand.AsString;
      tbBMprodutosPrecoVenda2.AsFloat := tbTrayProdutosprice.AsFloat;
      tbBMprodutosPeso_Liquido.AsFloat := tbTrayProdutosweight.AsInteger;
      tbBMprodutosPeso_Bruto.AsFloat := tbTrayProdutosweight.AsInteger;
      tbBMprodutosComprimento.AsFloat := tbTrayProdutoslength.AsInteger;
      tbBMprodutosLargura.AsFloat := tbTrayProdutoswidth.AsInteger;
      tbBMprodutosAltura.AsFloat := tbTrayProdutosheight.AsInteger;
      tbBMprodutosExportaIntegrador.AsString := 'N';
      tbBMprodutos.Post;

      if not TbPersonal.Locate('id_produto', tbTrayProdutosid_produto.AsInteger, []) then
      begin
        TbPersonal.Append;
        TbPersonalID_Produto.AsInteger := tbTrayProdutosid_produto.AsInteger;
        TbPersonalModelo.AsString := tbTrayProdutosmodel.AsString;
        TbPersonalReferencia.AsString := tbTrayProdutosreference.AsString;
        TbPersonalDisponibilidade.AsString := tbTrayProdutosavailability.AsString;
        TbPersonalTituloPagina.AsString := tbTrayProdutostitulo.AsString;
        TbPersonalDescricaoSimplificada.AsString := tbTrayProdutosdescricaosimplificada.AsString;
        TbPersonalPalavraChave.AsString := tbTrayProdutospalavrachave.AsString;
        TbPersonalItensInclusos.AsString := tbTrayProdutosincluded_items.AsString;
        TbPersonal.Post;
      end;

    end
    else
    begin
      tbTrayProdutos.Next;
    end;

    if not tbBMintaux.Locate('ID_BM;Tipo', vararrayof([tbTrayProdutosid_produto.AsInteger, 'PRD']), []) then
    begin
      qrBMProduto.Close;
      qrBMproduto.ParamByName('ID_Produto').AsInteger := tbTrayProdutosid_produto.AsInteger;
      qrBMProduto.Open;

      tbBMintaux.Append;
      tbBMintauxHASH.AsString := MD5String(qrBMprodutoDESCRICAO.AsString + qrBMprodutoPrecoVenda2.AsString);
      tbBMintauxTipo.AsString := 'PRD';
      tbBMintauxID_Int.AsString := tbTrayProdutosid_produto.AsString;
      tbBMintauxID_BM.AsString := tbTrayProdutosid_produto.AsString;
      tbBMintaux.Post;
    end;
    tbTrayProdutos.Next;

  end;

  try
    tbBMintaux.Close;
    tbBMintaux.Open;
    qrBMintaux.Close;
    qrBMintaux.Open;
  except
    AvisoAtt('Não foi possível abrir as tabelas, favor fechar o sistema BM e reparar tabelas.', -5, -1);
    frmMain.T.FecharTudo;
    abort;
  end;

  DBGrid5.Visible := false;
  DBGrid6.Visible := false;
  Panel7.Caption := 'Produtos da BM';
  Panel4.Caption := 'Produtos Enviados';
end;

//Todo:GET fotos

function Tprodutosfrm.getfotosprodutos(IDprod: Integer; VariacaoFotos: Boolean): string;
var
  ObjPicture, ObjImages, ObjResult, Objproduct, Objcauses: TJSONObject;
  OValue: TJsonValue;
  jArrayslug: TJsonArray;
  I: integer;
begin
  result := '';

  ObjPicture := TJSONObject.Create;
  ObjImages := TJSONObject.Create;
  ObjResult := TJSONObject.Create;
  Objproduct := TJSONObject.Create;
  Objcauses := TJSONObject.Create;
  jArrayslug := TJSONArray.Create;

  try
    tbTrayFotos.Close;
    tbTrayFotos.Filtered := false;
    tbTrayFotos.Open;
  except
    AvisoAtt('Não foi possível abrir as tabelas, favor fechar o sistema BM e reparar tabelas.', -5, -1);
    frmMain.T.FecharTudo;
    abort;
  end;

  tbTrayFotos.Filter := 'ID_Produto=' + IDprod.ToString;
  tbTrayFotos.Filtered := true;
  tbTrayFotos.First;

  for I := 1 to min(tbTrayFotos.FilterRecordCount, 15) do
  begin
    if Assigned(ObjPicture) then
      AddPairString(ObjPicture, 'picture_source_' + i.ToString, 'http://bmrepositorio.tecnologia.ws/tray/foto_' +
        tbTrayFotosID_Produto.AsString + '_' + tbTrayFotosID.AsString + '.JPEG');
    result := result + tbTrayFotosID.AsString;
    tbTrayFotos.Next;

  end;

  if HashFotos = True then
  begin
    ObjImages.AddPair('Images', ObjPicture);

//    if Variacao = True then
//    begin
//      QrProdVarBusca.Close;
//      QrProdVarBusca.Open;
//
//      QrProdVarBusca.Locate('ID_BM;Tipo;Observacoes', vararrayof([qrBMprodutosID.AsInteger, 'PRV', qrBMprodutosREFERENCIA.Value]), []);
//
//      frmRequest.RESTClientFotosProd.BaseURL := defurl + 'variants/' +
//        QrProdVarBuscaID_Int.AsString + '/images/?access_token=' + def_access_token;
//    end
//    else
//    begin
//      frmRequest.RESTClientFotosProd.BaseURL := defurl + defprodutos + '/' +
//        qrBMintauxID_Int.AsString + '/images/?access_token=' + def_access_token;
//    end;
    //
//    frmRequest.RESTRequestFotosProd.Body.ClearBody;
//    frmRequest.RESTRequestFotosProd.AddBody(ObjImages);
//    frmRequest.RESTRequestFotosProd.Execute;
//    OValue := TJSONObject.ParseJSONValue(frmRequest.RESTResponseFotosProd.Content.ToLower);
    //ShowMessage(frmRequest.RESTResponseFotosProd.Content);

    //StringToFile(ObjImages.ToString + frmRequest.RESTClientFotosProd.BaseURL, 'D:\bmsoft\BM2Tray\extras\IMAGE.json');

    ObjResult := OValue as TJsonObject;
    //showmessage(ObjProdutosProduct.ToString);

    if ObjResult.Get('code').JsonValue.Value.ToInteger <> 200 then
    begin
      Objcauses := ObjResult.Get('causes').JsonValue as TJSONObject;
      Objproduct := Objcauses.Get('product').JsonValue as TJSONObject;
      jArraySlug := Objproduct.Get('name').JsonValue as TJSONArray;
    end;

  end;
end;

procedure Tprodutosfrm.Panel4DblClick(Sender: TObject);
begin
  Button1.Visible := not Button1.Visible;
  Button3.Visible := not Button3.Visible;
end;

//Procedure responsável por enviar todos os produtos sequencialmente

procedure Tprodutosfrm.btnenviartodosClick(Sender: TObject);
var
  Id_Produto: integer;
begin
  Variacao := False;
  Order := 0;
  qrBMprodutos.First;
  try
    tbBMintaux.Close;
    tbBMintaux.Exclusive := false;
    tbBMintaux.Open;
    qrBMintaux.Open;
  except
    AvisoAtt('Não foi possível abrir as tabelas, favor fechar o sistema BM e reparar tabelas.', -5, -1);
    frmMain.T.FecharTudo;
    abort;
  end;

  while not qrBMprodutos.Eof do
  begin
    if Id_Produto = qrBMProdutosID.Value then
    begin
      QrProdVar.Close;
      QrProdVar.ParamByName('ID_BM').AsInteger := qrBMprodutosID.AsInteger;
      //QrProdVar.ParamByName('Observacoes').Value := qrBMprodutosREFERENCIA.Value;  and (Observacoes = :Observacoes)
      QrProdVar.Open;

      QrProdVarBusca.Close;
      QrProdVarBusca.Open;

      Id_Int := QrProdVarID_Int.Value;
      Variacao := True;
      Order := Order + 1;
    end
    else
    begin
      Variacao := False;
      Order := 0;
    end;

    btnenviarum.Click;

    Id_Produto := qrBMProdutosID.Value;
    qrBMprodutos.Next;
  end;

  if def_erro = true then
  begin
    AvisoAtt('Produto com dados inválidos para envio, favor consultar tela de Erros e verificar qual produto e campo precisa ser corrigido.', -999999, -1, -1);
  end;
end;

procedure Tprodutosfrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  produtosfrm := nil;
  action := caFree;

end;

//Procedure responsável por pegar o access token e salvar em uma variável para ser usada em outros FORM's

procedure Tprodutosfrm.FormCreate(Sender: TObject);
var
  ArrayAuth: TJSONObject;
  json: string;
  jv: TJSONValue;
  jValue: TJsonValue;
begin

  lblpage.Visible := false;
  frmRequest.RESTRequestAuth.Execute;
  JSONtray_marcas_enviar.Clear;
  JSONtray_marcas_enviar.Text := frmRequest.RESTResponseAuth.Content;
  json := JSONtray_marcas_enviar.Text;
  ArrayAuth := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(json), 0) as TJSONObject;
  jv := ArrayAuth.Get('access_token').JsonValue;
  tray_token_enviar.Text := 'Access Token= ' + jv.Value;
  def_access_token := jv.Value;
  jv := ArrayAuth.Get('refresh_token').JsonValue;
  tray_refresh_enviar.Text := 'Refresh Token= ' + jv.Value;
  ArrayAuth.DisposeOf;
end;

procedure Tprodutosfrm.FormResize(Sender: TObject);
begin
  try
    Panel1.Width := Trunc(parent.Width / 2);
    Panel5.Width := Panel3.Width;
  except

  end;

end;

procedure Tprodutosfrm.FormShow(Sender: TObject);
begin
  Panel1.Width := Trunc(parent.Width / 2);
end;

end.

