unit UIntegridade;

interface

//Ultima atualizacao - 06/11/2017
//- Trocado campo Data por Geracao_Data para hash da tabela OrcamentoM

uses Data.DB, DBISAMTb;

var Integridade_IsModuloBMCAIXA: Boolean;

procedure VerificaHashInicialTabelas(Base: TDBISAMDatabase);

function ConfereHashDeCountDasTabelas(DB: TDBISAMDatabase): Boolean;

function ConfereHash_Dataset(Ds: TDBISAMDBDataSet; Tabela: String): Boolean;
function ConfereHash_Tabela(Tb: TDBISAMTable): Boolean;

procedure SetEngineEvents(xEng: TDBISAMEngine);

implementation

uses System.SysUtils, System.StrUtils, System.Variants,
     IdHashCRC;

//

function HashCRC(const A: String): String;
var C: TIdHashCRC16;
begin
    C := TIdHashCRC16.Create;
    try
      Result := C.HashStringAsHex(A);
    finally
      C.Free;
    end;
end;

//

// ============================================================================

const BMsoft_Sign = '[#BM#]';

const STR_VIOLADO = 'VOID';

function FieldToStr(F: TField; Old: Boolean): String;
var V: Variant;
begin
    if Old then
      V := F.OldValue
    else
      V := F.Value;

    if V = Null then
      Result := ''
    else
      case F.DataType of
        ftFloat, ftCurrency: Result := FormatFloat('0.#####', V);
        ftDate, ftTime, ftDateTime, ftTimestamp: Result := FormatDateTime('dd/mm/yyyy hh:nn:ss', V);
        //ftBoolean:
        else Result := VarToStr(V); {Usar VarToStr para não ter problema de convert variant null}
      end;
end;

function GetHash(Fields: TFields; const C: array of String; Old: Boolean = False): String;
var A: String;
    Campo: String;
    F: TField;
begin
    for Campo in C do
    begin
        F := Fields.FieldByName(Campo);
        if F.DataType=ftAutoInc then //Trigger não funciona com AutoInc
          raise Exception.Create('Erro interno: Função GetHash não pode operar com campo AutoInc devido a Trigger');

        A := A + '[' + FieldToStr(F, Old) + ']';
    end;

    A := A + BMsoft_Sign;

    A := HashCRC(A);

    Result := A;
end;

// Nova regra do PAF: Só pode regravar o HASH se o hash anterior já estiver íntegro.
// Por isso a criação do recurso de ler o valor "Old" do campo.

procedure WriteHash(R: TDBISAMRecord; const C: array of String);
var F: TField;
begin
    F := R.FieldByName('Hash');
    
    if (F.AsString = '') {Em branco quanto está inserindo novo} or
       ( GetHash(R.Fields, C, True{Old}) = F.AsString ) then
      F.AsString := GetHash(R.Fields, C) // HASH estava íntegro
    else
      F.AsString := STR_VIOLADO;
end;

// ============================================================================

type
  TRecTabela = record
    Tabela: String; //Nome da Tabela
    Cols: array of String; //Colunas controlados por Hash na tabela
  end;

const

