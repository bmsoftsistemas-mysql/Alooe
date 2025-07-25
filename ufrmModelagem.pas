unit ufrmModelagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Math;

type
  TfrmModelagem = class(TForm)
    panel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt_qtd_etiquetas: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edt_pedido: TEdit;
    edt_comb: TEdit;
    edt_qtd_modelos: TEdit;
    Edit4: TEdit;
    edt_max_aceitavel: TEdit;
    edt_metragem_compra1: TEdit;
    edt_metragem_compra2: TEdit;
    edt_medida_maior1: TEdit;
    edt_medida_menor1: TEdit;
    edt_medida_maior2: TEdit;
    edt_medida_menor2: TEdit;
    edt_material1: TEdit;
    edt_material2: TEdit;
    pgCortes: TPageControl;
    ENFESTO: TTabSheet;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label15: TLabel;
    edt_enfesto_altura1: TEdit;
    edt_enfesto_qtd_tiras1: TEdit;
    Label21: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    edt_enfesto_largura1: TEdit;
    Label14: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    edt_enfesto_altura2: TEdit;
    Label25: TLabel;
    edt_enfesto_qtd_tiras2: TEdit;
    edt_enfesto_largura2: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    TabSheet1: TTabSheet;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    edt_balancin_med_maior1: TEdit;
    edt_balancin_qtd_qdr1: TEdit;
    edt_balancin_qtd_etq1: TEdit;
    edt_balancin_med_menor2: TEdit;
    edt_balancin_med_menor1: TEdit;
    edt_balancin_cod_faca1: TEdit;
    Label29: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    edt_balancin_qtd_qdr2: TEdit;
    edt_balancin_qtd_etq2: TEdit;
    edt_balancin_qtd_vert2: TEdit;
    edt_balancin_qtd_vert1: TEdit;
    edt_balancin_med_maior2: TEdit;
    edt_balancin_cod_faca2: TEdit;
    CRACK: TTabSheet;
    Label22: TLabel;
    edt_crack_tam: TEdit;
    Label37: TLabel;
    edt_crack_area1: TEdit;
    Label38: TLabel;
    edt_crack_hv1: TEdit;
    Label39: TLabel;
    edt_crack_chapa1: TEdit;
    Label40: TLabel;
    edt_crack_pc: TEdit;
    Label41: TLabel;
    edt_crack_qc: TEdit;
    edt_crack_area2: TEdit;
    edt_crack_hv2: TEdit;
    edt_crack_chapa2: TEdit;
    TabSheet2: TTabSheet;
    Label42: TLabel;
    Label43: TLabel;
    Label50: TLabel;
    edt_laserg1_tam: TEdit;
    edt_laserg1_area1: TEdit;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    edt_laserg1_qc: TEdit;
    edt_laserg1_pc: TEdit;
    edt_laserg1_chapa1: TEdit;
    edt_laserg1_hv1: TEdit;
    edt_laserg1_area2: TEdit;
    edt_laserg1_hv2: TEdit;
    edt_laserg1_chapa2: TEdit;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    edt_laserg2_tam: TEdit;
    edt_laserg2_area1: TEdit;
    edt_laserg2_hv1: TEdit;
    edt_laserg2_chapa1: TEdit;
    edt_laserg2_area2: TEdit;
    edt_laserg2_hv2: TEdit;
    edt_laserg2_chapa2: TEdit;
    edt_laserg2_pc: TEdit;
    edt_laserg2_qc: TEdit;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    edt_laserm1_tam: TEdit;
    edt_laserm1_area1: TEdit;
    edt_laserm1_hv1: TEdit;
    edt_laserm1_chapa1: TEdit;
    edt_laserm1_area2: TEdit;
    edt_laserm1_hv2: TEdit;
    edt_laserm1_chapa2: TEdit;
    edt_laserm1_pc: TEdit;
    edt_laserm1_qc: TEdit;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    edt_laserp1_tam: TEdit;
    edt_laserp1_area1: TEdit;
    edt_laserp1_hv1: TEdit;
    edt_laserp1_chapa1: TEdit;
    edt_laserp1_area2: TEdit;
    edt_laserp1_hv2: TEdit;
    edt_laserp1_chapa2: TEdit;
    edt_laserp1_pc: TEdit;
    edt_laserp1_qc: TEdit;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    edt_laserm2_tam: TEdit;
    edt_laserm2_area1: TEdit;
    edt_laserm2_hv1: TEdit;
    edt_laserm2_chapa1: TEdit;
    edt_laserm2_area2: TEdit;
    edt_laserm2_hv2: TEdit;
    edt_laserm2_chapa2: TEdit;
    edt_laserm2_pc: TEdit;
    edt_laserm2_qc: TEdit;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    edt_laserp2_tam: TEdit;
    edt_laserp2_area1: TEdit;
    edt_laserp2_hv1: TEdit;
    edt_laserp2_chapa1: TEdit;
    edt_laserp2_area2: TEdit;
    edt_laserp2_hv2: TEdit;
    edt_laserp2_chapa2: TEdit;
    edt_laserp2_pc: TEdit;
    edt_laserp2_qc: TEdit;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    TabSheet3: TTabSheet;
    Label92: TLabel;
    Label93: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    edt_lasermontg1_qc: TEdit;
    edt_lasermontg1_pc: TEdit;
    edt_lasermontg1_chapa1: TEdit;
    edt_lasermontg1_hv1: TEdit;
    edt_lasermontg1_area1: TEdit;
    edt_lasermontg1_area2: TEdit;
    edt_lasermontg1_hv2: TEdit;
    edt_lasermontg1_chapa2: TEdit;
    Label100: TLabel;
    Label101: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    edt_lasermontg2_qc: TEdit;
    edt_lasermontg2_pc: TEdit;
    edt_lasermontg2_chapa1: TEdit;
    edt_lasermontg2_hv1: TEdit;
    edt_lasermontg2_area1: TEdit;
    edt_lasermontg2_area2: TEdit;
    edt_lasermontg2_hv2: TEdit;
    edt_lasermontg2_chapa2: TEdit;
    Label108: TLabel;
    edt_lasermontg1_recorte1: TEdit;
    edt_lasermontg1_recorte2: TEdit;
    Label109: TLabel;
    edt_lasermontg1_hvrec1: TEdit;
    edt_lasermontg1_hvrec2: TEdit;
    edt_lasermontg1_qeq: TEdit;
    Label110: TLabel;
    edt_lasermontg2_recorte2: TEdit;
    edt_lasermontg2_recorte1: TEdit;
    Label111: TLabel;
    Label112: TLabel;
    edt_lasermontg2_hvrec1: TEdit;
    edt_lasermontg2_hvrec2: TEdit;
    edt_lasermontg2_qeq: TEdit;
    Label113: TLabel;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    edt_galvo_tg2: TEdit;
    edt_galvo_tg1: TEdit;
    edt_galvo_etpt: TEdit;
    edt_galvo_etqpp: TEdit;
    edt_galvo_desloc: TEdit;
    edt_galvo_hv2: TEdit;
    edt_galvo_tam: TEdit;
    edt_galvo_altura: TEdit;
    edt_galvo_qt: TEdit;
    edt_galvo_hv1: TEdit;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    edt_crackchapado_etc: TEdit;
    edt_crackchapado_chapa1: TEdit;
    edt_crackchapado_hv12: TEdit;
    edt_crackchapado_area1crack: TEdit;
    edt_crackchapado_qts2: TEdit;
    edt_crackchapado_qts1: TEdit;
    edt_crackchapado_hv1: TEdit;
    edt_crackchapado_area1: TEdit;
    edt_crackchapado_tam: TEdit;
    Label130: TLabel;
    edt_crackchapado_qtc: TEdit;
    edt_crackchapado_area2crack: TEdit;
    edt_crackchapado_hv2: TEdit;
    edt_crackchapado_area2: TEdit;
    edt_crackchapado_hv22: TEdit;
    edt_crackchapado_chapa2: TEdit;
    Label131: TLabel;
    edt_crackchapadosemfaca_tam: TEdit;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    edt_crackchapadosemfaca_qtc: TEdit;
    edt_crackchapadosemfaca_etc: TEdit;
    edt_crackchapadosemfaca_chapa1: TEdit;
    edt_crackchapadosemfaca_hv12: TEdit;
    edt_crackchapadosemfaca_area1laser: TEdit;
    edt_crackchapadosemfaca_qts1: TEdit;
    edt_crackchapadosemfaca_hv1: TEdit;
    edt_crackchapadosemfaca_area1: TEdit;
    edt_crackchapadosemfaca_area2: TEdit;
    edt_crackchapadosemfaca_hv2: TEdit;
    edt_crackchapadosemfaca_qts2: TEdit;
    edt_crackchapadosemfaca_area2laser: TEdit;
    edt_crackchapadosemfaca_hv22: TEdit;
    edt_crackchapadosemfaca_chapa2: TEdit;
    TabSheet7: TTabSheet;
    Label4: TLabel;
    edt_galvofinal_tam: TEdit;
    Label94: TLabel;
    Label102: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    edt_galvofinal_tg1: TEdit;
    edt_galvofinal_tg2: TEdit;
    edt_galvofinal_etpt: TEdit;
    edt_galvofinal_etqpp: TEdit;
    edt_galvofinal_desloc: TEdit;
    edt_galvofinal_hv1: TEdit;
    edt_galvofinal_hv2: TEdit;
    edt_galvofinal_qt: TEdit;
    edt_galvofinal_altura: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_medida_maior1Change(Sender: TObject);
    procedure edt_medida_maior2Change(Sender: TObject);
    procedure edt_medida_menor1Change(Sender: TObject);
    procedure edt_medida_menor2Change(Sender: TObject);
    procedure edt_balancin_cod_faca1Change(Sender: TObject);
    procedure edt_balancin_cod_faca2Change(Sender: TObject);
    procedure edt_max_aceitavelChange(Sender: TObject);
    procedure edt_crack_area1Change(Sender: TObject);
    procedure edt_crack_area2Change(Sender: TObject);
    procedure edt_laserg1_area1Change(Sender: TObject);
    procedure edt_laserg1_area2Change(Sender: TObject);
    procedure edt_laserm1_area1Change(Sender: TObject);
    procedure edt_laserp1_area1Change(Sender: TObject);
    procedure edt_laserg2_area1Change(Sender: TObject);
    procedure edt_laserm2_area1Change(Sender: TObject);
    procedure edt_laserp2_area1Change(Sender: TObject);
    procedure edt_laserm1_area2Change(Sender: TObject);
    procedure edt_laserp1_area2Change(Sender: TObject);
    procedure edt_laserg2_area2Change(Sender: TObject);
    procedure edt_laserm2_tamChange(Sender: TObject);
    procedure edt_laserp2_area2Change(Sender: TObject);
    procedure edt_laserm2_area2Change(Sender: TObject);
    procedure edt_lasermontg1_area2Change(Sender: TObject);
    procedure edt_lasermontg1_area1Change(Sender: TObject);
    procedure edt_lasermontg2_area1Change(Sender: TObject);
    procedure edt_lasermontg2_area2Change(Sender: TObject);
    procedure edt_galvo_tg1Change(Sender: TObject);
    procedure edt_galvo_tg2Change(Sender: TObject);
    procedure edt_crackchapado_area1Change(Sender: TObject);
    procedure edt_crackchapado_area2Change(Sender: TObject);
    procedure edt_crackchapadosemfaca_area1Change(Sender: TObject);
    procedure edt_crackchapadosemfaca_area2Change(Sender: TObject);
    procedure edt_lasermontg1_hvrec1Change(Sender: TObject);
    procedure edt_lasermontg1_hvrec2Change(Sender: TObject);
    procedure edt_lasermontg2_hvrec1Change(Sender: TObject);
    procedure edt_lasermontg2_hvrec2Change(Sender: TObject);
    procedure edt_galvofinal_tg2Change(Sender: TObject);
    procedure edt_galvofinal_hv1Change(Sender: TObject);
    procedure edt_galvofinal_hv2Change(Sender: TObject);
  private
    function GetEditIntValue(Edit: TEdit): Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModelagem: TfrmModelagem;

