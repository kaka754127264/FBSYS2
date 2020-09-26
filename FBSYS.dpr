program FBSYS;

uses
  Vcl.Forms,
  login in 'login.pas' {Form10},
  user in 'user.pas' {Form3},
  admin in 'admin.pas' {Form4},
  TimerDlg in 'TimerDlg.pas',
  PIC in 'PIC.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
