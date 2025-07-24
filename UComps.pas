unit UComps;

interface

uses RzBtnEdt, RzEdit, RzCmboBx,
  System.Classes;

type
  TRzButtonEdit = class(RzBtnEdt.TRzButtonEdit)
  private
    function GetValue: Integer;
    procedure SetValue(const Value: Integer);
  protected
    procedure KeyPress(var Key: Char); override;
  public
    function OK: Boolean;
    function No: Boolean;

    function Tem: Boolean;
    function Branco: Boolean;

    property Value: Integer read GetValue write SetValue;

    procedure NExit; // exit Nil
    procedure SExit; // exit Self
  end;

  TRzNumericEdit = class(RzEdit.TRzNumericEdit)
  protected
    procedure Loaded; override;
    procedure KeyPress(var Key: Char); override;
    procedure Change; override;
  end;

  TRzComboBox = class(RzCmboBx.TRzComboBox)
  protected
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
  end;

implementation

uses System.SysUtils, Vcl.Graphics, Winapi.Windows, Super;

// ============================================================================

function TRzButtonEdit.No: Boolean;
begin
    Result := (Tag = 0); //tag=0 é não-válido
end;

function TRzButtonEdit.OK: Boolean;
begin
    Result := (Tag = 1); //tag=1 é Válido
end;

function TRzButtonEdit.Tem: Boolean;
begin
    Result := (Text <> '');
end;

function TRzButtonEdit.Branco: Boolean;
begin
    Result := (Text = '');
end;

procedure TRzButtonEdit.KeyPress(var Key: Char);
begin
    inherited;

    if (HelpKeyword<>'ALFA') then
      if not CharInSet(Key, ['0'..'9', #8]) then Key := #0;
end;

function TRzButtonEdit.GetValue: Integer;
begin
    Result := StrToIntDZ(Text);
end;

procedure TRzButtonEdit.SetValue(const Value: Integer);
begin
    Text := IntToStrNZ(Value);
end;

procedure TRzButtonEdit.NExit;
begin
    OnExit(nil);
end;

procedure TRzButtonEdit.SExit;
begin
    OnExit(Self);
end;

// ============================================================================

procedure TRzNumericEdit.Loaded;
begin
    inherited;

    if (AllowBlank) and (Value=0) and (HelpKeyword<>'NZ') then Text := '';
end;

procedure TRzNumericEdit.KeyPress(var Key: Char);
begin
    if not (HelpKeyword='PN') then
      if Key = '-' then Key := #0;

    inherited;
end;

procedure TRzNumericEdit.Change;
begin
    if HelpKeyword = 'COR' then
    begin
        if Value = 0 then Font.Color := clSilver else
        if Value < 0 then Font.Color := clRed else
                          Font.Color := clNavy;
    end;

    inherited;
end;

// ============================================================================

procedure TRzComboBox.KeyDown(var Key: Word; Shift: TShiftState);
begin
    inherited;

    if HelpKeyword = 'PL' then //Pode Limpar
      if Key = VK_DELETE then
      begin
          //Key := 0;
          
          ItemIndex := (-1);
      end;
end;

// ============================================================================

end.
