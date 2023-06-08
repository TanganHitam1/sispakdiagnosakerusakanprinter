unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    btnKembali: TBitBtn;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnKembaliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
uses
  Unit2,Unit3,Unit5,Unit6;

{$R *.dfm}

procedure TForm4.btnKembaliClick(Sender: TObject);
begin
  Hide;
  Form3.Show;
  Form6.Memo1.Lines.Clear;
end;

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

  with Form5.Memo1.Lines do begin
    Clear;
    if tag = 0 then begin
      jenisPrinter:='Ink Jet';
      s:=s+(tag+1).ToString;
      ink:='YP0001 - Printer Ink Jet';
      laser:='NP0002 - Bukan Printer Laser Jet';
      dot:='NP0003 - Bukan Printer Dot Matrix';
      DM2.Pertanyaan_zq.Next;
      DM2.Pertanyaan_zq.Next;
      DM2.Pertanyaan_zq.Next;
    end
    else if tag = 1 then begin
      DM2.Pertanyaan_zq.Next;
      jenisPrinter:='Laser Jet';
      s:=s+(tag+2).ToString;
      ink:='NP0001 - Buan Printer Ink Jet';
      laser:='YP0002 - Printer Laser Jet';
      dot:='NP0003 - Bukan Printer Dot Matrix';
      DM2.Pertanyaan_zq.Next;
      DM2.Pertanyaan_zq.Next;
    end
    else begin
      DM2.Pertanyaan_zq.Next;
      DM2.Pertanyaan_zq.Next;
      jenisPrinter:='Dot Matrix';
      s:=s+(tag+3).ToString;
      ink:='NP0001 - Bukan Printer Ink Jet';
      laser:='NP0002 - Bukan Printer Laser Jet';
      dot:='YP0003 - Printer Dot Matrix';
      DM2.Pertanyaan_zq.Next;
    end;
    Add(ink);
    Add(laser);
    Add(dot);
  end;

//  s := 'SELECT * FROM tabelrule ';
  s := 'SELECT a.KodeRule, a.kodepertanyaan1, a.kodekerusakan, '+
  'b.NamaKerusakan,b.Penyebab, b.Solusi, b.Gambar '+
  'FROM tabelrule a, tabelkerusakan b ';
  s2 := '';
  for i := 0 to Form6.Memo1.Lines.Count-1 do
  begin
    s3 := QuotedStr('%' + Trim(Copy(Form6.Memo1.Lines[i],2,5)) + '%');
    if Pos('Y',Form6.Memo1.Lines[i]) > 0 then
    begin
      s2 := s2 + ' AND a.kodepertanyaan1 LIKE ' + s3;
    end
    else
    s2 := s2 + ' AND a.kodepertanyaan1 not LIKE ' + s3;
  end;

  if Length(s2) > 0 then
  begin
    Delete(s2,1,4);
    s2 := s + ' WHERE ' + s2;
  end
  else
    s2 := s;
  s2:= s2 + 'AND a.kodekerusakan = b.KodeKerusakan ORDER BY a.KodeRule';

  DM2.pRule_zq.Active := False;
  DM2.pRule_zq.SQL.Text := s2;
  DM2.pRule_zq.Active := True;

  Form5.Label6.Caption:=jenisPrinter;
  Hide;
  Form5.Show;
end;

end.