LstTabelas: array[1..18] of TRecTabela =
(
 (Tabela: 'OrcamentoM';
    Cols: [{'ID',} 'ID_Empresa', 'Numero', 'Tipo',
           'COO', 'COO_Gerencial', 'Caixa',
           'Cliente_Nome', 'Cliente_Doc', 'Geracao_Data', 'Total_Liq']
 ),
 (Tabela: 'OrcamentoP';
    Cols: [{'ID',} 'ID_Orc', 'Data_Inclusao', 'Item',
           {'Referencia',} 'ID_Produto', 'ID_Referencia',
           'Qtdade', 'Preco_Venda',
           'Desconto_Valor', 'Acrescimo_Valor',
           'Preco_Total_Liq',
           'Cancelado']
 ),
 (Tabela: 'OrcLogAlter';
    Cols: ['Tipo', 'Numero', 'Data', 'Hora', 'Referencia', 'Descricao',
           'Qtd', 'Un', 'VlUnit', 'Desconto', 'Acrescimo',
           'VlLiquido', 'SitTrib', 'Aliq', 'Canc']
 ),
 (Tabela: 'ProdutosPrincipal';
    Cols: [{'ID',} 'Descricao', 'UNVenda',
           'PrecoVenda1', 'PAF_IAT', 'PAF_IPPT', 'ID_Trib']
 ),
 (Tabela: 'ProdutosReferencia';
    Cols: [{'ID',} 'ID_Produto', 'Referencia', 'Descricao']
  ),
 (Tabela: 'ProdutosRefEmpresa';
    Cols: [{'ID',} 'ID_Empresa', 'ID_Ref',
           'Estoque']
 ),
 (Tabela: 'Empresas';
    Cols: [{'ID',} 'CGCMF', 'IE']
 ),
 (Tabela: 'ECFCaixas';
    Cols: [{'ID',} 'ID_Empresa', 'Numero_Serie',
           'MF_Adicional', 'Marca', 'Modelo',
           'Versao_SB', 'InstalacaoSB', 'Desconto_ISS']
 ),
 (Tabela: 'ECFMov';
    Cols: [{'ID',} 'ID_Empresa', 'ID_Caixa', 'Data_Mov',
           'Abertura']
 ),
 (Tabela: 'ImpostoTrib';
    Cols: [{'ID',} 'ECF_Trib', 'ECF_Aliq']
 ),
 (Tabela: 'R02';
    Cols: [{'ID',} 'ID_Empresa', 'ID_Caixa',
           'CRZ', 'COO', 'CRO', 'DataMovimento',
           'DataEmissao', 'HoraEmissao', 'VendaBruta']
 ),
 (Tabela: 'R03';
    Cols: [{'ID',} 'ID_Empresa', 'ID_Caixa',
           'CRZ', 'TotalizadorParcial', 'ValorAcumulado']
 ),
 (Tabela: 'R04';
    Cols: [{'ID',} 'ID_Empresa', 'ID_Caixa',
           'NumContador', 'COO',
           'DataInicioEmissao', 'Subtotal', 'Desconto',
           'TipoDesconto', 'Acrescimo', 'TipoAcrescimo',
           'TotalLiquido', 'Cancelamento',
           'CancelamentoAcrescimoSubtotal', 'OrdemDescontoAcrescimo',
           'NomeCliente', 'CPFCliente']
 ),
 (Tabela: 'R05';
    Cols: [{'ID',} 'ID_Empresa', 'ID_Caixa',
           'COO', 'NumContador', 'Item', 'CodProduto', 'DescProduto',
           'QtdProduto', 'UnidadeDeMedida', 'ValorUnit',
           'Desconto', 'Acrescimo', 'TotalLiquido',
           'TotalizadorParcial', 'Cancelamento',
           'QtdCancelada', 'ValorCancelado', 'CancelamentoAcrescimo',
           'IAT', 'IPPT']
 ),
 (Tabela: 'R06';
    Cols: [{'ID',} 'ID_Empresa', 'ID_Caixa',
           'COO', 'GNF', 'GRG', 'CDC', 'Denominacao',
           'DataFinalEmissao', 'HoraFinalEmissao']
 ),
 (Tabela: 'R07';
    Cols: [{'ID',} 'ID_Empresa', 'ID_Caixa',
           'COO', 'CCF', 'GNF', 'MeioPagamento', 'ValorPago',
           'Estorno', 'ValorEstornado',
           //
           'Data', 'TipoDoc'{, 'ValorPago'}] //Meios de Pagamento
 ),
 (Tabela: 'OSM';
    Cols: [{'ID',} 'ID_Empresa', 'Numero', 'Geracao_Data', 'Geracao_Hora',
           'Total_Liquido', 'COO_Gerencial', 'Caixa_Gerencial']
 ),
 (Tabela: 'OSP';
    Cols: [{'ID',} 'ID_OS', {'Referencia',}'ID_Pro', 'ID_Ref', 'Qtdade', 'Preco']
 )
);

function GetRecTabelaIndex(const Tabela: String): Integer;
var I: Integer;
begin
    Result := (-1);

    for I := Low(LstTabelas) to High(LstTabelas) do
      if SameText(LstTabelas[I].Tabela, Tabela) then
      begin
          Result := I;
          Break;
      end;
end;

