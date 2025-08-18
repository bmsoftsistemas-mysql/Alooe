unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.OleCtrls, SHDocVw;

type
  TForm8 = class(TForm)
    WebBrowser1: TWebBrowser;
    Panel1: TPanel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
var
  LHTML: TStringList;
  LHTML_table: TStringList;
begin
  LHTML := TStringList.Create;
  LHTML_table := TStringList.Create;

  LHTML.LoadFromFile('d:\lixo\index.html');

  LHTML_table.LoadFromFile('d:\lixo\table_html.html');
  LHTML_table.Text := StringReplace(LHTML_table.Text, '[material]', 'YXYXYXYXYXYXY', [rfIgnoreCase, rfReplaceAll]);
  LHTML_table.Text := StringReplace(LHTML_table.Text, '[Altura]', '125.5mm', [rfIgnoreCase, rfReplaceAll]);

  LHTML.Text := StringReplace(LHTML.Text, '__table1__', LHTML_table.Text, [rfIgnoreCase, rfReplaceAll]);

  LHTML_table.LoadFromFile('d:\lixo\table_html.html');
  LHTML_table.Text := StringReplace(LHTML_table.Text, '[material]', 'ZZZZZZZZZZZZZZZZZZZZZ', [rfIgnoreCase, rfReplaceAll]);
  LHTML_table.Text := StringReplace(LHTML_table.Text, '[Altura]', '99.5mm', [rfIgnoreCase, rfReplaceAll]);

  LHTML.Text := StringReplace(LHTML.Text, '__table2__', LHTML_table.Text, [rfIgnoreCase, rfReplaceAll]);

  LHTML.Text := StringReplace(LHTML.Text, '__table3__', '', [rfIgnoreCase, rfReplaceAll]);
  LHTML.Text := StringReplace(LHTML.Text, '__table4__', '', [rfIgnoreCase, rfReplaceAll]);

  LHTML.SaveToFile('d:\lixo\index_temp.html');

  LHTML.Free;
  WebBrowser1.Navigate('file:///D:/Lixo/index_temp.html');
end;

end.
