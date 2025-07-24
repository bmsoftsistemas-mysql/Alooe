unit ufrmPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.Json, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, dbisamtb, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, RzEdit, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls,
  RzPanel;

type
  Tfrmpedidos = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    qrBMpedidos: TDBISAMQuery;
    dtBMpedidos: TDataSource;
    serverTray: TIdHTTP;
    JSONtray_pedidos_enviar: TRzMemo;
    tray_refresh_enviar: TEdit;
    tray_token_enviar: TEdit;
    dtTrayPedidos: TDataSource;
    tbTrayPedidos: TDBISAMTable;
    qrBMpedidosID: TAutoIncField;
    qrBMpedidosJURIDICAFISICA: TStringField;
    qrBMpedidosNOME: TStringField;
    qrBMpedidosRG: TStringField;
    qrBMpedidosCPFCNPJ: TStringField;
    qrBMpedidosFONE1: TStringField;
    qrBMpedidosCELULAR: TStringField;
    qrBMpedidosEMAIL: TStringField;
    qrBMpedidosLEMBRETE: TStringField;
    qrBMpedidosFANTASIA: TStringField;
    qrBMpedidosLIMITECREDITO: TCurrencyField;
    qrBMpedidosENDERECO: TStringField;
    qrBMpedidosCEP: TStringField;
    qrBMpedidosNUMERO: TStringField;
    qrBMpedidosCOMPLEMENTO: TStringField;
    qrBMpedidosBAIRRO: TStringField;
    qrBMpedidosCIDADE: TStringField;
    qrBMpedidosUF: TStringField;
    DBGrid2: TDBGrid;
    tbTrayPedidosProdutos: TDBISAMTable;
    dtTrayPedidosProdutos: TDataSource;
    tbTrayPedidosProdutosproduct_kit_id: TIntegerField;
    tbTrayPedidosProdutosproduct_kit_id_kit: TIntegerField;
    tbTrayPedidosProdutosproduct_id: TIntegerField;
    tbTrayPedidosProdutosquantity: TIntegerField;
    tbTrayPedidosProdutosid_product: TIntegerField;
    tbTrayPedidosProdutosname: TStringField;
    tbTrayPedidosProdutosoriginal_name: TStringField;
    tbTrayPedidosProdutosean: TStringField;
    tbTrayPedidosProdutosprice: TFloatField;
    tbTrayPedidosProdutoscost_price: TFloatField;
    tbTrayPedidosProdutosbrand: TStringField;
    tbTrayPedidosProdutosreference: TStringField;
    tbTrayPedidosProdutosid_pedido: TIntegerField;
    dtBMPedidos1: TDataSource;
    tbBMPedidos1: TDBISAMTable;
    dtBMPedidosProdutos: TDataSource;
    tbBMPedidosProdutos: TDBISAMTable;
    tbBMPedidos1ID: TAutoIncField;
    tbBMPedidos1ID_Empresa: TIntegerField;
    tbBMPedidos1Numero: TIntegerField;
    tbBMPedidos1Geracao_Data: TDateField;
    tbBMPedidos1Geracao_Hora: TTimeField;
    tbBMPedidos1Data: TDateField;
    tbBMPedidos1ID_Cliente: TIntegerField;
    tbBMPedidos1Cliente_Nome: TStringField;
    tbBMPedidos1Cliente_Doc: TStringField;
    tbBMPedidos1ID_Plano: TIntegerField;
    tbBMPedidos1ID_Vendedor: TIntegerField;
    tbBMPedidos1ID_Vendedor2: TIntegerField;
    tbBMPedidos1ID_Transp: TIntegerField;
    tbBMPedidos1Frete_Tipo: TStringField;
    tbBMPedidos1Pedido_Vendedor: TStringField;
    tbBMPedidos1Data_Fat: TDateField;
    tbBMPedidos1Contato: TStringField;
    tbBMPedidos1Total_Produtos: TCurrencyField;
    tbBMPedidos1Total_Servicos: TCurrencyField;
    tbBMPedidos1Total_Bruto: TCurrencyField;
    tbBMPedidos1Acrescimos_Valor: TCurrencyField;
    tbBMPedidos1Acrescimos_Perc: TFloatField;
    tbBMPedidos1Descontos_Valor: TCurrencyField;
    tbBMPedidos1Descontos_Perc: TFloatField;
    tbBMPedidos1Total_Frete: TFloatField;
    tbBMPedidos1Despesas_Valor: TFloatField;
    tbBMPedidos1Total_Liq: TCurrencyField;
    tbBMPedidos1Obs: TMemoField;
    tbBMPedidos1Obs_Int: TMemoField;
    tbBMPedidos1Obs_Duplicatas: TMemoField;
    tbBMPedidos1Tipo: TStringField;
    tbBMPedidos1Cancelado: TStringField;
    tbBMPedidos1Alterando: TBooleanField;
    tbBMPedidos1Validado: TBooleanField;
    tbBMPedidos1TpAcre: TStringField;
    tbBMPedidos1TpDesc: TStringField;
    tbBMPedidos1DupsModif: TBooleanField;
    tbBMPedidos1Impressao: TStringField;
    tbBMPedidos1Caixa_Gerencial: TIntegerField;
    tbBMPedidos1COO_Gerencial: TIntegerField;
    tbBMPedidos1Caixa: TIntegerField;
    tbBMPedidos1COO: TIntegerField;
    tbBMPedidos1Cupom_Canc: TStringField;
    tbBMPedidos1Capturado: TStringField;
    tbBMPedidos1Mail_Enviado: TStringField;
    tbBMPedidos1Volumes: TIntegerField;
    tbBMPedidos1Especie: TStringField;
    tbBMPedidos1Peso_Bruto: TFloatField;
    tbBMPedidos1Peso_Liquido: TFloatField;
    tbBMPedidos1Entrega_IDCliente: TIntegerField;
    tbBMPedidos1Entrega_IDEnder: TIntegerField;
    tbBMPedidos1ImportMP: TBooleanField;
    tbBMPedidos1id_mp: TIntegerField;
    tbBMPedidos1id_carga: TIntegerField;
    tbBMPedidos1flag_carga: TStringField;
    tbBMPedidos1web_status: TStringField;
    tbBMPedidos1ID_CCustos: TIntegerField;
    tbBMPedidos1Cod_Classific: TStringField;
    tbBMPedidos1Complemento: TStringField;
    tbBMPedidos1Lista_Preco: TStringField;
    tbBMPedidos1DH_Confirmado: TDateTimeField;
    tbBMPedidos1ID_Usuario: TIntegerField;
    tbBMPedidos1HASH: TStringField;
    tbBMPedidosProdutosID: TAutoIncField;
    tbBMPedidosProdutosItem: TIntegerField;
    tbBMPedidosProdutosID_Orc: TIntegerField;
    tbBMPedidosProdutosID_Produto: TIntegerField;
    tbBMPedidosProdutosID_Referencia: TIntegerField;
    tbBMPedidosProdutosReferencia: TStringField;
    tbBMPedidosProdutosTipo_Produto: TStringField;
    tbBMPedidosProdutosData_Inclusao: TDateField;
    tbBMPedidosProdutosQtdade: TFloatField;
    tbBMPedidosProdutosqtdade_original: TFloatField;
    tbBMPedidosProdutosqtdade_a_produzir: TFloatField;
    tbBMPedidosProdutosqtdade_produzida: TFloatField;
    tbBMPedidosProdutosPreco_Lista: TCurrencyField;
    tbBMPedidosProdutosPreco_Venda: TCurrencyField;
    tbBMPedidosProdutosPreco_Total_Bruto: TCurrencyField;
    tbBMPedidosProdutosDesconto_Perc: TFloatField;
    tbBMPedidosProdutosDesconto_Valor: TCurrencyField;
    tbBMPedidosProdutosAcrescimo_Perc: TFloatField;
    tbBMPedidosProdutosAcrescimo_Valor: TFloatField;
    tbBMPedidosProdutosPreco_Total_Liq: TCurrencyField;
    tbBMPedidosProdutosPromocao: TStringField;
    tbBMPedidosProdutosPreco_Especial: TBooleanField;
    tbBMPedidosProdutosLista_Preco: TStringField;
    tbBMPedidosProdutosTexto: TMemoField;
    tbBMPedidosProdutosRecusado: TBooleanField;
    tbBMPedidosProdutosQtd_Recusada: TFloatField;
    tbBMPedidosProdutosCancelado: TStringField;
    tbBMPedidosProdutosPedido_Num: TStringField;
    tbBMPedidosProdutosPedido_Item: TIntegerField;
    tbBMPedidosProdutosPeso_Bruto: TFloatField;
    tbBMPedidosProdutosQtd_Prox_Ent: TFloatField;
    tbBMPedidosProdutosPreco_Negociado: TFloatField;
    tbBMPedidosProdutosTipo_Preco: TStringField;
    tbBMPedidosProdutosID_Conta: TIntegerField;
    tbBMPedidosProdutosLote: TBooleanField;
    tbBMPedidosProdutosID_Depto: TIntegerField;
    tbBMPedidosProdutosID_Vendedor: TIntegerField;
    tbBMPedidosProdutosID_Vendedor2: TIntegerField;
    tbBMPedidosProdutosData_Entrega: TDateField;
    tbBMPedidosProdutosflag_carga: TStringField;
    tbBMPedidosProdutosHASH: TStringField;
    tbBMorcControl: TDBISAMTable;
    tbBMorcControlID_Empresa: TIntegerField;
    tbBMorcControlNumero: TIntegerField;
    qrBMpedidosEnviar: TStringField;
    RzPanel15: TRzPanel;
    btspedidos: TButton;
    btnGetProdutos: TButton;
    btnEnviarBM: TButton;
    Button4: TButton;
    btnenviartodos: TButton;
    Panel2: TPanel;
    edtdata: TDateTimePicker;
    Label1: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    tbBMintaux: TDBISAMTable;
    tbBMintauxID_Int: TStringField;
    tbBMintauxID_BM: TIntegerField;
    tbBMintauxTipo: TStringField;
    tbBMintauxHASH: TStringField;
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
    tbBMprodutosref: TDBISAMTable;
    tbBMprodutosrefID: TAutoIncField;
    tbBMprodutosrefID_Produto: TIntegerField;
    tbBMprodutosrefReferencia: TStringField;
    tbBMprodutosrefEAN: TStringField;
    tbBMprodutosrefDescricao: TStringField;
    tbBMprodutosrefCod_Fornec: TStringField;
    tbBMprodutosrefCod_Fornec_Ex: TStringField;
    tbBMprodutosrefqtdeti: TIntegerField;
    tbBMprodutosrefAtivo: TStringField;
    tbBMprodutosrefHASH: TStringField;
    tbBMprodutosprincipal: TDBISAMTable;
    tbBMprodutosprincipalID: TAutoIncField;
    tbBMprodutosprincipalDescricao: TStringField;
    tbBMprodutosprincipalClasse: TStringField;
    tbBMprodutosprincipalMarca: TStringField;
    tbBMprodutosprincipalTipo: TStringField;
    tbBMprodutosprincipalPrecoVenda1: TFloatField;
    btnmarcartodos: TButton;
    tbBMcidades: TDBISAMTable;
    tbBMcidadesCodigo: TStringField;
    tbBMcidadesNome: TStringField;
    tbBMcidadesCEP_Ini: TStringField;
    tbBMcidadesCEP_Fim: TStringField;
    tbBMcidadesCodigo_UF: TStringField;
    tbBMcidadesNome_UF: TStringField;
    tbBMcidadesSigla_UF: TStringField;
    qrBMcidades: TDBISAMQuery;
    qrBMcidadesCODIGO: TStringField;
    qrBMcidadesCEP_INI: TStringField;
    qrBMcidadesCEP_FIM: TStringField;
    qrBMcidadesNOME: TStringField;
    tbTrayPedidosEnviar: TStringField;
    tbTrayPedidosid_pedidos: TIntegerField;
    tbTrayPedidosstatus: TStringField;
    tbTrayPedidosdate: TDateField;
    tbTrayPedidoscustomer_id: TIntegerField;
    tbTrayPedidospartial_total: TFloatField;
    tbTrayPedidostaxes: TFloatField;
    tbTrayPedidosdiscount: TFloatField;
    tbTrayPedidosshipment_value: TFloatField;
    tbTrayPedidosshipment_date: TDateField;
    tbTrayPedidosdiscount_coupon: TStringField;
    tbTrayPedidospayment_method_rate: TFloatField;
    tbTrayPedidosvalue_1: TFloatField;
    tbTrayPedidospayment_form: TStringField;
    tbTrayPedidossending_code: TStringField;
    tbTrayPedidossession_id: TStringField;
    tbTrayPedidostotal: TFloatField;
    tbTrayPedidospayment_date: TDateField;
    tbTrayPedidosaccess_code: TStringField;
    tbTrayPedidosshipment_integrator: TStringField;
    tbTrayPedidosmodified: TDateField;
    tbTrayPedidosid_quotation: TStringField;
    tbTrayPedidosestimated_delivery_date: TIntegerField;
    tbTrayPedidostotal_comission: TFloatField;
    tbTrayPedidosis_traceable: TIntegerField;
    tbTrayPedidosdefault: TIntegerField;
    tbTrayPedidostype: TStringField;
    tbTrayPedidosshow_backoffice: TIntegerField;
    tbTrayPedidosallow_edit_order: TIntegerField;
    tbTrayPedidosdescription: TStringField;
    tbTrayPedidosshow_status_central: TStringField;
    tbTrayPedidosbackground: TStringField;
    tbTrayPedidosname: TStringField;
    tbTrayPedidosrg: TStringField;
    tbTrayPedidoscpf: TStringField;
    tbTrayPedidosphone: TStringField;
    tbTrayPedidoscellphone: TStringField;
    tbTrayPedidosemail: TStringField;
    tbTrayPedidosobservation: TStringField;
    tbTrayPedidostype_customer: TStringField;
    tbTrayPedidoscnpj: TStringField;
    tbTrayPedidoscredit_limit: TFloatField;
    tbTrayPedidosaddress: TStringField;
    tbTrayPedidoszip_code: TStringField;
    tbTrayPedidoscomplement: TStringField;
    tbTrayPedidosneighborhood: TStringField;
    tbTrayPedidoscity: TStringField;
    tbTrayPedidosstate: TStringField;
    dtTrayClientes: TDataSource;
    tbTrayClientesx: TDBISAMTable;
    tbTrayClientesxid_cliente: TIntegerField;
    tbTrayClientesxname: TStringField;
    tbTrayClientesxrg: TStringField;
    tbTrayClientesxcpf: TStringField;
    tbTrayClientesxphone: TStringField;
    tbTrayClientesxcellphone: TStringField;
    tbTrayClientesxbirth_date: TDateField;
    tbTrayClientesxid_gender: TIntegerField;
    tbTrayClientesxemail: TStringField;
    tbTrayClientesxnickname: TStringField;
    tbTrayClientesxtoken: TStringField;
    tbTrayClientesxtotal_orders: TIntegerField;
    tbTrayClientesxobservation: TStringField;
    tbTrayClientesxid_type: TStringField;
    tbTrayClientesxcnpj: TStringField;
    tbTrayClientesxcompany_name: TStringField;
    tbTrayClientesxstate_inscription: TStringField;
    tbTrayClientesxreseller: TIntegerField;
    tbTrayClientesxdiscount: TFloatField;
    tbTrayClientesxid_blocked: TIntegerField;
    tbTrayClientesxcredit_limit: TFloatField;
    tbTrayClientesxindicator_id: TIntegerField;
    tbTrayClientesxprofile_customer_id: TIntegerField;
    tbTrayClientesxlast_sending_newsletter: TDateField;
    tbTrayClientesxlast_purchase: TDateField;
    tbTrayClientesxlast_visit: TDateField;
    tbTrayClientesxlast_modification: TDateField;
    tbTrayClientesxaddress: TStringField;
    tbTrayClientesxzip_code: TStringField;
    tbTrayClientesxcomplement: TStringField;
    tbTrayClientesxneighborhood: TStringField;
    tbTrayClientesxcity: TStringField;
    tbTrayClientesxstate: TStringField;
    tbTrayClientesxnewslatter: TIntegerField;
    tbTrayClientesxcreated: TDateField;
    tbTrayClientesxregistration_date: TDateField;
    tbTrayClientesxmodifed: TDateField;
    QDelPedidos: TDBISAMQuery;
    tbTrayClientesxnumber_address: TStringField;
    tbTrayStatus: TDBISAMTable;
    tbTrayStatusid_status: TIntegerField;
    tbTrayStatusstatus: TStringField;
    tbTrayStatusflag: TStringField;
    tbTrayPedidosmensagem: TStringField;
    tbTrayPedidosnumber_address: TStringField;
    procedure btspedidosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnGetProdutosClick(Sender: TObject);
    procedure dtTrayPedidosDataChange(Sender: TObject; Field: TField);
    procedure btnEnviarBMClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnenviartodosClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnmarcartodosClick(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    function analisaexistenciadate(o: TJsonObject; s: string): TDateTime;
    function analisaexistenciafloat(o: TJsonObject; s: string): double;
    function analisaexistenciainteger(o: TJsonObject; s: string): Integer;
    function analisaexistenciastr(o: TJsonObject; s: string): string;
    function datatopadrao(s: string): string;
  end;

var
  frmpedidos: Tfrmpedidos;

implementation

{$R *.dfm}

uses ufrmRequest, uDD, ufrmAviso, uMain, MD5, ufuncoesGerais;

//Função utilizada para alterar datas que venham em branco ou com formato incorreto
function Tfrmpedidos.datatopadrao(s: string): string;
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

procedure Tfrmpedidos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_SPACE then
    Button4.Click;
end;

procedure Tfrmpedidos.dtTrayPedidosDataChange(Sender: TObject; Field: TField);
begin
  try
    // btnGetProdutos.Click;
    tbTrayPedidosProdutos.Filter := 'id_pedido=' + tbTrayPedidosid_pedidos.AsString;
    tbTrayPedidosProdutos.Filtered := true;

  except

  end;
end;

//Função para analisar tipos String se estão no formato de envio correto
function Tfrmpedidos.analisaexistenciastr(o: TJsonObject; s: string): string;
begin
  if o.GetValue(s) <> nil then
    result := o.Get(s).JsonValue.Value
  else
    result := '';
end;

//Função para analisar tipos Date se estão no formato de envio correto
function Tfrmpedidos.analisaexistenciadate(o: TJsonObject; s: string): TDateTime;
begin

  if (o.GetValue(s) <> nil) then
    result := StrToDateTime(datatopadrao(o.Get(s).JsonValue.Value))
  else
    result := StrToDateTime(datatopadrao('0000-00-00'));

end;

//Função para analisar tipos Integer se estão no formato de envio correto
function Tfrmpedidos.analisaexistenciainteger(o: TJsonObject; s: string): Integer;
begin
  if o.GetValue(s) <> nil then
    result := StrToInt('0' + o.Get(s).JsonValue.Value)
  else
    result := 0;
end;

//Função para analisar tipos Float se estão no formato de envio correto
function Tfrmpedidos.analisaexistenciafloat(o: TJsonObject; s: string): double;
begin
  if o.GetValue(s) <> nil then
    result := StrToFloat(StringReplace(o.Get(s).JsonValue.Value, '.', ',', [rfReplaceAll]))
  else
    result := 0;
end;

//Procedure responsável pelo Get de todos os pedidos
procedure Tfrmpedidos.btspedidosClick(Sender: TObject);
var
  jValue: TJsonValue;
  jObj, jObjPedidos, jObjCampos, jObjpagina, jObjCliente: TJsonObject;
  jArrayPedidos: TJsonArray;
  i: integer;
  j: integer;
  total: integer;
  limit: integer;
  n_paginas: integer;
  n_pagina: integer;

begin
  //Logar('Iniciando importação de pedidos...');
  try
    tbTrayPedidos.Close;
    tbTrayPedidos.Open;
    tbBMPedidos1.Close;
    tbBMPedidos1.Open;

  except
    //showmessage('entrou');
    AvisoAtt('Não foi possível abrir as tabelas, favor fechar o sistema BM e reparar tabelas.', -5, -1);
    frmMain.T.FecharTudo;
    abort;
  end;

  JSONtray_pedidos_enviar.Clear;
  QDelPedidos.execSQL;
  n_pagina := 1;
//  frmRequest.RESTRequestPedidos.Params[5].Value := FormatDateTime('yyyy-mm-dd', edtdata.Date);
  while True do
  begin
//    frmRequest.RESTRequestPedidos.Params[4].Value := def_access_token;
//    frmRequest.RESTRequestPedidos.Params[6].Value := n_pagina.ToString;
//    frmRequest.RESTRequestPedidos.Execute;
//    JSONtray_pedidos_enviar.Text := frmRequest.RESTResponsePedidos.Content;
    jValue := TJSONObject.ParseJSONValue(JSONtray_pedidos_enviar.Text);
    jObj := jValue as TJsonObject;
    JSONtray_pedidos_enviar.Text := jObj.ToJSON;
    jArrayPedidos := jObj.Get('Orders').JsonValue as TJSONArray;
    //Logar(jObj.ToString);
    jObjpagina := jObj.Get('paging').JsonValue as TJSONObject;
    total := jObjpagina.GetValue('total').Value.ToInteger;
    limit := jObjpagina.GetValue('limit').Value.ToInteger;

    for I := 0 to jArrayPedidos.Size - 1 do
    begin
      jObjPedidos := jArrayPedidos.Get(i) as TJSONObject;
      jObjCampos := jObjPedidos.Get('Order').JsonValue as TJsonObject;
      tbTrayPedidos.Append;
      tbTrayPedidosstatus.AsString              := analisaexistenciastr(jObjCampos, 'status');
      tbTrayPedidosid_pedidos.AsString          := analisaexistenciastr(jObjCampos, 'id');
      tbTrayPedidosdate.AsDateTime              := analisaexistenciadate(jObjCampos, 'date');
      tbTrayPedidoscustomer_id.AsInteger        := analisaexistenciainteger(jObjCampos, 'customer_id');
      tbTrayPedidospartial_total.AsFloat        := analisaexistenciafloat(jObjCampos, 'partial_total');
      tbTrayPedidostaxes.AsFloat                := analisaexistenciafloat(jObjCampos, 'taxes');
      tbTrayPedidosdiscount.AsFloat             := analisaexistenciafloat(jObjCampos, 'discount');
      tbTrayPedidosshipment_value.AsFloat       := analisaexistenciafloat(jObjCampos, 'shipment_value');
      tbTrayPedidosshipment_date.AsDateTime     := analisaexistenciadate(jObjCampos, 'shipment_date');
      tbTrayPedidosdiscount_coupon.AsString     := analisaexistenciastr(jObjCampos, 'discount_coupon');
      tbTrayPedidospayment_method_rate.AsFloat  := analisaexistenciafloat(jObjCampos, 'payment_method_rate');
      tbTrayPedidosvalue_1.AsFloat              := analisaexistenciafloat(jObjCampos, 'value_1');
      tbTrayPedidospayment_form.AsString        := analisaexistenciastr(jObjCampos, 'payment_form');
      tbTrayPedidossending_code.AsString        := analisaexistenciastr(jObjCampos, 'sending_code');
      tbTrayPedidossession_id.AsString          := analisaexistenciastr(jObjCampos, 'session_id');
      tbTrayPedidostotal.AsFloat                := analisaexistenciafloat(jObjCampos, 'total');
      tbTrayPedidospayment_date.AsDateTime      := analisaexistenciadate(jObjCampos, 'payment_date');
      tbTrayPedidosaccess_code.AsString         := analisaexistenciastr(jObjCampos, 'access_code');
      tbTrayPedidosshipment_integrator.AsString := analisaexistenciastr(jObjCampos, 'shipment_integrator');
      tbTrayPedidosmodified.AsDateTime          := analisaexistenciadate(jObjCampos, 'modified');
      tbTrayPedidosid_quotation.AsString        := analisaexistenciastr(jObjCampos, 'id_quotation');
      tbTrayPedidostotal_comission.AsFloat      := analisaexistenciafloat(jObjCampos, 'total_comission');
      tbTrayPedidosis_traceable.AsInteger       := analisaexistenciainteger(jObjCampos, 'is_traceable');
      tbTrayPedidosdefault.AsInteger            := analisaexistenciainteger(jObjCampos, 'default');
      tbTrayPedidostype.AsString                := analisaexistenciastr(jObjCampos, 'type');
      tbTrayPedidosshow_backoffice.AsInteger    := analisaexistenciainteger(jObjCampos, 'show_backoffice');
      tbTrayPedidosallow_edit_order.AsInteger   := analisaexistenciainteger(jObjCampos, 'allow_edit_order');
      tbTrayPedidosdescription.AsString         := analisaexistenciastr(jObjCampos, 'description');
      tbTrayPedidosshow_status_central.AsString := analisaexistenciastr(jObjCampos, 'show_status_central');
      tbTrayPedidosbackground.AsString          := analisaexistenciastr(jObjCampos, 'background');
      tbTrayPedidos.Post;

    end;
    n_pagina := n_pagina + 1;
    n_paginas := Trunc((total / limit));
    if (total mod limit) > 0 then
      n_paginas := n_paginas + 1;
    if n_paginas < n_pagina then
      break;

  end;
  //Logar('Importação terminada...');
end;

//Responsável por enviar os pedidos que foram marcados
procedure Tfrmpedidos.btnmarcartodosClick(Sender: TObject);
begin
  tbTrayPedidos.First;
  while not tbTrayPedidos.Eof do
    //    if not tbBMPedidos1.Locate('id_mp', tbTrayPedidosid_pedidos.AsInteger, []) then
  begin
    tbTrayPedidos.Edit;
    tbTrayPedidosEnviar.AsString := 'X';
    tbTrayPedidos.Post;
    tbTrayPedidos.Next;
  end
    //    else
    //      tbTrayPedidos.Next;
end;

procedure Tfrmpedidos.btnenviartodosClick(Sender: TObject);
begin
  tbTrayPedidos.First;
  while not tbTrayPedidos.Eof do
  begin
    if tbTrayPedidosEnviar.AsString = 'X' then
      btnEnviarBM.Click;
    tbTrayPedidos.Next;
  end;

end;

//Procedure responsável pelo Get ddos produtos de determiando pedido
procedure Tfrmpedidos.btnGetProdutosClick(Sender: TObject);
var
  jValue: TJsonValue;
  jObj, jObjPedidos, jObjPedidosProdutos, jObjCampos, jObjCliente: TJsonObject;
  jArrayPedidos: TJsonArray;
  i: integer;
begin
  try
    tbTrayPedidosProdutos.Open;
    tbBMintaux.Close;
    tbBMintaux.Open;
    //    tbTrayPedidos.Close;
    //    tbTrayPedidos.Open;
  except
    AvisoAtt('Não foi possível abrir as tabelas, favor fechar o sistema BM e reparar tabelas.', -5, -1);
    frmMain.T.FecharTudo;
    abort;
  end;

  while not tbTrayPedidosProdutos.Eof do
    tbTrayPedidosProdutos.Delete;
  JSONtray_pedidos_enviar.Clear;
//  frmRequest.RESTClientPedidosProdutos.BaseURL := defurl + defpedidos + '/' + tbTrayPedidosid_pedidos.AsString +
//    '/complete/?access_token=' + def_access_token;
//  frmRequest.RESTRequestPedidosProdutos.Execute;
//  JSONtray_pedidos_enviar.Text := frmRequest.RESTResponsePedidosProdutos.Content;
  jValue                       := TJSONObject.ParseJSONValue(JSONtray_pedidos_enviar.Text);
  jObj                         := jValue as TJsonObject;
  JSONtray_pedidos_enviar.Text := jObj.ToJSON;
  jObjPedidos                  := jObj.Get('Order').JsonValue as TJSONObject;
  jObjCliente                  := jObjPedidos.Get('Customer').JsonValue as TJSONObject;
  jArrayPedidos                := jObjPedidos.Get('ProductsSold').JsonValue as TJSONArray;

  for I := 0 to jArrayPedidos.Size - 1 do
  begin
    jObjPedidosProdutos := jArrayPedidos.Get(i) as TJSONObject;
    jObjCampos := jObjPedidosProdutos.Get('ProductsSold').JsonValue as TJsonObject;
    tbTrayPedidosProdutos.Append;
    tbTrayPedidosProdutosid_product.AsInteger         := analisaexistenciainteger(jObjCampos, 'id');
    tbTrayPedidosProdutosproduct_kit_id.AsInteger     := analisaexistenciainteger(jObjCampos, 'product_kit_id');
    tbTrayPedidosProdutosproduct_kit_id_kit.AsInteger := analisaexistenciainteger(jObjCampos, 'product_kit_id_kit');
    tbTrayPedidosProdutosproduct_id.AsInteger         := analisaexistenciainteger(jObjCampos, 'product_id');
    tbTrayPedidosProdutosquantity.AsInteger           := analisaexistenciainteger(jObjCampos, 'quantity');
    tbTrayPedidosProdutosname.AsString                := analisaexistenciastr(jObjCampos, 'name');
    tbTrayPedidosProdutosoriginal_name.AsString       := analisaexistenciastr(jObjCampos, 'original_name');
    tbTrayPedidosProdutosean.AsString                 := analisaexistenciastr(jObjCampos, 'ean');
    tbTrayPedidosProdutosprice.AsFloat                := analisaexistenciafloat(jObjCampos, 'price');
    tbTrayPedidosProdutoscost_price.AsFloat           := analisaexistenciafloat(jObjCampos, 'cost_price');
    tbTrayPedidosProdutosreference.AsString           := analisaexistenciastr(jObjCampos, 'reference');
    tbTrayPedidosProdutosid_pedido.AsString           := tbTrayPedidosid_pedidos.AsString;
    tbTrayPedidosProdutos.Post;

    //dados do cliente:

    tbTrayPedidos.Edit;
    tbTrayPedidosname.AsString           := AnsiUpperCase(analisaexistenciastr(jObjCliente, 'name'));
    tbTrayPedidosrg.AsString             := AnsiUpperCase(analisaexistenciastr(jObjCliente, 'rg'));
    tbTrayPedidoscpf.AsString            := AnsiUpperCase(analisaexistenciastr(jObjCliente, 'cpf'));
    tbTrayPedidosphone.AsString          := AnsiUpperCase(analisaexistenciastr(jObjCliente, 'phone'));
    tbTrayPedidoscellphone.AsString      := AnsiUpperCase(analisaexistenciastr(jObjCliente, 'cellphone'));
    tbTrayPedidosemail.AsString          := AnsiUpperCase(analisaexistenciastr(jObjCliente, 'email'));
    tbTrayPedidosobservation.AsString    := AnsiUpperCase(analisaexistenciastr(jObjCliente, 'observation'));
    tbTrayPedidostype_customer.AsInteger := analisaexistenciainteger(jObjCliente, 'type');

    if tbTrayPedidostype_customer.AsInteger = 0 then
      tbTrayPedidostype_customer.AsString := 'F'
    else
      tbTrayPedidostype_customer.AsString := 'J';

    tbTrayPedidoscnpj.AsString           := AnsiUpperCase(analisaexistenciastr(jObjCliente, 'cnpj'));
    tbTrayPedidoscredit_limit.AsFloat    := analisaexistenciafloat(jObjCliente, 'credit_limit');
    tbTrayPedidosaddress.AsString        := AnsiUpperCase(analisaexistenciastr(jObjCliente, 'address'));
    tbTrayPedidoszip_code.AsString       := AnsiUpperCase(analisaexistenciastr(jObjCliente, 'zip_code'));
    tbTrayPedidosnumber_address.AsString := analisaexistenciastr(jObjCliente, 'number');
    tbTrayPedidoscomplement.AsString     := AnsiUpperCase(analisaexistenciastr(jObjCliente, 'complement'));
    tbTrayPedidosneighborhood.AsString   := AnsiUpperCase(analisaexistenciastr(jObjCliente, 'neighborhood'));
    tbTrayPedidoscity.AsString           := AnsiUpperCase(analisaexistenciastr(jObjCliente, 'city'));
    tbTrayPedidosstate.AsString          := AnsiUpperCase(analisaexistenciastr(jObjCliente, 'state'));
    tbTrayPedidos.Post;

  end;

end;

//Procedure responsável por enviar os produtos do pedido selecionado para a tabela BM
procedure Tfrmpedidos.btnEnviarBMClick(Sender: TObject);
var
  NumPed, NumItem, Id_prod, Id_ref: integer;
  jValue: TJsonValue;
  jObj, jObjCliente, jObjCampos, jObjpagina: TJsonObject;
  jArrayClientes: TJsonArray;
begin
  // inserindo pedido...
  NumPed := 1;
  try
    tbBMorcControl.Open;
  except
    AvisoAtt('Não foi possível abrir as tabelas, favor fechar o sistema BM e reparar tabelas.', -5, -1);
    frmMain.T.FecharTudo;
    abort;
  end;

  if tbBMorcControl.Locate('id_empresa', pubEmpresaAtiva, []) then
  begin
    tbBMorcControl.Refresh;
    tbBMorcControl.Edit;
    NumPed := tbBMorcControlNumero.AsInteger + 1;
    tbBMorcControlNumero.AsInteger := NumPed;
    tbBMorcControl.Post;
  end
  else
  begin
    tbBMorcControl.Append;
    NumPed := 1;
    tbBMorcControlID_Empresa.AsInteger := pubEmpresaAtiva;
    tbBMorcControlNumero.AsInteger := NumPed;
    tbBMorcControl.Post;
  end;

  try
    tbBMorcControl.Close;
    tbBMPedidos1.Open;
    tbBMPedidosProdutos.Open;
    tbBMClientes.Close;
    tbBMClientes.Open;
    tbBMintaux.Close;
    tbBMintaux.Open;
    tbBMprodutosref.Close;
    tbBMprodutosref.Open;
    tbBMprodutosprincipal.Close;
    tbBMprodutosprincipal.Open;
    tbBMcidades.Close;
    tbBMcidades.Open;
    tbTrayClientesx.Close;
    tbTrayClientesx.Open;
    tbTrayStatus.Close;
    tbTrayStatus.Open;
  except
    AvisoAtt('Não foi possível abrir as tabelas, favor fechar o sistema BM e reparar tabelas.', -5, -1);
    frmMain.T.FecharTudo;
    abort;
  end;

  tbTrayStatus.Locate('status', tbTrayPedidosstatus.AsString, []);
  if tbTrayStatusflag.AsString = 'C' then
  begin
    if tbBMPedidos1.Locate('id_mp', tbTrayPedidosid_pedidos.AsInteger, []) then
    begin
      if tbBMPedidos1Capturado.AsString = 'S' then
      begin
        //AvisoAtt('O pedido: ' + tbTrayPedidosid_pedidos.AsString +
        //'já foi capturado e gerado nota, necessário cancelamento da nota manualmente.', 5, -1);
        tbTrayPedidos.Edit;
        tbTrayPedidosmensagem.AsString := 'O pedido: ' + tbTrayPedidosid_pedidos.AsString +
          'já foi capturado e gerado nota, necessário cancelamento da nota manualmente.';
        tbTrayPedidos.Post;
        exit;
      end
      else
      begin
        tbBMPedidos1.Edit;
        tbBMPedidos1Cancelado.AsString := 'S';
        tbBMPedidos1.Post;
        //AvisoAtt('O pedido: ' + tbTrayPedidosid_pedidos.AsString +
        //  ' já foi capturado, mas foi cancelado.', 5, -1);
        tbTrayPedidos.Edit;
        tbTrayPedidosmensagem.AsString := 'O pedido: ' + tbTrayPedidosid_pedidos.AsString +
          ' já foi capturado, mas foi cancelado.';
        tbTrayPedidos.Post;
        exit;
        //        tbBMPedidosProdutos.First;
        //        while tbBMPedidosProdutos.Locate('ID_Orc', tbBMPedidos1ID.AsInteger, []) do
        //          tbBMPedidosProdutos.Delete;
      end;
    end
    else
    begin
      //AvisoAtt('Este pedido não pode ser capturado(não existe no BM).', 3, -1);
      tbTrayPedidos.Edit;
      tbTrayPedidosmensagem.AsString := 'Este pedido não pode ser capturado.';
      tbTrayPedidos.Post;
      exit;
    end;

  end;

  if tbBMPedidos1.Locate('id_mp', tbTrayPedidosid_pedidos.AsInteger, []) then
  begin
    if not tbTrayStatus.Locate('status', tbTrayPedidosstatus.AsString, []) then
    begin
      //AvisoAtt('Este pedido não pode ser capturado.', 3, -1);
      tbTrayPedidos.Edit;
      tbTrayPedidosmensagem.AsString := 'Este pedido não pode ser capturado.';
      tbTrayPedidos.Post;
      exit;
    end
    else
    begin
      if tbTrayStatusflag.AsString <> 'I' then
      begin
        //AvisoAtt('Este pedido não pode ser capturado.', 3, -1);
        tbTrayPedidos.Edit;
        tbTrayPedidosmensagem.AsString := 'Este pedido não pode ser capturado.';
        tbTrayPedidos.Post;
        exit;
      end
      else
      begin
        if tbBMPedidos1.Locate('id_mp', tbTrayPedidosid_pedidos.AsInteger, []) then
        begin
          //AvisoAtt('Este pedido já foi capturado.', 3, -1);
          tbTrayPedidos.Edit;
          tbTrayPedidosmensagem.AsString := 'Este pedido já foi capturado.';
          tbTrayPedidos.Post;
          exit;
        end;
      end;
    end;
  end

  else
  begin
    btnGetProdutos.Click;
    tbTrayPedidosProdutos.First;
    NumItem := 0;
    while not tbTrayPedidosProdutos.Eof do
    begin
      if not tbBMintaux.Locate('ID_Int;Tipo', vararrayof([tbTrayPedidosProdutosproduct_id.AsInteger, 'PRD']), []) then
      begin
        //AvisoAtt('Este pedido possui produtos que não constam no BM.', 3, -1);
        tbTrayPedidos.Edit;
        tbTrayPedidosmensagem.AsString := 'Este pedido possui produtos que não constam no BM.';
        tbTrayPedidos.Post;
        exit;
      end;
      tbTrayPedidosProdutos.Next;
    end;

    //enviar clientes aqui
    if not tbBMintaux.Locate('ID_Int;Tipo', vararrayof([tbTrayPedidoscustomer_id.AsInteger, 'CLT']), []) then
    begin
      JSONtray_pedidos_enviar.Clear;
//      frmRequest.RESTRequestCliente.Params[3].Value := def_access_token;
//      frmRequest.RESTClientCliente.BaseURL := defurl + defclientes + '/' +
//        tbTrayPedidoscustomer_id.AsString + '/?access_token=' + def_access_token;
//      frmRequest.RESTRequestCliente.Execute;
//      JSONtray_pedidos_enviar.Text := frmRequest.RESTResponseCliente.Content;
      jValue := TJSONObject.ParseJSONValue(JSONtray_pedidos_enviar.Text);
      jObj := jValue as TJsonObject;
      JSONtray_pedidos_enviar.Text := jObj.ToJSON;
      jObjCampos := jObj.Get('Customer').JsonValue as TJsonObject;
      //Logar(jObjCampos.ToString);

      tbtrayclientesx.Append;
      tbtrayclientesxid_cliente.AsString    := analisaexistenciastr(jObjCampos, 'id');
      tbtrayclientesxname.AsString          := analisaexistenciastr(jObjCampos, 'name');
      tbtrayclientesxrg.AsString            := analisaexistenciastr(jObjCampos, 'rg');
      tbtrayclientesxcpf.AsString           := analisaexistenciastr(jObjCampos, 'cpf');
      tbtrayclientesxphone.AsString         := analisaexistenciastr(jObjCampos, 'phone');
      tbtrayclientesxcellphone.AsString     := analisaexistenciastr(jObjCampos, 'cellphone');
      tbtrayclientesxbirth_date.AsDateTime  := analisaexistenciadate(jObjCampos, 'birth_date');
      tbtrayclientesxid_gender.AsInteger    := analisaexistenciainteger(jObjCampos, 'gender');
      tbtrayclientesxemail.AsString         := analisaexistenciastr(jObjCampos, 'email');
      tbtrayclientesxnickname.AsString      := analisaexistenciastr(jObjCampos, 'nickname');
      tbtrayclientesxtoken.AsString         := analisaexistenciastr(jObjCampos, 'token');
      tbtrayclientesxtotal_orders.AsInteger := analisaexistenciainteger(jObjCampos, 'total_orders');
      tbtrayclientesxobservation.AsString   := analisaexistenciastr(jObjCampos, 'observation');
      tbtrayclientesxid_type.AsInteger      := analisaexistenciainteger(jObjCampos, 'type');

      if tbtrayclientesxid_type.AsInteger = 0 then
        tbtrayclientesxid_type.AsString := 'F'
      else
        tbtrayclientesxid_type.AsString := 'J';

      tbtrayclientesxcnpj.AsString                      := analisaexistenciastr(jObjCampos, 'cnpj');
      tbtrayclientesxcompany_name.AsString              := analisaexistenciastr(jObjCampos, 'company_name');
      tbtrayclientesxstate_inscription.AsString         := analisaexistenciastr(jObjCampos, 'state_inscription');
      tbtrayclientesxreseller.AsInteger                 := analisaexistenciainteger(jObjCampos, 'reseller');
      tbtrayclientesxdiscount.AsFloat                   := analisaexistenciafloat(jObjCampos, 'discount');
      tbtrayclientesxid_blocked.AsInteger               := analisaexistenciainteger(jObjCampos, 'blocked');
      tbtrayclientesxcredit_limit.AsFloat               := analisaexistenciafloat(jObjCampos, 'credit_limit');
      tbtrayclientesxindicator_id.AsInteger             := analisaexistenciainteger(jObjCampos, 'indicator_id');
      tbtrayclientesxprofile_customer_id.AsInteger      := analisaexistenciainteger(jObjCampos, 'profile_customer_id');
      tbtrayclientesxlast_sending_newsletter.AsDateTime := analisaexistenciadate(jObjCampos, 'last_sending_newsletter');
      //tbtrayclientesxlast_purchase.AsDateTime         := analisaexistenciadate(jObjCampos, 'last_purchase');
      //tbtrayclientesxlast_visit.AsDateTime            := analisaexistenciadate(jObjCampos, 'last_visit');
      //tbtrayclientesxlast_modification.AsDateTime     := analisaexistenciadate(jObjCampos, 'last_modification');
      tbtrayclientesxaddress.AsString                   := analisaexistenciastr(jObjCampos, 'address');
      tbtrayclientesxzip_code.AsString                  := analisaexistenciastr(jObjCampos, 'zip_code');
      tbtrayclientesxnumber_address.AsString            := analisaexistenciastr(jObjCampos, 'number');
      tbtrayclientesxcomplement.AsString                := analisaexistenciastr(jObjCampos, 'complement');
      tbtrayclientesxneighborhood.AsString              := analisaexistenciastr(jObjCampos, 'neighborhood');
      tbtrayclientesxcity.AsString                      := analisaexistenciastr(jObjCampos, 'city');
      tbtrayclientesxstate.AsString                     := analisaexistenciastr(jObjCampos, 'state');
      tbtrayclientesxnewslatter.AsInteger               := analisaexistenciainteger(jObjCampos, 'newslatter');
      tbtrayclientesxregistration_date.AsDateTime       := analisaexistenciadate(jObjCampos, 'registration_date');
      //tbtrayclientesxmodifed.AsDateTime               := analisaexistenciadate(jObjCampos, 'modifed');
      tbtrayclientesx.Post;

      tbBMClientes.Append;
      tbBMClientesNome.AsString := AnsiUpperCase(tbtrayclientesxname.AsString);
      tbBMClientesRG.AsString   := AnsiUpperCase(sonumeros(tbtrayclientesxrg.AsString));

      if tbtrayclientesxid_type.AsString = 'F' then
        tbBMClientesCPFCNPJ.AsString := AnsiUpperCase(sonumeros(tbtrayclientesxcpf.AsString))
      else
        tbBMClientesCPFCNPJ.AsString := AnsiUpperCase(sonumeros(tbtrayclientesxcnpj.AsString));

      tbBMClientesFone1.AsString          := AnsiUpperCase(tbtrayclientesxphone.AsString);
      tbBMClientesCelular.AsString        := AnsiUpperCase(tbtrayclientesxcellphone.AsString);
      tbBMClientesemail.AsString          := LowerCase(tbtrayclientesxemail.AsString);
      tbBMClientesLembrete.AsString       := AnsiUpperCase(tbtrayclientesxobservation.AsString);
      tbBMClientesJuridicaFisica.AsString := AnsiUpperCase(tbtrayclientesxid_type.AsString);
      tbBMClientesLimiteCredito.AsString  := AnsiUpperCase(tbtrayclientesxcredit_limit.AsString);
      tbBMClientesEndereco.AsString       := AnsiUpperCase(tbtrayclientesxaddress.AsString);
      tbBMClientesCEP.AsString            := AnsiUpperCase(sonumeros(tbtrayclientesxzip_code.AsString));
      tbBMClientesNumero.AsString         := AnsiUpperCase(tbtrayclientesxnumber_address.AsString);
      tbBMClientesComplemento.AsString    := AnsiUpperCase(tbtrayclientesxcomplement.AsString);
      tbBMClientesBairro.AsString         := AnsiUpperCase(tbtrayclientesxneighborhood.AsString);
      tbBMClientesCidade.AsString         := AnsiUpperCase(tbtrayclientesxcity.AsString);
      tbBMClientesUF.AsString             := AnsiUpperCase(tbtrayclientesxstate.AsString);
      tbBMClientesPerfil_Cli.AsBoolean    := True;
      tbBMClientesPerfil_For.AsBoolean    := False;
      tbBMClientesPerfil_Tra.AsBoolean    := False;

      tbBMClientesCod_Pais.AsInteger := 1058;
      tbBMcidades.Locate('CEP_Ini', tbtrayclientesxzip_code.AsString, []);
      tbBMClientesCod_Cidade.AsInteger := tbBMcidadesCodigo.AsInteger;

      if tbtrayclientesxid_type.AsString = 'F' then
        tbBMClientesTipo_Contribuinte.AsString := 'N'
      else
        tbBMClientesTipo_Contribuinte.AsString := 'I';

      tbBMClientesTipo_Imposto.AsString := 'A';
      tbBMClientesPracaPgtoEnd.AsString := AnsiUpperCase(tbtrayclientesxaddress.AsString);
      tbBMClientesPracaPgtoNum.AsString := AnsiUpperCase(tbtrayclientesxnumber_address.AsString);
      tbBMClientesPracaPgtoCom.AsString := AnsiUpperCase(tbtrayclientesxcomplement.AsString);
      tbBMClientesPracaPgtoBai.AsString := AnsiUpperCase(tbtrayclientesxneighborhood.AsString);
      tbBMClientesPracaPgtoCid.AsString := AnsiUpperCase(tbtrayclientesxcity.AsString);
      tbBMClientesPracaPgtoUF.AsString  := AnsiUpperCase(tbtrayclientesxstate.AsString);
      tbBMClientesPracaPgtoCEP.AsString := AnsiUpperCase(sonumeros(tbtrayclientesxzip_code.AsString));

      qrBMcidades.Close;
      qrBMcidades.ParamByName('CEP').Value := sonumeros(tbtrayclientesxzip_code.Value);
      qrBMcidades.Open;
      tbBMClientesCod_Cidade.AsString := qrBMcidadesCODIGO.AsString;
      tbBMClientes.Post;

      tbBMintaux.Append;
      tbBMintauxID_Int.AsInteger := tbTrayPedidoscustomer_id.AsInteger;
      tbBMintauxHASH.AsString := MD5String(tbtrayclientesxaddress.AsString + tbtrayclientesxzip_code.AsString +
        tbtrayclientesxnumber_address.AsString +
        tbtrayclientesxcity.AsString + tbtrayclientesxstate.AsString + tbtrayclientesxcredit_limit.AsString +
        tbtrayclientesxname.AsString);
      tbBMintauxID_BM.AsString := tbBMClientesID.AsString;
      tbBMintauxTipo.AsString := 'CLT';
      tbBMintaux.Post;
    end;

    tbBMPedidos1.Append;
    tbBMPedidos1Geracao_Data.AsDateTime   := tbTrayPedidosdate.AsDateTime;
    tbBMPedidos1Geracao_Hora.AsString     := FormatDateTime('hh:nn', time);
    tbBMPedidos1Cliente_Nome.AsString     := tbTrayPedidosname.AsString;
    tbBMPedidos1Cliente_Doc.AsString      := sonumeros(tbTrayPedidoscpf.AsString);
    tbBMPedidos1ID_Vendedor.AsInteger     := 9;
    tbBMPedidos1Validado.AsBoolean        := True;

    tbBMPedidos1id_mp.AsString            := tbTrayPedidosid_pedidos.AsString;
    tbBMPedidos1Data.AsString             := tbTrayPedidosdate.AsString;
    tbBMPedidos1ID_Cliente.AsString       := tbBMintauxID_BM.AsString; //tbTrayPedidoscustomer_id.AsString; //
    tbBMPedidos1Total_Produtos.AsString   := tbTrayPedidospartial_total.AsString;
    tbBMPedidos1Acrescimos_Valor.AsString := tbTrayPedidostaxes.AsString;
    tbBMPedidos1Descontos_Valor.AsString  := tbTrayPedidosdiscount.AsString;
    tbBMPedidos1Total_Frete.AsFloat       := tbTrayPedidosshipment_value.AsFloat;
    tbBMPedidos1Data_Fat.AsString         := tbTrayPedidospayment_date.AsString;
    tbBMPedidos1Frete_Tipo.AsString       := tbTrayPedidosshipment_integrator.AsString;
    tbBMPedidos1Tipo.AsString             := tbTrayPedidostype.AsString;
    tbBMPedidos1Numero.AsString           := Numped.ToString;
    tbBMPedidos1ID_Empresa.AsString       := pubEmpresaAtiva.ToString;
    tbBMPedidos1Total_Bruto.AsFloat       := tbTrayPedidostotal.AsFloat;
    tbBMPedidos1Total_Liq.AsFloat         := tbTrayPedidostotal.AsFloat;
    tbBMPedidos1Tipo.AsString             := 'O';
    tbBMPedidos1.Post;

    tbTrayPedidosProdutos.First;
    NumItem := 0;
    while not tbTrayPedidosProdutos.Eof do
    begin
      //tbBMintaux.Locate('ID_Int;Tipo', vararrayof([tbTrayPedidosProdutosproduct_id.AsInteger, 'PRD']), []);

      tbBMintaux.Locate('ID_Int', tbTrayPedidosProdutosproduct_id.AsInteger, []);
      Id_prod := tbBMintauxID_BM.AsInteger;
      tbBMprodutosref.Locate('ID_Produto;Referencia', vararrayof([Id_prod, tbTrayPedidosProdutosreference.Value]), []);
      tbBMprodutosprincipal.Locate('ID', Id_prod, []);
      id_ref := tbBMprodutosrefID.AsInteger;
      NumItem := NumItem + 1;
      tbBMPedidosProdutos.Append;
      tbBMPedidosProdutosItem.AsInteger             := NumItem;
      tbBMPedidosProdutosQtdade.AsFloat             := tbTrayPedidosProdutosquantity.AsFloat;
      tbBMPedidosProdutosReferencia.AsString        := tbTrayPedidosProdutosreference.AsString;
      tbBMPedidosProdutosTipo_Produto.AsString      := tbBMprodutosprincipalTipo.AsString;
      tbBMPedidosProdutosData_Inclusao.AsDateTime   := tbBMPedidos1Geracao_Data.AsDateTime;
      tbBMPedidosProdutosPreco_Lista.AsFloat        := tbBMprodutosprincipalPrecoVenda1.AsFloat;
      tbBMPedidosProdutosPreco_Venda.AsFloat        := tbTrayPedidosProdutosprice.AsFloat;
      tbBMPedidosProdutosPreco_Total_Bruto.AsFloat  := tbBMPedidosProdutosQtdade.AsFloat * tbBMPedidosProdutosPreco_Venda.AsFloat;
      tbBMPedidosProdutosDesconto_Perc.AsFloat      := 0;
      tbBMPedidosProdutosAcrescimo_Perc.AsFloat     := 0;
      tbBMPedidosProdutosAcrescimo_Valor.AsFloat    := 0;
      tbBMPedidosProdutosPreco_Total_Liq.AsFloat    := tbBMPedidosProdutosPreco_Total_Bruto.AsFloat;

      tbBMPedidosProdutosID_Orc.AsInteger           := tbBMPedidos1ID.AsInteger;
      tbBMPedidosProdutosID_Produto.AsInteger       := Id_prod;
      tbBMPedidosProdutosReferencia.AsString        := tbBMprodutosrefReferencia.AsString;
      tbBMPedidosProdutosID_Referencia.AsInteger    := id_ref;
      tbBMPedidosProdutosPreco_Total_Bruto.AsString := tbTrayPedidosProdutosprice.AsString;
      tbBMPedidosProdutosPreco_Lista.AsString       := tbTrayPedidosProdutoscost_price.AsString;
      tbBMPedidosProdutos.Post;
      tbTrayPedidosProdutos.Next;
    end;
  end;

  //AvisoAtt('Pedido capturado com sucesso.', 3, -1);
  tbTrayPedidos.Edit;
  tbTrayPedidosmensagem.AsString := 'Pedido capturado com sucesso.';
  tbTrayPedidos.Post;
end;

//Permite marcar pedidos para posteriormente serem enviados para a tabela BM
procedure Tfrmpedidos.Button4Click(Sender: TObject);
begin
  tbTrayPedidos.Edit;
  if tbTrayPedidosEnviar.AsString = '' then
    tbTrayPedidosEnviar.AsString := 'X'
  else
    tbTrayPedidosEnviar.AsString := '';
  tbTraypedidos.Post;
  btnGetProdutos.Click;
end;

//Limpa o FORM ao fechar
procedure Tfrmpedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
  frmpedidos := nil;
end;

//Procedure responsável por pegar o access token e salvar em uma variável para ser usada em outros FORM's
procedure Tfrmpedidos.FormCreate(Sender: TObject);
var
  ArrayAuth: TJSONObject;
  json: string;
  jv: TJSONValue;
  jValue: TJsonValue;
begin
  frmRequest.RESTRequestAuth.Execute;
  JSONtray_pedidos_enviar.Clear;
  JSONtray_pedidos_enviar.Text := frmRequest.RESTResponseAuth.Content;
  json := JSONtray_pedidos_enviar.Text;
  ArrayAuth := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(json), 0) as TJSONObject;
  jv := ArrayAuth.Get('access_token').JsonValue;
  tray_token_enviar.Text := 'Access Token= ' + jv.Value;
  def_access_token := jv.Value;
  jv := ArrayAuth.Get('refresh_token').JsonValue;
  tray_refresh_enviar.Text := 'Refresh Token= ' + jv.Value;
  ArrayAuth.DisposeOf;
  edtdata.Date := date;
end;

end.