function GetRecTabela(const Tabela: String; var Rec: TRecTabela): Boolean;
var I: Integer;
begin
    Result := False;

    I := GetRecTabelaIndex(Tabela);
    if I <> (-1) then
    begin
        Rec := LstTabelas[I];
        Result := True;
    end;
end;

function IsTabelaInLst(const Tabela: String): Boolean;
begin
    Result := ( GetRecTabelaIndex(Tabela) <> (-1) );
end;

// ============================================================================

function ConfereHash(D: TDataSet; const C: array of String): Boolean;
var HashGravado: String;
begin
    HashGravado := D.FieldByName('Hash').AsString; //hash gravado na tabela

    Result := ( HashGravado = '' ) or //em branco quando foi limpo por update
              ( HashGravado = GetHash(D.Fields, C) );
end;

//

function ConfereHash_Dataset(Ds: TDBISAMDBDataSet; Tabela: String): Boolean;
var Rec: TRecTabela;
begin
    if not GetRecTabela(Tabela, Rec) then
      raise Exception.Create('Erro interno: Tabela inválida para a função ConfereHash_Dataset');

    Result := ConfereHash(Ds, Rec.Cols);
end;

function ConfereHash_Tabela(Tb: TDBISAMTable): Boolean;
begin
    Result := ConfereHash_Dataset(Tb, Tb.TableName);
end;

// ============================================================================
// INCLUSAO E EXCLUSAO DE DADOS

function FazHashDeCount(const Tabela: String; Count: Integer): String;
var A: String;
begin
    A := IntToStr(Count);
    A := A + '/' + UpperCase(Tabela) + BMsoft_Sign;
    A := HashCRC(A);

    Result := A;
end;

function GetCountDeTabela(Base: TDBISAMDatabase; const Tabela: String): Integer;
var Q: TDBISAMQuery;
begin
    Q := TDBISAMQuery.Create(nil);
    try
      Q.SQL.Text := Format('select count(*) as Total from %s', [Tabela]);
      Q.DatabaseName := Base.DatabaseName;
      Q.SessionName := Base.SessionName;
      Q.Open;

      Result := Q.FieldByName('Total').AsInteger;
    finally
      Q.Free;
    end;
end;

function FazHashDeTabela(Base: TDBISAMDatabase; const Tabela: String): String;
begin
    Result := FazHashDeCount(Tabela, GetCountDeTabela(Base, Tabela));
end;

procedure UpdateTabelaDeHashDasTabelas
           (Base: TDBISAMDatabase; const Tabela: String; Del: Boolean = False);
var Tb: TDBISAMTable;
    F: TField;
    Count: Integer;
    Tag: Integer;
    Hash: String;
begin
    Count := GetCountDeTabela(Base, Tabela); //pega o RecordCount da tabela

    Tb := TDBISAMTable.Create(nil);
    try
      Tb.TableName := 'HashTabelas';
      Tb.DatabaseName := Base.DatabaseName;
      Tb.SessionName := Base.SessionName;
      Tb.Open;
      F := Tb.FieldByName('Tab_' + Tabela);

      if Del then
        Tag := (+1) else
        Tag := (-1);

      if (F.AsString = '') or // hash inicial
         ( FazHashDeCount(Tabela, Count+Tag) = F.AsString ) then
        Hash := FazHashDeCount(Tabela, Count)
      else
        Hash := STR_VIOLADO;

      Tb.Edit;
      F.AsString := Hash;
      Tb.Post;
      Tb.Close;
    finally
      Tb.Free;
    end;
end;

function ConfereHashDeCountDasTabelas(DB: TDBISAMDatabase): Boolean;
var Tb: TDBISAMTable;
    A: String;
    Rec: TRecTabela;
begin
    Result := True;

    Tb := TDBISAMTable.Create(nil);
    try
      Tb.TableName := 'HashTabelas';
      Tb.DatabaseName := DB.DatabaseName;
      Tb.SessionName := DB.SessionName;
      Tb.Open;

      for Rec in LstTabelas do //percorrer as tabelas
      begin
          A := Tb.FieldByName('Tab_'+Rec.Tabela).AsString; //hash q está na tabela
          if A='' then Continue; {quando acabou de iniciar/recompor hashs estará em branco}

          if A <> FazHashDeTabela(Tb.Database, Rec.Tabela) then //hash diferente
          begin
              Result := False;
              Break;
          end;
      end;
    finally
      Tb.Free;
    end;
