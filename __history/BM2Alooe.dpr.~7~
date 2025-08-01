program BM2Alooe;

uses
  Vcl.Forms,
  Windows,
  uMain in 'uMain.pas' {frmMain},
  uDD in 'uDD.pas' {DD: TDataModule},
  ufrmAviso in '..\Units\ufrmAviso.pas' {frmAviso},
  ufrmMsg in '..\Units\ufrmMsg.pas' {frmMsg},
  UComps in '..\Units\UComps.pas',
  ULookup in '..\Units\ULookup.pas',
  UIntegridade in 'UIntegridade.pas',
  ufrmProdutos in 'ufrmTabelas.pas' {frmProdutos},
  ufrmAguardaServidor in 'ufrmAguardaServidor.pas' {frmAguardaServidor},
  ufuncoesGerais in '..\Units\ufuncoesGerais.pas',
  ufrmRequest in 'ufrmRequest.pas' {frmRequest},
  ufrmMarcas in 'ufrmMarcas.pas' {frmmarcas},
  ufrmCategorias in 'ufrmCategorias.pas' {frmContatos},
  uprodutosfrm in 'uprodutosfrm.pas' {produtosfrm},
  ufrmModelos in 'ufrmModelos.pas' {frmModelos},
  ufrmPedidos in 'ufrmPedidos.pas' {frmpedidos},
  ufrmProducoesEnv in 'ufrmProducoesEnv.pas' {frmerros},
  frmconfiguracoes in 'frmconfiguracoes.pas' {frmconfig},
  Ro in '..\Units\Ro.pas',
  ufrmFundoModal in '..\Units\ufrmFundoModal.pas' {frmFundoModal},
  Vcl.Themes,
  Vcl.Styles,
  ufrmProducao in 'ufrmProducao.pas' {frmProducao},
  ufrmModelagem in 'ufrmModelagem.pas' {frmModelagem};

{$R *.res}

var
  AppMutex: THandle;
  MutexName: string = 'BM2Alooe_Mutex_Unico';

begin
  // Verifica se já está rodando
  AppMutex := CreateMutex(nil, True, PChar(MutexName));
  if (AppMutex = 0) or (GetLastError = ERROR_ALREADY_EXISTS) then
  begin
    MessageBox(0, 'O aplicativo já está em execução.', 'Aviso', MB_OK or MB_ICONWARNING);
    Halt;
  end;

  // Inicialização normal do Delphi
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'BMAlooeEtiquetas';
  Application.CreateForm(TDD, DD);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmMsg, frmMsg);
  Application.CreateForm(TfrmAguardaServidor, frmAguardaServidor);
  Application.CreateForm(TfrmRequest, frmRequest);
  Application.CreateForm(TfrmAviso, frmAviso);
  Application.CreateForm(TfrmFundoModal, frmFundoModal);
  Application.Run;

  // Libera o mutex ao sair (boa prática)
  CloseHandle(AppMutex);
end.
