object FormLogin: TFormLogin
  Left = 436
  Top = 201
  Width = 385
  Height = 416
  AutoSize = True
  Caption = 'FormLogin'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object shp1: TShape
    Left = 0
    Top = 0
    Width = 369
    Height = 377
    Brush.Color = clMoneyGreen
    Shape = stSquare
  end
  object lbl1: TLabel
    Left = 136
    Top = 96
    Width = 108
    Height = 23
    Caption = 'Username :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbl2: TLabel
    Left = 136
    Top = 168
    Width = 105
    Height = 23
    Caption = 'Password :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 96
    Top = 40
    Width = 190
    Height = 23
    Caption = 'LATISSE COSMETIC'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Edt1: TEdit
    Left = 96
    Top = 128
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object Edt2: TEdit
    Left = 96
    Top = 208
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object b1: TButton
    Left = 152
    Top = 256
    Width = 75
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = b1Click
  end
  object zqry1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select*from tabel_user')
    Params = <>
    Left = 208
    Top = 320
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualankosmetik'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\PenjualanKosmetik\libmysql.dll'
    Left = 128
    Top = 320
  end
end