end;

procedure VerificaHashInicialTabelas(Base: TDBISAMDatabase);
var Tb: TDBISAMTable;
    Rec: TRecTabela;
begin
    Tb := TDBISAMTable.Create(nil);
    try
      Tb.TableName := 'HashTabelas';
      Tb.DatabaseName := Base.DatabaseName;
      Tb.SessionName := Base.SessionName;
      Tb.Open;

      if Tb.IsEmpty then
      begin
          for Rec in LstTabelas do
            UpdateTabelaDeHashDasTabelas(Base, Rec.Tabela);
      end;

    finally
      Tb.Free;
    end;
end;

// ============================================================================

procedure DoVerWriteHash(const TableName: String; CurrentRecord: TDBISAMRecord);
var Rec: TRecTabela;
begin
    if GetRecTabela(TableName, Rec) then //se tabela faz parte das com integridade
      WriteHash(CurrentRecord, Rec.Cols);
end;

procedure DoVerInsertOrDelete(TriggerDatabase: TDBISAMDatabase; const TableName: String; Del: Boolean);
begin
    if IsTabelaInLst(TableName) then //se tabela faz parte das com integridade
      UpdateTabelaDeHashDasTabelas(TriggerDatabase, TableName, Del);
end;

type TIntrometido = class
    class procedure OnBeforeInsert(Sender: TObject;
                       TriggerSession: TDBISAMSession;
                       TriggerDatabase: TDBISAMDatabase;
                       const TableName: String;
                       CurrentRecord: TDBISAMRecord);

    class procedure OnAfterInsert(Sender: TObject;
                       TriggerSession: TDBISAMSession;
                       TriggerDatabase: TDBISAMDatabase;
                       const TableName: String;
                       CurrentRecord: TDBISAMRecord);

    class procedure OnUpdate(Sender: TObject;
                       TriggerSession: TDBISAMSession;
                       TriggerDatabase: TDBISAMDatabase;
                       const TableName: String;
                       CurrentRecord: TDBISAMRecord);

    class procedure OnDelete(Sender: TObject;
                       TriggerSession: TDBISAMSession;
                       TriggerDatabase: TDBISAMDatabase;
                       const TableName: String;
                       CurrentRecord: TDBISAMRecord);

  end;

function IsBaseCxLocal(Base: TDBISAMDatabase): Boolean;
begin
    Result := (Base.DatabaseName='DB') //Base Local do Caixa
           or (Base.DatabaseName='DB_SYNC_LOC');
end;

class procedure TIntrometido.OnBeforeInsert; //**No BeforeInsert o ID auto-incremento ainda não foi criado!
begin
    if Integridade_IsModuloBMCAIXA then
      if IsBaseCxLocal(TriggerDatabase) then Exit;

    DoVerWriteHash(TableName, CurrentRecord);
end;

class procedure TIntrometido.OnAfterInsert;
begin
    if Integridade_IsModuloBMCAIXA then
      if IsBaseCxLocal(TriggerDatabase) then Exit;

    DoVerInsertOrDelete(TriggerDatabase, TableName, False{Del});
end;

class procedure TIntrometido.OnUpdate;
begin
    if Integridade_IsModuloBMCAIXA then
      if IsBaseCxLocal(TriggerDatabase) then Exit;

    DoVerWriteHash(TableName, CurrentRecord);
end;

class procedure TIntrometido.OnDelete;
begin
    if Integridade_IsModuloBMCAIXA then
      if IsBaseCxLocal(TriggerDatabase) then Exit;

    DoVerInsertOrDelete(TriggerDatabase, TableName, True{Del});
end;

// ============================================================================

procedure SetEngineEvents(xEng: TDBISAMEngine);
begin
    xEng.BeforeInsertTrigger := TIntrometido.OnBeforeInsert;
    xEng.AfterInsertTrigger := TIntrometido.OnAfterInsert;
    xEng.BeforeUpdateTrigger := TIntrometido.OnUpdate;
    xEng.AfterDeleteTrigger := TIntrometido.OnDelete;
end;

initialization
  SetEngineEvents(Engine);

end.
