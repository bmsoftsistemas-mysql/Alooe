unit UFrmSenhaManutencao;

interface

uses Forms, Vcl.StdCtrls, Vcl.Mask, RzEdit, Vcl.Controls, RzButton,
  Vcl.Graphics, Vcl.ExtCtrls, RzBorder, System.Classes, RzLabel;

type
  TFrmSenhaManutencao = class(TForm)
    LbChave: TRzLabel;
    LbSenha: TRzLabel;
    Barra: TRzBorder;
    OK: TRzBitBtn;
    Cancelar: TRzBitBtn;
    EdChave: TRzEdit;
    EdSenha: TRzEdit;
    Pic: TImage;
    LbInfo: TRzLabel;
    RzLabel1: TRzLabel;
    procedure FormCreate(Sender: TObject);
    procedure OKClick(Sender: TObject);
  private
    Tentativas: Byte;

    function GetRandomChave: String;
    function GetSenhaMestre: String;
  end;

var
  FrmSenhaManutencao: TFrmSenhaManutencao;

function SenhaManutencao(Info: String = ''): Boolean;

implementation

{$R *.dfm}

uses DamUnit, SysUtils, System.DateUtils, System.StrUtils, Super;

function SenhaManutencao;
begin
    if GetEnvVar('MODO_MANUTENCAO')='S' then //em modo manutenção
    begin
        Result := True;
        Exit;
    end;

    FrmSenhaManutencao := TFrmSenhaManutencao.Create(Application);
    {**}if Info<>'' then Info := '* '+Info;
    FrmSenhaManutencao.LbInfo.Caption := Info;
    Result := (FrmSenhaManutencao.ShowModal = mrOK);
    FrmSenhaManutencao.Free;
end;

procedure TFrmSenhaManutencao.FormCreate(Sender: TObject);
begin
    EdChave.Text := GetRandomChave;
    //
    Tentativas := 0;
end;

function TFrmSenhaManutencao.GetRandomChave: String;
var S: TStringList;
    I, Index: Integer;
    A: String;
begin
    S := TStringList.Create;
    try
      for I := 1 to 9 do S.Add( IntToStr(I) );

      for I := 1 to 4 do
      begin
          Index := Random( S.Count );
          A := A + S[Index];
          S.Delete(Index);
      end;

    finally
      S.Free;
    end;

    Result := A;
end;

procedure TFrmSenhaManutencao.OKClick(Sender: TObject);
var Chave: String;
    I: Integer;
    S1, S2: Byte;
    AI: array[1..4] of Byte;
    Res: String;
begin
    //--
    Chave := EdChave.Text;
    for I := 1 to 4 do AI[I] := StrToInt( Chave[I] );

    S1 := AI[1]+AI[2];
    S2 := AI[3]+AI[4];

    Res := GetLast( IntToStr( AI[1] + S1 ) ) +
           GetLast( IntToStr( AI[2] + S1 ) ) +
           GetLast( IntToStr( AI[3] + S2 ) ) +
           GetLast( IntToStr( AI[4] + S2 ) );
    //--

    if (EdSenha.Text = Res) or
       (EdSenha.Text = GetSenhaMestre) then

      ModalResult := mrOK
    else
    begin
      Inc(Tentativas);

      if Tentativas>=3 then
      begin
          Erro('TENTATIVAS ESGOTADAS !');
          Close;
          Exit;
      end;

      Erro('Senha incorreta.');

      EdSenha.SetFocus;
      EdSenha.SelectAll;
    end;
end;

function TFrmSenhaManutencao.GetSenhaMestre: String;
begin
    Result := '+'+FormatFloat('00', MonthOf(Today))+'*';
end;

initialization
  Randomize;

end.
