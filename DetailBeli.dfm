object FormDetailBeli: TFormDetailBeli
  Left = 253
  Top = 159
  Width = 798
  Height = 481
  Caption = 'FormDetailBeli'
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
    Top = 1
    Width = 777
    Height = 440
    Brush.Color = clActiveCaption
  end
  object lbl2: TLabel
    Left = 18
    Top = 62
    Width = 74
    Height = 16
    Caption = 'Id_Supplier :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    OnClick = lbl2Click
  end
  object lbl4: TLabel
    Left = 18
    Top = 94
    Width = 67
    Height = 16
    Caption = 'Id_Barang :'
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
    Top = 159
    Width = 67
    Height = 16
    Caption = 'Harga Beli :'
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
    Top = 191
    Width = 38
    Height = 16
    Caption = 'Total :'
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
    Top = 128
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
  object lbl9: TLabel
    Left = 18
    Top = 30
    Width = 76
    Height = 16
    Caption = 'Id_Penjulan :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Edtharga: TEdit
    Left = 160
    Top = 159
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object Edttotal: TEdit
    Left = 160
    Top = 191
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object bbaru: TButton
    Left = 20
    Top = 237
    Width = 89
    Height = 33
    Caption = 'BARU'
    TabOrder = 2
    OnClick = bbaruClick
  end
  object bsimpan: TButton
    Left = 116
    Top = 237
    Width = 89
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = bsimpanClick
  end
  object bedit: TButton
    Left = 212
    Top = 237
    Width = 89
    Height = 33
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = beditClick
  end
  object bprint: TButton
    Left = 500
    Top = 237
    Width = 89
    Height = 33
    Caption = 'PRINT'
    TabOrder = 5
    OnClick = bprintClick
  end
  object bbatal: TButton
    Left = 404
    Top = 237
    Width = 89
    Height = 33
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = bbatalClick
  end
  object bhapus: TButton
    Left = 308
    Top = 237
    Width = 89
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = bhapusClick
  end
  object Edtqty: TEdit
    Left = 160
    Top = 127
    Width = 146
    Height = 21
    TabOrder = 8
  end
  object cbb1: TComboBox
    Left = 160
    Top = 65
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 9
  end
  object cbb2: TComboBox
    Left = 161
    Top = 97
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 10
  end
  object cbb3: TComboBox
    Left = 160
    Top = 32
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 11
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 296
    Width = 561
    Height = 113
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
    Left = 320
    Top = 32
  end
  object zqry1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select*from tabel_detailpembelian')
    Params = <>
    Left = 320
    Top = 88
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 376
    Top = 32
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
    ReportOptions.LastChange = 45280.460233888900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 424
    Top = 32
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
          Left = 332.598640000000000000
          Top = 11.338590000000000000
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN DATA DETAIL PEMBELIAN KOSMETIK')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 86.929190000000000000
        Width = 1046.929810000000000000
        object Memo3: TfrxMemoView
          Left = 132.283550000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
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
          Left = 275.905690000000000000
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
            'Id_Supplier')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 385.512060000000000000
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
          Left = 514.016080000000000000
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
          Left = 612.283860000000000000
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
            'Harga Beli')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 714.331170000000000000
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
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 166.299320000000000000
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
            'Id_Pembelian')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 37.795300000000000000
        Top = 260.787570000000000000
        Width = 1046.929810000000000000
        object Memo18: TfrxMemoView
          Left = 434.645950000000000000
          Top = 7.559060000000000000
          Width = 306.141930000000000000
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
            'TOTAL DATA DETAIL PEMBELIAN KOSMETIK :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 740.787880000000000000
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
        Height = 56.692950000000000000
        Top = 181.417440000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1id_detailpembelian: TfrxMemoView
          Left = 128.504020000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_detailpembelian'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."id_detailpembelian"]')
        end
        object frxDBDataset1id_pembelian: TfrxMemoView
          Left = 166.299320000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_pembelian'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."id_pembelian"]')
        end
        object frxDBDataset1id_supplier: TfrxMemoView
          Left = 279.685220000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_supplier'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."id_supplier"]')
        end
        object frxDBDataset1id_barang: TfrxMemoView
          Left = 385.512060000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_barang'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."id_barang"]')
        end
        object frxDBDataset1qty: TfrxMemoView
          Left = 529.134200000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'qty'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."qty"]')
        end
        object frxDBDataset1harga_beli: TfrxMemoView
          Left = 616.063390000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'harga_beli'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."harga_beli"]')
        end
        object frxDBDataset1total: TfrxMemoView
          Left = 714.331170000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'total'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."total"]')
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 480
    Top = 32
  end
  object zqry2: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select*from tabel_supplier')
    Params = <>
    Left = 371
    Top = 89
  end
  object zqry3: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select*from tabel_barang')
    Params = <>
    DataSource = ds1
    Left = 425
    Top = 85
  end
end
