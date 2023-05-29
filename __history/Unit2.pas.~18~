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
    pRule_zqKodeRule: TWideStringField;
    pRule_zqkodepertanyaan1: TWideStringField;
    pRule_zqkodekerusakan: TWideStringField;
    TempPertanyaan_zq: TZQuery;
    pRule_zqrfPenyebab: TStringField;
    pRule_zqrfNamaKerusakan: TStringField;
    pRule_zqrfSolusi: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TabelAktif(b:Boolean);
  end;

var
  DM2: TDM2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
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

end.
