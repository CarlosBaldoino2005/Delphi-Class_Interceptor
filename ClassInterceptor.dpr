program ClassInterceptor;

uses
  Vcl.Forms,
  frmMain in 'frmMain.pas' {Form3},
  Interceptor.Edit in 'Interceptor.Edit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
