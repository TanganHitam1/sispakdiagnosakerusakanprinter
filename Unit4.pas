unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    btnKembali: TBitBtn;
    BitBtn1: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
uses 
  Unit2,Unit5,Unit6;

{$R *.dfm}

procedure TForm4.SpeedButton1Click(Sender: TObject);
var
  s, s2, s3,jenisPrinter : string;
  tag, i : Integer;
begin
  tag:=(Sender AS TSpeedButton).Tag;
  s:='P000';
  with Form6.Memo1.Lines do begin
    Clear;  
    if tag = 0 then begin
      jenisPrinter:='Ink Jet';
      s:=s+(tag+1).ToString
    end
    else if tag = 1 then begin
      jenisPrinter:='Laser Jet';
      s:=s+(tag+2).ToString
    end
    else begin
      jenisPrinter:='Dot Matrix';
      s:=s+(tag+3).ToString;
    end;
    Add(s);
  end;
  s2:=QuotedStr('%'+s+'%');
  s3:='SELECT * FROM tabelrule WHERE kodepertanyaan1 LIKE ' + s2;
  with DM2.pRule_zq do begin
    Active:=False;
    SQL.Text:=s3;
    Active:=True;
  end;
  Form5.Label6.Caption:=jenisPrinter;
  Hide;
  Form5.Show;
end;

end.
