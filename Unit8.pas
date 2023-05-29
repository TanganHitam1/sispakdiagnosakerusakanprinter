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
    CheckBox1: TCheckBox;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

end.
-