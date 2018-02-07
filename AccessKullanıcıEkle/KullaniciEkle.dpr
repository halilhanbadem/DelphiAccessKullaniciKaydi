program KullaniciEkle;

uses
  Vcl.Forms,
  frmKullaniciEkle1 in 'frmKullaniciEkle1.pas' {frmKullaniciEkle};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmKullaniciEkle, frmKullaniciEkle);
  Application.Run;
end.
