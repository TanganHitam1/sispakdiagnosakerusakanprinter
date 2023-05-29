unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtUname: TEdit;
    edtPass: TEdit;
    Label3: TLabel;
    chckShowPassword: TCheckBox;
    btnLogin: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure btnLoginClick(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure chckShowPasswordClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure clearEdt;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses Unit2,Unit3,Unit6,Unit7,Unit8;

{$R *.dfm}

procedure TForm1.chckShowPasswordClick(Sender: TObject);
begin
  if chckShowPassword.Checked then
    edtPass.PasswordChar := #0
  else
    edtPass.PasswordChar := '*';
end;

procedure Tform1.clearEdt;
begin
  edtUname.Text := '';
  edtPass.Text := '';
  edtPass.PasswordChar := '*';
  chckShowPassword.Checked := false;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  clearEdt;
  DM2.TabelAktif(true);
end;

procedure TForm1.Label4Click(Sender: TObject);
begin
  clearEdt;
  Hide;
  Form8.Show;
end;

procedure TForm1.btnLoginClick(Sender: TObject);
var
  login : boolean;
begin
  login := False;
  if edtUname.Text = '' then begin
    Label5.Caption := 'Username Tidak Boleh Kosong';
    login := False;
  end else
    Label5.Caption := '';
  if edtPass.Text = '' then begin
    Label6.Caption := 'Password Tidak Boleh Kosong';
    login := False;
  end else
    Label6.Caption := '';
  if (edtUname.Text <> '') and (edtPass.Text <> '') then
    login := True;
  if (edtUname.Text = 'admin') and (edtPass.Text = 'admin') then begin
    clearEdt;
    login := False;
    Hide;
    Form7.Show;
  end;
  if login then begin
    DM2.TabelAktif(True);
    with DM2.User_zq do begin
      SQL.Clear;
      SQL.Add('select * from tabeluser where Username = ' + QuotedStr(edtUname.Text));
      Open;
      if RecordCount = 0 then begin
        Application.MessageBox('Maaf user tidak ditemukan)','Informasi',MB_OK or MB_ICONINFORMATION);
      end else begin
        if FieldByName('Password').AsString <> edtPass.Text then begin
          Application.MessageBox('Password salah','Error',MB_OK or MB_ICONERROR);
        end else begin
          Form3.Label3.Caption := FieldByName('Nama').AsString;
          Form6.Label1.Caption := FieldByName('Username').AsString;
          clearEdt;
          DM2.TabelAktif(False);
          Hide;
          Form3.Show;
        end;
      end;
    end;
  end;

end;

end.