implementation

{$R *.dfm}

procedure TfrmModelagem.edt_laserg1_area1Change(Sender: TObject);
var
CA, CA2, MM, MN, CH1, CH2, CC, CP, MA, T1, T2, T3, T4, T5, T6:DOUBLE;
begin
   T1 := 0;
   T2 := 0;
   T3 := 0;
   T4 := 0;
   T5 := 0;
   T6 := 0;

   if edt_laserg1_area1.Text <> '' then
   begin
     CA := GetEditIntValue(edt_laserg1_area1);
     CA2 := GetEditIntValue(edt_laserg1_area2);
     MM := GetEditIntValue(edt_medida_maior1);
     MN := GetEditIntValue(edt_medida_menor1);
     CH1 := GetEditIntValue(edt_laserg1_hv1);
     CH2 := GetEditIntValue(edt_laserg1_hv2);
     CC := GetEditIntValue(edt_laserg1_chapa1);
     CP := GetEditIntValue(edt_laserg1_pc);
     MA := GetEditIntValue(edt_max_aceitavel);

     if (CA <> 0) and (MM <> 0) then
     begin
       if CA <> 0 then
         T1 := Trunc(CA/(MM+1));

       if CA2 <> 0 then
         T2 := Trunc(CA2/(MN+1));

       if T1 <> 0 then
         T3 := (T1)*(MM+1)+10;

       if T2 <> 0 then
         T4 := (T2)*(MN+1)+10;

       if (T1 <> 0) OR (T2 <> 0) then
         T5 := T1 * T2;
     end;

     if (MA <> 0) and (T5 <> 0) then
     begin
       T6 := RoundTo(MA / T5, -2);
     end;

     edt_laserg1_hv1.Text := FloatToStr(T1);
     edt_laserg1_chapa1.Text := FloatToStr(T3);
     edt_laserg1_hv2.Text := FloatToStr(T2);
     edt_laserg1_chapa2.Text := FloatToStr(T4);
     edt_laserg1_pc.Text := FloatToStr(T5);

     if MA <> 0 then
       edt_laserg1_qc.Text := FloatToStr(T6);
   end
   else
   begin
     edt_laserg1_hv1.Text := FloatToStr(0);
     edt_laserg1_chapa1.Text := FloatToStr(0);
     edt_laserg1_hv2.Text := FloatToStr(0);
     edt_laserg1_chapa2.Text := FloatToStr(0);
     edt_laserg1_pc.Text := FloatToStr(0);
     edt_laserg1_qc.Text := FloatToStr(0);
   end;
end;

procedure TfrmModelagem.edt_laserg1_area2Change(Sender: TObject);
begin
  if Assigned(edt_laserg1_area1.OnChange) then
    edt_laserg1_area1.OnChange(edt_laserg1_area1);
end;

procedure TfrmModelagem.edt_laserg2_area1Change(Sender: TObject);
var
CA, CA2, MM, MN, CH1, CH2, CC, CP, MA, T1, T2, T3, T4, T5, T6:DOUBLE;
begin
   T1 := 0;
   T2 := 0;
   T3 := 0;
   T4 := 0;
   T5 := 0;
   T6 := 0;

   if edt_laserg2_area1.Text <> '' then
   begin
     CA := GetEditIntValue(edt_laserg2_area1);
     CA2 := GetEditIntValue(edt_laserg2_area2);
     MM := GetEditIntValue(edt_medida_maior2);
     MN := GetEditIntValue(edt_medida_menor2);
     CH1 := GetEditIntValue(edt_laserg2_hv1);
     CH2 := GetEditIntValue(edt_laserg2_hv2);
     CC := GetEditIntValue(edt_laserg2_chapa1);
     CP := GetEditIntValue(edt_laserg2_pc);
     MA := GetEditIntValue(edt_max_aceitavel);

     if (CA <> 0) and (MM <> 0) then
     begin
       if CA <> 0 then
         T1 := Trunc(CA/(MM+1));

       if CA2 <> 0 then
         T2 := Trunc(CA2/(MN+1));

       if T1 <> 0 then
         T3 := (T1)*(MM+1)+10;

       if T2 <> 0 then
         T4 := (T2)*(MN+1)+10;

       if (T1 <> 0) OR (T2 <> 0) then
         T5 := T1 * T2;
     end;

     if (MA <> 0) and (T5 <> 0) then
     begin
       T6 := RoundTo(MA / T5, -2);
     end;

     edt_laserg2_hv1.Text := FloatToStr(T1);
     edt_laserg2_chapa1.Text := FloatToStr(T3);
     edt_laserg2_hv2.Text := FloatToStr(T2);
     edt_laserg2_chapa2.Text := FloatToStr(T4);
     edt_laserg2_pc.Text := FloatToStr(T5);

     if MA <> 0 then
       edt_laserg2_qc.Text := FloatToStr(T6);
   end
   else
   begin
     edt_laserg2_hv1.Text := FloatToStr(0);
     edt_laserg2_chapa1.Text := FloatToStr(0);
     edt_laserg2_hv2.Text := FloatToStr(0);
     edt_laserg2_chapa2.Text := FloatToStr(0);
     edt_laserg2_pc.Text := FloatToStr(0);
     edt_laserg2_qc.Text := FloatToStr(0);
   end;
