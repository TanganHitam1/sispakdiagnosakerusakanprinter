object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Dashboard'
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
  DesignSize = (
    635
    475)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 248
    Top = 32
    Width = 89
    Height = 13
    Caption = 'SELAMAT DATANG'
  end
  object Label2: TLabel
    Left = 252
    Top = 123
    Width = 85
    Height = 13
    Alignment = taCenter
    Caption = 'History Konsultasi'
  end
  object Label3: TLabel
    Left = 264
    Top = 51
    Width = 68
    Height = 13
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = '{NAMA USER}'
  end
  object SMDBGrid1: TSMDBGrid
    Left = 16
    Top = 142
    Width = 561
    Height = 163
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
  object btnKonsultasi: TBitBtn
    Left = 257
    Top = 328
    Width = 75
    Height = 25
    Caption = '&Konsultasi'
    TabOrder = 1
    OnClick = btnKonsultasiClick
  end
  object btnQuit: TBitBtn
    Left = 16
    Top = 424
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 2
  end
  object btnLogOut: TBitBtn
    Left = 97
    Top = 424
    Width = 75
    Height = 25
    Caption = '&Logout'
    TabOrder = 3
    OnClick = btnLogOutClick
  end
end
