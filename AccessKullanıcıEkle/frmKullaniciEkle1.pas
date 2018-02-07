unit frmKullaniciEkle1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UniProvider,
  ODBCUniProvider, AccessUniProvider, Data.DB, MemDS, DBAccess, Uni;

type
  TfrmKullaniciEkle = class(TForm)
    UniConnection1: TUniConnection;
    UniQuery1: TUniQuery;
    AccessUniProvider1: TAccessUniProvider;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKullaniciEkle: TfrmKullaniciEkle;

implementation

{$R *.dfm}

procedure TfrmKullaniciEkle.Button1Click(Sender: TObject);
begin
 with UniQuery1 do
 begin
   try
    Connection := UniConnection1;   ///Hangi Connection baðlý olmasý gerektiðini belirtiyoruz.
    Close;                 //Baðlantýyý kapatýyoruz
    SQL.Clear;              //SQL temizliði yapýyoruz.
    SQL.Text := 'insert into KullaniciGiris(KAdi, KSifre) VALUES(:KAdi, :KSifre)'; //SQL kayýt sorgusunu yazýyoruz.
    ParamByName('KAdi').Value := Edit1.Text;       //Parametre tanýmý yapýyoruz.
    ParamByName('KSifre').Value := Edit2.Text;     //Parametre tanýmý yapýyoruz.
    ExecSQL;                                       ///SQL sorgusunu çalýþtýyoruz.
    ShowMessage('Kullanýcý kaydýnýz tamamlanmýþtýr!');
   except
    ShowMessage('Kayýt yapýlýrken hata oluþtu!');
   end;
 end;
end;

procedure TfrmKullaniciEkle.FormShow(Sender: TObject);
begin
 with UniConnection1 do
 begin
   try
    ProviderName := 'Access'; //Hangi tür veritabaný istediðimiz belirtiyoruz.
    Database := ExtractFilePath(Application.ExeName) + 'data.mdb'; //veritabaný yolumuzu belirtiyoruz.
    Connected := True; //Baðlantýyý açýyoruz.
    ShowMessage('Veritabaný baðlantýsý saðlandý!');
   except
    ShowMessage('Veritabaný baðlantý hatasý!');
   end;
 end;
end;

end.
