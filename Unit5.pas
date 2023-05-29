unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    btnYa: TBitBtn;
    btnTidak: TBitBtn;
    btnBack: TBitBtn;
    btnClose: TBitBtn;
    Label3: TLabel;
    Panel2: TPanel;
    DBText2: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    DBText3: TDBText;
    DBText1: TDBText;
    Label6: TLabel;
    procedure btnYaClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ShowPertanyaan;
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
uses
  Unit2,Unit4,Unit6;

{$R *.dfm}
procedure TForm5.ShowPertanyaan;
begin
  Label2.Caption := DM2.Pertanyaan_zq.FieldByName('Pertanyaan').AsString;
end;

procedure TForm5.btnBackClick(Sender: TObject);
begin
  Hide;
  Form4.Show;
end;

procedure TForm5.btnYaClick(Sender: TObject);
var
  s,s2,s3 : String;
  i, tag : Integer;
begin
  tag := (Sender AS TBitBtn).Tag;
  if tag = 0 then
    s :='Y'
  else
    s :='N';
  s:= s+DM2.Pertanyaan_zq.FieldByName('KodePertanyaan').AsString;
  Form6.Memo1.Lines.Add(s);

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

  if DM2.pRule_zq.RecordCount = 0 then
  begin
    Application.MessageBox('Maaf, tidak ada Kerusakan yang terdeteksi', 'Keterangan', MB_OK + MB_ICONWARNING);
    btnYa.Enabled := False;
    btnTidak.Enabled := False;
    Label2.Caption := 'KERUSAKAN TIDAK TERDETEKSI';
    Exit;
  end;

  DM2.Pertanyaan_zq.Next;
  ShowPertanyaan;

  if DM2.pRule_zq.RecordCount = 1 then begin
    btnYa.Enabled := False;
    btnTidak.Enabled := False;
    DBText1.Visible:=True;
    DBText2.Visible:=True;
    DBText3.Visible:=True;
  end;

end;

procedure TForm5.FormShow(Sender: TObject);
begin
  DBText1.Visible:=False;
  DBText2.Visible:=False;
  DBText3.Visible:=False;
  btnYa.Enabled := True;
  btnTidak.Enabled := True;
  ShowPertanyaan;
end;

end.
