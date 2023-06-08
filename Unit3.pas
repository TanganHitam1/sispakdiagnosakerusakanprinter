unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, SMDBGrid;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SMDBGrid1: TSMDBGrid;
    Label3: TLabel;
    btnKonsultasi: TBitBtn;
    btnQuit: TBitBtn;
    btnLogOut: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnKonsultasiClick(Sender: TObject);
    procedure btnLogOutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
uses Unit1,Unit2,Unit4,Unit6;

{$R *.dfm}

procedure TForm3.btnKonsultasiClick(Sender: TObject);
begin
  Hide;
  Form4.Show;
  Form6.Show;
end;

procedure TForm3.btnLogOutClick(Sender: TObject);
begin
  Hide;
  Form1.Show;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  with DM2 do begin
    with History_zq do begin
      Active:=False;
      SQL.Clear;
      SQL.Add('SELECT a.NamaKerusakan, a.Penyebab, b.Waktu'+
      ' FROM tabelkerusakan a, tabelhistory b, tabeluser c'+
      ' WHERE c.IDUser = b.IDUser'+
      ' AND b.KodeKerusakan = a.KodeKerusakan'+
      ' AND b.IDUser =' +
      ' (SELECT IDUser FROM tabeluser WHERE Username = '+
      QuotedStr(Form6.Label1.Caption)+
      ')');
      Active:=True;
    end;
    SMDBGrid1.DataSource.DataSet.Refresh;
//    TabelAktif(false);
  end;


end;

end.
