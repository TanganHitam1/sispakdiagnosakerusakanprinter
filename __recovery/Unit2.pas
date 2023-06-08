unit Unit2;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TDM2 = class(TDataModule)
    con: TZConnection;
    Gejala_zq: TZQuery;
    Kerusakan_zq: TZQuery;
    Pertanyaan_zq: TZQuery;
    pRule_zq: TZQuery;
    Rule_zq: TZQuery;
    Gejala_ds: TDataSource;
    Kerusakan_ds: TDataSource;
    Pertanyaan_ds: TDataSource;
    Rule_ds: TDataSource;
    pRule_ds: TDataSource;
    User_zq: TZQuery;
    User_ds: TDataSource;
    History_zq: TZQuery;
    History_ds: TDataSource;
    TempPertanyaan_zq: TZQuery;
    pRule_zqKodeRule: TWideStringField;
    pRule_zqkodepertanyaan1: TWideStringField;
    pRule_zqkodekerusakan: TWideStringField;
    pRule_zqNamaKerusakan: TWideStringField;
    pRule_zqPenyebab: TWideStringField;
    pRule_zqSolusi: TWideStringField;
    pRule_zqGambar: TBlobField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Name: string;
    procedure TabelAktif(b:Boolean);
    procedure SaveImageToDatabase(AStream: TStream);
    procedure LoadFromStream(AStream: TStream);
  end;

var
  DM2: TDM2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
procedure TDM2.DataModuleCreate(Sender: TObject);
var
 dir : string;
begin
  GetDir(0,dir);
  con.LibraryLocation:=dir + '\libmysql.dll';
end;

procedure  TDM2.TabelAktif(b: Boolean);
begin
  Gejala_zq.Active := b;
  Kerusakan_zq.Active := b;
  Pertanyaan_zq.Active := b;
  Rule_zq.Active := b;
  pRule_zq.Active := b;
  User_zq.Active := b;
  History_zq.Active := b;
end;

procedure TDM2.SaveImageToDatabase(AStream: TStream);
var
  Len: Integer;
begin
  Len := Length(Name);
  AStream.Write(Len, SizeOf(Len));
  AStream.Write(PChar(Name)^, Len);
end;

procedure TDM2.LoadFromStream(AStream: TStream);
var
  Len: Integer;
begin
  AStream.Read(Len, SizeOf(Len));
  SetString(Name, PChar(nil), Len);
  AStream.Read(PChar(Name)^, Len);
end;

end.