end;

procedure TfrmModelagem.edt_laserg2_area2Change(Sender: TObject);
begin
  if Assigned(edt_laserg2_area1.OnChange) then
    edt_laserg2_area1.OnChange(edt_laserg2_area1);
end;

procedure TfrmModelagem.edt_laserm1_area1Change(Sender: TObject);
var
CA, CA2, MM, MN, CH1, CH2, CC, CP, MA, T1, T2, T3, T4, T5, T6:DOUBLE;
begin
   T1 := 0;
   T2 := 0;
   T3 := 0;
   T4 := 0;
   T5 := 0;
   T6 := 0;

   if edt_laserm1_area1.Text <> '' then
   begin
     CA := GetEditIntValue(edt_laserm1_area1);
     CA2 := GetEditIntValue(edt_laserm1_area2);
     MM := GetEditIntValue(edt_medida_maior1);
     MN := GetEditIntValue(edt_medida_menor1);
     CH1 := GetEditIntValue(edt_laserm1_hv1);
     CH2 := GetEditIntValue(edt_laserm1_hv2);
     CC := GetEditIntValue(edt_laserm1_chapa1);
     CP := GetEditIntValue(edt_laserm1_pc);
     MA := GetEditIntValue(edt_max_aceitavel);

     if (CA <> 0) and (MM <> 0) then
     begin
       if CA <> 0 then
         T1 := Trunc(CA/(MM+1));

       if CA2 <> 0 then
         T2 := Trunc(CA2/(MN+1));

       if T1 <> 0 then
         T3 := (T1)*(MM+1)+10;

       if T2 <> 0 then
         T4 := (T2)*(MN+1)+10;

       if (T1 <> 0) OR (T2 <> 0) then
         T5 := T1 * T2;
     end;

     if (MA <> 0) and (T5 <> 0) then
     begin
       T6 := RoundTo(MA / T5, -2);
     end;

     edt_laserm1_hv1.Text := FloatToStr(T1);
     edt_laserm1_chapa1.Text := FloatToStr(T3);
     edt_laserm1_hv2.Text := FloatToStr(T2);
     edt_laserm1_chapa2.Text := FloatToStr(T4);
     edt_laserm1_pc.Text := FloatToStr(T5);

     if MA <> 0 then
       edt_laserm1_qc.Text := FloatToStr(T6);
   end
   else
   begin
     edt_laserm1_hv1.Text := FloatToStr(0);
     edt_laserm1_chapa1.Text := FloatToStr(0);
     edt_laserm1_hv2.Text := FloatToStr(0);
     edt_laserm1_chapa2.Text := FloatToStr(0);
     edt_laserm1_pc.Text := FloatToStr(0);
     edt_laserm1_qc.Text := FloatToStr(0);
   end;
end;

procedure TfrmModelagem.edt_laserm1_area2Change(Sender: TObject);
begin
  if Assigned(edt_laserm1_area1.OnChange) then
    edt_laserm1_area1.OnChange(edt_laserm1_area1);
end;

procedure TfrmModelagem.edt_laserm2_area1Change(Sender: TObject);
var
CA, CA2, MM, MN, CH1, CH2, CC, CP, MA, T1, T2, T3, T4, T5, T6:DOUBLE;
begin
   T1 := 0;
   T2 := 0;
   T3 := 0;
   T4 := 0;
   T5 := 0;
   T6 := 0;

   if edt_laserm2_area1.Text <> '' then
   begin
     CA := GetEditIntValue(edt_laserm2_area1);
     CA2 := GetEditIntValue(edt_laserm2_area2);
     MM := GetEditIntValue(edt_medida_maior2);
     MN := GetEditIntValue(edt_medida_menor2);
     CH1 := GetEditIntValue(edt_laserm2_hv1);
     CH2 := GetEditIntValue(edt_laserm2_hv2);
     CC := GetEditIntValue(edt_laserm2_chapa1);
     CP := GetEditIntValue(edt_laserm2_pc);
     MA := GetEditIntValue(edt_max_aceitavel);

     if (CA <> 0) and (MM <> 0) then
     begin
       if CA <> 0 then
         T1 := Trunc(CA/(MM+1));

       if CA2 <> 0 then
         T2 := Trunc(CA2/(MN+1));

       if T1 <> 0 then
         T3 := (T1)*(MM+1)+10;

       if T2 <> 0 then
         T4 := (T2)*(MN+1)+10;

       if (T1 <> 0) OR (T2 <> 0) then
         T5 := T1 * T2;
     end;

     if (MA <> 0) and (T5 <> 0) then
     begin
       T6 := RoundTo(MA / T5, -2);
     end;

     edt_laserm2_hv1.Text := FloatToStr(T1);
     edt_laserm2_chapa1.Text := FloatToStr(T3);
     edt_laserm2_hv2.Text := FloatToStr(T2);
     edt_laserm2_chapa2.Text := FloatToStr(T4);
     edt_laserm2_pc.Text := FloatToStr(T5);

     if MA <> 0 then
       edt_laserm2_qc.Text := FloatToStr(T6);
   end
   else
   begin
     edt_laserm2_hv1.Text := FloatToStr(0);
     edt_laserm2_chapa1.Text := FloatToStr(0);
     edt_laserm2_hv2.Text := FloatToStr(0);
     edt_laserm2_chapa2.Text := FloatToStr(0);
     edt_laserm2_pc.Text := FloatToStr(0);
     edt_laserm2_qc.Text := FloatToStr(0);
   end;
end;

procedure TfrmModelagem.edt_laserm2_area2Change(Sender: TObject);
begin
  if Assigned(edt_laserm2_area1.OnChange) then
    edt_laserm2_area1.OnChange(edt_laserm2_area1);
end;

procedure TfrmModelagem.edt_laserm2_tamChange(Sender: TObject);
begin
  if Assigned(edt_laserm2_area1.OnChange) then
    edt_laserm2_area1.OnChange(edt_laserm2_area1);
end;

procedure TfrmModelagem.edt_lasermontg1_area1Change(Sender: TObject);
var
A1LG1, A1LG2, CQC, CA1, CA2, LR1, MM, MN, CH1, CH2:DOUBLE;
CHREC1, CHREC2, EQ, CP, MA, T1, T2, T3, T4, T5, T6, T7, T8:DOUBLE;
begin
   T1 := 0;
   T2 := 0;
   T3 := 0;
   T4 := 0;
   T5 := 0;
   T6 := 0;
   T7 := 0;
   T8 := 0;

   if (edt_lasermontg1_hvrec1.Text <> '') and (edt_lasermontg1_hvrec1.Text <> '') then
   begin
     CHREC1 := GetEditIntValue(edt_lasermontg1_hvrec1);
     CHREC2 := GetEditIntValue(edt_lasermontg1_hvrec2);
     MM := GetEditIntValue(edt_medida_maior1);
     MN := GetEditIntValue(edt_medida_menor1);
     MA := GetEditIntValue(edt_max_aceitavel);

     T1 :=  CHREC1 * CHREC2;
     T2 :=  (MM * CHREC1)+6+(3*(CHREC1-1));
     T3 :=  (MN*CHREC2)+6+(3*(CHREC2-1));


     edt_lasermontg1_qeq.Text := FloatToStr(T1);
     edt_lasermontg1_recorte1.Text := FloatToStr(T2);
     edt_lasermontg1_recorte2.Text := FloatToStr(T3);

     EQ := T1;

     if EQ = 1 then
     begin
       A1LG1 := GetEditIntValue(edt_laserg1_area1);
       A1LG2 := GetEditIntValue(edt_laserg1_area2);
       CQC := GetEditIntValue(edt_crack_qc);

       if (A1LG1 > 0) and (CQC > 0) then
       begin
         T4 := Trunc(A1LG1 / (CQC + 1));
         edt_lasermontg1_hv1.Text :=  FloatToStr(T4);
       end;

       if (A1LG2 > 0) and (CQC > 0) then
       begin
         T5 := Trunc(A1LG2 / (CQC + 1));
         edt_lasermontg1_hv2.Text :=  FloatToStr(T5);
       end;

       T6 :=  (T4 * (T2 + 1)) + 10;
       edt_lasermontg1_chapa1.Text := FloatToStr(T6);

       T7 := (T5 * (MN + 1)) + 10;
       edt_lasermontg1_chapa2.Text := FloatToStr(T7);
     end
     else
     begin
        CA1 :=  GetEditIntValue(edt_lasermontg1_area1);
        CA2 :=  GetEditIntValue(edt_lasermontg1_area2);

        if (CA1 > 0) and (T2 > 0) then
        begin
          T4 := Trunc(CA1 / (T2 + 1));
          edt_lasermontg1_hv1.Text :=  FloatToStr(T4);
        end;

        if (CA2 > 0) and (T3 > 0) then
        begin
          T5 := Trunc(CA2 / (T3 + 1));
          edt_lasermontg1_hv2.Text :=  FloatToStr(T5);
        end;

        T6 :=  (T4 * (T2 + 1)) + 10;
        edt_lasermontg1_chapa1.Text := FloatToStr(T6);

        T7 := (T5 * (T3 + 1)) + 10;
        edt_lasermontg1_chapa2.Text := FloatToStr(T7);
     end;

     edt_lasermontg1_pc.Text := FloatToStr(T4*T5*T1);

     if (MA > 0) and ((T4*T5*T1) > 0) then
       T8 := RoundTo(MA / (T4*T5*T1), -2);

     edt_lasermontg1_qc.Text := FloatToStr(T8);
   end
   else
   begin
     edt_lasermontg1_hv1.Text := FloatToStr(0);
     edt_lasermontg1_hv2.Text := FloatToStr(0);
     edt_lasermontg1_chapa1.Text := FloatToStr(0);
     edt_lasermontg1_chapa2.Text := FloatToStr(0);
     edt_lasermontg1_pc.Text := FloatToStr(0);
     edt_lasermontg1_recorte1.Text := FloatToStr(0);
     edt_lasermontg1_recorte2.Text := FloatToStr(0);
     edt_lasermontg1_qeq.Text := FloatToStr(0);
     edt_lasermontg1_qc.Text := FloatToStr(0);
   end;
