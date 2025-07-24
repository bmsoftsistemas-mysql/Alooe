object frmAguardaServidor: TfrmAguardaServidor
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmAguardaServidor'
  ClientHeight = 184
  ClientWidth = 470
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 108
    Top = 60
    Width = 252
    Height = 32
    Caption = '..Aguardando o Servidor..'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentFont = False
  end
  object eTempo: TLabel
    Left = 108
    Top = 96
    Width = 253
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentFont = False
  end
  object TT: TTimer
    Enabled = False
    OnTimer = TTTimer
    Left = 420
    Top = 12
  end
end
