unit Super;

interface

uses Vcl.Controls, Vcl.Forms, Vcl.Graphics,Vcl.StdCtrls,Vcl.Mask, System.TypInfo,
  System.Classes,Winapi.ShellAPI,Winapi.Windows,RzBtnEdt,UComps, RzEdit;

type TSConvOpcao = record
  V, R: Variant;
end;


// COR DE SELECAO PADRAO AMARELA
const CorSel = $006FEAFB;
//

// VALOR MENOS UM
const MU = (-1);
//

// ENTER
const STR_ENTER = #13#10;
      STR_DBLENTER = STR_ENTER+STR_ENTER;
//

function GetAppDir: String;
function GetPriorDir(A: String): String;
function GetWindowsDir: String;
function GetSystemDir: String;
function GetProgramDataDir: String;
function GetDesktopFolder: String;

function SameFolder(D1, D2: String): Boolean;
function DeleteFolder(Folder: string; HandlePai: HWND = 0): Boolean;

procedure SuperHalt;

function CopyAte(A: String; Ini, Fim: Integer): String;
function GetFirst(A: String): String;
procedure DelFirst(var A: String);
function GetLast(A: String): String;
procedure DelLast(var A: String);
procedure DelLasts(var A: String; Count: Integer);
function GetResto(A: String; Index: Integer): String;
procedure DelInicio(var A: String; Count: Integer);

function GetAntes(A, Sep: String): String;
function GetDepois(A, Sep: String): String;
function GetEntre(A, Sep1, Sep2: String): String;

function HasStr(Text, Sub: String): Boolean;
function HasText(Text, Sub: String): Boolean;

function InStr(A: String; Ar: array of String): Boolean;
function InText(A: String; Ar: array of String): Boolean;

function AddBarDir(A: String): String;
function DelBarDir(A: String): String;

function StrToIntDZ(A: String): Integer;
function IntToStrNZ(I: Integer): String;
function FloatToStrNZ(V: Extended): String;

function SoNumero(A: String): String;
function IsSoNumero(A: String): Boolean;

procedure ShowFormFocus(Form: TForm);
procedure FazerAparecerNoTaskBar(var Params: TCreateParams);

procedure WExec(A: String);
function WFind(Janela: String): THandle;
function WExists(Janela: String): Boolean;

function FmtCNPJ(A: String): String;
function FmtCPF(A: String): String;
function FmtCPFCNPJ(A: String): String;

function GetWinComputerName: String;
function GetWinUserName: String;

function IsShiftDown: Boolean;
function IsCtrlDown: Boolean;
function IsAltDown: Boolean;
function IsCapsLock: Boolean;

function EnterToPV(A: String): String;
function PVtoEnter(A: String): String;
function EnterToStr(A,Str: String): String;
function StrToEnter(A,Str: String): String;

procedure IncD(var X: Double; V: Double);
procedure IncE(var X: Extended; V: Extended);

procedure IncDArred(var X: Double; V: Double; CasasDecimais: Byte = 2);

function Arredonda(Valor: Extended; CasasDecimais: Byte = 2): Extended;
function ArredondamentoIPM(Value: Extended; Decimals: Integer): Extended;
function CalcAliq(Base, Aliq: Extended; Casas: Byte = 2): Extended;
function Div0(A, B: Extended): Extended;
function Fix(X: Extended): Extended;

function Troca(A: String; P1, P2: String): String; 
procedure PTroca(var A: String; P1, P2: String); 
function TiraEspacos(A: String): String;

procedure SClick(C: TWinControl; SetFocus: Boolean = False);
procedure SClickCtrl(C: TControl);

