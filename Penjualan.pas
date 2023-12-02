unit Penjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids, StdCtrls, ExtCtrls;

type
  TFormPenjualan = class(TForm)
    shp1: TShape;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl6: TLabel;
    lbl8: TLabel;
    Edttotal: TEdit;
    bbaru: TButton;
    bsimpan: TButton;
    bedit: TButton;
    bprint: TButton;
    bbatal: TButton;
    bhapus: TButton;
    Edtnotransaksi: TEdit;
    ZConnection1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    dtp1: TDateTimePicker;
    zqry2: TZQuery;
    zqry3: TZQuery;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb3: TComboBox;
    DBGrid1: TDBGrid;
    procedure edtbersih;
    procedure edtenable;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure bbatalClick(Sender: TObject);
    procedure bbaruClick(Sender: TObject);
    procedure bsimpanClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure bhapusClick(Sender: TObject);
    procedure beditClick(Sender: TObject);
    procedure bprintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPenjualan: TFormPenjualan;
  id: string;

implementation

{$R *.dfm}

procedure TFormPenjualan.edtbersih;
begin
Edtnotransaksi.Clear;
Edttotal.Clear;
end;

procedure TFormPenjualan.edtenable;
begin
dtp1.Enabled:= True;
cbb1.Enabled:= True;
cbb2.Enabled:= True;
cbb3.Enabled:= True;
Edtnotransaksi.Enabled:= True;
Edttotal.Enabled:= True;
end;

procedure TFormPenjualan.posisiawal;
begin
edtbersih;
dtp1.Enabled:= False;
cbb1.Enabled:= False;
cbb2.Enabled:= False;
cbb3.Enabled:= False;
Edtnotransaksi.Enabled:= False;
Edttotal.Enabled:= False;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= False;
end;

procedure TFormPenjualan.FormShow(Sender: TObject);
begin
posisiawal;

// Menampilkan id_kustomer ke dalam ComboBox
cbb1.Items.Clear;
zqry2.SQL.Clear;
zqry2.SQL.Add('SELECT id FROM tabel_kustomer');
zqry2.Open;

while not zqry2.Eof do
begin
  cbb1.Items.Add(zqry2.FieldByName('id').AsString);
  zqry2.Next;
end;

zqry2.Close;

// Menampilkan id_user ke dalam ComboBox
cbb2.Items.Clear;
zqry3.SQL.Clear;
zqry3.SQL.Add('SELECT id FROM tabel_user');
zqry3.Open;

while not zqry3.Eof do
begin
  cbb2.Items.Add(zqry3.FieldByName('id').AsString);
  zqry3.Next;
end;

zqry3.Close;

// Menampilkan data dari tabel penjualan
zqry1.SQL.Clear;
zqry1.SQL.Add('SELECT * FROM tabel_penjualan');
zqry1.Open;

// Menghubungkan tabel penjualan dengan DataSource
ds1.DataSet := zqry1;
DBGrid1.DataSource := ds1;

end;

procedure TFormPenjualan.bbatalClick(Sender: TObject);
begin
posisiawal;
end;

procedure TFormPenjualan.bbaruClick(Sender: TObject);
begin
edtbersih;
edtenable;
bbaru.Enabled:= False;
bsimpan.Enabled:= True;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= True;
end;

procedure TFormPenjualan.bsimpanClick(Sender: TObject);
begin
  if (Edtnotransaksi.Text='') or (Edttotal.Text='')then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tabel_penjualan values (null,"'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'","'+cbb1.Text+'","'+cbb2.Text+'","'+cbb3.Text+'","'+Edtnotransaksi.Text+'","'+Edttotal.Text+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_penjualan');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  posisiawal;

  end;

end;

procedure TFormPenjualan.dbgrd1CellClick(Column: TColumn);
begin
edtenable;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= True;
bhapus.Enabled:= True;
bbatal.Enabled:= True;

dtp1.Date := StrToDate(zqry1.FieldList[1].AsString);
cbb1.Text:= zqry1.FieldList[2].AsString;
cbb2.Text:= zqry1.FieldList[3].AsString;
cbb3.Text:= zqry1.FieldList[4].AsString;
Edtnotransaksi.Text:= zqry1.FieldList[5].AsString;
Edttotal.Text:= zqry1.FieldList[6].AsString;
end;

procedure TFormPenjualan.bhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_penjualan where id="'+id+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_penjualan');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;

end;
end;

procedure TFormPenjualan.beditClick(Sender: TObject);
begin
  if (Edtnotransaksi.Text='') or (Edttotal.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (Edttotal.Text = zqry1.FieldList[4].AsString) and (Edtnotransaksi.Text = zqry1.FieldList[5].AsString) AND (Edttotal.Text = zqry1.FieldList[6].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
    id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update tabel_penjualan set tgl_penjualan="'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'", id_kustomer="'+cbb1.Text+'", id_user="'+cbb2.Text+'", total_harga="'+Edttotal.Text+'" where id="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_penjualan');
  zqry1.Open;
  posisiawal;
  end;

end;

procedure TFormPenjualan.bprintClick(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
