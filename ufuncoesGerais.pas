unit ufuncoesGerais;

interface

uses
  windows,
  dialogs,
  sysutils,
  inifiles,
  forms,
  classes,
  rzedit,
  variants,
  stdctrls,
  dbgrids,
  graphics,
  extctrls,
  db,
  messages,
  mapi,
  printers,
  uniPageControl,
  grim,
  Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg,
  shellAPI,
  Winapi.TlHelp32,
  dbctrls,
  controls,
  IdHashMessageDigest,
  idHash,
  math,
  comctrls,
  wininet,
  dbisamtb,
  pngbitbtn,
  unipanel,
  uniListBox,
  uniGUIFrame,
  uniCheckBox,
  uniDbGrid,
  uniEdit,
  System.MaskUtils;

procedure hidetabs(pagecontrol: tpagecontrol);

procedure nexttab(pagecontrol: tunipagecontrol);

procedure prevtab(pagecontrol: tunipagecontrol);

procedure procuraindice(ccampo: string; datasource: tdatasource);

function space(nnum: integer): string;

function StrTran(ctxt, cstr1, cstr2: string): string;

function StrTranEx(ctxt, cstr1, cstr2: string): string;

function StrTranSQL(cSQL: string; cPar: string = ''; cVal: string = ''): string;

function StrTranEmail(ctxt: string): string;

function DividirMoeda(ndividendo, ndivisor: real; nround: integer = 2): real;

function Dividir(ndividendo, ndivisor: real): real;

// procedure sendmail(cnome, cemail, csubject, ctexto: string);

procedure AdicionaVar(tbltemp: tdbisamtable; cvar: tstringlist);

function Trunca(nvalor: real; ndec: integer = 2): real;

function Arredonda(nvalor: real; ndec: integer = 2): real;

function FormatFormul(nvalor: real; ndec: integer = 2): string;

function SqlToFloat(cvalor: string): real;

function FloatToSql(nvalor: real): string;

function TiraAspas(cstr: string): string;

function TiraAcento(A: string): string;

function TiraCaracteresEspeciais(A: string): string;

function AcertaNomeArquivo(s: string): string;

function Repetir(caracter: char; vezes: integer): string;

function ComparaFloat(nvalor1: real; coperador: string; nvalor2: real; ncasas: integer = 3): boolean;

function strzero(strcampo: string; tamanho: integer): string;

function ajusta(cstr: string; ntam: integer): string;

function ajustar(cstr: string; ntam: integer): string;

function crypt(action, src: string): string;

procedure escondebotao(botao: tpngbitbtn);

function datavazia(ddata: tdate): boolean;

function SoLetras(cstr: string): string;

function contachar(cchar: char; cstr: string): integer;

function datetosql(ddata: tdatetime): string;

function pegaimpressoras: string;

function setaimpressora(imp: string): boolean;

function prestcoment(nvalor, njuros: real; nparcel: integer; ctipjur: string = 'C'): real;

function prestsement(nvalor, njuros: real; nparcel: integer; ctipjur: string = 'C'): real;

function dataigual(d1, d2: real): boolean;

procedure keyboard(key: word; const shift: tshiftstate = []; specialkey: boolean = false);

procedure keyboardstring(s: string);

function conexaointernet: boolean;

function getcomputernamefunc: string;