function ToChar(A: String; Def: Char = #0): Char;

function DateBetween(D, Ini, Fim: TDate): Boolean;
function NumeroBetween(N, Ini, Fim: Integer): Boolean;

procedure ShowSetFocus(C: TWinControl);

procedure CloseFormMessage(F: TForm);

function SOpcao(V, R: Variant): TSConvOpcao;
function SConv(V: Variant; Ar: array of TSConvOpcao; Def: Variant): Variant; overload;
function SConv(V: Variant; Ar: array of TSConvOpcao): Variant; overload;
function SConvDef(V: Variant; Ar: array of TSConvOpcao): Variant;

procedure DwTextRight(C: TCanvas; X, Y: Integer; A: String);

function SN(B: Boolean): String;
function IsSN(A: String): Boolean;

function FmtDH(DataHora: TDateTime): String;

function GetFileMod(Arquivo: String): TDateTime;

function Stuff(Text, Ini, Fim, Rep: String): String;

function Concat(A, Sep, B: String): String;

function RemoveFileExt(A: String): String;

function Ansi(A: String): AnsiString;

procedure IncA(var A: String; B: String);

procedure Split(var A: String; var This: String; Count: Integer);

procedure SetEnvVar(Nome, Valor: String);
function GetEnvVar(Nome: String): String;

function IsOnNetwork(Path: String): Boolean;

function FileToString(Arquivo: String): String;
procedure StringToFile(Texto, Arquivo: String);

procedure IncLine(var A: String; Line: String);
procedure IncLineIntelig(var A: String; aNew: String);

function VarToExtended(V: Variant): Extended;
function VarToDouble(V: Variant): Double;
function VarToBoolean(V: Variant): Boolean;
function VarToInteger(V: Variant): Integer;

procedure ForceSetFocus(C: TWinControl);

procedure JumpNextControl(From: TWinControl);
procedure JumpPrevControl(From: TWinControl);

function TemNumaListaSep(Item, Lista, Sep: String): Boolean;

function FillRightEsp(A: String; Tam: Integer): String;
function FillLeftEsp(A: String; Tam: Integer): String;
function FillLeftZeros(A: String; Tam: Integer): String;

function GetQuantasCasas(V: Extended): Integer;

function Trunca(V: Extended; Casas: Byte = 2): Extended;

procedure ForceTeclado(A: String);

procedure EsticarProporcional(AreaW, AreaH, ObjW, ObjH: Integer;
                              var ResW: Integer; var ResH: Integer;
                              PodeAumentarMenor: Boolean=False);

procedure CentralizarObjeto(C: TWinControl; Modo: String='');

function PosLast(Sub, Texto: String): Integer;

function GetTempDir: String;

function IncIfNaoBranco(Conteudo, Com: String): String;

procedure FileWriteLine(Arquivo, Texto: String);

function IsUFValida(const UF: String): Boolean;

function StrSemAcentos(A: String): String;

function ContemAny(Texto: String; Subs: array of String): Boolean;

function SameValD(V1, V2: Double): Boolean;

function CompVal(A: Extended; Op: String; B: Extended): Boolean;
function CompValD(A: Double; Op: String; B: Double): Boolean;

function SoMaiorQueZero(Valor: Extended): Extended;

function GetColSep(A: String; Col: Integer; Sep: String): String;

function CheckWinMutex(Nome: String): Boolean;

procedure ShowFormWithoutFocus(F: TForm);

function ConvMemoToStrPV(const aMemo: String): String;
function ConvStrPVToMemo(const A: String): String;

function GetPercentOfPart(Part, Tot: Int64): Word;

procedure ClearRecord(var R);

procedure FreeObjects(S: TStrings);

function GetValueOfStrings(aStrings, aNome: String): String;

procedure DesligarPC;

procedure EnabledAllControl(Component:TWinControl;Enable:boolean);
procedure ReadOnlyAllControl(Component:TWinControl;Enable:boolean;excecoes:array of TRzEdit);

function RemoverEspeciais(Texto : string) : string;

procedure raiseWithFocus(Component:TWinControl;Error:string);
procedure raiseStringEmpty(Edt:TCustomEdit;Error:string);
procedure raiseMaskEmpty(Edt:TCustomMaskEdit;Error:string);
procedure raiseComboBoxEmpty(Cb:TCustomComboBox;Error:string);
procedure raiseMemoEmpty(Memo:TCustomMemo;Error:string);
procedure raiseButtonEditEmpty(Edt:TRzButtonEdit;Error:string);


implementation

uses System.SysUtils, System.StrUtils, System.Math, System.DateUtils,
  System.MaskUtils, System.Variants, Winapi.Messages,
  System.Win.Registry, System.Types, System.IOUtils,
  Winapi.ShlObj, Winapi.SHFolder;

//

{GetAppDir
 Retorna o diretório da aplicação
}
function GetAppDir: String;
begin
    Result := ExtractFilePath(Application.ExeName);
end;

//

{GetPriorDir
 Retorna o diretório pai do diretório passado como parâmetro
}
function GetPriorDir(A: String): String;
begin
    Result := ExtractFilePath( ExcludeTrailingPathDelimiter(A) );
end;

//

{GetWindowsDir
 Retorna o diretório do Windows
}
function GetWindowsDir: String;
var A: array [0..MAX_PATH] of Char;
begin
    GetWindowsDirectory(A, MAX_PATH);
    Result := StrPas(A);
end;

//

{GetSystemDir
 Retorna o Diretório do Sistema do Windows
}
{function GetSystemDir: String;
var A: array [0..MAX_PATH] of Char;
begin
    GetSystemDirectory(A, MAX_PATH);
    Result := StrPas(A);
end;}

{GetSystemDir (Novo !)
 Retorna string com o diretório System do Windows.
 Antes de pegar o diretório, roda uma função que verifica se o aplicativo
 está rodando em modo compatibilidade, ou seja, se ele é x32 mas está sendo rodado
 no Windows 64 bits. Desse modo o Diretório de DLLs deverá ser SYSWOW64, que
 é o diretório onde estão as DLLs 32 bits de compatibilidade.
}

// ! uses Winapi.ShlObj;

function GetSystemDir: String;
var A: array [0..MAX_PATH] of Char;
    WOW: LongBool;
    Folder: Integer;
begin
    if not IsWow64Process(GetCurrentProcess, WOW) then
      raise Exception.Create('GetSystemDir: Erro em IsWow64Process');

    if WOW then //se está em compatibilidade App 32 em Windows 64
      Folder := CSIDL_SYSTEMX86 //pasta SYSWOW64
    else
      Folder := CSIDL_SYSTEM; //pasta Nativa

    if not SHGetSpecialFolderPath(0, A, Folder, false) then
      raise Exception.Create('GetSystemDir: Erro em SHGetSpecialFolderPath');

    Result := A;
end;

//

{GetProgramDataDir
 Retorna o diretório ProgramData do sistema}

// ! uses Winapi.SHFolder;

function GetProgramDataDir: String;
var P: array[0..MAX_PATH] of Char;
begin
    SHGetFolderPath(0, CSIDL_COMMON_APPDATA, 0, SHGFP_TYPE_DEFAULT, P);
    Result := P;
end;

//

{GetDesktopFolder
 Retorna o diretorio do Desktop do usuario corrente do Registro do Windows
}
function GetDesktopFolder: String;
var R: TRegistry;
begin
    R := TRegistry.Create;
    try
      R.RootKey := HKEY_CURRENT_USER;
      R.OpenKeyReadOnly('Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders');

      Result := R.ReadString('Desktop');
    finally
      R.Free;
    end;
end;

//

{SameFolder
 Retorna se os dois diretórios passados são os mesmos
}
function SameFolder(D1, D2: String): Boolean;
begin
    Result := SameFileName(ExcludeTrailingPathDelimiter(D1),
                           ExcludeTrailingPathDelimiter(D2));
end;


{ DeletoFolder
   Exclui a pasta, seus arquivos e sub-pastas
   HandlePai deve ser informado quando for exibir progresso e erros
}
function DeleteFolder(Folder: string; HandlePai: HWND = 0): Boolean;
var ShOp: TSHFileOpStruct;
begin
	{Quando for utilizar barra de progresso passar o Handle}
  if HandlePai <> 0 then
    ShOp.Wnd := HandlePai; //Self.Handle;

  ShOp.wFunc := FO_DELETE;
  ShOp.pFrom := PChar(Folder + #0);

	if HandlePai <> 0 then
		ShOp.fFlags := FOF_NOCONFIRMATION // FOF_NOCONFIRMATION para não pedir confirmação
	else
		ShOp.fFlags := FOF_NO_UI; // FOF_NO_UI para não pedir confirmação e nem mostrar progresso.

	Result := not SHFileOperation(ShOp).ToBoolean; //Essa função retorna um valor invertido
end;

//

{SuperHalt
 Termina a aplicação e aborta qualquer outro procedimento posterior
}
procedure SuperHalt;
begin
    Application.Terminate;
    Abort;
end;

//

{CopyAte
 Executa a função Copy, porém ao inves de pedir o parametro count
 pede o parametro fim, usando a posicao final da string
}
function CopyAte(A: String; Ini, Fim: Integer): String;
begin
    Result := Copy(A, Ini, Fim-Ini+1);
end;

//

{GetFirst
 Retorna o primeiro caractér da String
}
function GetFirst(A: String): String;
begin
    Result := LeftStr(A, 1);
end;

//

{DelFirst
 Deleta o primeiro caracter da string
}
procedure DelFirst(var A: String);
begin
    Delete(A, 1, 1);
end;

//

{GetLast
 Retorna o último caractér da String
}
function GetLast(A: String): String;
begin
    Result := RightStr(A, 1);
end;

//

{DelLast
 Deleta o último caracter da string
}
procedure DelLast(var A: String);
begin
    Delete(A, Length(A), 1);
end;

//

{DelLasts
 Deleta os últimos x caractéres da string
}
procedure DelLasts(var A: String; Count: Integer);
begin
    Delete(A, Length(A)-Count+1, Count);
end;

//

{GetResto
 Retorna o resto da String partindo da posição Index
}
function GetResto(A: String; Index: Integer): String;
begin
    Result :=  Copy(A, Index, Length(A));
end;

//

{DelInicio
 Apaga da string A a quantidade de caracteres especificada no Count,
 apartir do início da string
}
procedure DelInicio(var A: String; Count: Integer);
begin
    Delete(A, 1, Count);
end;

//

{GetAntes
 Retorna a string contida antes do identificador Sep
}
function GetAntes(A, Sep: String): String;
begin
    Result := Copy(A, 1, Pos(Sep, A)-1 );
end;

//

{GetDepois
 Retorna a string contida depois do identificador Sep
}
function GetDepois(A, Sep: String): String;
begin
    Result := Copy(A, Pos(Sep, A)+Length(Sep), Length(A));
end;

//

{GetEntre
 Retorna a string entre os separadores Sep1 e Sep2
}
function GetEntre(A, Sep1, Sep2: String): String;
var X1, X2: Integer;
begin
    X1 := Pos(Sep1, A)+Length(Sep1);
    X2 := PosEx(Sep2, A, X1);
    Result := Copy(A, X1, X2-X1);
end;

//

{HasStr
 Retorna se o Text contém a string Sub (case-sensitive)
}
function HasStr(Text, Sub: String): Boolean;
begin
    Result := AnsiContainsStr(Text, Sub);
end;

//

{HasText
 Retorna se o Text contém a string Sub (não case-sensitive)
}
function HasText(Text, Sub: String): Boolean;
begin
    Result := AnsiContainsText(Text, Sub);
end;

//

{InStr
 Retorna se a string está em alguma posição do array (case-sensitive)
}
function InStr(A: String; Ar: array of String): Boolean;
begin
    Result := AnsiMatchStr(A, Ar);
end;

//

{InText
 Retorna se a string está em alguma posição do array (não case-sensitive)
}
function InText(A: String; Ar: array of String): Boolean;
begin
    Result := AnsiMatchText(A, Ar);
end;

//

{AddBarDir
 Inclui no final da string uma barra de diretório - se necessário
}
function AddBarDir(A: String): String;
begin
    Result := IncludeTrailingPathDelimiter(A);
end;

//

{DelBarDir
 Remove a barra de diretório do final de uma string - se necessário
}
function DelBarDir(A: String): String;
begin
    Result := ExcludeTrailingPathDelimiter(A);
end;

//

{StrToIntDZ
 Faz StrToInt com valor default 0
}
function StrToIntDZ(A: String): Integer;
begin
    Result := StrToIntDef(A, 0);
end;

//

{IntToStrNZ
 Funcao IntToStr, porém se o valor for "0" retorna String vazia
}
function IntToStrNZ(I: Integer): String;
begin
    Result := IfThen(I<>0, IntToStr(I));
end;

//

{FloatToStrNZ
 Funcao FloatToStr, porém se o valor for "0" retorna String vazia
}
function FloatToStrNZ(V: Extended): String;
begin
    if IsZero(V) then
      Result := ''
    else
      Result := FloatToStr(V);
end;

//

{SoNumero
 Retorna apenas os carecteres numéricos da String
}
function SoNumero(A: String): String;
var I: Integer;
begin
    Result := '';

    for I := 1 to Length(A) do
	    if CharInSet(A[I], ['0'..'9']) then
        Result := Result + A[I];
end;

//

{IsSoNumero
 Retorna se a String contém apenas números ou não
 @Depende de "SoNumero"
 !Retornará TRUE caso String em branco
}
function IsSoNumero(A: String): Boolean;
begin
    Result := ( A = SoNumero(A) );
end;

//

{ShowFormFocus
 Função usada quando usando forms isolados da aplicação (forms que tem
 o próprio taskbar). Nesse caso quando o form não está sendo exibido
 ele é exibido por Show, ou então se tiver minimizado ele é restaurado.
 Usar quando usando form no Tray por exemplo
}
procedure ShowFormFocus(Form: TForm);
begin
    if not Form.Visible then
      Form.Show
    else
    if IsIconic(Form.Handle) then //minimizado
      ShowWindow(Form.Handle, SW_RESTORE);

    SetForegroundWindow(Form.Handle);
end;

//

{FazerAparecerNoTaskBar
 Rodar essa função no CreateParams do form para que ele apareça isoladamente
 no TaskBar. Geralmente usado em aplicação do Tray que deve apenas aparecer
 no taskbar conforme o form é exibido.
}
procedure FazerAparecerNoTaskBar(var Params: TCreateParams);
begin
    // Aparecer no TaskBar
    with Params do
    begin
        ExStyle := ExStyle or WS_EX_APPWINDOW;
        WndParent := GetDesktopWindow;
    end;
end;

//

{WExec
 Executa o WinExec com SW_SHOWNORMAL
}
procedure WExec(A: String);
begin
    WinExec(PAnsiChar(AnsiString(A)), SW_SHOWNORMAL);
end;

//

{WFind
 Localiza a janela no Windows com a função da API FindWindow,
 retornando o handle da janela
}
function WFind(Janela: String): THandle;
begin
    Result := FindWindow(nil, PChar(Janela));
end;

//

{WExists
 Localiza a janela no Windows com a função da API FindWindow,
 retornando se encontrou a janela ou não
}
function WExists(Janela: String): Boolean;
begin
    Result := ( FindWindow(nil, PChar(Janela)) <> 0 );
end;

//

{FmtCNPJ
 Formata a String com mascara de CNPJ
}
function FmtCNPJ(A: String): String;
begin
    if Length(A)=14 then
      A := MaskDoFormatText('00.000.000/0000-00', A, ' ');

    Result := A;
end;

//

{FmtCPF
 Formata a String com máscara de CPF
}
function FmtCPF(A: String): String;
begin
    if Length(A)=11 then
      A := MaskDoFormatText('000.000.000-00', A, ' ');

    Result := A;
end;

//

{FmtCPFCNPJ
 Formata a String com máscara de CPF ou CNPJ conforme seu tamanho
 @Depende de FmtCNPJ e FmtCPF
}
function FmtCPFCNPJ(A: String): String;
begin
    if Length(A) = 11 then A := FmtCPF(A) else
    if Length(A) = 14 then A := FmtCNPJ(A);

    Result := A;
end;

//

{GetWinComputerName
 Retorna String com o Nome do Computador
}
function GetWinComputerName: String;
var Buffer: array[0..255] of Char;
    Size: DWord;
begin
    Result := '';

    Size := SizeOf(Buffer);
    if Winapi.Windows.GetComputerName(Buffer, Size) then
      Result := Buffer;
end;

//

{GetWinUserName
 Retorna String com o Nome do Usuário logado no Windows
}
function GetWinUserName: String;
var Buffer: array[0..255] of Char;
    Size: DWord;
begin
    Result := '';

    Size := SizeOf(Buffer);
    if Winapi.Windows.GetUserName(Buffer, Size) then
      Result := Buffer;
end;

//

{IsShiftDown
 Retorna se o Shift está pressionado no teclado
}
function IsShiftDown: Boolean;
var State: TKeyboardState;
begin
    GetKeyboardState(State);
    Result := ((State[VK_SHIFT] and 128) <> 0);
end;

//

{IsCtrlDown
 Retorna se o Ctrl está pressionado no teclado
}
function IsCtrlDown: Boolean;
var State: TKeyboardState;
begin
    GetKeyboardState(State);
    Result := ((State[VK_CONTROL] and 128) <> 0);
end;

//

{IsAltDown
 Retorna se o Alt está pressionado no teclado
}
function IsAltDown: Boolean;
var State: TKeyboardState;
begin
    GetKeyboardState(State);
    Result := ((State[VK_MENU] and 128) <> 0);
end;

//

{IsCapsLock
 Retorna se o CapsLock está ligado
}
function IsCapsLock: Boolean;
var State: TKeyboardState;
begin
    GetKeyboardState(State);
    Result := (State[VK_CAPITAL] <> 0);
end;

//

{EnterToPV
 Troca na String passada, todos os "Enters" por ponto-e-vírgula
}
function EnterToPV(A: String): String;
begin
    Result := StringReplace(A, STR_ENTER, ';', [rfReplaceAll]);
end;

//

{PVtoEnter
 Troca na String passada, todos os ponto-e-virgula por "Enter"
}
function PVtoEnter(A: String): String;
begin
    Result := StringReplace(A, ';', STR_ENTER, [rfReplaceAll]);
end;

//

{EnterToEspaco
 Troca na String passada, todos os "Enters" pela str passada
}
function EnterToStr(A,Str: String): String;
begin
    Result := StringReplace(A, STR_ENTER, Str, [rfReplaceAll]);
end;

//

{EspacoToEnter
 Troca na String passada, todos os espaços por "Enter"
}
function StrToEnter(A,Str: String): String;
begin
    Result := StringReplace(A, Str, STR_ENTER, [rfReplaceAll]);
end;

//

{IncD
 Versão da função Inc para números Double
}
procedure IncD(var X: Double; V: Double);
begin
    X := X + V;
end;

//

{IncE
 Versão da função Inc para números Extended
}
procedure IncE(var X: Extended; V: Extended);
begin
    X := X + V;
end;

//

{IncDArred
 Função Inc para número Double fazendo arredondamento
}
procedure IncDArred(var X: Double; V: Double; CasasDecimais: Byte = 2);
begin
    X := Arredonda(X + V, CasasDecimais);
end;

//

{Arredonda
 Retorna o valor X extended arredondado com o numero de CasasDecimais
 !Padrão 2 casas
}
function Arredonda(Valor: Extended; CasasDecimais: Byte = 2): Extended;
begin
    {**}if CasasDecimais>10 then
    {**}  raise Exception.Create('Função Arredonda: Casas Decimais maior que 10');
    {**}
    {**}//Arredonda primeiro em 10 casas para aumentar a precisao!
    {**}Valor := RoundTo(Valor, -10);
    {**}//

    Result := RoundTo(Valor, -CasasDecimais);
end;

{
 Diferente do arredondamento da ABNT nesse arredondamento é levado em consideração
 apenas se a proxima casa decimal em relação a casa decimal a ser arredondada é >=5 para incrementar
}
function ArredondamentoIPM(Value: Extended; Decimals: Integer): Extended;
var
  Factor, Fraction: Extended;
begin
  Factor := IntPower(10, Decimals);
  Value := StrToFloat(FloatToStr(Value * Factor));
  Result := Int(Value);
  Fraction := Frac(Value);
  if Fraction >= 0.5 then
    Result := Result + 1
  else
    if Fraction <= -0.5 then
      Result := Result - 1;
  Result := Result / Factor;
end;
//

{CalcAliq
 Calcula a Base x Aliq em percentual e retornando com as casas decimais definidas
 @Depende de Arredonda
}
function CalcAliq(Base, Aliq: Extended; Casas: Byte = 2): Extended;
begin
    Result := Arredonda(Base * Aliq/100, Casas);
end;

//

{Div0
 Divide A / B, porém retorna Zero se B for Zero
 Isso para evitar erro de 'divisão por zero'
}
function Div0(A, B: Extended): Extended;
begin
    if B = 0 then //nunca dividirás por zero!
      Result := 0
    else
      Result := (A / B);
end;

//

{Fix
 Função para corrigir erro de ponto flutuante do Delphi
 Elimina as dízimas periódicas que ocorrem ao somar valores
}
function Fix(X: Extended): Extended;
begin
    Result := StrToFloat( FloatToStr(X) );
end;

//

{Troca
 Função que retorna a String A, trocando a String P1 por P2
}

function Troca(A: String; P1, P2: String): String;
begin
    Result := StringReplace(A, P1, P2, [rfReplaceAll]);
end;

//

{PTroca
 Procedure para trocar na String A, a String P1 por P2
}
procedure PTroca(var A: String; P1, P2: String); 
begin
    A := StringReplace(A, P1, P2, [rfReplaceAll]);
end;

//

{TiraEspacos
 Remove todos os espacos em branco de uma string
}
function TiraEspacos(A: String): String;
begin
    Result := StringReplace(A, ' ', '', [rfReplaceAll]);
end;

//

{SClick
 Dispara o OnClick do WinControl passado, caso este consiga CanFocus
 Coloca o foco antes no control se passar SetFocus=True
}
type TAcControl = class(TControl);

procedure SClick(C: TWinControl; SetFocus: Boolean = False);
begin
    if C.CanFocus then
   	begin
       if SetFocus then C.SetFocus;
       
	     //C.Click;
       if Assigned( TAcControl(C).OnClick ) then
         TAcControl(C).OnClick(C);
    end;
end;

//

{SClickCtrl
 Dispara o OnClick do Control passado, caso este esteja habilitado e visível
}
procedure SClickCtrl(C: TControl);
begin
    if C.Enabled and C.Visible then
    begin
        if Assigned( TAcControl(C).OnClick ) then
         TAcControl(C).OnClick(C);
    end;
end;

//

{ToChar
 Converte a String em Char, pegando apenas o primeiro caractér
 Caso não consiga, usará o valor Default definido
}
function ToChar(A: String; Def: Char = #0): Char;
begin
    if A = '' then
      Result := Def
    else
      Result := A[1];
end;

//

{DateBetween
 Retorna se D está entre Ini e Fim
}
function DateBetween(D, Ini, Fim: TDate): Boolean;
begin
    Result := (D >= Ini) and (D <= Fim);
end;

//

{NumeroBetween
 Retorna se N está entre Ini e Fim
}
function NumeroBetween(N, Ini, Fim: Integer): Boolean;
begin
    Result := (N >= Ini) and (N <= Fim);
end;

//

{ShowSetFocus
 Executa o Show e depois SetFocus do WinControl
 Isso para fazer set focus quando usando PageControls ou similares,
 quando a aba não estiver na aba que está o componente que vai foco.
}
procedure ShowSetFocus(C: TWinControl);
begin
    C.Show;
    C.SetFocus;
end;

//

{SConv
 Código para ser usado como lista de opções
 Exemplo: SConv(Edit1.Text, [SOpcao('01', 1),
                             SOpcao('02', 2)]);
}
{type TSConvOpcao = record
  V, R: Variant;
end;}

function SOpcao(V, R: Variant): TSConvOpcao;
begin
    Result.V := V;
    Result.R := R;
end;

function SConv(V: Variant; Ar: array of TSConvOpcao; Def: Variant): Variant; overload;
var I: Integer;
begin
    Result := Def;

    for I := 0 to High(Ar) do
      if Ar[I].V = V then
      begin
          Result := Ar[I].R;
          Break;
      end;
end;

function SConv(V: Variant; Ar: array of TSConvOpcao): Variant; overload;
begin
    Result := SConv(V, Ar, Null);
end;

function SConvDef(V: Variant; Ar: array of TSConvOpcao): Variant;
begin
    Result := SConv(V, Ar, V);
end;

//

{CloseFormMessage
 Manda comando de mensagem para Fechar o Form
 Usado para fechar o form automaticamente antes de acabar de exibi-lo
 Ex. no evento OnShow ou OnActivate
}
procedure CloseFormMessage(F: TForm);
begin
    PostMessage(F.Handle, WM_SYSCOMMAND, SC_CLOSE, 0);
end;

//

{DwTextRight
 Pinta o texto alinhado a direita no Canvas
}
procedure DwTextRight(C: TCanvas; X, Y: Integer; A: String);
begin
    C.TextOut(X-C.TextWidth(A), Y, A);
end;

//

{SN
 Retorna "S" ou "N" conforme o valor B passado
}
function SN(B: Boolean): String;
begin
    Result := IfThen(B, 'S', 'N');
end;

//

{IsSN
 Retorna se a string passada for igual a "S" de SIM
}
function IsSN(A: String): Boolean;
begin
    Result := ( A = 'S' );
end;

//

{FmtDH
 Formata Data/Hora com o formato padrão "dd/mm/yyyy hh:nn:ss"
}
function FmtDH(DataHora: TDateTime): String;
begin
    Result := FormatDateTime('dd/mm/yyyy hh:nn:ss', DataHora);
end;

//

{GetFileMod
 Retorna a Data/Hora de modificação do Arquivo
}
function GetFileMod(Arquivo: String): TDateTime;
begin
    Result := TFile.GetLastWriteTime(Arquivo);
end;

//

{Stuff
 Substitui uma determinada parte da string conforme os caracteres identificadores
 de inicio e fim indicados nas variáveis Ini e Fim, trocando pelo conteúdo em Rep
}
function Stuff(Text, Ini, Fim, Rep: String): String;
var X1, X2: Integer;
begin
    X1 := Pos(Ini, Text);
    X2 := PosEx(Fim, Text, X1+Length(Ini));

    Result := StuffString(Text, X1, X2-X1+Length(Fim), Rep);
end;

//

{Ansi
 Converte uma WideString para AnsiString
}
function Ansi(A: String): AnsiString;
begin
    Result := AnsiString(A);
end;

//

{Concat
 Junta a string A com B usando o Separador Sep
 Apenas colocará o separador se necessário
}
function Concat(A, Sep, B: String): String;
begin
    if A='' then Result := B else
    if B='' then Result := A else
      Result := A+Sep+B;
end;

//

{RemoveFileExt
 Tira a extensão do final da string/arquivo
}
function RemoveFileExt(A: String): String;
begin
    Result := ChangeFileExt(A, '');
end;

//

{IncA
 Inclui na string A a string B (o mesmo que A := A + B)
}
procedure IncA(var A: String; B: String);
begin
    A := A + B;
end;

//

{Split
 Joga o Count de caractéres iniciais em This e deixa o resto em A
}
procedure Split(var A: String; var This: String; Count: Integer);
begin
    This := Copy(A, 1, Count);
    Delete(A, 1, Count);
end;

//

{SetEnvVar
 Atalho para SetEnvironmentVariable do Windows usando strings
}
procedure SetEnvVar(Nome, Valor: String);
begin
    SetEnvironmentVariable(PChar(Nome), PChar(Valor));
end;

//

{GetEnvVar
 Atalho para GetEnvir do Windows usando strings
}
function GetEnvVar(Nome: String): String;
begin
    Result := GetEnvironmentVariable(Nome);
end;

//

{IsOnNetwork
 Retorna se o caminha passado é um caminho ou unidade da rede
 Funciona com UNC e com Unidades Mapeadas
}
function IsOnNetwork(Path: String): Boolean;
begin
    Path := Copy(Path, 1, 2);

    Result := ( Path = '\\' ) or
              ( GetDriveType(PChar(Path)) = DRIVE_REMOTE );
end;

//

{FileToString
 Le o arquivo em modo texto e joga no result
}
function FileToString(Arquivo: String): String;
var S: TStringList;
begin
    S := TStringList.Create;
    try
      S.LoadFromFile(Arquivo);

      Result := S.Text;
    finally
      S.Free;
    end;
end;

//

{StringToFile
 Salva a string em um arquivo texto
}
procedure StringToFile(Texto, Arquivo: String);
var S: TStringList;
begin
    S := TStringList.Create;
    try
      S.Text := Texto;

      S.SaveToFile(Arquivo);
    finally
      S.Free;
    end;
end;

//

{procedure PreDrawList(L: TCustomListBox; Rect: TRect; State: TOwnerDrawState);
begin
    L.Canvas.Font.Color := clBlack;
    if odSelected in State then L.Canvas.Brush.Color := CorSel;
    L.Canvas.FillRect(Rect);
end;}

//

{IncLine
 Inclui uma linha com a string Line na string principal A com o separador 13 10
}
procedure IncLine(var A: String; Line: String);
begin
    A := A + Line + STR_ENTER;
end;

//

{IncLineIntelig
 Inclui o texto aNew na string principal A em uma nova linha, mas somente
 pula uma linha se não houver Enter no final do texto principal.
}
procedure IncLineIntelig(var A: String; aNew: String);
begin
    if aNew='' then Exit; //não incluir linha se não há texto novo

    if (A<>'') and not EndsStr(STR_ENTER, A) then
      A := A + STR_ENTER;

    A := A + aNew;
end;

//

{VarToExtended
 Converte a variant V para Extended, garantindo a conversão mesmo se for nulo
}
function VarToExtended(V: Variant): Extended;
begin
    if VarIsNull(V) then
      Result := 0
    else
      Result := V;
end;

//

{VarToDouble
 Converte a variant V para Double, garantindo a conversão mesmo se for nulo
}
function VarToDouble(V: Variant): Double;
begin
    if VarIsNull(V) then
      Result := 0
    else
      Result := V;
end;

//

{VarToBoolean
 Converte a variant V para Boolean, garantindo a conversão mesmo se for nulo
}
function VarToBoolean(V: Variant): Boolean;
begin
    if VarIsNull(V) then
      Result := False
    else
      Result := V;
end;

//

{VarToInteger
 Converte a variant V para Integer, garantindo a conversão mesmo se for nulo
}
function VarToInteger(V: Variant): Integer;
begin
    if VarIsNull(V) then
      Result := 0
    else
      Result := V;
end;

//

{ForceSetFocus
 Rotina para botar o foco no componente, porém forçando a exibição dele primeiro
 pois ele pode estar em uma Aba de PageControl, então exibirá a aba primeiro
}
procedure ForceSetFocus(C: TWinControl);
begin
    C.Show;
    C.SetFocus;
end;

//

{JumpNextControl / JumpPrevControl
 Pula o foco para o próximo/anterior controle em relação ao controle passado,
 considerando a TabOrder e os TabStop's
}
type TAcWinControl = class(TWinControl);

procedure JumpNextControl(From: TWinControl);
begin
    TAcWinControl(From.{Parent}Owner).SelectNext(From, True{Forward}, True{TabStop});
end;

procedure JumpPrevControl(From: TWinControl);
begin
    TAcWinControl(From.{Parent}Owner).SelectNext(From, False{Forward}, True{TabStop});
end;

//

{TemNumaListaSep
 Verifica se tem um Item passado numa Lista de strings separadas por Sep
}
function TemNumaListaSep(Item, Lista, Sep: String): Boolean;
begin
    Result := ( Pos(Sep+Item+Sep, Sep+Lista+Sep) > 0 );
end;

//

{FillRightEsp
 Preenche espacos em branco até o tamanho na direita
}
function FillRightEsp(A: String; Tam: Integer): String;
begin
    Result := A + StringOfChar(' ', Tam-Length(A));
end;

//

{FillLeftEsp
 Preenche com espaços em branco na esquerda até o tamanho Tam
}
function FillLeftEsp(A: String; Tam: Integer): String;
begin
    Result := StringOfChar(' ', Tam-Length(A))+A;
end;

//

{FillLeftZeros
 Preenche com 0(zeros) na esquerda até o tamanho Tam
}
function FillLeftZeros(A: String; Tam: Integer): String;
begin
    Result := StringOfChar('0', Tam-Length(A))+A;
end;

//

{GetQuantasCasas
 Pega a quantidade de casas decimais de um valor
}
function GetQuantasCasas(V: Extended): Integer;
var A: String;
    I: Integer;
begin
    A := FloatToStr(V);
    I := Pos(FormatSettings.DecimalSeparator, A);
    if I>0 then //tem casas decimais
      Result := Length(A)-I
    else
      Result := 0;
end;

//

{Trunca
 Trunca o valor conforme as casas decimais, usando String
}
function Trunca(V: Extended; Casas: Byte = 2): Extended;
var A: String;
    I: Integer;
begin
    //A := FloatToStr(V); **da problema com valores com muitas casas
    A := FormatFloat('0.########', V);
    
    I := Pos(FormatSettings.DecimalSeparator, A);
    if I>0 then //tem vírgula
      A := LeftStr(A, I+Casas);

    Result := StrToFloat(A);
end;

//

{ForceTeclado
 Manda os caracteres passados para o teclado, como se tivesse digitado
}
procedure ForceTeclado(A: String);
begin
    while (A <> '') do
    begin
        Keybd_Event(Ord(A[1]), 0, 0, 0);
        Delete(A, 1, 1);
    end;
end;

//

{EsticarProporcional
 Função para calcular a Largura e Altura de um determinado objeto/imagem
 que se deseja esticar/encolher em relação a um objeto pai (Area),
 mantendo a proporção original do objeto
 Usar PodeAumentarMenor quando se deseja grudar sempre no tamanho
 da Area, mesmo que ele era menor (esticará)
}
procedure EsticarProporcional(AreaW, AreaH, ObjW, ObjH: Integer;
                              var ResW: Integer; var ResH: Integer;
                              PodeAumentarMenor: Boolean=False);

var w, h, cw, ch: Integer;
    xyaspect: Double;
begin
    w := ObjW;
    h := ObjH;
    cw := AreaW;
    ch := AreaH;
    
    if ((w > cw) or (h > ch)) or (PodeAumentarMenor) then
    begin
      xyaspect := w / h;
      if w > h then
      begin
        w := cw;
        h := Trunc(cw / xyaspect);
        if h > ch then  // woops, too big
        begin
          h := ch;
          w := Trunc(ch * xyaspect);
        end;
      end
      else
      begin
        h := ch;
        w := Trunc(ch * xyaspect);
        if w > cw then  // woops, too big
        begin
          w := cw;
          h := Trunc(cw / xyaspect);
        end;
      end;
    end;

    ResW := w;
    ResH := h;
end;

//

{CentralizarObjeto
 Centraliza o objeto em relação ao seu Parent
 Use Modo em branco para centralizar na horizontal e vertical
 Use Modo=H para somente horizontal
 Use Modo=V para somente vertical
}
procedure CentralizarObjeto(C: TWinControl; Modo: String='');
begin
    if (Modo='') or (Modo='H') then
      C.Left := (C.Parent.ClientWidth-C.Width) div 2;

    if (Modo='') or (Modo='V') then
      C.Top := (C.Parent.ClientHeight-C.Height) div 2;
end;

//

{PosLast
 Localiza a última ocorrencia de Sub na string Texto,
 retornando a posicao de Sub
}
function PosLast(Sub, Texto: String): Integer;
var I, Last: Integer;
begin
    I := 0;
    repeat
      Last := I;
      I := PosEx(Sub, Texto, I+1);
    until I=0;
    Result := Last;
end;

//

{GetTempDir
 Retorna o Diretório Temporário Local do Usuário do Windows
}
function GetTempDir: String;
begin
    Result := IncludeTrailingPathDelimiter( GetEnvironmentVariable('TEMP') );
end;

//

{IncIfNaoBranco
 Resulta no Conteudo+Com se Conteudo for diferente de branco
}
function IncIfNaoBranco(Conteudo, Com: String): String;
begin
    Result := '';
    if Conteudo<>'' then Result := Conteudo+Com;
end;

//

{FileWriteLine
 Escreve linha em arquivo texto novo ou ja existente
}
procedure FileWriteLine(Arquivo, Texto: String);
var F: TextFile;
begin
    AssignFile(F, Arquivo);
    if FileExists(Arquivo) then Append(F) else ReWrite(F);
    Writeln(F, Texto);
    //Flush(F);
    CloseFile(F);
end;

//

{IsUFValida
 Validar se a UF passada na String é válida para as UFs do Brasil
 Função copiada do pcnAuxiliar do ACBr
}
function IsUFValida(const UF: String): Boolean;
const
  UFS = '.AC.AL.AP.AM.BA.CE.DF.ES.GO.MA.MT.MS.MG.PA.PB.PR.PE.PI.RJ.RN.RS.RO.RR.SC.SP.SE.TO.EX.';
begin
    Result := Pos('.'+UF+'.', UFS) > 0;
end;

//

{StrSemAcentos
 Transforma a String em uma String sem os acentos
}
function StrSemAcentos(A: String): String;
type USASCIIString = type AnsiString(20127); // CodePage 20127 = US ASCII (0-127)
begin
    Result := String(USASCIIString(A));
end;

//

{ContemAny
 Retorna se o Texto passado contem no meio da string alguma das strings passadas na array Subs
}
function ContemAny(Texto: String; Subs: array of String): Boolean;
var Sub: String;
begin
    Result := False;

    for Sub in Subs do
      if Pos(Sub, Texto)>0 then
      begin
          Result := True;
          Break;
      end;
end;

//

{SameValD
 Função Math.SameValue forçada com Double
}
function SameValD(V1, V2: Double): Boolean;
begin
    Result := SameValue(V1, V2);
end;

//

{CompVal
 Compara os dois valores
 Operadores possíveis: = (>) (<) (>=) (<=) (<>)
}
function GetValueRelationResult(Op: String; VR: TValueRelationship): Boolean;
begin
    if Op='=' then Result := VR = EqualsValue else
    if Op='>' then Result := VR = GreaterThanValue else
    if Op='<' then Result := VR = LessThanValue else
    if Op='>=' then Result := not (VR = LessThanValue) else
    if Op='<=' then Result := not (VR = GreaterThanValue) else
    if Op='<>' then Result := not (VR = EqualsValue) else

      raise Exception.CreateFmt('Operador "%s" inválido para comparar valores', [Op]);
end;

function CompVal(A: Extended; Op: String; B: Extended): Boolean;
var VR: TValueRelationship;
begin
    VR := CompareValue(A, B);
    Result := GetValueRelationResult(Op, VR);
end;

function CompValD(A: Double; Op: String; B: Double): Boolean;
var VR: TValueRelationship;
begin
    VR := CompareValue(A, B);
    Result := GetValueRelationResult(Op, VR);
end;

//

{SoMaiorQueZero
 Retorna o Valor passado somente se este foi maior que zero
}
function SoMaiorQueZero(Valor: Extended): Extended;
begin
    if Valor>0 then
      Result := Valor
    else
      Result := 0;
end;

//

{GetColSep
 Obtém a string de uma parte de A conforme o separador Sep na coluna Col
 Exemplo: GetColSep('TEXTO1|TEXTO2|TEXTO3', 2, '|') = 'TEXTO2'
}
function GetColSep(A: String; Col: Integer; Sep: String): String;
var X, ICol: Integer;
begin
    Result := '';

    if not A.EndsWith(Sep) then A := A + Sep;

    for ICol := 1 to Col do
    begin
        X := Pos(Sep, A);
        if X=0 then Exit;

        if ICol=Col then
          Result := Copy(A, 1, X-Length(Sep))
        else
          Delete(A, 1, X);
    end;
end;

//

{CheckWinMutex
 Tenta criar um mutex no Windows e retorna True caso já exista.
 Usado para controle de multiplas instâncias de uma aplicação.
}
function CheckWinMutex(Nome: String): Boolean;
var H: THandle;
begin
    Result := False;

 	  H := CreateMutex(nil, True, PWideChar(Nome));
    if H=0 then raise Exception.Create('Erro ao criar Mutex');

    if GetLastError = ERROR_ALREADY_EXISTS then
    begin
        CloseHandle(H);

        Result := True;
    end;
end;

//

{ShowFormWithoutFocus
 Exibe o form sem colocar foco nele
}
procedure ShowFormWithoutFocus(F: TForm);
begin
    ShowWindow(F.Handle, SW_SHOWNOACTIVATE);
    F.Visible := True;
end;

//

{ConvMemoToStrPV
 Converte um texto separado por Enter em texto separado por ";"
 fazendo o controle para permitir usar caracter ; no texto normalmente
}
function ConvMemoToStrPV(const aMemo: String): String;
begin
    Result := aMemo;

    Result := StringReplace(Result, '&', '&&', [rfReplaceAll]);
    Result := StringReplace(Result, ';', '&;', [rfReplaceAll]);
    Result := StringReplace(Result, STR_ENTER, ';', [rfReplaceAll]);
end;

{ConvStrPVToMemo
 Retorna o texto separado por Enter que foi previamente convertido usando
 a função anterior ConvMemoToStrPV
}
function ConvStrPVToMemo(const A: String): String;
var BeforeECom: Boolean;
    C: Char;
begin
    Result := '';

    BeforeECom := False;

    for C in A do
    begin
        if BeforeECom then //caracter anterior era "&"
        begin
            case C of
              ';': Result := Result + ';';
              '&': Result := Result + '&';
              else raise Exception.CreateFmt('ConvStrPVToMemo: Caracter inválido (%s) após "&"', [C]);
            end;
            BeforeECom := False;
        end else
        begin
            case C of
              ';': Result := Result + STR_ENTER;
              '&': BeforeECom := True;
              else Result := Result + C;
            end;
        end;
    end;
end;

//

{GetPercentOfPart
 Retorna o percentual que "Part" representa em relação à "Tot"
}
function GetPercentOfPart(Part, Tot: Int64): Word;
begin
    Result := Trunc(Part/Tot*100);
end;

//

{ClearRecord
 Limpa o record, preenchendo todas as propriedades com byte zerado
}
procedure ClearRecord(var R);
begin
    FillChar(R, SizeOf(@R), 0);
end;

//

{FreeObjects
 Destroir todos os objetos da StringList
}
procedure FreeObjects(S: TStrings);
var I: Integer;
begin
    for I := 0 to S.Count-1 do
      S.Objects[I].Free;
end;

//

{GetValueOfStrings
 Retorna o valor de um nome em uma lista de strings.
}
function GetValueOfStrings(aStrings, aNome: String): String;
var S: TStringList;
begin
    S := TStringList.Create;
    try
      S.Text := aStrings;

      Result := S.Values[aNome];
    finally
      S.Free;
    end;
end;

procedure DesligarPC;
begin
  WinExec('cmd /c shutdown -s',SW_NORMAL);
  //Força os Programas a Desligarem
  ExitWindowsEx(EWX_SHUTDOWN, 0);
end;
//

{Setar os filhos do componente com o enable conforme definido por parametro}
procedure EnabledAllControl(Component:TWinControl;Enable:boolean);
var I:integer;
begin
  for I := 0 to Component.ControlCount-1 do
	  Component.Controls[I].Enabled := Enable;
end;

{Setar os filhos do componente RzCustomEdits com o readonly conforme definido por parametro}
procedure ReadOnlyAllControl(Component:TWinControl;Enable:boolean;excecoes:array of TRzEdit);
var I, J:integer;
    temExcecao:Boolean;
begin
  for I := 0 to Component.ControlCount-1 do
    if (Component.Controls[i] is TRzEdit) then
    begin
      temExcecao := false;

      for J := 0 to High(excecoes) do
        if Component.Controls[i] = excecoes[J] then
        begin
          temExcecao := true;
          Break;
        end;

      if not temExcecao then
      begin
        SetPropValue(Component.Controls[I], 'ReadOnly', Enable);
        SetPropValue(Component.Controls[I], 'ReadOnlyColorOnFocus', Enable);
        SetPropValue(Component.Controls[I], 'TabStop', not Enable);
      end;
    end;
end;


//Função para remover caracteres especiais.
function RemoverEspeciais(Texto : string) : string;
const
  xCarExt: array[1..48] of string = ('<','>','!','@','#','$','%','¨','&','*',
                                     '(',')','_','+','=','{','}','[',']','?',
                                     ';',':',',','|','*','"','~','^','´','`',
                                     '¨','æ','Æ','ø','£','Ø','ƒ','ª','º','¿',
                                     '®','½','¼','ß','µ','þ','ý','Ý');
var
  i : Integer;
begin
  Result := Texto;
  for i:=1 to 48 do
    Result := Troca(Result, xCarExt[i], '');
end;

procedure raiseWithFocus(Component:TWinControl;Error:string);
begin
  ForceSetFocus(Component);
  raise Exception.Create(Error);
end;

procedure raiseStringEmpty(Edt:TCustomEdit;Error:string);
begin

  if (Trim(Edt.text) = '') then
    raiseWithFocus(Edt,Error);
end;

procedure raiseMaskEmpty(Edt:TCustomMaskEdit;Error:string);
begin
  if (Trim(Edt.text) = '') then
    raiseWithFocus(Edt,Error);
end;

procedure raiseComboBoxEmpty(Cb:TCustomComboBox;Error:string);
begin
  if Cb.ItemIndex = MU then
    raiseWithFocus(Cb,Error);
end;

procedure raiseMemoEmpty(Memo:TCustomMemo;Error:string);
begin
  if (Trim(Memo.Lines.Text) = '') then
    raiseWithFocus(Memo,Error);
end;

procedure raiseButtonEditEmpty(Edt:TRzButtonEdit;Error:string);
begin
//  if Edt.Tem then
//    if Edt.No then
//      raiseWithFocus(Edt,Error);
end;
end.
