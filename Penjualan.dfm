object FormPenjualan: TFormPenjualan
  Left = 294
  Top = 127
  Width = 789
  Height = 540
  Caption = 'FormPenjualan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object shp1: TShape
    Left = -72
    Top = -63
    Width = 833
    Height = 552
    Brush.Color = clMenuHighlight
  end
  object lbl1: TLabel
    Left = 24
    Top = 32
    Width = 115
    Height = 16
    Caption = 'Tanggal Penjualan :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbl2: TLabel
    Left = 24
    Top = 64
    Width = 78
    Height = 16
    Caption = 'Id Kustomer :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbl4: TLabel
    Left = 24
    Top = 96
    Width = 50
    Height = 16
    Caption = 'Id User :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbl5: TLabel
    Left = 343
    Top = 39
    Width = 76
    Height = 16
    Caption = 'Total Harga :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbl7: TLabel
    Left = 344
    Top = 71
    Width = 80
    Height = 16
    Caption = 'Pembayaran :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbl6: TLabel
    Left = 25
    Top = 130
    Width = 83
    Height = 16
    Caption = 'No Transaksi :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbl8: TLabel
    Left = 25
    Top = 162
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Edtjumlah: TEdit
    Left = 451
    Top = 39
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object bbaru: TButton
    Left = 25
    Top = 176
    Width = 89
    Height = 33
    Caption = 'BARU'
    TabOrder = 1
    OnClick = bbaruClick
  end
  object bsimpan: TButton
    Left = 121
    Top = 176
    Width = 89
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = bsimpanClick
  end
  object bedit: TButton
    Left = 217
    Top = 176
    Width = 89
    Height = 33
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = beditClick
  end
  object bprint: TButton
    Left = 505
    Top = 176
    Width = 89
    Height = 33
    Caption = 'PRINT'
    TabOrder = 4
    OnClick = bprintClick
  end
  object bbatal: TButton
    Left = 409
    Top = 176
    Width = 89
    Height = 33
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = bbatalClick
  end
  object bhapus: TButton
    Left = 313
    Top = 176
    Width = 89
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 6
    OnClick = bhapusClick
  end
  object Edttotal: TEdit
    Left = 174
    Top = 129
    Width = 146
    Height = 21
    TabOrder = 7
  end
  object dtp1: TDateTimePicker
    Left = 173
    Top = 35
    Width = 148
    Height = 21
    Date = 45262.446850370370000000
    Time = 45262.446850370370000000
    TabOrder = 8
  end
  object cbb1: TComboBox
    Left = 174
    Top = 67
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 9
  end
  object cbb2: TComboBox
    Left = 175
    Top = 99
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 10
  end
  object ComboBox1: TComboBox
    Left = 455
    Top = 75
    Width = 154
    Height = 21
    ItemHeight = 13
    TabOrder = 11
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 216
    Width = 585
    Height = 217
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
    Left = 344
    Top = 120
  end
  object zqry1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select*from tabel_penjualan')
    Params = <>
    Left = 384
    Top = 120
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 424
    Top = 120
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45259.958638541700000000
    ReportOptions.LastChange = 45262.503861817130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 464
    Top = 120
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 328.819110000000000000
          Top = 11.338590000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN DATA PENJUALAN')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 86.929190000000000000
        Width = 1046.929810000000000000
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 102.047310000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal Penjualan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 211.653680000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ID Kustomer ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 340.157700000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ID User ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 438.425480000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No Transaksi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 540.472790000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Total Harga')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 661.417750000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Pembayaran')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 37.795300000000000000
        Top = 253.228510000000000000
        Width = 1046.929810000000000000
        object Memo18: TfrxMemoView
          Left = 721.890230000000000000
          Top = 7.559060000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL DATA PENJUALAN :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 899.528140000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 49.133890000000000000
        Top = 181.417440000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1id_penjualan: TfrxMemoView
          Left = 37.795300000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_penjualan'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."id_penjualan"]')
        end
        object frxDBDataset1tgl_penjualan: TfrxMemoView
          Left = 102.047310000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_penjualan'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."tgl_penjualan"]')
        end
        object frxDBDataset1id_kustomer: TfrxMemoView
          Left = 211.653680000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_kustomer'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."id_kustomer"]')
        end
        object frxDBDataset1id_user: TfrxMemoView
          Left = 340.157700000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_user'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."id_user"]')
        end
        object frxDBDataset1no_transaksi: TfrxMemoView
          Left = 438.425480000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_transaksi'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."no_transaksi"]')
        end
        object frxDBDataset1pembayaran: TfrxMemoView
          Left = 661.417750000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pembayaran'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."pembayaran"]')
        end
        object frxDBDataset1total_harga: TfrxMemoView
          Left = 540.472790000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'total_harga'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."total_harga"]')
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 504
    Top = 120
  end
  object zqry2: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select*from tabel_kustomer')
    Params = <>
    Left = 539
    Top = 105
  end
  object zqry3: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select*from tabel_user')
    Params = <>
    Left = 537
    Top = 141
  end
end
