object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'ADMIN'
  ClientHeight = 475
  ClientWidth = 635
  Color = clBtnFace
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 641
    Height = 473
    ActivePage = TabSheet2
    TabOrder = 0
    OnChanging = PageControl1Changing
    object TabSheet1: TTabSheet
      Caption = 'Tabel Gejala'
      object Label1: TLabel
        Left = 3
        Top = 247
        Width = 57
        Height = 13
        Caption = 'Kode Gejala'
      end
      object Label2: TLabel
        Left = 3
        Top = 282
        Width = 60
        Height = 13
        Caption = 'Nama Gejala'
      end
      object DBGridGejala: TSMDBGrid
        Left = 0
        Top = 40
        Width = 630
        Height = 201
        DataSource = DM2.Gejala_ds
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'Tahoma'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsNormal
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
      end
      object SMDBNavigator1: TSMDBNavigator
        Left = 192
        Top = 9
        Width = 240
        Height = 25
        DataSource = DM2.Gejala_ds
        Layout = blGlyphLeft
        ShowCaption = False
        ShowGlyph = True
        TabOrder = 1
      end
      object DBEKodeGejala: TDBEditTyped
        Left = 130
        Top = 244
        Width = 112
        Height = 21
        Alignment = taLeftJustify
        TypeValue = teString
        EnabledLimit = False
        EnabledTypedLimit = True
        Flat = False
        ButtonStyle = bsNone
        ButtonWidth = 0
        NumGlyphs = 1
        ButtonKey = 32808
        ButtonFlat = False
        TabOrder = 2
        Text = 'DBEKodeGejala'
        DataField = 'KodeGejala'
        DataSource = DM2.Gejala_ds
      end
      object DBENamaGejala: TDBEditTyped
        Left = 130
        Top = 279
        Width = 112
        Height = 21
        Alignment = taLeftJustify
        TypeValue = teString
        EnabledLimit = False
        EnabledTypedLimit = True
        Flat = False
        ButtonStyle = bsNone
        ButtonWidth = 0
        NumGlyphs = 1
        ButtonKey = 32808
        ButtonFlat = False
        TabOrder = 3
        Text = 'DBENamaGejala'
        DataField = 'NamaGejala'
        DataSource = DM2.Gejala_ds
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tabel Kerusakan'
      ImageIndex = 1
      object Label8: TLabel
        Left = 3
        Top = 247
        Width = 77
        Height = 13
        Caption = 'Kode Kerusakan'
      end
      object Label9: TLabel
        Left = 3
        Top = 282
        Width = 80
        Height = 13
        Caption = 'Nama Kerusakan'
      end
      object Label10: TLabel
        Left = 3
        Top = 322
        Width = 48
        Height = 13
        Caption = 'Penyebab'
      end
      object Label11: TLabel
        Left = 3
        Top = 362
        Width = 27
        Height = 13
        Caption = 'Solusi'
      end
      object Label12: TLabel
        Left = 443
        Top = 266
        Width = 47
        Height = 13
        Caption = 'Gambar : '
      end
      object DBEKodeKerusakan: TDBEditTyped
        Left = 130
        Top = 244
        Width = 104
        Height = 21
        Alignment = taLeftJustify
        TypeValue = teString
        EnabledLimit = False
        EnabledTypedLimit = True
        Flat = False
        ButtonStyle = bsNone
        ButtonWidth = 0
        NumGlyphs = 1
        ButtonKey = 32808
        ButtonFlat = False
        TabOrder = 0
        Text = 'DBEKodeKerusakan'
        DataField = 'KodeKerusakan'
        DataSource = DM2.Kerusakan_ds
      end
      object DBENamaKerusakan: TDBEditTyped
        Left = 130
        Top = 279
        Width = 104
        Height = 21
        Alignment = taLeftJustify
        TypeValue = teString
        EnabledLimit = False
        EnabledTypedLimit = True
        Flat = False
        ButtonStyle = bsNone
        ButtonWidth = 0
        NumGlyphs = 1
        ButtonKey = 32808
        ButtonFlat = False
        TabOrder = 1
        Text = 'DBENamaKerusakan'
        DataField = 'NamaKerusakan'
        DataSource = DM2.Kerusakan_ds
      end
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 40
        Width = 630
        Height = 201
        DataSource = DM2.Kerusakan_ds
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'Tahoma'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsNormal
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
      end
      object SMDBNavigator4: TSMDBNavigator
        Left = 192
        Top = 9
        Width = 240
        Height = 25
        DataSource = DM2.Kerusakan_ds
        Layout = blGlyphLeft
        ShowCaption = False
        ShowGlyph = True
        TabOrder = 3
        BeforeAction = SMDBNavigator4BeforeAction
      end
      object DBEPenyebab: TDBEditTyped
        Left = 130
        Top = 319
        Width = 487
        Height = 21
        Alignment = taLeftJustify
        TypeValue = teString
        EnabledLimit = False
        EnabledTypedLimit = True
        Flat = False
        ButtonStyle = bsNone
        ButtonWidth = 0
        NumGlyphs = 1
        ButtonKey = 32808
        ButtonFlat = False
        TabOrder = 4
        Text = 'DBEPenyebab'
        DataField = 'Penyebab'
        DataSource = DM2.Kerusakan_ds
      end
      object DBMSolusi: TDBMemo
        Left = 130
        Top = 359
        Width = 487
        Height = 43
        DataField = 'Solusi'
        DataSource = DM2.Kerusakan_ds
        TabOrder = 5
      end
      object DBImage1: TDBImage
        Left = 496
        Top = 248
        Width = 65
        Height = 65
        DataField = 'Gambar'
        DataSource = DM2.Kerusakan_ds
        Stretch = True
        TabOrder = 6
        OnClick = DBImage1Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Tabel Pertanyaan'
      ImageIndex = 2
      object Label3: TLabel
        Left = 3
        Top = 247
        Width = 83
        Height = 13
        Caption = 'Kode Pertanyaan'
      end
      object Label4: TLabel
        Left = 3
        Top = 282
        Width = 56
        Height = 13
        Caption = 'Pertanyaan'
      end
      object DBEKodePertanyaan: TDBEditTyped
        Left = 130
        Top = 244
        Width = 104
        Height = 21
        Alignment = taLeftJustify
        TypeValue = teString
        EnabledLimit = False
        EnabledTypedLimit = True
        Flat = False
        ButtonStyle = bsNone
        ButtonWidth = 0
        NumGlyphs = 1
        ButtonKey = 32808
        ButtonFlat = False
        TabOrder = 0
        Text = 'DBEKodePertanyaan'
        DataField = 'KodePertanyaan'
        DataSource = DM2.Pertanyaan_ds
      end
      object DBEPertanyaan: TDBEditTyped
        Left = 130
        Top = 279
        Width = 104
        Height = 21
        Alignment = taLeftJustify
        TypeValue = teString
        EnabledLimit = False
        EnabledTypedLimit = True
        Flat = False
        ButtonStyle = bsNone
        ButtonWidth = 0
        NumGlyphs = 1
        ButtonKey = 32808
        ButtonFlat = False
        TabOrder = 1
        Text = 'DBEPertanyaan'
        DataField = 'Pertanyaan'
        DataSource = DM2.Pertanyaan_ds
      end
      object DBGridPertanyaan: TSMDBGrid
        Left = 0
        Top = 40
        Width = 630
        Height = 201
        DataSource = DM2.Pertanyaan_ds
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'Tahoma'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsNormal
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
      end
      object SMDBNavigator2: TSMDBNavigator
        Left = 192
        Top = 9
        Width = 240
        Height = 25
        DataSource = DM2.Pertanyaan_ds
        Layout = blGlyphLeft
        ShowCaption = False
        ShowGlyph = True
        TabOrder = 3
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Tabel Rule'
      ImageIndex = 3
      object Label5: TLabel
        Left = 3
        Top = 247
        Width = 48
        Height = 13
        Caption = 'Kode Rule'
      end
      object Label6: TLabel
        Left = 3
        Top = 282
        Width = 102
        Height = 13
        Caption = 'List Kode Pertanyaan'
      end
      object Label7: TLabel
        Left = 3
        Top = 317
        Width = 77
        Height = 13
        Caption = 'Kode Kerusakan'
      end
      object DBEKodeRule: TDBEditTyped
        Left = 130
        Top = 244
        Width = 113
        Height = 21
        Alignment = taLeftJustify
        TypeValue = teString
        EnabledLimit = False
        EnabledTypedLimit = True
        Flat = False
        ButtonStyle = bsNone
        ButtonWidth = 0
        NumGlyphs = 1
        ButtonKey = 32808
        ButtonFlat = False
        TabOrder = 0
        Text = 'DBEKodeRule'
        DataField = 'KodeRule'
        DataSource = DM2.Rule_ds
      end
      object DBEListKodePertanyaan: TDBEditTyped
        Left = 130
        Top = 279
        Width = 479
        Height = 21
        Alignment = taLeftJustify
        TypeValue = teString
        EnabledLimit = False
        EnabledTypedLimit = True
        Flat = False
        ButtonStyle = bsNone
        ButtonWidth = 0
        NumGlyphs = 1
        ButtonKey = 32808
        ButtonFlat = False
        TabOrder = 1
        Text = 'DBEListKodePertanyaan'
        DataField = 'kodepertanyaan1'
        DataSource = DM2.Rule_ds
      end
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 40
        Width = 630
        Height = 201
        DataSource = DM2.Rule_ds
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'Tahoma'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsNormal
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
      end
      object SMDBNavigator3: TSMDBNavigator
        Left = 192
        Top = 9
        Width = 240
        Height = 25
        DataSource = DM2.Rule_ds
        Layout = blGlyphLeft
        ShowCaption = False
        ShowGlyph = True
        TabOrder = 3
      end
      object DBErfKodeKerusakan: TDBEditTyped
        Left = 130
        Top = 314
        Width = 113
        Height = 21
        Alignment = taLeftJustify
        TypeValue = teString
        EnabledLimit = False
        EnabledTypedLimit = True
        Flat = False
        ButtonStyle = bsNone
        ButtonWidth = 0
        NumGlyphs = 1
        ButtonKey = 32808
        ButtonFlat = False
        TabOrder = 4
        Text = 'DBErfKodeKerusakan'
        DataField = 'kodekerusakan'
        DataSource = DM2.Rule_ds
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Tabel User'
      ImageIndex = 4
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 40
        Width = 630
        Height = 201
        DataSource = DM2.User_ds
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'Tahoma'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsNormal
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Tabel Riwayat Konsultasi'
      ImageIndex = 5
      object SMDBGrid4: TSMDBGrid
        Left = 0
        Top = 40
        Width = 630
        Height = 201
        DataSource = DM2.History_ds
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'Tahoma'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsNormal
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 432
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 432
    Width = 75
    Height = 25
    Caption = '&Logout'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
