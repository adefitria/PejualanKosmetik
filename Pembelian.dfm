object FormPembelian: TFormPembelian
  Left = 340
  Top = 148
  Width = 776
  Height = 540
  Caption = 'FormPembelian'
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
    Top = -16
    Width = 761
    Height = 489
    Brush.Color = clMenuHighlight
    OnContextPopup = shp1ContextPopup
  end
  object lbl1: TLabel
    Left = 304
    Top = 120
    Width = 56
    Height = 16
    Caption = 'ID USER :'
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
    Top = 80
    Width = 63
    Height = 16
    Caption = 'TANGGAL :'
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
    Top = 120
    Width = 87
    Height = 16
    Caption = 'PEMBAYARAN :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbl5: TLabel
    Left = 299
    Top = 43
    Width = 53
    Height = 16
    Caption = ' HARGA :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbl7: TLabel
    Left = 300
    Top = 83
    Width = 85
    Height = 16
    Caption = 'Jumlah Bayar :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 24
    Top = 40
    Width = 93
    Height = 16
    Caption = 'NO TRANSAKSI:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Edtqty: TEdit
    Left = 130
    Top = 118
    Width = 151
    Height = 21
    TabOrder = 0
  end
  object Edtharga: TEdit
    Left = 407
    Top = 83
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object Edtjumlah: TEdit
    Left = 408
    Top = 43
    Width = 161
    Height = 21
    TabOrder = 2
  end
  object bbaru: TButton
    Left = 24
    Top = 152
    Width = 89
    Height = 33
    Caption = 'BARU'
    TabOrder = 3
    OnClick = bbaruClick
  end
  object bsimpan: TButton
    Left = 120
    Top = 152
    Width = 89
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 4
    OnClick = bsimpanClick
  end
  object bedit: TButton
    Left = 216
    Top = 152
    Width = 89
    Height = 33
    Caption = 'EDIT'
    TabOrder = 5
    OnClick = beditClick
  end
  object bprint: TButton
    Left = 504
    Top = 152
    Width = 89
    Height = 33
    Caption = 'PRINT'
    TabOrder = 6
    OnClick = bprintClick
  end
  object bbatal: TButton
    Left = 408
    Top = 152
    Width = 89
    Height = 33
    Caption = 'BATAL'
    TabOrder = 7
    OnClick = bbatalClick
  end
  object bhapus: TButton
    Left = 312
    Top = 152
    Width = 89
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = bhapusClick
  end
  object dtp1: TDateTimePicker
    Left = 130
    Top = 82
    Width = 151
    Height = 21
    Date = 45262.387296770830000000
    Time = 45262.387296770830000000
    TabOrder = 9
  end
  object cbb1: TComboBox
    Left = 411
    Top = 115
    Width = 158
    Height = 21
    ItemHeight = 13
    TabOrder = 10
  end
  object Edit2: TEdit
    Left = 128
    Top = 43
    Width = 153
    Height = 21
    TabOrder = 11
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 200
    Width = 569
    Height = 225
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
    Left = 576
    Top = 40
  end
  object zqry1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select*from tabel_pembelian')
    Params = <>
    Left = 576
    Top = 96
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 720
    Top = 40
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
    ReportOptions.LastChange = 45262.505397708300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 648
    Top = 40
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
          Left = 362.834880000000000000
          Top = 7.559060000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN DATA PEMBELIAN')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 86.929190000000000000
        Width = 1046.929810000000000000
        object Memo3: TfrxMemoView
          Left = 56.692950000000000000
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
            'ID Pembelian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 279.685220000000000000
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
            'Tgl')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 143.622140000000000000
          Top = 3.779530000000000000
          Width = 136.063080000000000000
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
        object Memo7: TfrxMemoView
          Left = 408.189240000000000000
          Top = 3.779530000000000000
          Width = 136.063080000000000000
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
            'Harga')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779530000000000000
          Width = 166.299320000000000000
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
            'Jumlah Bayar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 710.551640000000000000
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
            'ID User')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 797.480830000000000000
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
            'Pembayaran')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 37.795300000000000000
        Top = 241.889920000000000000
        Width = 1046.929810000000000000
        object Memo18: TfrxMemoView
          Left = 597.165740000000000000
          Top = 7.559060000000000000
          Width = 192.756030000000000000
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
            'TOTAL DATA PEMBELIAN :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 789.921770000000000000
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
        Height = 37.795300000000000000
        Top = 181.417440000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1id_pembelian: TfrxMemoView
          Left = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_pembelian'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."id_pembelian"]')
        end
        object frxDBDataset1no_transaksi: TfrxMemoView
          Left = 139.842610000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_transaksi'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."no_transaksi"]')
        end
        object frxDBDataset1tgl: TfrxMemoView
          Left = 283.464750000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."tgl"]')
        end
        object frxDBDataset1harga: TfrxMemoView
          Left = 408.189240000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'harga'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."harga"]')
        end
        object frxDBDataset1jumlah_bayar: TfrxMemoView
          Left = 544.252320000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jumlah_bayar'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."jumlah_bayar"]')
        end
        object frxDBDataset1id_user: TfrxMemoView
          Left = 714.331170000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_user'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."id_user"]')
        end
        object frxDBDataset1pembayaran: TfrxMemoView
          Left = 797.480830000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pembayaran'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."pembayaran"]')
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 688
    Top = 40
  end
  object zqry2: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select*from tabel_user')
    Params = <>
    Left = 613
    Top = 40
  end
end