procedure apagatempdbisam(cpath: string = '.\');

procedure apagaretornosms(cpath: string = '.\');

procedure avisohint(sender: tobject; const t: cardinal = 1000);

function diasemana(date: tdate): string;

function getnomecomputador: string;

function digitoean13(cn: string): string;

function shiftdown: boolean;

procedure somacoluna(gr: tgrim; ds: tdatasource; cp: string; dis: trznumericedit);

function formatmemo(ss: string; t: integer): string;

function ehnumero(key: char): boolean;

function modulo10(valor: string): string;

function modulo11(valor: string; base: integer = 9; resto: boolean = false): string;

function modulo11bb(valor: string): string;

function modulo11brad(valor: string; base: integer = 7): string;

function brancos(nt: integer): string;

function dataenvia(d: tdate): string;

//function ehzero(ct: string): boolean;

function ehzero(v: variant): boolean;

procedure colocahoje(d1, d2: trzdatetimeedit);

procedure colocasemana(d1, d2: trzdatetimeedit);

procedure colocames(d1, d2: trzdatetimeedit);

procedure colocaano(d1, d2: trzdatetimeedit);

procedure colocainfinito(d1, d2: trzdatetimeedit);

procedure novafonte(s: string);

function formatahora(h: string; comsegundos: boolean = false; ndigitoshora: integer = 2): string;

function horasdecimais(h1, h2: string): double;

function hmstodec(h: string): double;

function dectohms(d: double): string;

function SecToHMS(s: integer): string;

function coalesce(n1, n2: variant): variant;

function capturatela: tbitmap;

function getserialid: string;

function JpgToPNG(Jpg: TJPEGImage): TPngImage;

procedure ForcarFocoEdit(c: TWinControl);

procedure PreparaTemp(t: TDBIsamTable);

function ClareiaCor(BaseColor: TColor; Adjust: Integer): TColor;

procedure Executa(Arquivo: string);

procedure ForceForegroundWindow(hwnd: THandle);

function ForcarFoco(hwnd: THandle): Boolean;

function RPos(SubStr: string; S: string): integer;

function GetTempName: string;

function IIF(teste: boolean; var1, var2: variant): variant;

function ColocaMaiuscula(s: string): string;

function SoNumeros(cstr: string): string;

function SoTemNumeros(cstr: string; cIgnorar: string = ''): Boolean;

function SoLetrasNumeros(cstr: string): string;

function FormataCNPJ(Doc: string): string;

function MD5(s: string): string;

function AcertaMemoCarac(s: string; c: Char = '/'): string;

function FazData(s: string): TDate;

function FazNumeroStr(s: string; d: integer): string;

function FazSimNao(s: string = 'S'): string;

function FazStatus(s: string = ''): string;

procedure ShowPanel(p: TUniPanel; margemTop: integer = 50; margemLeft: integer = 50; TamanhoOriginal: boolean = false);

function MesmoTexto(s1, s2: string): boolean;

function AllTrim(s: string): string;

function GeraID(Prefix: string): string;

function ProximoDiaUtil(d: TDate; n: integer): TDate;

function ExtArquivo(s: string): string;

procedure MoveItemLista(L1, L2: TUniListBox);

procedure ItemUpLista(L1: TUniListBox);

procedure ItemDownLista(L1: TUniListBox);

function PosX(s1, s2: string): integer;

function SemComentarios(s: TStringList): TStringList;

procedure GravaLog(FArq, Texto: string);

function Portugol2Pascal(s: TStringList): TStringList;

function GetVarFloat(s, v: string): real;

function GetVarInteger(s, v: string): integer;

function GetVarString(s, v: string): string;

function TiraComentario(s: string): string;

function SemEspaco(s, c: string): string;

function BadGet(g: string; bc: string = '#E5E5E5'; tc: string = '#FFFFFF'; fs: string = '90%'): string;

function BadGetTable(g: string; bc: string = '#E5E5E5'; tc: string = '#FFFFFF'; fs: string = '90%'): string;

function EmptyField(f: TStringField): boolean;

procedure setToolTipGrid(g: TUniDbGrid);

function RecursiveDelete(FullPath: string): Boolean;

function IntX(s: string): integer;

function gerarCodigoAtivacao: string;

function gerarToken: string;

function checkToken(t: string): boolean;

function FormatDateHuman(d: TDateTime): string;

procedure SleepProc(PtimeOut: Integer);

function GetSeconds(ATimeString: string): Integer;

function GetMinutes(ATimeString: string): integer;

function DifMinutos(hIni, hFim: TDateTime): integer;

function ProcessExists(exeFileName: string): Boolean;

function StrToFloatEx(s: string): double;

//function FieldEmpty(f: TIntegerField): boolean; overload;

var
  ctemp: string;
  inisys: tinifile;
  i: integer;
  hintwindow: thintwindow;

  // ***********************************************************************************************************

const

  pubFeriados: string = '01/05/2019#01/01/2020#25/02/2020#10/04/2020#21/04/2020#01/05/2020#11/06/2020#07/09/2020#12/10/2020#02/11/2020#15/11/2020#25/12/2020';

implementation

uses
  strutils,
  dateutils;

function EhFeriado(d: TDate): boolean;
begin
  result := false;
  if Pos(DateToStr(d), pubFeriados) > 0 then
    result := true;
end;

function ProximoDiaUtil(d: TDate; n: integer): TDate;
var
  i: integer;
begin

  while (DayOfWeek(d) = 1) or (DayOfWeek(d) = 7) or (EhFeriado(d)) do
    d := d + 1;

  for i := 1 to n do
  begin
    d := d + 1;

    while (DayOfWeek(d) = 1) or (DayOfWeek(d) = 7) or (EhFeriado(d)) do
      d := d + 1;

  end;

  while (DayOfWeek(d) = 1) or (DayOfWeek(d) = 7) or (EhFeriado(d)) do
    d := d + 1;

  result := d;

end;

function getnomecomputador: string;
var
  buffer: array[0..255] of char;
  size: dword;
begin
  result := '';
  size := sizeof(buffer);
  if getcomputername(buffer, size) then
    result := buffer;
end;

function SoNumeros(cstr: string): string;
var
  i: integer;
begin

  result := '';
  for i := 1 to length(cstr) do
    if cstr[i] in ['0'..'9'] then
      result := result + cstr[i];

end;

function SoTemNumeros(cstr: string; cIgnorar: string = ''): Boolean;
begin

  for i := 1 to Length(cIgnorar) do
    cStr := StringReplace(cStr, cIgnorar[i], '', [rfIgnoreCase, rfReplaceAll]);

  Result := Length(sonumeros(cstr)) = Length(cstr);

end;

function SoLetras(cstr: string): string;
var
  i: integer;
begin

  result := '';
  for i := 1 to length(cstr) do
    if not (cstr[i] in ['0'..'9']) then
      result := result + cstr[i];

end;

function SoLetrasNumeros(cstr: string): string;
var
  i: integer;
begin

  result := '';
  for i := 1 to length(cstr) do
    if (cstr[i] in ['a'..'z', 'A'..'Z', '0'..'9']) then
      result := result + cstr[i];

end;

function datavazia(ddata: tdate): boolean;
var
  cdata: string;
begin
  cdata := formatdatetime('yyyyddmm', ddata);
  result := false;
  if (cdata = '') or (cdata = '18993012') then
  begin
    result := true;
  end;
end;

procedure hidetabs(pagecontrol: tpagecontrol);
var
  ipage: integer;
begin
  for ipage := 0 to pagecontrol.pagecount - 1 do
    pagecontrol.pages[ipage].tabvisible := false;
  if (pagecontrol.pagecount > 0) then
    pagecontrol.activepage := pagecontrol.pages[0];
  pagecontrol.style := tsbuttons;
end;

procedure nexttab(pagecontrol: tunipagecontrol);
begin
  if pagecontrol.activepageindex = pagecontrol.pagecount then
    pagecontrol.activepageindex := 0
  else
    pagecontrol.activepageindex := pagecontrol.activepageindex + 1;

end;

procedure prevtab(pagecontrol: tunipagecontrol);
begin
  if pagecontrol.activepageindex = 0 then
    pagecontrol.activepageindex := pagecontrol.pagecount
  else
    pagecontrol.activepageindex := pagecontrol.activepageindex - 1;

end;

{
  procedure Erro(Txt: string);
  begin
  //  Application.MessageBox(pChar(Txt), pChar('Erro!'), MB_OK + MB_ICONERROR);

  // substituir ; por enter
  Txt := StringReplace(Txt, ';', #13, [rfReplaceAll]);

  with TfrmAlerta.Create(application) do
  begin

  RzPanel2.Color := clRed;
  Image3.Visible := true;
  lbTitulo.Caption := 'Erro';
  lbTitulo.Blinking := true;
  lbMensagem.Caption := Txt;
  btnAlertaCancelar.Visible := false;

  lbTemp.Caption := Txt;
  width := lbTemp.Width + 100;

  if Width < 100 then Width := 100;
  if Width > 500 then Width := 500;

  ShowModal;

  end;

  end;

  procedure Alerta(Txt: string);
  begin
  //  Application.MessageBox(pChar(Txt), pChar('Alerta!'), MB_OK + MB_ICONWARNING);

  // substituir ; por enter
  Txt := StringReplace(Txt, ';', #13, [rfReplaceAll]);

  with TfrmAlerta.Create(application) do
  begin

  RzPanel2.Color := clYellow;
  Image1.Visible := true;
  lbTitulo.Caption := 'Alerta';
  lbMensagem.Caption := Txt;
  btnAlertaCancelar.Visible := false;

  lbTemp.Caption := Txt;
  width := lbTemp.Width + 100;

  if Width < 100 then Width := 100;
  if Width > 500 then Width := 500;

  ShowModal;

  end;

  end;

  function Confirma(cTxt: string; nDefault: integer = 1): boolean;
  begin

  //  if nDefault = 1 then // sim
  //    result := Application.MessageBox(pChar(cTxt), pChar('Pergunta!'), MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES
  //  else
  //    result := Application.MessageBox(pChar(cTxt), pChar('Pergunta!'), MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES

  // substituir ; por enter
  cTxt := StringReplace(cTxt, ';', #13, [rfReplaceAll]);

  with TfrmAlerta.Create(application) do
  begin

  // cores...
  RzPanel2.Color := clGreen;
  lbTitulo.Font.Color := clWhite;

  Image2.Visible := true;
  lbTitulo.Caption := 'Confirme';
  lbMensagem.Caption := cTxt;
  btnAlertaOk.Caption := '&Sim';
  btnAlertaCancelar.Caption := '&Não';

  lbTemp.Caption := cTxt;
  width := lbTemp.Width + 100;

  if Width < 100 then Width := 100;
  if Width > 500 then Width := 500;

  if nDefault = 1 then btnAlertaOk.Default := true else btnAlertaCancelar.Default := true;
  result := ShowModal = mrOk;

  end;

  end;
}

procedure procuraindice(ccampo: string; datasource: tdatasource);
var
  i: integer;
  cindice, cindexcpo: string;
begin
  for i := 0 to (tdbisamtable(datasource.dataset).indexdefs.count - 1) do
  begin
    cindice := uppercase(tdbisamtable(datasource.dataset).indexdefs[i].fields);
    cindexcpo := cindice;
    if pos(';', cindice) > 0 then
      cindexcpo := copy(cindice, 1, pos(';', cindice) - 1);
    if uppercase(trim(ccampo)) = trim(cindexcpo) then
    begin
      tdbisamtable(datasource.dataset).indexfieldnames := cindice;
      exit;
    end;
  end;
end;

function space(nnum: integer): string;
var
  i: integer;
  cespacos: string;
begin
  cespacos := '';
  for i := 1 to nnum do
    cespacos := cespacos + ' ';
  result := cespacos;
end;

function StrTran(ctxt, cstr1, cstr2: string): string;
begin
  result := stringreplace(ctxt, cstr1, cstr2, [rfreplaceall]);
end;

function StrTranEx(ctxt, cstr1, cstr2: string): string;
begin
  result := cTxt;
  while Pos(UpperCase(cStr1), UpperCase(result)) > 0 do
    result := copy(result, 1, Pos(UpperCase(cStr1), UpperCase(result)) - 1) + cStr2 + copy(result, Pos(UpperCase(cStr1), UpperCase(result)) + Length(cStr1), Length(result));
end;

function StrTranSQL(cSQL: string; cPar: string = ''; cVal: string = ''): string;
begin

  //cSQL := UpperCase(cSQL);

  if cPar <> '' then
  begin
    if cPar[1] <> '@' then
      cPar := '@' + UpperCase(cPar);
    result := StrTranEx(cSQL, cPar, cVal);
  end;

  result := StrTranEx(result, '´', #39);
  result := StrTranEx(result, '`', #39);

end;

function strtranemail(ctxt: string): string;
var
  i: integer;
begin
  for i := 1 to length(ctxt) do
  begin

    if (not (ctxt[i] in ['a'..'z'])) and (not (ctxt[i] in ['0'..'9'])) and (not (ctxt[i] in ['A'..'Z'])) then
      ctxt[i] := '_';

  end;

  // ShowMessage( cTxt );

  result := ctxt;

end;

function DividirMoeda(ndividendo, ndivisor: real; nround: integer = 2): real;
begin
  result := 0;
  if ndivisor > 0 then
  begin
    result := ndividendo / ndivisor;
    nround := nround * -1;
    result := roundto(result, nround);
  end;
end;

function Dividir(nDividendo, nDivisor: real): real;
begin
  result := 0;
  if nDivisor > 0 then
    result := nDividendo / nDivisor;
end;

//procedure sendmail(cnome, cemail, csubject, ctexto: string);
//var
//  mapimessage: tmapimessage;
//  receip: tmapirecipdesc;
//  merror: cardinal;
//begin
//
//  with mapimessage do
//  begin
//    ulreserved := 0;
//    lpszsubject := pansichar(csubject);
//    lpsznotetext := pansichar(ctexto);
//    lpszmessagetype := nil;
//    lpszdatereceived := nil;
//    lpszconversationid := nil;
//    flflags := 0;
//    lporiginator := nil;
//    nrecipcount := 0;
//    lprecips := nil;
//    nfilecount := 0;
//    lpfiles := nil;
//
//    receip.ulreserved := 0;
//    receip.ulrecipclass := mapi_to;
//    receip.lpszname := strnew(pansichar(cnome));
//    receip.lpszaddress := strnew(pansichar(cemail));
//    receip.uleidsize := 0;
//    mapimessage.nrecipcount := 1;
//    mapimessage.lprecips := @receip;
//
//    lprecips := @receip;
//  end;
//
//  merror := mapisendmail(0, application.handle, mapimessage, mapi_dialog or mapi_logon_ui or mapi_new_session, 0);
//  if merror <> 0 then
//    messagedlg('Erro ao enviar email! Verifique seu programa de envio de email!', mterror, [mbok], 0)
//
//end;

procedure adicionavar(tbltemp: tdbisamtable; cvar: tstringlist);
var
  i: integer;
  ccampo: string;
  cconteudo: string;
  ctipocampo: string;
begin

  for i := 0 to tbltemp.fields.count - 1 do
  begin
    ccampo := tbltemp.fields[i].fieldname;
    cconteudo := tbltemp.fieldbyname(ccampo).asstring;
    ctipocampo := tbltemp.fields[i].classname;

    if (ctipocampo = 'TStringField') or (ctipocampo = 'TMemoField') then
      cconteudo := '"' + tbltemp.fieldbyname(ccampo).asstring + '"';

    if (ctipocampo = 'TIntegerField') or (ctipocampo = 'TAutoIncField') then
      cconteudo := formatfloat('########0', tbltemp.fieldbyname(ccampo).asfloat);

    if (ctipocampo = 'TFloatField') or (ctipocampo = 'TCurrencyField') then
    begin
      if cconteudo = '' then
        cconteudo := '0,00';
      cconteudo := stringreplace(cconteudo, ',', '.', [rfreplaceall]);
    end;

    cvar.add(ccampo + '=' + cconteudo);

  end;

end;

function formatformul(nvalor: real; ndec: integer = 2): string;
var
  cvalformul: string;
begin
  cvalformul := formatfloat('00000000000000.00000000', nvalor);
  cvalformul := copy(cvalformul, 1, 15 + ndec);
  cvalformul := floattostr(strtofloat(cvalformul));
  cvalformul := stringreplace(cvalformul, ',', '.', [rfreplaceall]);
  result := cvalformul;
end;

function trunca(nvalor: real; ndec: integer = 2): real;
var
  nvaltrunc: real;
  cvaltrunc: string;
begin
  cvaltrunc := formatfloat('00000000000000.00000000', nvalor);
  cvaltrunc := copy(cvaltrunc, 1, 15 + ndec);
  // ShowMessage( 'trunca: '+cValTrunc );
  nvaltrunc := strtofloat(cvaltrunc);
  result := nvaltrunc;
end;

function arredonda(nvalor: real; ndec: integer = 2): real;
var
  nvalarred: real;
begin
  nvalarred := roundto(nvalor, (ndec * -1));
  result := nvalarred;
end;

function sqltofloat(cvalor: string): real;
begin
  result := strtofloat(strtran(cvalor, '.', ','));
end;

function floattosql(nvalor: real): string;
begin
  result := formatfloat('###################0.000000000', nvalor);
  result := strtran(result, ',', '.');
end;

function tiraaspas(cstr: string): string;
begin
  result := strtran(cstr, 'null', '');
  result := strtran(result, 'NULL', '');
  result := strtran(result, '"', '');
  result := strtran(result, #39, '');
end;

function repetir(caracter: char; vezes: integer): string;
var
  cont: integer;
begin
  result := '';
  for cont := 1 to vezes do
  begin
    result := result + caracter;
  end;
end;

function comparafloat(nvalor1: real; coperador: string; nvalor2: real; ncasas: integer = 3): boolean;
var
  cvalor1, cvalor2: string;
  nvalortemp: variant;
begin
  // nValorTemp := Int(nValor1 * (power(10, nCasas)));
  // cValor1 := IntToStr(nValorTemp);
  // nValorTemp := Int(nValor2 * (power(10, nCasas)));
  // cValor2 := IntToStr(nValorTemp);

  // cValor1 := StrZero(cValor1, 15);
  // cValor2 := StrZero(cValor2, 15);

  // ShowMessage( 'Valor1: '+cValor1+ '   valor 2: '+cValor2);
  // ShowMessage( 'Valor1: '+FloatToStr(nValor1)+'   valor 2: '+ FloatToSTR(nValor2));

  // if cOperador = '<' then
  // result := (cValor1 < cValor2);
  // if cOperador = '>' then
  // result := (cValor1 > cValor2);
  // if cOperador = '=' then
  // result := (cValor1 = cValor2);
  // if cOperador = '<>' then
  // result := (cValor1 <> cValor2);
  // if cOperador = '>=' then
  // result := (cValor1 >= cValor2);
  // if cOperador = '<=' then
  // result := (cValor1 <= cValor2);

  nvalor1 := strtofloat(floattostr(nvalor1));
  nvalor2 := strtofloat(floattostr(nvalor2));

  if coperador = '<' then
    result := (nvalor1 < nvalor2);
  if coperador = '>' then
    result := (nvalor1 > nvalor2);
  if coperador = '=' then
    result := (nvalor1 = nvalor2);
  if coperador = '<>' then
    result := (nvalor1 <> nvalor2);
  if coperador = '>=' then
    result := (nvalor1 >= nvalor2);
  if coperador = '<=' then
    result := (nvalor1 <= nvalor2);

end;

function strzero(strcampo: string; tamanho: integer): string;
var
  i: integer;
begin
  strcampo := trim(strcampo);
  // if strCampo <> '' then
  if length(strcampo) < tamanho then
    for i := 1 to (tamanho - length(strcampo)) do
      strcampo := '0' + strcampo;
  result := rightstr(strcampo, tamanho);
end;

function ajusta(cstr: string; ntam: integer): string;
begin
  result := copy(cstr + space(ntam), 1, ntam);
end;

function ajustar(cstr: string; ntam: integer): string;
begin
  result := rightstr(space(ntam) + cstr, ntam);
end;

function crypt(action, src: string): string;
label
  fim;
var
  keylen: integer;
  keypos: integer;
  offset: integer;
  dest, key: string;
  srcpos: integer;
  srcasc: integer;
  tmpsrcasc: integer;
  range: integer;
begin
  if (src = '') then
  begin
    result := '';
    goto fim;
  end;
  key := 'YUQL23KL23UORIUQWIOERUWIOUKKKLASJDKIERUOW982LJSDKLF09AS80DASD90F8ASJKDF3987ASD8F89AS79FL9RTIKJ';
  dest := '';
  keylen := length(key);
  keypos := 0;
  srcpos := 0;
  srcasc := 0;
  range := 256;
  if (action = uppercase('C')) then
  begin
    randomize;
    offset := 128;
    dest := format('%1.2x', [offset]);
    for srcpos := 1 to length(src) do
    begin
      // Application.ProcessMessages;
      srcasc := (ord(src[srcpos]) + offset) mod 255;
      if keypos < keylen then
        keypos := keypos + 1
      else
        keypos := 1;
      srcasc := srcasc xor ord(key[keypos]);
      dest := dest + format('%1.2x', [srcasc]);
      offset := srcasc;
    end;
  end
  else
    if (action = uppercase('D')) then
    begin
      offset := strtoint('$' + copy(src, 1, 2));
      srcpos := 3;
      repeat
        srcasc := strtoint('$' + copy(src, srcpos, 2));
        if (keypos < keylen) then
          keypos := keypos + 1
        else
          keypos := 1;
        tmpsrcasc := srcasc xor ord(key[keypos]);
        if tmpsrcasc <= offset then
          tmpsrcasc := 255 + tmpsrcasc - offset
        else
          tmpsrcasc := tmpsrcasc - offset;
        dest := dest + chr(tmpsrcasc);
        offset := srcasc;
        srcpos := srcpos + 2;
      until (srcpos >= length(src));
    end;
  result := dest;
  fim:

end;

procedure escondebotao(botao: tpngbitbtn);
begin
  botao.width := 0;
  botao.height := 0;
end;

function contachar(cchar: char; cstr: string): integer;
var
  i, nocorr: integer;
begin
  nocorr := 0;
  for i := 1 to length(cstr) do
    if cstr[i] = cchar then
      nocorr := nocorr + 1;
  result := nocorr;
end;

function datetosql(ddata: tdatetime): string;
begin
  //  result := SysUtils.QuotedStr(formatdatetime('yyyy-mm-dd', ddata));
  result := (formatdatetime('yyyy-mm-dd', ddata));
end;

{
  function PegaImpressoras: string;
  var I: Integer;
  A: string;
  R: string;
  X: Integer;
  begin
  R := '';

  for I := 0 to Printer.Printers.Count - 1 do
  begin
  A := Printer.Printers[I];
  A := AnsiUpperCase(A);

  X := Pos(' EM ', A);

  if X = 0 then
  begin
  X := Pos(' (DE ', A);

  if X = 0 then X := Pos(' NA S', A);
  end;

  if X > 0 then Delete(A, X, Length(A));

  R := R + A + #13#10;
  end;

  Result := R;
  end;

  function SetaImpressora(Imp: string): Boolean;
  var
  I,nX: Integer;
  A: string;
  begin

  Imp := LowerCase(Imp);
  //  Printer.PrinterIndex := -1;

  //  ShowMEssage( imp );

  nX := -1;
  for I := 0 to Printer.Printers.Count - 1 do
  begin

  A := Printer.Printers[I];
  A := LowerCase(A);

  if SameText(Copy(A, 1, Length(Imp)),Imp) then
  begin
  //      Printer.PrinterIndex := I;
  nX := I;
  Break;
  end;

  end;

  Result := (nX <> -1);
  if result then
  Printer.PrinterIndex := nX
  else
  raise exception.Create('Impressora não encontrada: ' + Imp + #13+#13+' na lista:'+#13+#13+ printer.Printers.Text);
  //    application.MessageBox(pChar('Impressora não encontrada: ' + Imp), 'Erro ao Tentar Encontrar Impressora!', MB_ICONERROR + MB_OK)

  end;
}

function pegaimpressoras: string;
var
  i: integer;
  a: string;
  r: string;
  x: integer;
begin
  r := '';

  for i := 0 to printer.printers.count - 1 do
  begin

    a := printer.printers[i];
    a := ansiuppercase(a);

    {
      // **** - teste windows 2008 server...
      if I = 0 then
      begin
      A := 'EPSON (5 redirecionada)';
      end;
      if I = 1 then
      begin
      A := 'PDF CREATOR (5 redirecionada)';
      end;
      // ****
    }

    x := pos(' EM ', a);

    if x = 0 then
    begin
      x := pos(' (DE ', a);

      if x = 0 then
      begin
        x := pos(' NA S', a);

        if x = 0 then
          x := pos(' ON ', a);
      end;
    end;

    if x > 0 then
      delete(a, x, length(a));

    // tirar o que está entre os parenteses...(windows 2008) pedido Evandro - 20/09/2010
    x := pos('(', a);
    if x > 0 then
    begin
      delete(a, x, pos(')', a));
    end;

    if copy(a, 1, 2) = '\\' then
    begin
      delete(a, 1, 2);
      x := pos('\', a);
      if x > 0 then
        delete(a, 1, x);
    end;

    r := r + a + #13#10;

  end;

  result := r;

end;

function setaimpressora(imp: string): boolean;
var
  i: integer;
  a: string;
  s: tstringlist;
begin
  imp := ansiuppercase(imp);
  a := pegaimpressoras;

  s := tstringlist.create;
  s.text := a;
  i := s.indexof(imp);
  FreeAndNil(s);

  result := (i <> -1);

  if result then
    printer.printerindex := i
  else
    raise exception.create('Erro ao tentar imprimir em "' + imp + '"' + #13#13'Impressoras disponíveis:'#13 + a);
end;

function prestcoment(nvalor, njuros: real; nparcel: integer; ctipjur: string = 'C'): real;
var
  nprest, nmultip, ndiviso, nindice: real;
  i: integer;
begin

  njuros := njuros / 100;

  if ctipjur = 'C' then
  begin
    if njuros > 0 then
      nprest := dividir((nvalor * njuros), (1 - (power((1 + njuros), (nparcel * (-1))))) * (1 + njuros))
    else
      nprest := dividir(nvalor, nparcel);
  end
  else
  begin // Juro Simples
    nmultip := 1;
    ndiviso := 0;
    for i := 1 to nparcel do
    begin
      nindice := 1 + (njuros * (i - 1));
      nmultip := nmultip * nindice;
    end;
    for i := 1 to nparcel do
    begin
      nindice := 1 + (njuros * (i - 1));
      ndiviso := ndiviso + dividir(nmultip, nindice);
    end;
    nprest := dividir((nvalor * nmultip), ndiviso)
  end;
  result := roundto(nprest, -2);
end;

function prestsement(nvalor, njuros: real; nparcel: integer; ctipjur: string = 'C'): real;
var
  nprest, nmultip, ndiviso, nindice: real;
  i: integer;
begin
  njuros := njuros / 100;
  if ctipjur = 'C' then
  begin
    if njuros > 0 then
      nprest := dividir((nvalor * njuros), (1 - (power((1 + njuros), (nparcel * (-1))))))
    else
      nprest := dividir(nvalor, nparcel);
  end
  else // Juro Simples
  begin
    nmultip := 1;
    ndiviso := 0;
    for i := 1 to nparcel do
    begin
      nindice := 1 + (njuros * i);
      nmultip := nmultip * nindice;
    end;
    for i := 1 to nparcel do
    begin
      nindice := 1 + (njuros * i);
      ndiviso := ndiviso + dividir(nmultip, nindice);
    end;
    nprest := dividir((nvalor * nmultip), ndiviso)
  end;
  result := roundto(nprest, -2);
end;

function dataigual(d1, d2: real): boolean;
begin
  result := (formatdatetime('yyyy-mm-dd', d1) = formatdatetime('yyyy-mm-dd', d2));
end;

// Exemplo : PostKex32(Ord('A'), [ssCtrl], false);
// Envia Ctrl+A para o controle que tiver o foco.
// Key : virtual keycode da tecla a enviar. Para caracteres
// imprimíveis informe o código ANSI (Ord(CHARACTER)).
// Shift : estado das teclas modificadoras.
// Shift, Control, Alt, Mouse Buttons.
// SpecialKey: normalmente deve ser False. Informe True se
// a tecla desejada for, por exemplo, do teclado numérico.

procedure keyboardstring(s: string);
var
  i: integer;
begin

  for i := 1 to length(s) do
    keyboard(ord(s[i]));

end;

procedure keyboard(key: word; const shift: tshiftstate = []; specialkey: boolean = false);
type
  tshiftkeyinfo = record
    shift: byte;
    vkey: byte;
  end;

  byteset = set of 0..7;
const
  shiftkeys: array[1..3] of tshiftkeyinfo = ((
    shift: ord(ssctrl);
    vkey: vk_control
    ), (
    shift: ord(ssshift);
    vkey: vk_shift
    ), (
    shift: ord(ssalt);
    vkey: vk_menu
    ));
var
  flag: dword;
  bshift: byteset absolute shift;
  i: integer;
begin
  for i := 1 to 3 do
  begin
    if shiftkeys[i].shift in bshift then
      keybd_event(shiftkeys[i].vkey, mapvirtualkey(shiftkeys[i].vkey, 0), 0, 0);
  end; // for
  if specialkey then
    flag := keyeventf_extendedkey
  else
    flag := 0;
  keybd_event(key, mapvirtualkey(key, 0), flag, 0);
  flag := flag or keyeventf_keyup;
  keybd_event(key, mapvirtualkey(key, 0), flag, 0);
  for i := 3 downto 1 do
  begin
    if shiftkeys[i].shift in bshift then
      keybd_event(shiftkeys[i].vkey, mapvirtualkey(shiftkeys[i].vkey, 0), keyeventf_keyup, 0);
  end; // for
end; // PostKeyEx32

{
  function Extenso(nVal: real): string;
  var

  I: integer;
  nValor: real;
  cValor: string;
  cNumTxt: string;
  cExtenso, cExtAux: string;
  nTamVal: integer;
  aArr1: array[1..19] of string;
  aArr2: array[1..9] of string;
  aArr3: array[1..9] of string;

  nNumLin: integer;

  MemoTemp: TMemo;

  begin

  cNumTxt := FloatToStr(nVal);

  aArr1[1] := 'Um ';
  aArr1[2] := 'Dois ';
  aArr1[3] := 'Tres ';
  aArr1[4] := 'Quatro ';
  aArr1[5] := 'Cinco ';
  aArr1[6] := 'Seis ';
  aArr1[7] := 'Sete ';
  aArr1[8] := 'Oito ';
  aArr1[9] := 'Nove ';
  aArr1[10] := 'Dez ';
  aArr1[11] := 'Onze ';
  aArr1[12] := 'Doze ';
  aArr1[13] := 'Treze ';
  aArr1[14] := 'Quatorze ';
  aArr1[15] := 'Quinze ';
  aArr1[16] := 'Dezesseis ';
  aArr1[17] := 'Dezessete ';
  aArr1[18] := 'Dezoito ';
  aArr1[19] := 'Dezenove ';

  aArr2[1] := '';
  aArr2[2] := 'Vinte ';
  aArr2[3] := 'Trinta ';
  aArr2[4] := 'Quarenta ';
  aArr2[5] := 'Cinquenta ';
  aArr2[6] := 'Sessenta ';
  aArr2[7] := 'Setenta ';
  aArr2[8] := 'Oitenta ';
  aArr2[9] := 'Noventa ';

  aArr3[1] := 'Cento ';
  aArr3[2] := 'Duzentos ';
  aArr3[3] := 'Trezentos ';
  aArr3[4] := 'Quatrocentos ';
  aArr3[5] := 'Quinhentos ';
  aArr3[6] := 'Seiscentos ';
  aArr3[7] := 'Setecentos ';
  aArr3[8] := 'Oitocentos ';
  aArr3[9] := 'Novecentos ';

  nValor := StrToFloat(cNumTxt); // '102753,21';
  cValor := Format('0000000000000%f', [nValor]);
  nTamVal := Length(cValor);
  cExtenso := '';

  // centavos
  if Copy(cValor, nTamVal - 1, 2) > '00' then
  begin
  if (cValor[nTamVal] > '1') or (cValor[nTamVal - 1] > '0') then
  cExtenso := cExtenso + 'centavos'
  else
  cExtenso := cExtenso + 'centavo';
  if (cValor[nTamVal] > '0') and (cValor[nTamVal - 1] > '1') then cExtenso := aArr1[StrToInt(cValor[nTamVal])] + cExtenso;
  Dec(nTamVal);

  if (cValor[nTamVal] > '0') and (cValor[nTamVal] > '1') then
  begin
  cExtAux := aArr2[StrToInt(cValor[nTamVal])];
  if cValor[nTamVal + 1] > '0' then
  cExtenso := cExtAux + 'e ' + cExtenso
  else
  cExtenso := cExtAux + cExtenso;
  end
  else
  cExtenso := aArr1[StrToInt(Copy(cValor, nTamVal, 2))] + cExtenso;

  if Copy(cValor, nTamVal - 11, 10) > '0000000000' then cExtenso := 'e ' + cExtenso;

  end;

  // centena
  nTamVal := Pos(',', cValor) - 1;
  if Copy(cValor, nTamVal - 2, 3) > '000' then
  begin
  if Copy(cValor, nTamVal - 2, 3) > '001' then
  begin
  cExtenso := 'reais ' + cExtenso;
  end
  else
  begin
  cExtenso := 'real ' + cExtenso;
  end;
  if ((cValor[nTamVal] > '0') and (cValor[nTamVal - 1] > '1'))
  or
  ((cValor[nTamVal - 1] = '0') and (cValor[nTamVal] <> '0')) then
  begin
  cExtenso := aArr1[StrToInt(cValor[nTamVal])] + cExtenso;
  end;
  Dec(nTamVal);
  if (cValor[nTamVal] > '0') and (cValor[nTamVal] > '1') then
  begin
  cExtAux := aArr2[StrToInt(cValor[nTamVal])];
  if cValor[nTamVal + 1] > '0' then
  begin
  cExtenso := cExtAux + 'e ' + cExtenso;
  end
  else
  begin
  cExtenso := cExtAux + cExtenso;
  end;
  end
  else if (cValor[nTamVal] > '0') then
  begin
  cExtenso := aArr1[StrToInt(Copy(cValor, nTamVal, 2))] + cExtenso;
  end;
  Dec(nTamVal);
  if Copy(cValor, nTamVal, 3) = '100' then
  begin
  cExtenso := 'Cem ' + cExtenso;
  end
  else
  begin
  if cValor[nTamVal] > '0' then
  begin
  cExtAux := aArr3[StrToInt(cValor[nTamVal])];
  if Copy(cValor, nTamVal + 1, 2) > '00' then
  begin
  cExtenso := cExtAux + 'e ' + cExtenso;
  end
  else
  begin
  cExtenso := cExtAux + cExtenso;
  end;
  end;
  Dec(nTamVal);
  end;
  end;

  // milhar
  nTamVal := Pos(',', cValor) - 4;
  if Copy(cValor, nTamVal - 2, 3) > '000' then
  begin
  cExtenso := 'mil ' + cExtenso;
  if (cValor[nTamVal] > '0') and (cValor[nTamVal - 1] > '1')
  or
  ((cValor[nTamVal - 1] = '0') and (cValor[nTamVal] <> '0')) then
  begin
  cExtenso := aArr1[StrToInt(cValor[nTamVal])] + cExtenso;
  end;
  Dec(nTamVal);
  if ((cValor[nTamVal] > '0') and (cValor[nTamVal] > '1')) then
  begin
  cExtAux := aArr2[StrToInt(cValor[nTamVal])];
  if cValor[nTamVal + 1] > '0' then
  begin
  cExtenso := cExtAux + 'e ' + cExtenso;
  end
  else
  begin
  cExtenso := cExtAux + cExtenso;
  end;
  end
  else if (cValor[nTamVal] > '0') then
  begin
  cExtenso := aArr1[StrToInt(Copy(cValor, nTamVal, 2))] + cExtenso;
  end;
  Dec(nTamVal);
  if Copy(cValor, nTamVal, 3) = '100' then
  begin
  cExtenso := 'Cem ' + cExtenso;
  end
  else
  begin
  if cValor[nTamVal] > '0' then
  begin
  cExtAux := aArr3[StrToInt(cValor[nTamVal])];
  if Copy(cValor, nTamVal + 1, 2) > '00' then
  begin
  cExtenso := cExtAux + 'e ' + cExtenso;
  end
  else
  begin
  cExtenso := cExtAux + cExtenso;
  end;
  end;
  Dec(nTamVal);
  end;
  end;

  // milhoes
  nTamVal := Pos(',', cValor) - 7;
  if Copy(cValor, nTamVal - 2, 3) > '000' then
  begin
  if Copy(cValor, nTamVal - 2, 3) > '001' then
  begin
  cExtenso := 'milhões ' + cExtenso;
  end
  else
  begin
  cExtenso := 'milhão ' + cExtenso;
  end;
  if ((cValor[nTamVal] > '0') and (cValor[nTamVal - 1] > '1'))
  or
  ((cValor[nTamVal - 1] = '0') and (cValor[nTamVal] <> '0')) then
  begin
  cExtenso := aArr1[StrToInt(cValor[nTamVal])] + cExtenso;
  end;
  Dec(nTamVal);
  if (cValor[nTamVal] > '0') and (cValor[nTamVal] > '1') then
  begin
  cExtAux := aArr2[StrToInt(cValor[nTamVal])];
  if cValor[nTamVal + 1] > '0' then
  begin
  cExtenso := cExtAux + 'e ' + cExtenso;
  end
  else
  begin
  cExtenso := cExtAux + cExtenso;
  end;
  end
  else if (cValor[nTamVal] > '0') then
  begin
  cExtenso := aArr1[StrToInt(Copy(cValor, nTamVal, 2))] + cExtenso;
  end;
  Dec(nTamVal);
  if Copy(cValor, nTamVal, 3) = '100' then
  begin
  cExtenso := 'Cem ' + cExtenso;
  end
  else
  begin
  if cValor[nTamVal] > '0' then
  begin
  cExtAux := aArr3[StrToInt(cValor[nTamVal])];
  if Copy(cValor, nTamVal + 1, 2) > '00' then
  begin
  cExtenso := cExtAux + 'e ' + cExtenso;
  end
  else
  begin
  cExtenso := cExtAux + cExtenso;
  end;
  end;
  Dec(nTamVal);
  end;
  end;

  // bilhoes
  nTamVal := Pos(',', cValor) - 10;
  if Copy(cValor, nTamVal - 2, 3) > '000' then
  begin
  if Copy(cValor, nTamVal - 2, 3) > '001' then
  begin
  cExtenso := 'bilhões ' + cExtenso;
  end
  else
  begin
  cExtenso := 'bilhão ' + cExtenso;
  end;
  if ((cValor[nTamVal] > '0') and (cValor[nTamVal - 1] > '1'))
  or
  ((cValor[nTamVal - 1] = '0') and (cValor[nTamVal] <> '0')) then
  begin
  cExtenso := aArr1[StrToInt(cValor[nTamVal])] + cExtenso;
  end;
  Dec(nTamVal);
  if (cValor[nTamVal] > '0') and (cValor[nTamVal] > '1') then
  begin
  cExtAux := aArr2[StrToInt(cValor[nTamVal])];
  if cValor[nTamVal + 1] > '0' then
  begin
  cExtenso := cExtAux + 'e ' + cExtenso;
  end
  else
  begin
  cExtenso := cExtAux + cExtenso;
  end;
  end
  else if (cValor[nTamVal] > '0') then
  begin
  cExtenso := aArr1[StrToInt(Copy(cValor, nTamVal, 2))] + cExtenso;
  end;
  Dec(nTamVal);
  if Copy(cValor, nTamVal, 3) = '100' then
  begin
  cExtenso := 'Cem ' + cExtenso;
  end
  else
  begin
  if cValor[nTamVal] > '0' then
  begin
  cExtAux := aArr3[StrToInt(cValor[nTamVal])];
  if Copy(cValor, nTamVal + 1, 2) > '00' then
  begin
  cExtenso := cExtAux + 'e ' + cExtenso;
  end
  else
  begin
  cExtenso := cExtAux + cExtenso;
  end;
  end;
  Dec(nTamVal);
  end;
  end;

  result := cExtenso;

  end;
}

function conexaointernet: boolean;
var
  dwconnectiontypes: dword;
begin
  dwconnectiontypes := internet_connection_modem + internet_connection_lan + internet_connection_proxy;
  result := internetgetconnectedstate(@dwconnectiontypes, 0);
end;

function getcomputernamefunc: string;
var
  ipbuffer: string;
  nsize: dword;
begin
  nsize := 255;
  setlength(ipbuffer, nsize);
  if getcomputername(pchar(ipbuffer), nsize) then
    result := ipbuffer;
end;

procedure apagatempdbisam(cpath: string = '.\');
var
  fileattrs: integer;
  sr: tsearchrec;
begin
  fileattrs := faanyfile;
  if findfirst(cpath + '*.dat', fileattrs, sr) = 0 then
  begin
    repeat
      if pos(sr.name[1], '1234567890') > 0 then
        // é arquivo temporario.. excluir...
      begin
        deletefile(sr.name);
        // tentar excluir o indice, memo, backup, etc....
        deletefile(pchar(stringreplace(sr.name, '.dat', '.idx', [rfreplaceall])));
        deletefile(pchar(stringreplace(sr.name, '.dat', '.blb', [rfreplaceall])));
        deletefile(pchar(stringreplace(sr.name, '.dat', '.dbk', [rfreplaceall])));
        deletefile(pchar(stringreplace(sr.name, '.dat', '.ibk', [rfreplaceall])));
        deletefile(pchar(stringreplace(sr.name, '.dat', '.bbk', [rfreplaceall])));
      end
    until findnext(sr) <> 0;
    findclose(sr);
  end;
end;

procedure apagaretornosms(cpath: string = '.\');
var
  fileattrs: integer;
  sr: tsearchrec;
begin
  fileattrs := faanyfile;
  if findfirst(cpath + 'RetornoSMS*.*', fileattrs, sr) = 0 then
  begin
    repeat
      deletefile(sr.name);
    until findnext(sr) <> 0;
    findclose(sr);
  end;
end;

procedure avisohint(sender: tobject; const t: cardinal = 1000);
var
  p: tpoint;
  r: trect;
  x: integer;
  m: string;
begin
  p := twincontrol(sender).clienttoscreen(point(1, 1));
  setcursorpos(p.x, p.y);
  getcursorpos(p);
  with thintwindow.create(application) do
    try
      application.hintcolor := clskyblue;

      { Calcula o retângulo }
      r := calchintrect(screen.width, m, nil);

      { Centraliza horizontalmente }
      x := r.right - r.left + 1;
      r.left := p.x;
      // R.Left := (Screen.Width - X) div 2;
      r.right := r.left + x;

      { Centraliza verticalmente }
      x := r.bottom - r.top + 1;
      r.top := p.y - x;
      // R.Top := (Screen.Height - X) div 2;
      r.bottom := r.top + x;

      { Mostra }
      m := twincontrol(sender).hint;
      activatehint(r, m);
      update;

      { Aguarda }
      sleep(t);
    finally
      free;
    end;
end;

function diasemana(date: tdate): string;
const
  diassemana: array[1..7] of string = ('DOM', 'SEG', 'TER', 'QUA', 'QUI', 'SEX', 'SAB');
begin
  result := diassemana[dayofweek(date)];
end;

function digitoean13(cn: string): string;
var
  nsoma, ntemp: real;
begin

  { Formula:
    1 1 2
    1   2   3   4   5   6   7   8   9   0   1   2
    -   -   -   -   -   -   -   -   -   -   -   -
    7   8   9   1   0   0   0   3   1   5   5   0
    x   x   x   x   x   x   x   x   x   x   x   x
    1   3   1   3   1   3   1   3   1   3   1   3
    =   =   =   =   =   =   =   =   =   =   =   =
    7 +24  +9  +3  +0  +0  +0  +9  +1 +15  +5  +0 = 73

    73 / 10 = 7.3

    Truncando... 7

    somar 1 = 7+1 = 8

    8 x 10 = 80

    80 - 73 (soma inicial) = 7

    O DIGITO É 7

  }

  if length(cn) <> 12 then
  begin
    showmessage('Tamanho dever ser 12 posições. Não será calculado o dígito');
    result := '0';
  end
  else
  begin
    nsoma := (strtoint(cn[1]) * 1) + (strtoint(cn[2]) * 3) + (strtoint(cn[3]) * 1) + (strtoint(cn[4]) * 3) + (strtoint(cn[5]) * 1) + (strtoint(cn[6]) * 3) + (strtoint(cn[7]) * 1) + (strtoint(cn[8]) * 3) + (strtoint(cn[9]) * 1) + (strtoint(cn[10]) * 3) + (strtoint(cn[11]) * 1) + (strtoint(cn[12]) * 3);

    ntemp := trunc(nsoma / 10);
    ntemp := ntemp + 1;
    ntemp := ntemp * 10;
    ntemp := ntemp - nsoma;

    result := inttostr(trunc(ntemp));

  end;

end;

function shiftdown: boolean;
var
  state: tkeyboardstate;
begin
  getkeyboardstate(state);
  result := ((state[vk_shift] and 128) <> 0);
end;

procedure somacoluna(gr: tgrim; ds: tdatasource; cp: string; dis: trznumericedit);
var
  nr: integer;
begin
  gr.datasource.enabled := false;
  nr := ds.dataset.recno;
  ds.dataset.first;
  dis.value := 0;
  while not ds.dataset.eof do
  begin
    dis.value := dis.value + ds.dataset.fieldbyname(cp).asfloat;
    ds.dataset.next;
  end;
  gr.datasource.enabled := true;
  ds.dataset.recno := nr;
end;

function formatmemo(ss: string; t: integer): string;

  function formatbm(s: string; t: integer): string;
  var
    i: integer;
  begin
    if length(s) < t then
      s := s + stringofchar(' ', t);
    s := copy(s, 1, t);
    for i := length(s) downto 1 do
    begin
      if s[i] <> ' ' then
        continue;
      s := copy(s, 1, i);
      break;
    end;
    result := s;
  end;

var
  s, tp: string;
  tempmemo: tstringlist;
begin
  tp := ss;
  tempmemo := tstringlist.create;

  while length(tp) > 0 do
  begin
    s := formatbm(tp, t);
    tempmemo.add(s);
    tp := copy(tp, length(s) + 1, length(tp) - length(s) + 1);
  end;

  result := tempmemo.text;
  FreeAndNil(tempmemo);

end;

function ehnumero(key: char): boolean;
begin
  result := false;
  if (key in ['0'..'9']) or (key = #8) then
    result := true;
end;

function modulo11(valor: string; base: integer = 9; resto: boolean = false): string;
{
  Rotina muito usada para calcular dígitos verificadores
  Pega-se cada um dos dígitos contidos no parâmetro VALOR, da direita para a
  esquerda e multiplica-se pela seqüência de pesos 2, 3, 4 ... até BASE.
  Por exemplo: se a base for 9, os pesos serão 2,3,4,5,6,7,8,9,2,3,4,5...
  Se a base for 7, os pesos serão 2,3,4,5,6,7,2,3,4...
  Soma-se cada um dos subprodutos.
  Divide-se a soma por 11.
  Faz-se a operação 11-Resto da divisão e devolve-se o resultado dessa operação
  como resultado da função Modulo11.
  Obs.: Caso o resultado seja maior que 9, deverá ser substituído por 0 (ZERO).
}
var
  soma: integer;
  contador, peso, digito: integer;
begin
  soma := 0;
  peso := 2;

  for contador := length(valor) downto 1 do
  begin
    soma := soma + (strtoint(valor[contador]) * peso);
    if peso < base then
      peso := peso + 1
    else
      peso := 2;
  end;

  if resto then
    result := inttostr(soma mod 11)
  else
  begin
    digito := 11 - (soma mod 11);
    if (digito > 9) then
      digito := 0;
    result := inttostr(digito);
  end;

end;

function modulo11bb(valor: string): string;
var
  soma: integer;
  contador, peso, digito: integer;
begin
  soma := 0;
  peso := 9;

  for contador := length(valor) downto 1 do
  begin
    soma := soma + (strtoint(valor[contador]) * peso);
    if peso > 2 then
      peso := peso - 1
    else
      peso := 9;
  end;

  digito := (soma mod 11);

  if digito >= 10 then
    result := 'X'
  else
    result := inttostr(digito);

end;

function modulo11brad(valor: string; base: integer = 7): string;
var
  soma: integer;
  contador, peso, digito: integer;
begin
  soma := 0;
  peso := 2;

  for contador := length(valor) downto 1 do
  begin
    soma := soma + (strtoint(valor[contador]) * peso);
    if peso < base then
      peso := peso + 1
    else
      peso := 2;
  end;

  digito := 11 - (soma mod 11);

  result := inttostr(digito);
  if (digito = 10) then
    result := 'P';
  if (digito = 11) then
    result := '0';

end;

function modulo10(valor: string): string;
var
  somatoria, p, resto, peso, i: integer;
begin

  peso := 2;
  somatoria := 0;
  for i := length(valor) downto 1 do
  begin
    p := strtoint(valor[i]) * peso;
    if p > 9 then
      inc(somatoria, p - 9)
    else
      inc(somatoria, p);

    if peso = 2 then
      peso := 1
    else
      peso := 2;
  end;

  resto := somatoria mod 10;

  if resto = 0 then
    result := '0'
  else
    result := inttostr(10 - resto);

end;

function brancos(nt: integer): string;
begin
  result := repetir(' ', nt);
end;

function dataenvia(d: tdate): string;
begin
  result := formatdatetime('ddMMyy', d);
end;

//function ehzero(ct: string): boolean;
//begin
//  ct := trim(sonumeros(ct));
//  if ct = '' then
//    ct := '0';
//  result := strtoint64(ct) = 0;
//end;

function ehzero(v: variant): boolean;
begin

  if VarIsStr(v) then
    v := '0' + sonumeros(v);

  if VarIsNumeric(v) then
    v := RoundTo(v, -5);

  result := strtoint64(v) = 0;

end;

procedure colocahoje(d1, d2: trzdatetimeedit);
begin
  d1.date := date;
  d2.date := date;
end;

procedure colocasemana(d1, d2: trzdatetimeedit);
begin
  d1.date := startoftheweek(date) - 2;
  d2.date := endoftheweek(date) - 2;
end;

procedure colocames(d1, d2: trzdatetimeedit);
begin
  d1.date := startofthemonth(date);
  d2.date := endofthemonth(date);
end;

procedure colocaano(d1, d2: trzdatetimeedit);
begin
  d1.date := startoftheyear(date);
  d2.date := endoftheyear(date);
end;

procedure colocainfinito(d1, d2: trzdatetimeedit);
begin
  d1.date := strtodate('01/01/1899');
  if shiftdown then
    d2.date := date
  else
    d2.date := strtodate('31/12/2099');
end;

procedure novafonte(s: string);
begin
  addfontresource(pchar(s));
end;

function formatahora(h: string; comsegundos: boolean = false; ndigitoshora: integer = 2): string;
var
  hora, minuto, segundo: string;
  ndighora: integer;
begin

  h := trim(sonumeros(h));
  hora := strzero('0', ndigitoshora);
  minuto := '00';
  segundo := '00';

  if ndigitoshora = 2 then
  begin

    if length(h) = 1 then
    begin
      hora := '0' + h;
      minuto := '00';
      segundo := '00';
    end;

    if length(h) = 2 then
    begin
      hora := h;
      minuto := '00';
      segundo := '00';
    end;

    if length(h) = 3 then
    begin
      hora := '0' + copy(h, 1, 1);
      minuto := copy(h, 2, 2);
      segundo := '00';
    end;

    if (length(h) = 4) then
    begin
      hora := copy(h, 1, 2);
      minuto := copy(h, 3, 2);
      segundo := '00';
    end;

    if length(h) = 5 then
    begin
      hora := '0' + copy(h, 1, 1);
      minuto := copy(h, 2, 2);
      segundo := copy(h, 4, 2);
    end;

    if length(h) >= 6 then
    begin
      hora := copy(h, 1, 2);
      minuto := copy(h, 3, 2);
      segundo := copy(h, 5, 2);
    end;

  end;

  if ndigitoshora = 4 then
  begin

    if length(h) = 1 then
    begin
      hora := '000' + h;
      minuto := '00';
      segundo := '00';
    end;

    if length(h) = 2 then
    begin
      hora := '00' + h;
      minuto := '00';
      segundo := '00';
    end;

    if length(h) = 3 then
    begin
      hora := '000' + copy(h, 1, 1);
      minuto := copy(h, 2, 2);
      segundo := '00';
    end;

    if length(h) = 4 then
    begin
      hora := '00' + copy(h, 1, 2);
      minuto := copy(h, 3, 2);
      segundo := '00';
    end;

    if length(h) = 5 then
    begin
      hora := '000' + copy(h, 1, 1);
      minuto := copy(h, 2, 2);
      segundo := copy(h, 4, 2);
    end;

    if length(h) = 6 then
    begin
      hora := '00' + copy(h, 1, 2);
      minuto := copy(h, 3, 2);
      segundo := copy(h, 5, 2);
    end;

    if length(h) = 7 then
    begin
      hora := '0' + copy(h, 1, 3);
      minuto := copy(h, 4, 2);
      segundo := copy(h, 6, 2);
    end;

    if length(h) >= 8 then
    begin
      hora := copy(h, 1, 4);
      minuto := copy(h, 5, 2);
      segundo := copy(h, 7, 2);
    end;

  end;

  // if Length(h) = nDigitosHora then h := StrZero(h, nDigitosHora) + '00';
  // if Length(h) = (nDigitosHora+1) then h := '0' + h;

  // if ComSegundos then
  // begin
  // if Length(h) = (nDigitosHora + 3) then
  // h := '0' + h;
  // end;

  // hora := copy(h, 1, nDigitosHora);
  // minuto := copy(h, nDigitosHora + 1, 2);
  // segundo := copy(h, nDigitosHora + 3, 2);

  // if StrToInt(hora) > 23 then hora := '00';

  if strtoint(minuto) > 59 then
    minuto := '00';
  if strtoint(segundo) > 59 then
    segundo := '00';

  result := hora + ':' + minuto;

  if comsegundos then
    result := result + ':' + segundo;

end;

function horasdecimais(h1, h2: string): double;
var
  nh1, nh2: real;
begin

  nh1 := strtofloat(copy(h1, 1, 2)) + (strtofloat(copy(h1, 4, 2)) / 60);
  nh2 := strtofloat(copy(h2, 1, 2)) + (strtofloat(copy(h2, 4, 2)) / 60);

  result := nh2 - nh1;

end;

function hmstodec(h: string): double;
// recebe no formato: hh:mm:ss ou hhhh:mm:ss (obrigatoriamente!)
var
  nsegundos: double;
  najustehoras: integer;
begin
  nsegundos := 0;
  if (length(h) <> 8) and (length(h) <> 10) then
  begin
    result := 0;
    exit;
  end;

  if length(h) = 8 then
    najustehoras := 0
  else
    najustehoras := 2;

  nsegundos := strtoint(copy(h, 1, 2 + najustehoras)) * 3600;
  nsegundos := nsegundos + (strtoint(copy(h, 4 + najustehoras, 2)) * 60);
  nsegundos := nsegundos + (strtoint(copy(h, 7 + najustehoras, 2)));
  result := (nsegundos / 3600);

end;

function dectohms(d: double): string;
// recebe no formato: 9,999999 onde o 9 antes da vírgula são as horas...
var
  h, m, s: real;
begin
  h := trunc(d);
  // m := Trunc((StrToFloat(FloatToStr(d * 3600)) - (h * 3600)) / 60);
  m := roundto((strtofloat(floattostr(d * 3600)) - (h * 3600)) / 60, 0);
  s := roundto(strtofloat(floattostr(d * 3600)) - ((h * 3600) + (m * 60)), 0);
  result := formatfloat('00', h) + ':' + formatfloat('00', m) + ':' + formatfloat('00', s);
end;

function coalesce(n1, n2: variant): variant;
begin

  if n1 = null then
    result := n2
  else
    result := n1;

end;

function SectoHMS(s: integer): string;
// recebe no formato: 9999 segundos...
var
  hh, mm, ss: real;
begin
  hh := trunc(s / 3600);
  mm := trunc((s - (hh * 3600)) / 60);
  ss := trunc(s - ((hh * 3600) + (mm * 60)));
  result := formatfloat('00', hh) + ':' + formatfloat('00', mm) + ':' + formatfloat('00', ss);
end;

function DifMinutos(hIni, hFim: TDateTime): integer;
var
  xAux: TDateTime;
  d, h, m, s: integer;
begin

  xAux := hFim - hIni;
  d := Trunc(xAux) * 24 * 60;
  h := StrToInt(FormatDateTime('hh', xAux)) * 60;
  m := StrToInt(FormatDateTime('nn', xAux));

  result := d + h + m;

end;

function capturatela: tbitmap;
var
  dc: hdc;
  cv: tcanvas;
begin
  result := tbitmap.create;
  result.width := screen.width;
  result.height := screen.height;
  dc := getdc(0);
  cv := tcanvas.create;
  cv.handle := dc;
  result.canvas.copyrect(rect(0, 0, screen.width, screen.height), cv, rect(0, 0, screen.width, screen.height));
  cv.free;
  releasedc(0, dc);
end;

function getserialid: string;
var
  lpvolumenamebuffer: pchar;
  lpfilesystemnamebuffer: pchar;
  nvolumenamesize: dword;
  lpvolumeserialnumber: dword;
  lpmaximumcomponentlength: dword;
  lpfilesystemflags: dword;
  nfilesystemnamesize: dword;
begin
  result := '';
  getmem(lpvolumenamebuffer, max_path + 1);
  getmem(lpfilesystemnamebuffer, max_path + 1);
  try
    nvolumenamesize := max_path + 1;
    nfilesystemnamesize := max_path + 1;
    if getvolumeinformation(pchar('C:\'), lpvolumenamebuffer, nvolumenamesize, @lpvolumeserialnumber, lpmaximumcomponentlength, lpfilesystemflags, lpfilesystemnamebuffer, nfilesystemnamesize) then
    begin
      result := inttostr(lpvolumeserialnumber);
    end;
  finally
    freemem(lpvolumenamebuffer);
    freemem(lpfilesystemnamebuffer);
  end;
end;

function JpgToPNG(Jpg: TJPEGImage): TPngImage;
var
  vBmp: TBitmap;
begin
  Result := TPngImage.Create;
  vBmp := TBitmap.Create;
  vBmp.Assign(Jpg);
  Result.Assign(vBmp);

  vBmp.Free;
end;

procedure ForcarFocoEdit(c: TWinControl);
var
  Ctrl: TWinControl;
begin
  Ctrl := c; // pega o controle que tem o foco.
  c := nil; // cancela o foco.
  PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0); // envia uma mensagem ao controle que estavá com o foco forçando-o a receber o foco novamente.
  TWinControl(Ctrl).SetFocus;
end;

procedure PreparaTemp(t: TDBIsamTable);
begin

  if t.Exists then
    t.Close;
  if t.Exists then
    t.DeleteTable;

  t.CreateTable;
  t.Open;

end;

function MinCor(X, Y: Integer): Integer;
begin
  if X < Y then
    Result := X
  else
    Result := Y;
end;

function MaxCor(X, Y: Integer): Integer;
begin
  if X > Y then
    Result := X
  else
    Result := Y;
end;

function ClareiaCor(BaseColor: TColor; Adjust: Integer): TColor;
begin
  Result := RGB(Min(GetRValue(ColorToRGB(BaseColor)) + Adjust, 255), MinCor(GetGValue(ColorToRGB(BaseColor)) + Adjust, 255), MinCor(GetBValue(ColorToRGB(BaseColor)) + Adjust, 255));
end;

function EscureceCor(BaseColor: TColor; Adjust: Integer): TColor;
begin
  Result := RGB(Max(GetRValue(ColorToRGB(BaseColor)) - Adjust, 0), MaxCor(GetGValue(ColorToRGB(BaseColor)) - Adjust, 0), MaxCor(GetBValue(ColorToRGB(BaseColor)) - Adjust, 0));
end;

procedure Executa(Arquivo: string);
var
  info: SHELLEXECUTEINFO;
begin
  try
    zeromemory(@info, sizeof(info));
    info.cbSize := sizeof(info);
    info.lpfile := pchar(Arquivo);
    info.fmask := SEE_MASK_NOCLOSEPROCESS;
    info.nShow := SW_HIDE;
    shellexecuteex(@info);
    waitforsingleobject(info.hprocess, infinite);
    closehandle(info.hprocess);
  except
  end;
end;

procedure ForceForegroundWindow(hwnd: THandle);
// (W) 2001 Daniel Rolf
// http://www.finecode.de
// rolf@finecode.de
var
  hlp: TForm;
begin
  hlp := TForm.Create(nil);
  try
    hlp.BorderStyle := bsNone;
    hlp.SetBounds(0, 0, 1, 1);
    hlp.FormStyle := fsStayOnTop;
    hlp.Show;
    mouse_event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
    mouse_event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
    SetForegroundWindow(hwnd);
  finally
    hlp.Free;
  end;
end;

function ForcarFoco(hwnd: THandle): Boolean;
const
  SPI_GETFOREGROUNDLOCKTIMEOUT = $2000;
  SPI_SETFOREGROUNDLOCKTIMEOUT = $2001;
var
  ForegroundThreadID: DWORD;
  ThisThreadID: DWORD;
  timeout: DWORD;
begin
  if IsIconic(hwnd) then
    ShowWindow(hwnd, SW_RESTORE);

  if GetForegroundWindow = hwnd then
    Result := True
  else
  begin
    // Windows 98/2000 doesn't want to foreground a window when some other
    // window has keyboard focus

    if ((Win32Platform = VER_PLATFORM_WIN32_NT) and (Win32MajorVersion > 4)) or ((Win32Platform = VER_PLATFORM_WIN32_WINDOWS) and ((Win32MajorVersion > 4) or ((Win32MajorVersion = 4) and (Win32MinorVersion > 0)))) then
    begin
      // Code from Karl E. Peterson, www.mvps.org/vb/sample.htm
      // Converted to Delphi by Ray Lischner
      // Published in The Delphi Magazine 55, page 16

      Result := False;
      ForegroundThreadID := GetWindowThreadProcessID(GetForegroundWindow, nil);
      ThisThreadID := GetWindowThreadPRocessId(hwnd, nil);
      if AttachThreadInput(ThisThreadID, ForegroundThreadID, True) then
      begin
        BringWindowToTop(hwnd); // IE 5.5 related hack
        SetForegroundWindow(hwnd);
        AttachThreadInput(ThisThreadID, ForegroundThreadID, False);
        Result := (GetForegroundWindow = hwnd);
      end;
      if not Result then
      begin
        // Code by Daniel P. Stasinski
        SystemParametersInfo(SPI_GETFOREGROUNDLOCKTIMEOUT, 0, @timeout, 0);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, TObject(0), SPIF_SENDCHANGE);
        BringWindowToTop(hwnd); // IE 5.5 related hack
        SetForegroundWindow(hwnd);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, TObject(timeout), SPIF_SENDCHANGE);
      end;
    end
    else
    begin
      BringWindowToTop(hwnd); // IE 5.5 related hack
      SetForegroundWindow(hwnd);
    end;

    Result := (GetForegroundWindow = hwnd);
  end;
end; { ForceForegroundWindow }

function RPos(SubStr: string; S: string): integer;
var
  I: integer;
begin
  SubStr := ReverseString(SubStr);
  S := ReverseString(S);
  I := pos(SubStr, S);
  if I <> 0 then
    I := (Length(S) + 1) - (I + Length(SubStr) - 1);
  Result := I;
end;

function GetTempName: string;
begin
  Randomize;
  result := 'tbTemp' + StrZero(IntToStr(Random(1000000)), 6);
end;

function ColocaMaiuscula(s: string): string;
const
  ALLOWEDCHARS = ['a'..'z', '_', 'ç', 'õ', 'ã'];
var
  Index: Integer;
  bCapitalizeNext: Boolean;
begin
  bCapitalizeNext := True;
  Result := LowerCase(s);
  if Result <> EmptyStr then
    for Index := 1 to Length(Result) do
      if bCapitalizeNext then
      begin
        Result[Index] := UpCase(Result[Index]);
        bCapitalizeNext := False;
      end
      else
        if not CharInSet(Result[Index], ALLOWEDCHARS) then
          bCapitalizeNext := True;

  result := StrTran(result,' Da ',' da ');
  result := StrTran(result,' De ',' de ');
  result := StrTran(result,' Das ',' das ');
  result := StrTran(result,' Dos ',' dos ');
  result := StrTran(result,' E ',' e ');

end;

function IIF(teste: boolean; var1, var2: variant): variant;
begin
  if teste then
    Result := var1
  else
    Result := var2;

end;

function FormataCNPJ(Doc: string): string;
begin

  if Length(SoNumeros(Doc)) = 11 then // CPF
    result := FormatMaskText('###.###.###-##;0; ', SoNumeros(Doc))
  else
    if Length(SoNumeros(Doc)) > 11 then
      result := FormatMaskText('##.###.###/####-##;0; ', SoNumeros(Doc))
    else
      result := '';

end;

//function MD5(const fileName: string): string;
//var
//  idmd5: TIdHashMessageDigest5;
//  fs: TFileStream;
//  hash: T4x4LongWordRecord;
//begin
//  idmd5 := TIdHashMessageDigest5.Create;
//  fs := TFileStream.Create(fileName, fmOpenRead or fmShareDenyWrite);
//  try
//    result := idmd5.HashBytesAsHex(idmd5.HashStream(fs));
//  finally
//    fs.Free;
//    idmd5.Free;
//  end;
//end;

function MD5(s: string): string;
var
  idmd5: TIdHashMessageDigest5;
  hash: T4x4LongWordRecord;
begin
  idmd5 := TIdHashMessageDigest5.Create;
  try
    result := idmd5.HashBytesAsHex(idmd5.HashString(s));
  finally
    idmd5.Free;
  end;
end;

function AcertaMemoCarac(s: string; c: Char = '/'): string;
begin
  if LeftStr(s, 1) = c then
    s := RightStr(s, Length(s) - 1);

  if RightStr(s, 1) = c then
    s := LeftStr(s, Length(s) - 1);

  s := strtran(s, c + c, c);

  result := s;
end;

function FazNumeroStr(s: string; d: integer): string;
begin
  s := '0' + SoNumeros(s);
  s := FormatFloat(',0.' + StringOfChar('0', d), Dividir(StrToFloat(s), power(10, d)));
  result := s;
end;

function FazSimNao(s: string = 'S'): string;
begin
  s := UpperCase(s);
  s := LeftStr(s, 1);
  result := s;
end;

function FazStatus(s: string = ''): string;
begin
  if s <> '' then s := 'X';
  result := s;
end;

function FazData(s: string): TDate;
var
  d, m, a: Integer;
begin

  s := SoNumeros(s);

  if Length(s) = 1 then
    s := '0' + s;

  if Length(s) = 2 then // é dia do mes corrente...
  begin
    d := StrToInt(s);
    if d > DaysInMonth(date) then
      d := DaysInMonth(date);
    m := MonthOf(date);
    a := YearOf(date);
  end;

  if (Length(s) = 3) or (Length(s) = 4) then // digitou dia e mes ... tipo... 013 ou 0103 = 1o. de março
  begin
    if (Length(s) = 3) then s := copy(s, 1, 2) + '0' + copy(s, 3, 1);
    d := StrToInt(copy(s, 1, 2));
    m := StrToInt(copy(s, 3, 2));
    if d > DaysInMonth(date) then
      d := DaysInMonth(date);
    if m > 12 then
      m := 12;
    a := YearOf(date);
  end;

  if (Length(s) > 4) then // digitou dia, mes e ano ... tipo... 010120 = 1o. janeiro de 2020
  begin
    d := StrToInt(copy(s, 1, 2));
    m := StrToInt(copy(s, 3, 2));
    if (Length(s) < 8) then // quando digita 010119 por exemplo fica: 01012019
    begin
      a := StrToInt(copy(s, 5, 2));
      a := a + 2000;
    end
    else
    begin
      a := StrToInt(copy(s + '0000', 5, 4));
    end;
  end;

  result := EncodeDate(a, m, d);

end;

procedure ShowPanel(p: TUniPanel; margemTop: integer = 50; margemLeft: integer = 50; TamanhoOriginal: boolean = false);
var
  e: TuniEdit;
begin
  if not TamanhoOriginal then
  begin
    p.Height := p.Parent.Height - margemTop;
    p.Width := p.Parent.Width - margemLeft;
  end;
  p.Top := Trunc((p.Parent.Height / 2) - (p.Height / 2));
  p.Left := Trunc((p.Parent.Width / 2) - (p.Width / 2));
  e := TuniEdit.Create(p);
  e.Parent := p;
  e.Top := -1000;
  e.Left := -1000;
  p.Visible := True;
  e.SetFocus;
end;

function TiraAcento(A: string): string;
const
  ComAcento = 'ÁÉÍÓÚáéíóúÀÈÌÒÙàèìòùÝýÃÕãõÂÊÎÔÛâêîôûÄËÏÖÜäëïöüÇçÿÑñ';
  SemAcento = 'AEIOUaeiouAEIOUaeiouYyAOaoAEIOUaeiouAEIOUaeiouCcyNn';
var
  I: Integer;
  X: Integer;
begin
  if A <> '' then
    for I := 1 to Length(A) do
    begin
      X := pos(A[I], ComAcento);
      if X > 0 then
        A[I] := SemAcento[X];
    end;

  Result := A;
end;

function TiraCaracteresEspeciais(A: string): string;
var
  I: Integer;
  X: Integer;
begin
  A := TiraAcento(A);

  if A <> '' then
    for I := 1 to Length(A) do
      if (ord(A[I]) < 32) or (ord(A[I]) > 166) then
        A[I] := '?';

  Result := A;
end;

function AcertaNomeArquivo(s: string): string;
var
  e, a: string;
begin
  e := ExtractFileExt(s);
  s := StrTran(s, e, '');
  s := TiraAcento(s);
  s := TiraAspas(s);
  s := StrTran(s, ' ', '_');
  s := StrTran(s, '-', '_');
  s := StrTran(s, '.', '_');
  s := s + e;
  result := s;
end;

function MesmoTexto(s1, s2: string): boolean;
begin
  s1 := TiraAcento(s1);
  s2 := TiraAcento(s2);
  result := (UpperCase(s1) = UpperCase(s2));
end;

function AllTrim(s: string): string;
begin
  s := TrimRight(s);
  result := TrimLeft(s);
end;

function GeraID(Prefix: string): string;
var
  Al: integer;
  i: integer;
begin
  Result := '';
  randomize;
  for i := 1 to 7 do
    Result := Result + inttohex(random(255), 2);
  Result := Prefix + Result;
end;

function ExtArquivo(s: string): string;
begin
  result := UpperCase(ExtractFileExt(s));
end;

procedure MoveItemLista(L1, L2: TUniListBox);
var
  i: integer;
begin
  if L1.ItemIndex > -1 then
  begin
    i := L1.ItemIndex;
    L2.Items.Add(L1.Items[L1.ItemIndex]);
    L1.Items.Delete(L1.ItemIndex);
    if L1.Count > 0 then
      if i > L1.Count - 1 then
        L1.ItemIndex := L1.Count - 1
      else
        L1.ItemIndex := i;
  end;
end;

procedure ItemDownLista(L1: TUniListBox);
var
  i: integer;
begin
  i := L1.ItemIndex;
  if i < L1.Count - 1 then
  begin
    L1.Items.Exchange(i, i + 1);
    L1.ItemIndex := i + 1;
  end;
end;

procedure ItemUpLista(L1: TUniListBox);
var
  i: integer;
begin
  i := L1.ItemIndex;
  if i > 0 then
  begin
    L1.Items.Exchange(i, i - 1);
    L1.ItemIndex := i - 1;
  end;
end;

function PosX(s1, s2: string): integer;
begin
  s1 := UpperCase(s1);
  s2 := UpperCase(s2);
  result := Pos(s1, s2);
end;

function SemComentarios(s: TStringList): TStringList;
var
  i: integer;
begin
  for I := s.Count - 1 downto 0 do
    if LeftStr(Trim(s[i]), 2) = '//' then
      s.Delete(i);

  result := s;
end;

procedure GravaLog(FArq, Texto: string);
var
  F: TextFile;
  S: string;
begin

  AssignFile(F, FArq);
  if FileExists(FArq) then
    Append(F)
  else
    ReWrite(F);

  S := FormatDateTime('dd/mm/yyyy hh:nn:ss', now) + ' | ' + Texto;

  Writeln(F, S);

  CloseFile(F);
end;

function SemEspaco(s, c: string): string;
begin
  while Pos(' ' + c, s) > 0 do
    s := StrTranEx(s, ' ' + c, c);

  while Pos(c + ' ', s) > 0 do
    s := StrTranEx(s, c + ' ', c);

  result := s;
end;

function Portugol2Pascal(s: TStringList): TStringList;
var
  i: integer;
  L: string;
begin
  for i := 0 to s.Count - 1 do
  begin
    L := s[i];
    //    L := StrTranEx(L, ' :=', ':=');
    //    L := StrTranEx(L, ':= ', ':=');
    L := SemEspaco(L, ':=');
    L := StrTranEx(L, '<PROC>', 'PROCEDURE');
    L := StrTranEx(L, '<SE>', 'IF');
    //    L := StrTranEx(L, '<ENTAO>', 'THEN');
    //    L := StrTranEx(L, '<SENAO>', 'ELSE');
    //    L := StrTranEx(L, '<SE>', 'IF');
    //    L := StrTranEx(L, '<FIM>', 'END.');

    L := StrTranEx(L, '<ENTAO>', 'THEN {');
    L := StrTranEx(L, '<SENAO>', '} ELSE {');
    L := StrTranEx(L, '<FIM>', '}');
    L := StrTranEx(L, '<fimscript>', 'END.');

    s[i] := L;
  end;

  result := s;

end;

function GetVarFloat(s, v: string): real;
var
  x: TStringList;
begin
  x := TStringList.Create;
  x.Text := s;
  result := StrToFloat('0' + StrTranEx(x.Values[v], '.', ','));
  x.Free;
end;

function GetVarInteger(s, v: string): integer;
var
  x: TStringList;
begin
  x := TStringList.Create;
  x.Text := s;
  result := StrToInt('0' + SoNumeros(x.Values[v]));
  x.Free;
end;

function GetVarString(s, v: string): string;
var
  x: TStringList;
begin
  x := TStringList.Create;
  x.Text := s;
  result := StrTranEx(x.Values[v], '"', '');
  x.Free;
end;

function TiraComentario(s: string): string;
var
  i: integer;
  c: string;
begin
  result := '';
  i := 1;
  while i <= Length(s) do
  begin

    if s[i] = '/' then
      if s[i + 1] = '/' then
        c := '/';

    if s[i] = '/' then
      if s[i + 1] = '*' then
        c := '*';

    if c = '' then
      result := result + s[i];

    if c = '/' then
      if s[i] = #10 then
        c := '';

    if c = '*' then
      if s[i] = '*' then
        if s[i + 1] = '/' then
        begin
          c := '';
          i := i + 1;
        end;

    i := i + 1;

  end;

end;

//function BadGet(g: string; bc:string = '#DCDCDC'; tc: string = '#FFFFFF'): string;

function BadGet(g: string; bc: string = '#E5E5E5'; tc: string = '#FFFFFF'; fs: string = '90%'): string;
var
  b: string;
begin
  b := '<span style="color:_tc_;background:_bc_;border-radius:3px;font-size:_fs_;padding:4px;padding-top:3px;padding-bottom:3px;font-family:' + #39 + 'Tw Cen MT Condensed' + #39 + '">_g_</span>';
  b := StrTranEx(b, '_g_', g);
  b := StrTranEx(b, '_bc_', bc);
  b := StrTranEx(b, '_tc_', tc);
  b := StrTranEx(b, '_fs_', fs);
  b := StrTranEx(b, #13#10, '</br>');
  b := StrTranEx(b, '\\', '</br>');
  result := b;
end;

function BadGetTable(g: string; bc: string = '#E5E5E5'; tc: string = '#FFFFFF'; fs: string = '90%'): string;
var
  b: string;
begin

  (*
  <div>
  <table style="background-color: #000000; border-style: none; float: left; border-radius: 5px;" cellpadding="0">
  <tbody>
  <tr>
  <td><span style="color: #ffffff;">teste asdjla sdflkj askfja skdfjk</span></td>
  </tr>
  </tbody>
  </table>
  </div>
  *)

  if bc = '#5F9EA0' then // mensagens enviadas formatar pela direita...
  begin
    b := '<table style="background-color:_bc_; border-style: none; float: left; border-radius: 5px;" cellpadding="4">' +
      '<tr>' +
      '<td><span style="color:_tc_;">_g_</span></td>' +
      '</tr>' +
      '</table>';
  end
  else
  begin
    b := '<table style="background-color:_bc_; border-style: none; float: left; border-radius: 5px;" cellpadding="4">' +
      '<tr>' +
      '<td><span style="color:_tc_;">_g_</span></td>' +
      '</tr>' +
      '</table>';
  end;

  b := StrTranEx(b, '_g_', g);
  b := StrTranEx(b, '_bc_', bc);
  b := StrTranEx(b, '_tc_', tc);
  b := StrTranEx(b, '_fs_', fs);
  b := StrTranEx(b, #13#10, '</br>');
  b := StrTranEx(b, '\\', '</br>');

  result := b;
end;

function EmptyField(f: TStringField): boolean;
begin
  result := (f.IsNull) or (f.Value = '');
end;

procedure setToolTipGrid(g: TUniDbGrid);
begin
  with g do
    ClientEvents.ExtEvents.Add('viewready=function viewready(sender, eOpts)' + '{' +
      '   sender.view.tip = Ext.create(''Ext.tip.ToolTip'', {' + '       target: sender.view.el,' + '       delegate: sender.view.cellSelector,' + '       trackMouse: true,' + '       renderTo: Ext.getBody(),' + '       listeners: {' + '           beforeshow: function updateTipBody(tip) {' + '               gridColums = sender.view.getGridColumns();' + '               column = gridColums[tip.triggerElement.cellIndex];' + '               record = sender.view.getRecord(tip.triggerElement.parentNode);' +
      '       if (column.dataIndex !== ''-1'' && (column.getWidth() < (Ext.util.TextMetrics.measure(tip.triggerElement, record.data[parseInt(column.dataIndex)]).width)+5)) {' + '                   tip.update(record.data[parseInt(column.dataIndex)]);' + '               } else {' + '                   return false;' + '               }' + '           }' + '       }' + '   });' + '}');
end;

function RecursiveDelete(FullPath: string): Boolean;
var
  sr: TSearchRec;
  iRetorno: Integer;
begin

  Result := False;
  FullPath := IncludeTrailingPathDelimiter(FullPath);
  if not (DirectoryExists(FullPath)) then
    Exit;

  iRetorno := FindFirst(FullPath + '*.*', faAnyFile, sr);
  while iRetorno = 0 do
  begin
    if (sr.Name <> '.') and (sr.Name <> '..') then
      if sr.Attr = faDirectory then
        RecursiveDelete(FullPath + sr.Name)
      else
      begin
        if GetFileAttributes(PWideChar(FullPath + sr.Name)) > 0 then
          SetFileAttributes(PWideChar(FullPath + sr.Name), 0);
        //        ShowMessage('deletando... ' + PWideChar(FullPath + sr.Name));
        DeleteFile(PWideChar(FullPath + sr.Name));
      end;
    iRetorno := FindNext(sr);
  end;
  FindClose(sr);
  Result := RemoveDir(FullPath)
    //  ShowMessage('removendo... ' + FullPath);
//  result := true;

end;

function IntX(s: string): integer;
begin
  s := SoNumeros(s);
  result := StrToInt('0' + s);
end;

function GeraToken: string;
begin
  result := '';
end;

function ConfereToken(token: string): boolean;
begin
  result := true;
end;

function GetDigitoToken(s: string): string;
var
  d: string;
  x, i: integer;
begin

  x := 0;
  for i := 1 to Length(s) do
    x := x + Ord(s[i]);

  while (x > 90) do
    x := Trunc(x / 1.4);

  while x < 65 do
    x := x + 7;

  result := Char(x);

end;

function gerarCodigoAtivacao: string;
var
  gID: TGuid;
  xCodigo, x1, x2, x3, x4: string;
  I: integer;
begin

  CreateGUID(gID);
  xCodigo := copy(gID.ToString, 2, 8);
  result := xCodigo;
end;

function gerarToken: string;
var
  gID: TGuid;
  xToken, x1, x2, x3, x4: string;
  I: integer;
begin
  (*

    -- CALCULO DOS 4 ULTIMOS DIGITOS --
    ABCD-1234-EFGH-5678-????

  *)

  CreateGUID(gID);
  xToken := copy(gID.ToString, 11, 14);
  //ShowMessage(xToken);

  //ShowMessage(GetDigitoToken(copy(xToken, 1, 4)));

  x1 := GetDigitoToken(copy(xToken, 01, 4));
  x2 := GetDigitoToken(copy(xToken, 06, 4));
  x3 := GetDigitoToken(copy(xToken, 11, 4));
  x4 := GetDigitoToken(x1 + x2 + x3 + 'B');

  //  ShowMessage(xToken + '-' + x1 + x2 + x3 + x4);

  result := (xToken + '-' + x1 + x2 + x3 + x4);
end;

function checkToken(t: string): boolean;
var
  chave: string;
  x1, x2, x3, x4: string;
begin
  x1 := GetDigitoToken(copy(t, 01, 4));
  x2 := GetDigitoToken(copy(t, 06, 4));
  x3 := GetDigitoToken(copy(t, 11, 4));
  x4 := GetDigitoToken(x1 + x2 + x3 + 'B');

  result := copy(t, 16, 4) = (x1 + x2 + x3 + x4);

end;

function FormatDateHuman(d: TDateTime): string;
var
  s: string;
begin

  s := FormatDateTime('dd/mm/yyyy', d);
  if DateOf(d) = date then s := 'Hoje';
  if DateOF(d) = date - 1 then s := 'Ontem';

  result := s + ' ' + FormatDateTime('hh:nn:ss', d);

end;

procedure SleepProc(PtimeOut: Integer);
var
  LIni: Cardinal;
  Lpass: Integer;
begin
  LIni := GetTickCount;
  Lpass := 0;
  Application.ProcessMessages;
  repeat
    inc(Lpass);
    Sleep(1);
    if (Lpass > 10) then
    begin
      Lpass := 0;
      Application.ProcessMessages;
    end;
  until (GetTickCount - LIni) >= Cardinal(PtimeOut);
end;

function GetSeconds(ATimeString: string): Integer;
var
  Hour, Min, Sec, MSec: Word;
begin
  DecodeTime(StrToTime(ATimeString), Hour, Min, Sec, MSec);
  Result := Hour * 3600 + Min * 60 + Sec;
end;

function GetMinutes(ATimeString: string): integer;
var
  Hour, Min, Sec, MSec: Word;
begin
  DecodeTime(StrToTime(ATimeString), Hour, Min, Sec, MSec);
  Result := Hour * 60 + Min;
end;

function ProcessExists(exeFileName: string): Boolean;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  Result := False;
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
    begin
      Result := True;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function StrToFloatEx(s: string): double;
begin
  s := StringReplace(s, '.', '', [rfReplaceAll]);
  result := StrToFloat(s);
end;

end.

