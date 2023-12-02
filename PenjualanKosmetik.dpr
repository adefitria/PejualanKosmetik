program PenjualanKosmetik;

uses
  Forms,
  Menu in '..\PenjualanKosmetik\Menu.pas' {FormMenu},
  Supplier in '..\PenjualanKosmetik\Supplier.pas' {FormSupplier},
  Kustomer in '..\PenjualanKosmetik\Kustomer.pas' {FormKustomer},
  Barang in '..\PenjualanKosmetik\Barang.pas' {FormBarang};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormUser, FormUser);
  Application.CreateForm(TFormSupplier, FormSupplier);
  Application.CreateForm(TFormKustomer, FormKustomer);
  Application.CreateForm(TFormBarang, FormBarang);
  Application.Run;
end.