end;

procedure TfrmModelagem.edt_lasermontg1_area2Change(Sender: TObject);
begin
  if Assigned(edt_lasermontg1_area1.OnChange) then
    edt_lasermontg1_area1.OnChange(edt_lasermontg1_area1);
end;

procedure TfrmModelagem.edt_lasermontg1_hvrec1Change(Sender: TObject);
begin
  if Assigned(edt_lasermontg1_area1.OnChange) then
    edt_lasermontg1_area1.OnChange(edt_lasermontg1_area1);
end;

procedure TfrmModelagem.edt_lasermontg1_hvrec2Change(Sender: TObject);
begin
  if Assigned(edt_lasermontg1_area1.OnChange) then
    edt_lasermontg1_area1.OnChange(edt_lasermontg1_area1);
end;

procedure TfrmModelagem.edt_lasermontg2_area1Change(Sender: TObject);
var
A1LG1, A1LG2, CQC, CA1, CA2, LR1, MM, MN, CH1, CH2:DOUBLE;
CHREC1, CHREC2, EQ, CP, MA, T1, T2, T3, T4, T5, T6, T7, T8:DOUBLE;
begin
   T1 := 0;
   T2 := 0;
   T3 := 0;
   T4 := 0;
   T5 := 0;
   T6 := 0;
   T7 := 0;
   T8 := 0;

   if (edt_lasermontg2_hvrec1.Text <> '') and (edt_lasermontg2_hvrec1.Text <> '') then
   begin
     CHREC1 := GetEditIntValue(edt_lasermontg2_hvrec1);
     CHREC2 := GetEditIntValue(edt_lasermontg2_hvrec2);
     MM := GetEditIntValue(edt_medida_maior1);
     MN := GetEditIntValue(edt_medida_menor1);
     MA := GetEditIntValue(edt_max_aceitavel);

     T1 :=  CHREC1 * CHREC2;
     T2 :=  (MM * CHREC1)+6+(3*(CHREC1-1));
     T3 :=  (MN*CHREC2)+6+(3*(CHREC2-1));


     edt_lasermontg2_qeq.Text := FloatToStr(T1);
     edt_lasermontg2_recorte1.Text := FloatToStr(T2);
     edt_lasermontg2_recorte2.Text := FloatToStr(T3);

     EQ := T1;

     if EQ = 1 then
     begin
       A1LG1 := GetEditIntValue(edt_laserg2_area1);
       A1LG2 := GetEditIntValue(edt_laserg2_area2);
       CQC := GetEditIntValue(edt_crack_qc);

       if (A1LG1 > 0) and (CQC > 0) then
       begin
         T4 := Trunc(A1LG1 / (CQC + 1));
         edt_lasermontg2_hv1.Text :=  FloatToStr(T4);
       end;

       if (A1LG2 > 0) and (CQC > 0) then
       begin
         T5 := Trunc(A1LG2 / (CQC + 1));
         edt_lasermontg2_hv2.Text :=  FloatToStr(T5);
       end;

       T6 :=  (T4 * (T2 + 1)) + 10;
       edt_lasermontg2_chapa1.Text := FloatToStr(T6);

       T7 := (T5 * (MN + 1)) + 10;
       edt_lasermontg2_chapa2.Text := FloatToStr(T7);
     end
     else
     begin
        CA1 :=  GetEditIntValue(edt_lasermontg2_area1);
        CA2 :=  GetEditIntValue(edt_lasermontg2_area2);

        if (CA1 > 0) and (T2 > 0) then
        begin
          T4 := Trunc(CA1 / (T2 + 1));
          edt_lasermontg2_hv1.Text :=  FloatToStr(T4);
        end;

        if (CA2 > 0) and (T3 > 0) then
        begin
          T5 := Trunc(CA2 / (T3 + 1));
          edt_lasermontg2_hv2.Text :=  FloatToStr(T5);
        end;

        T6 :=  (T4 * (T2 + 1)) + 10;
        edt_lasermontg2_chapa1.Text := FloatToStr(T6);

        T7 := (T5 * (T3 + 1)) + 10;
        edt_lasermontg2_chapa2.Text := FloatToStr(T7);
     end;

     edt_lasermontg2_pc.Text := FloatToStr(T4*T5*T1);

     if (MA > 0) and ((T4*T5*T1) > 0) then
       T8 :=  RoundTo(MA / (T4*T5*T1), -2);

     edt_lasermontg2_qc.Text := FloatToStr(T8);
   end
   else
   begin
     edt_lasermontg2_hv1.Text := FloatToStr(0);
     edt_lasermontg2_hv2.Text := FloatToStr(0);
     edt_lasermontg2_chapa1.Text := FloatToStr(0);
     edt_lasermontg2_chapa2.Text := FloatToStr(0);
     edt_lasermontg2_pc.Text := FloatToStr(0);
     edt_lasermontg2_recorte1.Text := FloatToStr(0);
     edt_lasermontg2_recorte2.Text := FloatToStr(0);
     edt_lasermontg2_qeq.Text := FloatToStr(0);
     edt_lasermontg2_qc.Text := FloatToStr(0);
   end;
end;

procedure TfrmModelagem.edt_lasermontg2_area2Change(Sender: TObject);
begin
  if Assigned(edt_lasermontg2_area1.OnChange) then
    edt_lasermontg2_area1.OnChange(edt_lasermontg2_area1);
end;

procedure TfrmModelagem.edt_lasermontg2_hvrec1Change(Sender: TObject);
begin
  if Assigned(edt_lasermontg2_area1.OnChange) then
    edt_lasermontg2_area1.OnChange(edt_lasermontg2_area1);
end;

procedure TfrmModelagem.edt_lasermontg2_hvrec2Change(Sender: TObject);
begin
  if Assigned(edt_lasermontg2_area1.OnChange) then
    edt_lasermontg2_area1.OnChange(edt_lasermontg2_area1);
end;

