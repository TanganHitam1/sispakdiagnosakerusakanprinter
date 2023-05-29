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
  s, s2, s3,jenisPrinter,ink,laser,dot : string;
  tag, i : Integer;
begin
  DM2.Pertanyaan_zq.Open;
  DM2.Pertanyaan_zq.First;
  tag:=(Sender AS TSpeedButton).Tag;
  s:='P000';
  with Form6.Memo1.Lines do begin
    Clear;
    if tag = 0 then begin
      jenisPrinter:='Ink Jet';
      s:=s+(tag+1).ToString;
      ink:='YP0001';
      laser:='NP0002';
      dot:='NP0003';
      DM2.Pertanyaan_zq.Next;
      DM2.Pertanyaan_zq.Next;
      DM2.Pertanyaan_zq.Next;
    end
    else if tag = 1 then begin
      DM2.Pertanyaan_zq.Next;
      jenisPrinter:='Laser Jet';
      s:=s+(tag+2).ToString;
      ink:='NP0001';
      laser:='YP0002';
      dot:='NP0003';
      DM2.Pertanyaan_zq.Next;
      DM2.Pertanyaan_zq.Next;
    end
    else begin
      DM2.Pertanyaan_zq.Next;
      DM2.Pertanyaan_zq.Next;
      jenisPrinter:='Dot Matrix';
      s:=s+(tag+3).ToString;
      ink:='NP0001';
      laser:='NP0002';
      dot:='YP0003';
      DM2.Pertanyaan_zq.Next;
    end;
    Add(ink);
    Add(laser);
    Add(dot);
  end;

  s := 'SELECT * FROM tabelrule ';
  s2 := '';
  for i := 0 to Form6.Memo1.Lines.Count-1 do
  begin
    s3 := QuotedStr('%' + Trim(Copy(Form6.Memo1.Lines[i],2,5)) + '%');
    if Pos('Y',Form6.Memo1.Lines[i]) > 0 then
    begin
      s2 := s2 + ' AND kodepertanyaan1 LIKE ' + s3;
    end
    else
    s2 := s2 + ' AND kodepertanyaan1 not LIKE ' + s3;
  end;

  if Length(s2) > 0 then
  begin
    Delete(s2,1,4);
    s2 := s + ' WHERE ' + s2;
  end
  else
    s2 := s;

  DM2.pRule_zq.Active := False;
  DM2.pRule_zq.SQL.Text := s2;
  DM2.pRule_zq.Active := True;

  Form5.Label6.Caption:=jenisPrinter;
  Hide;
  Form5.Show;
end;

end.
