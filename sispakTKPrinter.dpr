program sispakTKPrinter;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {DM2: TDataModule},
  Unit3 in 'Unit3.pas' {Form3},
  Unit5 in 'Unit5.pas' {Form5},
  Unit4 in 'Unit4.pas' {Form4},
  Unit6 in 'Unit6.pas' {Form6},
  Unit7 in 'Unit7.pas' {Form7},
  Unit8 in 'Unit8.pas' {Form8},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Aplikasi Sistem Pakar Teknik Komputer : Diagnosa Kerusakan Printer';
  TStyleManager.TrySetStyle('Onyx Blue');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM2, DM2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