procedure TfrmModelagem.edt_laserp1_area1Change(Sender: TObject);
var
CA, CA2, MM, MN, CH1, CH2, CC, CP, MA, T1, T2, T3, T4, T5, T6:DOUBLE;
begin
   T1 := 0;
   T2 := 0;
   T3 := 0;
   T4 := 0;
   T5 := 0;
   T6 := 0;

   if edt_laserp1_area1.Text <> '' then
   begin
     CA := GetEditIntValue(edt_laserp1_area1);
     CA2 := GetEditIntValue(edt_laserp1_area2);
     MM := GetEditIntValue(edt_medida_maior1);
     MN := GetEditIntValue(edt_medida_menor1);
     CH1 := GetEditIntValue(edt_laserp1_hv1);
     CH2 := GetEditIntValue(edt_laserp1_hv2);
     CC := GetEditIntValue(edt_laserp1_chapa1);
     CP := GetEditIntValue(edt_laserp1_pc);
     MA := GetEditIntValue(edt_max_aceitavel);

     if (CA <> 0) and (MM <> 0) then
     begin
       if CA <> 0 then
         T1 := Trunc(CA/(MM+1));

       if CA2 <> 0 then
         T2 := Trunc(CA2/(MN+1));

       if T1 <> 0 then
         T3 := (T1)*(MM+1)+10;

       if T2 <> 0 then
         T4 := (T2)*(MN+1)+10;

       if (T1 <> 0) OR (T2 <> 0) then
         T5 := T1 * T2;
     end;

     if (MA <> 0) and (T5 <> 0) then
     begin
       T6 := RoundTo(MA / T5, -2);
     end;

     edt_laserp1_hv1.Text := FloatToStr(T1);
     edt_laserp1_chapa1.Text := FloatToStr(T3);
     edt_laserp1_hv2.Text := FloatToStr(T2);
     edt_laserp1_chapa2.Text := FloatToStr(T4);
     edt_laserp1_pc.Text := FloatToStr(T5);

     if MA <> 0 then
       edt_laserp1_qc.Text := FloatToStr(T6);
   end
   else
   begin
     edt_laserp1_hv1.Text := FloatToStr(0);
     edt_laserp1_chapa1.Text := FloatToStr(0);
     edt_laserp1_hv2.Text := FloatToStr(0);
     edt_laserp1_chapa2.Text := FloatToStr(0);
     edt_laserp1_pc.Text := FloatToStr(0);
     edt_laserp1_qc.Text := FloatToStr(0);
   end;
end;

procedure TfrmModelagem.edt_laserp1_area2Change(Sender: TObject);
begin
  if Assigned(edt_laserp1_area1.OnChange) then
    edt_laserp1_area1.OnChange(edt_laserp1_area1);
end;

procedure TfrmModelagem.edt_laserp2_area1Change(Sender: TObject);
var
CA, CA2, MM, MN, CH1, CH2, CC, CP, MA, T1, T2, T3, T4, T5, T6:DOUBLE;
begin
   T1 := 0;
   T2 := 0;
   T3 := 0;
   T4 := 0;
   T5 := 0;
   T6 := 0;

   if edt_laserp2_area1.Text <> '' then
   begin
     CA := GetEditIntValue(edt_laserp2_area1);
     CA2 := GetEditIntValue(edt_laserp2_area2);
     MM := GetEditIntValue(edt_medida_maior2);
     MN := GetEditIntValue(edt_medida_menor2);
     CH1 := GetEditIntValue(edt_laserp2_hv1);
     CH2 := GetEditIntValue(edt_laserp2_hv2);
     CC := GetEditIntValue(edt_laserp2_chapa1);
     CP := GetEditIntValue(edt_laserp2_pc);
     MA := GetEditIntValue(edt_max_aceitavel);

     if (CA <> 0) and (MM <> 0) then
     begin
       if CA <> 0 then
         T1 := Trunc(CA/(MM+1));

       if CA2 <> 0 then
         T2 := Trunc(CA2/(MN+1));

       if T1 <> 0 then
         T3 := (T1)*(MM+1)+10;

       if T2 <> 0 then
         T4 := (T2)*(MN+1)+10;

       if (T1 <> 0) OR (T2 <> 0) then
         T5 := T1 * T2;
     end;

     if (MA <> 0) and (T5 <> 0) then
     begin
       T6 := RoundTo(MA / T5, -2);
     end;

     edt_laserp2_hv1.Text := FloatToStr(T1);
     edt_laserp2_chapa1.Text := FloatToStr(T3);
     edt_laserp2_hv2.Text := FloatToStr(T2);
     edt_laserp2_chapa2.Text := FloatToStr(T4);
     edt_laserp2_pc.Text := FloatToStr(T5);

     if MA <> 0 then
       edt_laserp2_qc.Text := FloatToStr(T6);
   end
   else
   begin
     edt_laserp2_hv1.Text := FloatToStr(0);
     edt_laserp2_chapa1.Text := FloatToStr(0);
     edt_laserp2_hv2.Text := FloatToStr(0);
     edt_laserp2_chapa2.Text := FloatToStr(0);
     edt_laserp2_pc.Text := FloatToStr(0);
     edt_laserp2_qc.Text := FloatToStr(0);
   end;
end;

procedure TfrmModelagem.edt_laserp2_area2Change(Sender: TObject);
begin
  if Assigned(edt_laserp2_area1.OnChange) then
    edt_laserp2_area1.OnChange(edt_laserp2_area1);
end;

procedure TfrmModelagem.edt_balancin_cod_faca1Change(Sender: TObject);
var
L, M, Q, V, T, MA, M1, V1, T1, T2, ME:DOUBLE;
begin
  if (edt_balancin_cod_faca1.Text <> '') then
  begin
    L := GetEditIntValue(edt_enfesto_largura1);
    M := GetEditIntValue(edt_balancin_med_menor1);
    Q := GetEditIntValue(edt_balancin_qtd_qdr1);
    V := GetEditIntValue(edt_balancin_qtd_vert1);
    MA := GetEditIntValue(edt_max_aceitavel);

    if (((M + 4) * Q) <> 0) and (M <> 0) then
      T := ((Trunc(L / ((M + 4) * Q)) * V))
    else
    T := 0;

    if (edt_balancin_cod_faca1.Text <> '') then
    begin
      edt_balancin_qtd_etq1.Text := FloatToStr(T);
    end;

    M1 := GetEditIntValue(edt_medida_maior1);
    V1 := GetEditIntValue(edt_balancin_qtd_vert1);

    T1 := RoundTo(((M1*V1)+(V1+1)*4)/10, -2);

    if (MA > 0) and (T > 0) then
      T2 := RoundTo(MA/T, -2);
    ME := RoundTo((T1 * T2)/100, -2);

    edt_enfesto_altura1.Text := FloatToStr(T1);
    edt_enfesto_qtd_tiras1.Text := FloatToStr(T2);
    edt_metragem_compra1.Text := FloatToStr(ME);
  end;
end;

procedure TfrmModelagem.edt_balancin_cod_faca2Change(Sender: TObject);
var
L, M, Q, V, T, MA, M1, V1, T1, T2, ME:DOUBLE;
begin
    if (edt_balancin_cod_faca2.Text <> '') then
  begin
    L := GetEditIntValue(edt_enfesto_largura2);
    M := GetEditIntValue(edt_balancin_med_menor2);
    Q := GetEditIntValue(edt_balancin_qtd_qdr2);
    V := GetEditIntValue(edt_balancin_qtd_vert2);
    MA := GetEditIntValue(edt_max_aceitavel);

    if (((M + 4) * Q) <> 0) and (M <> 0) then
      T := ((Trunc(L / ((M + 4) * Q)) * V))
    else
    T := 0;

    if (edt_balancin_cod_faca2.Text <> '') then
    begin
      edt_balancin_qtd_etq2.Text := FloatToStr(T);
    end;

    M1 := GetEditIntValue(edt_medida_maior2);
    V1 := GetEditIntValue(edt_balancin_qtd_vert2);

    T1 := RoundTo(((M1 * V1)+(V1 + 1)*4)/10, -2);

    if (MA > 0) and (T > 0) then
      T2 := RoundTo(MA / T, -2);

    ME := RoundTo((T1 * T2)/100, -2);

    edt_enfesto_altura2.Text := FloatToStr(T1);
    edt_enfesto_qtd_tiras2.Text := FloatToStr(T2);
    edt_metragem_compra2.Text := FloatToStr(ME);
  end;
end;

