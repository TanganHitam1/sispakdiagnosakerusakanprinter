object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Login'
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
    Left = 160
    Top = 24
    Width = 328
    Height = 13
    Caption = 'SELAMAT DATANG DI APLIKASI SISTEM PAKAR TEKNIK KOMPUTER :'
  end
  object Label2: TLabel
    Left = 224
    Top = 43
    Width = 191
    Height = 13
    Caption = 'DIAGNOSA KERUSAKAN PADA PRINTER'
  end
  object Label3: TLabel
    Left = 288
    Top = 107
    Width = 31
    Height = 13
    Caption = 'LOGIN'
  end
  object Label4: TLabel
    Left = 248
    Top = 221
    Width = 152
    Height = 13
    Caption = 'Belum punya akun? &Daftar disini'
    OnClick = Label4Click
  end
  object Label5: TLabel
    Left = 248
    Top = 159
    Width = 3
    Height = 11
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 248
    Top = 201
    Width = 3
    Height = 11
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtUname: TEdit
    Left = 248
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Username'
  end
  object edtPass: TEdit
    Left = 248
    Top = 176
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    TextHint = 'Password'
  end
  object chckShowPassword: TCheckBox
    Left = 375
    Top = 178
    Width = 97
    Height = 17
    Caption = 'Show Password'
    TabOrder = 2
    OnClick = chckShowPasswordClick
  end
  object btnLogin: TBitBtn
    Left = 272
    Top = 240
    Width = 75
    Height = 25
    Caption = '&Login'
    TabOrder = 3
    OnClick = btnLoginClick
  end
end
