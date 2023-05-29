object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Register'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 184
    Top = 24
    Width = 249
    Height = 401
    TabOrder = 0
    object Label3: TLabel
      Left = 96
      Top = 19
      Width = 49
      Height = 13
      Caption = 'REGISTER'
    end
    object Label4: TLabel
      Left = 53
      Top = 317
      Width = 148
      Height = 13
      Caption = 'Sudah punya akun? &Login disini'
      OnClick = Label4Click
    end
    object btnLogin: TBitBtn
      Left = 86
      Top = 352
      Width = 75
      Height = 25
      Caption = '&Register'
      TabOrder = 7
      OnClick = btnLoginClick
    end
    object chckShowPassword: TCheckBox
      Left = 192
      Top = 250
      Width = 41
      Height = 17
      Caption = 'Show'
      TabOrder = 8
      OnClick = chckShowPasswordClick
    end
    object chckShowConfirmPass: TCheckBox
      Left = 191
      Top = 292
      Width = 42
      Height = 17
      Caption = 'Show'
      TabOrder = 9
      OnClick = chckShowConfirmPassClick
    end
    object edtAlamat: TEdit
      Left = 64
      Top = 208
      Width = 121
      Height = 21
      TabOrder = 4
      TextHint = 'Alamat'
    end
    object edtConfirmPass: TEdit
      Left = 64
      Top = 290
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 6
      TextHint = 'Confirm Password'
    end
    object edtEmail: TEdit
      Left = 64
      Top = 168
      Width = 121
      Height = 21
      TabOrder = 3
      TextHint = 'Email'
    end
    object edtName: TEdit
      Left = 64
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 1
      TextHint = 'Nama'
    end
    object edtPass: TEdit
      Left = 65
      Top = 248
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 5
      TextHint = 'Password'
    end
    object edtTelp: TEdit
      Left = 64
      Top = 128
      Width = 121
      Height = 21
      TabOrder = 2
      TextHint = 'Nomor Telepon'
    end
    object edtUname: TEdit
      Left = 64
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 0
      TextHint = 'Username'
    end
  end
end