procedure TfrmModelagem.edt_crackchapadosemfaca_area1Change(Sender: TObject);
var
ALT, QT, CH1, CH2, DESC, ETQPP, ETPT, TG1, TG2, MM, MN, MA:DOUBLE;
T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, AL1, AL2:DOUBLE;
begin
   T1 := 0;
   T2 := 0;
   T3 := 0;
   T4 := 0;
   T5 := 0;
   T6 := 0;
   T7 := 0;
   T8 := 0;
   T9 := 0;
   T10 := 0;
   AL1 := 760;
   AL2 := 460;

   if (edt_crackchapadosemfaca_area1.Text <> '') and (edt_crackchapadosemfaca_area2.Text <> '') then
   begin
     MM := GetEditIntValue(edt_medida_maior1);
     MN := GetEditIntValue(edt_medida_menor1);
     MA := GetEditIntValue(edt_max_aceitavel);
     TG1 := GetEditIntValue(edt_crackchapadosemfaca_area1);
     TG2 := GetEditIntValue(edt_crackchapadosemfaca_area2);

     T1 :=  Trunc((TG1 / (MM + 1)));
     T2 :=  Trunc((TG2 / (MN + 1)));

     if (T1 > 0) and (T2 > 0) then
     begin
       edt_crackchapadosemfaca_hv1.Text := FloatToStr(T1);
       edt_crackchapadosemfaca_hv2.Text := FloatToStr(T2);

       T3 := (T1 * (MM + 1) + 10);

       edt_crackchapadosemfaca_qts1.Text := FloatToStr(T3);

       T4 := (T2 * (MN + 1) + 10);

       edt_crackchapadosemfaca_qts2.Text := FloatToStr(T4);
       edt_crackchapadosemfaca_area1laser.Text := FloatToStr(AL1);
       edt_crackchapadosemfaca_area2laser.Text := FloatToStr(AL2);

       T5 := Trunc( AL1/ (T3 + 1));

       edt_crackchapadosemfaca_hv12.Text := FloatToStr(T5);

       T6 := Trunc(AL2 / (T3 + 1));

       edt_crackchapadosemfaca_hv22.Text := FloatToStr(T6);

       T7 := (T5 * (T3 + 1)) + 10;

       edt_crackchapadosemfaca_chapa1.Text := FloatToStr(T7);

       T8 := (T6 * (T4 + 1)) + 10;

       edt_crackchapadosemfaca_chapa2.Text := FloatToStr(T8);

       T9 := (T1 * T2 * T5 * T6);

       edt_crackchapadosemfaca_etc.Text := FloatToStr(T9);

       T10 := RoundTo(MA / T9, -2);

       edt_crackchapadosemfaca_qtc.Text := FloatToStr(T10);
     end;
   end
   else
   begin
     edt_crackchapadosemfaca_hv1.Text := FloatToStr(0);
     edt_crackchapadosemfaca_hv2.Text := FloatToStr(0);
     edt_crackchapadosemfaca_qts1.Text := FloatToStr(0);
     edt_crackchapadosemfaca_qts2.Text := FloatToStr(0);
     edt_crackchapadosemfaca_area1laser.Text := FloatToStr(0);
     edt_crackchapadosemfaca_area2laser.Text := FloatToStr(0);
     edt_crackchapadosemfaca_hv12.Text := FloatToStr(0);
     edt_crackchapadosemfaca_hv22.Text := FloatToStr(0);
     edt_crackchapadosemfaca_chapa1.Text := FloatToStr(0);
     edt_crackchapadosemfaca_chapa2.Text := FloatToStr(0);
     edt_crackchapadosemfaca_etc.Text := FloatToStr(0);
     edt_crackchapadosemfaca_qtc.Text := FloatToStr(0);
   end;
end;

procedure TfrmModelagem.edt_crackchapadosemfaca_area2Change(Sender: TObject);
begin
  if Assigned(edt_crackchapadosemfaca_area1.OnChange) then
    edt_crackchapadosemfaca_area1.OnChange(edt_crackchapadosemfaca_area1);
end;

procedure TfrmModelagem.edt_crackchapado_area1Change(Sender: TObject);
var
ALT, QT, CH1, CH2, DESC, ETQPP, ETPT, TG1, TG2, MM, MN, MA:DOUBLE;
T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, AC1, AC2:DOUBLE;
begin
   T1 := 0;
   T2 := 0;
   T3 := 0;
   T4 := 0;
   T5 := 0;
   T6 := 0;
   T7 := 0;
   T8 := 0;
   T9 := 0;
   T10 := 0;
   AC1 := 450;
   AC2 := 350;

   if (edt_crackchapado_area1.Text <> '') and (edt_crackchapado_area2.Text <> '') then
   begin
     MM := GetEditIntValue(edt_medida_maior1);
     MN := GetEditIntValue(edt_medida_menor1);
     MA := GetEditIntValue(edt_max_aceitavel);
     TG1 := GetEditIntValue(edt_crackchapado_area1);
     TG2 := GetEditIntValue(edt_crackchapado_area2);

     T1 :=  Trunc((TG1 / (MM + 1)));
     T2 :=  Trunc((TG2 / (MN + 1)));

     if (T1 > 0) and (T2 > 0) then
     begin
       edt_crackchapado_hv1.Text := FloatToStr(T1);
       edt_crackchapado_hv2.Text := FloatToStr(T2);

       T3 := (T1 * (MM + 1) + 10);

       edt_crackchapado_qts1.Text := FloatToStr(T3);

       T4 := (T2 * (MN + 1) + 10);

       edt_crackchapado_qts2.Text := FloatToStr(T4);
       edt_crackchapado_area1crack.Text := FloatToStr(AC1);
       edt_crackchapado_area2crack.Text := FloatToStr(AC2);

       T5 := Trunc(AC1 / (T3 + 1));

       edt_crackchapado_hv12.Text := FloatToStr(T5);

       T6 := Trunc(AC2 / (T3 + 1));

       edt_crackchapado_hv22.Text := FloatToStr(T6);

       T7 := (T5 * (T3 + 1)) + 10;

       edt_crackchapado_chapa1.Text := FloatToStr(T7);

       T8 := (T6 * (T4 + 1)) + 10;

       edt_crackchapado_chapa2.Text := FloatToStr(T8);

       T9 := (T1 * T2 * T5 * T6);

       edt_crackchapado_etc.Text := FloatToStr(T9);

       T10 := RoundTo(MA / T9, -2);

       edt_crackchapado_qtc.Text := FloatToStr(T10);
     end;
   end
   else
   begin
     edt_crackchapado_hv1.Text := FloatToStr(0);
     edt_crackchapado_hv2.Text := FloatToStr(0);
     edt_crackchapado_qts1.Text := FloatToStr(0);
     edt_crackchapado_qts2.Text := FloatToStr(0);
     edt_crackchapado_area1crack.Text := FloatToStr(0);
     edt_crackchapado_area2crack.Text := FloatToStr(0);
     edt_crackchapado_hv12.Text := FloatToStr(0);
     edt_crackchapado_hv22.Text := FloatToStr(0);
     edt_crackchapado_chapa1.Text := FloatToStr(0);
     edt_crackchapado_chapa2.Text := FloatToStr(0);
     edt_crackchapado_etc.Text := FloatToStr(0);
     edt_crackchapado_qtc.Text := FloatToStr(0);
   end;
end;

procedure TfrmModelagem.edt_crackchapado_area2Change(Sender: TObject);
begin
  if Assigned(edt_crackchapado_area1.OnChange) then
    edt_crackchapado_area1.OnChange(edt_crackchapado_area1);
end;

procedure TfrmModelagem.edt_crack_area1Change(Sender: TObject);
var
CA, CA2, MM, MN, CH1, CH2, CC, CP, MA, T1, T2, T3, T4, T5, T6:DOUBLE;
begin
   T1 := 0;
   T2 := 0;
   T3 := 0;
   T4 := 0;
   T5 := 0;
   T6 := 0;

   if edt_crack_area1.Text <> '' then
   begin
     CA := GetEditIntValue(edt_crack_area1);
     CA2 := GetEditIntValue(edt_crack_area2);
     MM := GetEditIntValue(edt_medida_maior1);
     MN := GetEditIntValue(edt_medida_menor1);
     CH1 := GetEditIntValue(edt_crack_hv1);
     CH2 := GetEditIntValue(edt_crack_hv2);
     CC := GetEditIntValue(edt_crack_chapa1);
     CP := GetEditIntValue(edt_crack_pc);
     MA := GetEditIntValue(edt_max_aceitavel);

     if (CA <> 0) and (MM <> 0) then
     begin
       if CA <> 0 then
         T1 := Trunc(CA/(MM+1));

       if CA2 <> 0 then
         T2 := Trunc(CA2/(MN+1));

       if T1 <> 0 then
         T3 := (T1)*(MM+1)+10;

       if T2 <> 0 then
         T4 := (T2)*(MN+1)+10;

       if (T1 <> 0) OR (T2 <> 0) then
         T5 := T1 * T2;
     end;

     if (MA <> 0) and (T5 <> 0) then
     begin
       T6 := MA / T5;
     end;

     edt_crack_hv1.Text := FloatToStr(T1);
     edt_crack_chapa1.Text := FloatToStr(T3);
     edt_crack_pc.Text := FloatToStr(T5);

     if MA <> 0 then
       edt_crack_qc.Text := FloatToStr(T6);
   end
   else
   begin
     edt_crack_hv1.Text := FloatToStr(0);
     edt_crack_chapa1.Text := FloatToStr(0);
     edt_crack_pc.Text := FloatToStr(0);
     edt_crack_qc.Text := FloatToStr(0);
   end;
end;

