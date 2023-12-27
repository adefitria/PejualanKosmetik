object FormDetailJual: TFormDetailJual
  Left = 352
  Top = 146
  Width = 800
  Height = 541
  Caption = 'FormDetailJual'
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
    Left = 0
    Top = 9
    Width = 785
    Height = 480
    Brush.Color = clActiveCaption
  end
  object lbl2: TLabel
    Left = 18
    Top = 30
    Width = 80
    Height = 16
    Caption = 'Id Penjualan :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbl4: TLabel
    Left = 18
    Top = 62
    Width = 64
    Height = 16
    Caption = 'Id Barang :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbl5: TLabel
    Left = 15
    Top = 127
    Width = 69
    Height = 16
    Caption = 'Harga Jual :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbl7: TLabel
    Left = 16
    Top = 159
    Width = 64
    Height = 16
    Caption = 'Total Jual :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbl3: TLabel
    Left = 18
    Top = 192
    Width = 45
    Height = 16
    Caption = 'Status :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbl6: TLabel
    Left = 19
    Top = 96
    Width = 33
    Height = 16
    Caption = 'QTY :'
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
  object Edtharga: TEdit
    Left = 168
    Top = 127
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object Edttotal: TEdit
    Left = 168
    Top = 159
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object bbaru: TButton
    Left = 17
    Top = 256
    Width = 89
    Height = 33
    Caption = 'BARU'
    TabOrder = 2
    OnClick = bbaruClick
  end
  object bsimpan: TButton
    Left = 113
    Top = 256
    Width = 89
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = bsimpanClick
  end
  object bedit: TButton
    Left = 209
    Top = 256
    Width = 89
    Height = 33
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = beditClick
  end
  object bprint: TButton
    Left = 497
    Top = 256
    Width = 89
    Height = 33
    Caption = 'PRINT'
    TabOrder = 5
    OnClick = bprintClick
  end
  object bbatal: TButton
    Left = 401
    Top = 256
    Width = 89
    Height = 33
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = bbatalClick
  end
  object bhapus: TButton
    Left = 305
    Top = 256
    Width = 89
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = bhapusClick
  end
  object Edtqty: TEdit
    Left = 168
    Top = 95
    Width = 153
    Height = 21
    TabOrder = 8
  end
  object cbb1: TComboBox
    Left = 168
    Top = 33
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 9
  end
  object cbb2: TComboBox
    Left = 169
    Top = 65
    Width = 152
    Height = 21
    ItemHeight = 13
    TabOrder = 10
  end
  object cbb3: TComboBox
    Left = 168
    Top = 190
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 11
    Items.Strings = (
      'berhasil'
      'return')
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 304
    Width = 633
    Height = 129
    DataSource = ds1
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
    Top = 40
  end
  object zqry1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select*from tabel_detailpenjualan'
      '')
    Params = <>
    Left = 344
    Top = 96
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 344
    Top = 152
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
    ReportOptions.LastChange = 45280.439697534720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 344
    Top = 208
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
          Left = 309.921460000000000000
          Top = 11.338590000000000000
          Width = 464.882190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN DATA DETAIL PENJUALAN KOSMETIK')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 86.929190000000000000
        Width = 1046.929810000000000000
        object Memo3: TfrxMemoView
          Left = 117.165430000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
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
            'Id_Detail')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 204.094620000000000000
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
            'Id_Penjualan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 313.700990000000000000
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
            'Id_Barang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 442.205010000000000000
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
            'QTY')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 540.472790000000000000
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
            'Harga Jual')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 642.520100000000000000
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
            'Total Jual')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 763.465060000000000000
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
            'Status')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 37.795300000000000000
        Top = 253.228510000000000000
        Width = 1046.929810000000000000
        object Memo18: TfrxMemoView
          Left = 646.299630000000000000
          Top = 7.559060000000000000
          Width = 253.228510000000000000
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
            'TOTAL DATA DETAIL PENJUALAN :')
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
        object frxDBDataset1harga_jual: TfrxMemoView
          Left = 544.252320000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'harga_jual'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."harga_jual"]')
        end
        object frxDBDataset1total_jual: TfrxMemoView
          Left = 646.299630000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'total_jual'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."total_jual"]')
        end
        object frxDBDataset1status: TfrxMemoView
          Left = 767.244590000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."status"]')
        end
      end
      object frxDBDataset1id_detailpenjualan: TfrxMemoView
        Left = 113.385900000000000000
        Top = 177.637910000000000000
        Width = 90.708720000000000000
        Height = 41.574830000000000000
        ShowHint = False
        DataField = 'id_detailpenjualan'
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        Memo.UTF8 = (
          '[frxDBDataset1."id_detailpenjualan"]')
      end
      object frxDBDataset1id_penjulan: TfrxMemoView
        Left = 204.094620000000000000
        Top = 177.637910000000000000
        Width = 105.826840000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataField = 'id_penjulan'
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        Memo.UTF8 = (
          '[frxDBDataset1."id_penjulan"]')
      end
      object frxDBDataset1id_barang: TfrxMemoView
        Left = 313.700990000000000000
        Top = 177.637910000000000000
        Width = 128.504020000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        Memo.UTF8 = (
          '[frxDBDataset1."id_barang"]')
      end
      object frxDBDataset1qty: TfrxMemoView
        Left = 442.205010000000000000
        Top = 177.637910000000000000
        Width = 98.267780000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        Memo.UTF8 = (
          '[frxDBDataset1."qty"]')
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = ds1
    BCDToCurrency = False
    Left = 400
    Top = 104
  end
  object zqry2: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select*from tabel_penjualan')
    Params = <>
    Left = 395
    Top = 161
  end
  object zqry3: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select*from tabel_barang')
    Params = <>
    Left = 449
    Top = 141
  end
end
