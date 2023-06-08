unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.ExtCtrls,
  SMDBCtrl, Vcl.Grids, Vcl.DBGrids, SMDBGrid, Vcl.StdCtrls, Vcl.Mask, EditType,
  EditTypeDB, Vcl.DBCtrls, Vcl.Buttons;

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
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label12: TLabel;
    DBImage1: TDBImage;
    procedure BitBtn2Click(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure FormShow(Sender: TObject);
    procedure DBImage1Click(Sender: TObject);
  private
    { Private declarations }
    procedure refreshtable;
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation
uses
  Unit1,Unit2;

{$R *.dfm}
procedure TForm7.DBImage1Click(Sender: TObject);
var
  OpenDialog: TOpenDialog;
begin
  OpenDialog := TOpenDialog.Create(nil);
  try
    OpenDialog.Filter := 'Image Files|*.bmp;*.jpg;*.jpeg;*.png;*.gif';
    if OpenDialog.Execute then
    begin
      // Memperbarui gambar pada dataset
      TGraphicField(TBlobField(DM2.Kerusakan_ds.DataSet.FieldByName('ImageData'))).LoadFromFile(OpenDialog.FileName);

      // Mengupdate perubahan ke database
      DM2.Kerusakan_ds.DataSet.Post;
    end;
  finally
    OpenDialog.Free;
  end;

end;

procedure TForm7.FormShow(Sender: TObject);
begin
  refreshtable;
end;

procedure TForm7.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  refreshtable;
end;

procedure TForm7.refreshtable;
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

procedure TForm7.BitBtn2Click(Sender: TObject);
begin
  Hide;
  Form1.Show;
end;

end.