procedure TfrmModelagem.edt_crack_area2Change(Sender: TObject);
var
CA, CA2, MM, MN, CH1, CH2, CC, CP, MA, T1, T2, T3, T4, T5, T6:DOUBLE;
begin
   T1 := 0;
   T2 := 0;
   T3 := 0;
   T4 := 0;
   T5 := 0;
   T6 := 0;

   if edt_crack_area1.Text <> '' then
   begin
     CA := GetEditIntValue(edt_crack_area1);
     CA2 := GetEditIntValue(edt_crack_area2);
     MM := GetEditIntValue(edt_medida_maior1);
     MN := GetEditIntValue(edt_medida_menor1);
     CH1 := GetEditIntValue(edt_crack_hv1);
     CH2 := GetEditIntValue(edt_crack_hv2);
     CC := GetEditIntValue(edt_crack_chapa2);
     CP := GetEditIntValue(edt_crack_pc);
     MA := GetEditIntValue(edt_max_aceitavel);

     if (CA <> 0) and (MN <> 0) then
     begin
       if CA <> 0 then
         T1 := Trunc(CA/(MM+1));

       if CA2 <> 0 then
         T2 := Trunc(CA2/(MN+1));

       if T1 <> 0 then
         T3 := (T1)*(MM+1)+10;

       if T2 <> 0 then
         T4 := (T2)*(MN+1)+10;

       if (T1 <> 0) OR (T2 <> 0) then
         T5 := T1 * T2;
     end;

     if (MA <> 0) and (T5 <> 0) then
     begin
       T6 := MA / T5;
     end;

     edt_crack_hv2.Text := FloatToStr(T2);
     edt_crack_chapa2.Text := FloatToStr(T4);
     edt_crack_pc.Text := FloatToStr(T5);

     if MA <> 0 then
       edt_crack_qc.Text := FloatToStr(T6);
   end
   else
   begin
     edt_crack_hv1.Text := FloatToStr(0);
     edt_crack_chapa1.Text := FloatToStr(0);
     edt_crack_pc.Text := FloatToStr(0);
     edt_crack_qc.Text := FloatToStr(0);
   end;
end;

procedure TfrmModelagem.edt_galvofinal_hv1Change(Sender: TObject);
var
ALT, QT, CH1, CH2, DESC, ETQPP, ETPT, TG1, TG2, MM, MN, MA:DOUBLE;
T1, T2, T3, T4, T5, T6, T7, T8:DOUBLE;
begin
   T1 := 0;
   T2 := 0;
   T3 := 0;
   T4 := 0;
   T5 := 0;
   T6 := 0;
   T7 := 0;
   T8 := 0;

   if (edt_galvofinal_hv1.Text <> '') and (edt_galvofinal_hv2.Text <> '') then
   begin
     MM := GetEditIntValue(edt_medida_maior1);
     MN := GetEditIntValue(edt_medida_menor1);
     MA := GetEditIntValue(edt_max_aceitavel);
     TG1 := GetEditIntValue(edt_galvofinal_hv1);
     TG2 := GetEditIntValue(edt_galvofinal_hv2);

     T1 :=  Trunc(((TG1) * (MM + 1)) + 5);
     T2 :=  Trunc(((TG2) * (MN + 1)) + 5);

     if (T1 > 0) and (T2 > 0) then
     begin
       edt_galvofinal_tg1.Text := FloatToStr(T1);
       edt_galvofinal_tg2.Text := FloatToStr(T2);

       T3 := (TG2 * (MN + 1) + 5);

       edt_galvofinal_altura.Text := FloatToStr(T3);

       T4 :=  RoundTo((TG1 * (MM + 1)) + 5, -2);

       edt_galvofinal_desloc.Text := FloatToStr(T4);

       T5 := TG1 * TG2;

       edt_galvofinal_etqpp.Text := FloatToStr(T5);

       T6 := Trunc((1400 / (T1 + 3) * T5));

       edt_galvofinal_etpt.Text := FloatToStr(T6);

       T7 := RoundTo(MA / T6, -2);

       edt_galvofinal_qt.Text := FloatToStr(T7);
     end;
   end
   else
   begin
     edt_galvofinal_tg1.Text := FloatToStr(0);
     edt_galvofinal_tg2.Text := FloatToStr(0);
     edt_galvofinal_altura.Text := FloatToStr(0);
     edt_galvofinal_desloc.Text := FloatToStr(0);
     edt_galvofinal_etqpp.Text := FloatToStr(0);
     edt_galvofinal_etpt.Text := FloatToStr(0);
     edt_galvofinal_qt.Text := FloatToStr(0);
   end;
end;

procedure TfrmModelagem.edt_galvofinal_hv2Change(Sender: TObject);
begin
  if Assigned(edt_galvofinal_hv1.OnChange) then
    edt_galvofinal_hv1.OnChange(edt_galvofinal_hv1);
end;

procedure TfrmModelagem.edt_galvofinal_tg2Change(Sender: TObject);
begin
  if Assigned(edt_galvofinal_tg1.OnChange) then
    edt_galvofinal_tg1.OnChange(edt_galvofinal_tg1);
end;

procedure TfrmModelagem.edt_galvo_tg1Change(Sender: TObject);
var
ALT, QT, CH1, CH2, DESC, ETQPP, ETPT, TG1, TG2, MM, MN, MA:DOUBLE;
T1, T2, T3, T4, T5, T6, T7, T8:DOUBLE;
begin
   T1 := 0;
   T2 := 0;
   T3 := 0;
   T4 := 0;
   T5 := 0;
   T6 := 0;
   T7 := 0;
   T8 := 0;

   if (edt_galvo_tg1.Text <> '') and (edt_galvo_tg2.Text <> '') then
   begin
     MM := GetEditIntValue(edt_medida_maior1);
     MN := GetEditIntValue(edt_medida_menor1);
     MA := GetEditIntValue(edt_max_aceitavel);
     TG1 := GetEditIntValue(edt_galvo_tg1);
     TG2 := GetEditIntValue(edt_galvo_tg2);

     T1 :=  Trunc((TG1 / (MM + 1)));
     T2 :=  Trunc((TG2 / (MN + 1)));

     if (T1 > 0) and (T2 > 0) then
     begin
       edt_galvo_hv1.Text := FloatToStr(T1);
       edt_galvo_hv2.Text := FloatToStr(T2);

       T3 := (T2 * (MN + 1) + 10) / 10;

       edt_galvo_altura.Text := FloatToStr(T3);

       T4 :=  RoundTo((T1 * (MM + 1)) + 3, -2);


       edt_galvo_desloc.Text := FloatToStr(T4);

       T5 := T1 * T2;

       edt_galvo_etqpp.Text := FloatToStr(T5);

       T6 := Trunc((1400 / T4) * T5);

       edt_galvo_etpt.Text := FloatToStr(T6);

       T7 := RoundTo(MA / T6, -2);

       edt_galvo_qt.Text := FloatToStr(T7);
     end;
   end
   else
   begin
     edt_galvo_hv1.Text := FloatToStr(0);
     edt_galvo_hv2.Text := FloatToStr(0);
     edt_galvo_altura.Text := FloatToStr(0);
     edt_galvo_desloc.Text := FloatToStr(0);
     edt_galvo_etqpp.Text := FloatToStr(0);
     edt_galvo_etpt.Text := FloatToStr(0);
     edt_galvo_qt.Text := FloatToStr(0);
   end;
end;

procedure TfrmModelagem.edt_galvo_tg2Change(Sender: TObject);
begin
  if Assigned(edt_galvo_tg1.OnChange) then
    edt_galvo_tg1.OnChange(edt_galvo_tg1);
end;

function TfrmModelagem.GetEditIntValue(Edit: TEdit): Double;
begin
  if not TryStrToFloat(Trim(Edit.Text), Result) then
    Result := 0;
end;

