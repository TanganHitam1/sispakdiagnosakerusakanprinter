object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Konsultasi'
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
  object Label1: TLabel
    Left = 243
    Top = 8
    Width = 138
    Height = 13
    Caption = 'KONSULTASI PADA PRINTER'
  end
  object Label6: TLabel
    Left = 296
    Top = 27
    Width = 31
    Height = 13
    Caption = 'Label6'
  end
  object Panel1: TPanel
    Left = 24
    Top = 79
    Width = 585
    Height = 130
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 66
      Height = 13
      Caption = 'PERTANYAAN'
    end
    object btnYa: TBitBtn
      Left = 16
      Top = 93
      Width = 75
      Height = 25
      Caption = '&Ya'
      TabOrder = 0
      OnClick = btnYaClick
    end
    object btnTidak: TBitBtn
      Tag = 1
      Left = 104
      Top = 93
      Width = 75
      Height = 25
      Caption = '&Tidak'
      TabOrder = 1
    end
  end
  object btnBack: TBitBtn
    Left = 120
    Top = 416
    Width = 75
    Height = 25
    Caption = '&Kembali'
    TabOrder = 1
    OnClick = btnBackClick
  end
  object btnClose: TBitBtn
    Left = 24
    Top = 416
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 24
    Top = 215
    Width = 585
    Height = 162
    TabOrder = 3
    object Label3: TLabel
      Left = 16
      Top = 16
      Width = 138
      Height = 13
      Caption = 'Kerusakan yang terdeteksi : '
    end
    object DBText2: TDBText
      Left = 161
      Top = 35
      Width = 416
      Height = 22
      DataField = 'rfPenyebab'
      DataSource = DM2.pRule_ds
      WordWrap = True
    end
    object Label4: TLabel
      Left = 16
      Top = 35
      Width = 139
      Height = 13
      Caption = 'Penyebab                            : '
    end
    object DBText3: TDBText
      Left = 161
      Top = 73
      Width = 409
      Height = 80
      DataField = 'rfSolusi'
      DataSource = DM2.pRule_ds
      WordWrap = True
    end
    object Label5: TLabel
      Left = 16
      Top = 70
      Width = 139
      Height = 13
      Caption = 'Solusi                                   : '
    end
    object DBText1: TDBText
      Left = 161
      Top = 12
      Width = 409
      Height = 17
      DataField = 'rfNamaKerusakan'
      DataSource = DM2.pRule_ds
    end
  end
end
