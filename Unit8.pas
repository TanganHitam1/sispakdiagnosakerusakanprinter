unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm8 = class(TForm)
    Label3: TLabel;
    edtUname: TEdit;
    edtPass: TEdit;
    chckShowPassword: TCheckBox;
    Label4: TLabel;
    btnLogin: TBitBtn;
    edtName: TEdit;
    edtTelp: TEdit;
    edtEmail: TEdit;
    edtAlamat: TEdit;
    edtConfirmPass: TEdit;
    chckShowConfirmPass: TCheckBox;
    Panel1: TPanel;
    procedure btnLoginClick(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure chckShowPasswordClick(Sender: TObject);
    procedure chckShowConfirmPassClick(Sender: TObject);
  private
    { Private declarations }
    procedure clearReg;
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation
uses Unit1,Unit2;
{$R *.dfm}

procedure TForm8.chckShowConfirmPassClick(Sender: TObject);
begin
  if chckShowConfirmPass.Checked then
    edtConfirmPass.PasswordChar:=#0
  else
    edtConfirmPass.PasswordChar:='*';
end;

procedure TForm8.chckShowPasswordClick(Sender: TObject);
begin
  if chckShowPassword.Checked then
    edtPass.PasswordChar:=#0
  else
    edtPass.PasswordChar:='*';
end;

procedure TForm8.clearReg;
begin
  edtUname.Clear;
  edtname.Clear;
  edttelp.Clear;
  edtemail.Clear;
  edtAlamat.Clear;
  edtPass.Clear;
  edtConfirmPass.Clear;
end;

procedure TForm8.Label4Click(Sender: TObject);
begin
  edtPass.PasswordChar := '*';
  edtConfirmPass.PasswordChar := '*';
  clearReg;
  Hide;
  Form1.Show;
end;

procedure TForm8.btnLoginClick(Sender: TObject);
var
  uname, name, telp, email, addr, pass, cpass : String;
  reg : bool;
begin
  uname:=edtUname.Text;
  name:=edtName.Text;
  telp:=edtTelp.Text;
  email:=edtEmail.Text;
  addr:=edtAlamat.Text;
  pass:=edtPass.Text;
  cpass:=edtConfirmPass.Text;
  if(uname = '') or (name = '') or (telp = '') or (email = '')
  or (addr = '') or (pass = '') or (cpass = '')then begin
    Application.MessageBox('Semua kolom harus diisi','Peringatan',MB_OK or
     MB_ICONWARNING);
    reg:=false;
  end else
    reg:=true;
  if pass <> cpass then begin
    Application.MessageBox('Password dan Konfirmasi Password harus sama',
    'Peringatan',MB_OK or MB_ICONWARNING);
    reg:=false;
  end;
  if reg then begin
    with DM2.User_zq do begin
      Active:=False;
      SQL.Text := 'select * from tabeluser where username = '+QuotedStr(uname);
      Active:=True;
      if RecordCount > 0  then begin
        Application.MessageBox('Username telah terdaftar!! Gunakan username'+
        ' lain atau silahkan login','Peringatan',MB_OK or MB_ICONWARNING);
      end else begin
        SQL.Text := 'insert into tabeluser (Username, Nama, No_Telp, Email, '+
        'Alamat, Password) values ('+QuotedStr(uname)+', '+QuotedStr(name)+', '
        +QuotedStr(telp)+', '+QuotedStr(email)+', '+QuotedStr(addr)+', '+
        QuotedStr(pass)+', ';
        ExecSQL;
        Close;
        clearReg;
        Hide;
        Form1.Show;
      end;
    end;
  end;

end;

end.