procedure TfrmModelagem.edt_max_aceitavelChange(Sender: TObject);
begin
  if Assigned(edt_balancin_cod_faca1.OnChange) then
    edt_balancin_cod_faca1.OnChange(edt_balancin_cod_faca1);

  if Assigned(edt_balancin_cod_faca2.OnChange) then
    edt_balancin_cod_faca2.OnChange(edt_balancin_cod_faca2);

  if Assigned(edt_crack_area1.OnChange) then
    edt_crack_area1.OnChange(edt_crack_area1);

  if Assigned(edt_crack_area2.OnChange) then
    edt_crack_area2.OnChange(edt_crack_area2);

   if Assigned(edt_laserg1_area1.OnChange) then
    edt_laserg1_area1.OnChange(edt_laserg1_area1);

  if Assigned(edt_laserm1_area1.OnChange) then
    edt_laserm1_area1.OnChange(edt_laserm1_area1);

  if Assigned(edt_laserp1_area1.OnChange) then
    edt_laserp1_area1.OnChange(edt_laserp1_area1);

  if Assigned(edt_lasermontg1_area1.OnChange) then
    edt_lasermontg1_area1.OnChange(edt_lasermontg1_area1);

  if Assigned(edt_lasermontg2_area1.OnChange) then
    edt_lasermontg2_area1.OnChange(edt_lasermontg2_area1);

  if Assigned(edt_galvo_tg1.OnChange) then
    edt_galvo_tg1.OnChange(edt_galvo_tg1);

  if Assigned(edt_crackchapado_area1.OnChange) then
    edt_crackchapado_area1.OnChange(edt_crackchapado_area1);

  if Assigned(edt_crackchapadosemfaca_area1.OnChange) then
    edt_crackchapadosemfaca_area1.OnChange(edt_crackchapadosemfaca_area1);

  if Assigned(edt_laserg2_area1.OnChange) then
    edt_laserg2_area1.OnChange(edt_laserg2_area1);

  if Assigned(edt_laserm2_area1.OnChange) then
    edt_laserm2_area1.OnChange(edt_laserm2_area1);

  if Assigned(edt_laserp2_area1.OnChange) then
    edt_laserp2_area1.OnChange(edt_laserp2_area1);

  if Assigned(edt_galvofinal_hv1.OnChange) then
    edt_galvofinal_hv1.OnChange(edt_galvofinal_hv1);
end;

procedure TfrmModelagem.edt_medida_maior1Change(Sender: TObject);
begin
  edt_balancin_med_maior1.Text := edt_medida_maior1.Text;

  edt_crack_tam.Text := edt_medida_maior1.Text + 'X' + edt_medida_menor1.Text;
  edt_laserg1_tam.Text := edt_medida_maior1.Text + 'X' + edt_medida_menor1.Text;
  edt_laserm1_tam.Text := edt_medida_maior1.Text + 'X' + edt_medida_menor1.Text;
  edt_laserp1_tam.Text := edt_medida_maior1.Text + 'X' + edt_medida_menor1.Text;
  edt_galvo_tam.Text := edt_medida_maior1.Text + 'X' + edt_medida_menor1.Text;
  edt_crackchapado_tam.Text := edt_medida_maior1.Text + 'X' + edt_medida_menor1.Text;
  edt_crackchapadosemfaca_tam.Text := edt_medida_maior1.Text + 'X' + edt_medida_menor1.Text;
  edt_galvofinal_tam.Text := edt_medida_maior1.Text + 'X' + edt_medida_menor1.Text;

  if Assigned(edt_balancin_cod_faca1.OnChange) then
    edt_balancin_cod_faca1.OnChange(edt_balancin_cod_faca1);

  if Assigned(edt_crack_area1.OnChange) then
    edt_crack_area1.OnChange(edt_crack_area1);

  if Assigned(edt_crack_area2.OnChange) then
    edt_crack_area2.OnChange(edt_crack_area2);

  if Assigned(edt_lasermontg1_area1.OnChange) then
    edt_lasermontg1_area1.OnChange(edt_lasermontg1_area1);

  if Assigned(edt_lasermontg2_area1.OnChange) then
    edt_lasermontg2_area1.OnChange(edt_lasermontg2_area1);

  if Assigned(edt_crackchapado_area1.OnChange) then
    edt_crackchapado_area1.OnChange(edt_crackchapado_area1);

  if Assigned(edt_crackchapadosemfaca_area1.OnChange) then
    edt_crackchapadosemfaca_area1.OnChange(edt_crackchapadosemfaca_area1);

  if Assigned(edt_galvofinal_hv1.OnChange) then
    edt_galvofinal_hv1.OnChange(edt_galvofinal_hv1);
end;

procedure TfrmModelagem.edt_medida_maior2Change(Sender: TObject);
begin
  edt_balancin_med_maior2.Text := edt_medida_maior2.Text;
  edt_laserg2_tam.Text := edt_medida_maior2.Text + 'X' + edt_medida_menor2.Text;
  edt_laserm2_tam.Text := edt_medida_maior2.Text + 'X' + edt_medida_menor2.Text;
  edt_laserp2_tam.Text := edt_medida_maior2.Text + 'X' + edt_medida_menor2.Text;

  if Assigned(edt_balancin_cod_faca2.OnChange) then
    edt_balancin_cod_faca2.OnChange(edt_balancin_cod_faca2);

  if Assigned(edt_laserg2_area1.OnChange) then
    edt_laserg2_area1.OnChange(edt_laserg2_area1);

  if Assigned(edt_laserm2_area1.OnChange) then
    edt_laserm2_area1.OnChange(edt_laserm2_area1);

  if Assigned(edt_laserp2_area1.OnChange) then
    edt_laserp2_area1.OnChange(edt_laserp2_area1);
end;

procedure TfrmModelagem.edt_medida_menor1Change(Sender: TObject);
begin
  edt_balancin_med_menor1.Text := edt_medida_menor1.Text;
  edt_crack_tam.Text := edt_medida_maior1.Text + 'X' + edt_medida_menor1.Text;
  edt_laserg1_tam.Text := edt_medida_maior1.Text + 'X' + edt_medida_menor1.Text;
  edt_laserm1_tam.Text := edt_medida_maior1.Text + 'X' + edt_medida_menor1.Text;
  edt_laserp1_tam.Text := edt_medida_maior1.Text + 'X' + edt_medida_menor1.Text;
  edt_galvo_tam.Text := edt_medida_maior1.Text + 'X' + edt_medida_menor1.Text;
  edt_crackchapado_tam.Text := edt_medida_maior1.Text + 'X' + edt_medida_menor1.Text;
  edt_crackchapadosemfaca_tam.Text := edt_medida_maior1.Text + 'X' + edt_medida_menor1.Text;
  edt_galvofinal_tam.Text := edt_medida_maior1.Text + 'X' + edt_medida_menor1.Text;

    if Assigned(edt_balancin_cod_faca1.OnChange) then
      edt_balancin_cod_faca1.OnChange(edt_balancin_cod_faca1);

    if Assigned(edt_crack_area1.OnChange) then
      edt_crack_area1.OnChange(edt_crack_area1);

    if Assigned(edt_crack_area2.OnChange) then
      edt_crack_area2.OnChange(edt_crack_area2);

    if Assigned(edt_laserg1_area1.OnChange) then
      edt_laserg1_area1.OnChange(edt_laserg1_area1);

    if Assigned(edt_laserm1_area1.OnChange) then
      edt_laserm1_area1.OnChange(edt_laserm1_area1);

    if Assigned(edt_laserp1_area1.OnChange) then
      edt_laserp1_area1.OnChange(edt_laserp1_area1);

    if Assigned(edt_lasermontg1_area1.OnChange) then
      edt_lasermontg1_area1.OnChange(edt_lasermontg1_area1);

    if Assigned(edt_lasermontg2_area1.OnChange) then
      edt_lasermontg2_area1.OnChange(edt_lasermontg2_area1);

    if Assigned(edt_crackchapado_area1.OnChange) then
      edt_crackchapado_area1.OnChange(edt_crackchapado_area1);

    if Assigned(edt_crackchapadosemfaca_area1.OnChange) then
      edt_crackchapadosemfaca_area1.OnChange(edt_crackchapadosemfaca_area1);

    if Assigned(edt_galvofinal_hv1.OnChange) then
      edt_galvofinal_hv1.OnChange(edt_galvofinal_hv1);
end;

procedure TfrmModelagem.edt_medida_menor2Change(Sender: TObject);
begin
  edt_balancin_med_menor2.Text := edt_medida_menor2.Text;
  edt_laserg2_tam.Text := edt_medida_maior2.Text + 'X' + edt_medida_menor2.Text;
  edt_laserm2_tam.Text := edt_medida_maior2.Text + 'X' + edt_medida_menor2.Text;
  edt_laserp2_tam.Text := edt_medida_maior2.Text + 'X' + edt_medida_menor2.Text;

  if Assigned(edt_balancin_cod_faca2.OnChange) then
    edt_balancin_cod_faca2.OnChange(edt_balancin_cod_faca2);

  if Assigned(edt_laserg2_area1.OnChange) then
    edt_laserg2_area1.OnChange(edt_laserg2_area1);

  if Assigned(edt_laserm2_area1.OnChange) then
    edt_laserm2_area1.OnChange(edt_laserm2_area1);

  if Assigned(edt_laserp2_area1.OnChange) then
    edt_laserp2_area1.OnChange(edt_laserp2_area1);
end;

procedure TfrmModelagem.FormCreate(Sender: TObject);
begin
  pgCortes.TabIndex := 0;
end;

end.
