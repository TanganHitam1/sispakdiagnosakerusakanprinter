unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.ExtCtrls,
  SMDBCtrl, Vcl.Grids, Vcl.DBGrids, SMDBGrid, Vcl.StdCtrls, Vcl.Mask, EditType,
  EditTypeDB, Vcl.DBCtrls;

type
  TForm7 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DBGridGejala: TSMDBGrid;
    SMDBNavigator1: TSMDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    DBENamaGejala: TDBEditTyped;
    DBEKodePertanyaan: TDBEditTyped;
    DBEPertanyaan: TDBEditTyped;
    Label3: TLabel;
    Label4: TLabel;
    DBGridPertanyaan: TSMDBGrid;
    SMDBNavigator2: TSMDBNavigator;
    DBEKodeRule: TDBEditTyped;
    DBEListKodePertanyaan: TDBEditTyped;
    Label5: TLabel;
    Label6: TLabel;
    SMDBGrid3: TSMDBGrid;
    SMDBNavigator3: TSMDBNavigator;
    Label7: TLabel;
    DBErfKodeKerusakan: TDBEditTyped;
    DBEKodeGejala: TDBEditTyped;
    DBEKodeKerusakan: TDBEditTyped;
    DBENamaKerusakan: TDBEditTyped;
    SMDBGrid1: TSMDBGrid;
    Label8: TLabel;
    Label9: TLabel;
    SMDBNavigator4: TSMDBNavigator;
    Label10: TLabel;
    DBEPenyebab: TDBEditTyped;
    Label11: TLabel;
    DBMSolusi: TDBMemo;
    SMDBGrid2: TSMDBGrid;
    SMDBGrid4: TSMDBGrid;
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation
uses
  Unit1,Unit2;

{$R *.dfm}

procedure TForm7.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if PageControl1.TabIndex = 0 then begin
    with DM2.Gejala_zq do begin
      Active:=False;
      Sql.Text:='select * from tabelgejala order by KodeGejala';
      Active:=True;
    end;
  end else if PageControl1.TabIndex = 1 then begin
    with DM2.Kerusakan_zq do begin
      Active:=False;
      Sql.Text:='select * from tabelkerusakan order by KodeKerusakan';
      Active:=True;
    end;
  end else if PageControl1.TabIndex = 2 then begin
    with DM2.Pertanyaan_zq do begin
      Active:=False;
      Sql.Text:='select * from tabelpertanyaan order by KodePertanyaan';
      Active:=True;
    end;
  end else if PageControl1.TabIndex = 3 then begin
    with DM2.Rule_zq do begin
      Active:=False;
      Sql.Text:='select * from tabelrule order by KodeRule';
      Active:=True;
    end;
  end else if PageControl1.TabIndex = 4 then begin
    with DM2.User_zq do begin
      Active:=False;
      Sql.Text:='select * from tabeluser order by IDUser';
      Active:=True;
    end;
  end else begin
    with DM2.History_zq do begin
      Active:=False;
      Sql.Text:='select * from tabelhistory order by IDHistory';
      Active:=True;
    end;
  end;


end;

end.
