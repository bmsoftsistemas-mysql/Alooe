unit ufrmAguardaServidor;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  RzButton,
  Vcl.ExtCtrls;

type
  TfrmAguardaServidor = class(TForm)
    Label1: TLabel;
    TT: TTimer;
    eTempo: TLabel;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TTTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAguardaServidor: TfrmAguardaServidor;

implementation

{$R *.dfm}

procedure TfrmAguardaServidor.FormShow(Sender: TObject);
begin
  eTempo.Caption := '';
  TT.Tag := 0;
  TT.Enabled := true;
  application.ProcessMessages;
end;

procedure TfrmAguardaServidor.RzBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmAguardaServidor.TTTimer(Sender: TObject);
begin
  TT.Tag := TT.Tag + 1;
  eTempo.Caption := '..' + IntToStr(TT.Tag) + '/' + IntToStr(frmAguardaServidor.Tag) + '..';
  if frmAguardaServidor.Tag = TT.Tag then
  begin
    TT.Enabled := false;
    PostMessage(Handle, WM_CLOSE, 0, 0);
  end;
end;

end.

