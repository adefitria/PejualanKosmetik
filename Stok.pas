unit Stok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids, ExtCtrls;

type
  TFormStok = class(TForm)
    shp1: TShape;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl4: TLabel;
    Edtdesc: TEdit;
    Edtjumlah: TEdit;
    bbaru: TButton;
    bsimpan: TButton;
    bedit: TButton;
    bprint: TButton;
    bbatal: TButton;
    bhapus: TButton;
    ZConnection1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    cbb1: TComboBox;
    zqry2: TZQuery;
    Edtstatus: TEdit;
    Edtharga: TEdit;
    Label1: TLabel;
    Label2: TLabel;
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
  FormStok: TFormStok;
  id: string;

implementation

{$R *.dfm}

procedure TFormStok.edtbersih;
begin
Edtdesc.Clear;
Edtjumlah.Clear;
Edtharga.Clear;
Edtstatus.Clear;
end;

procedure TFormStok.edtenable;
begin
cbb1.Enabled:= True;
Edtdesc.Enabled:= True;
Edtjumlah.Enabled:= True;
Edtharga.Enabled:= True;
Edtstatus.Enabled:= True;
end;

procedure TFormStok.posisiawal;
begin
edtbersih;
cbb1.Enabled:= False;
Edtdesc.Enabled:= False;
Edtjumlah.Enabled:= False;
Edtharga.Enabled:= False;
Edtstatus.Enabled:= False;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= False;

end;

procedure TFormStok.FormShow(Sender: TObject);
begin
posisiawal;

// Menampilkan id_barang ke dalam ComboBox
cbb1.Items.Clear;
zqry2.SQL.Clear;
zqry2.SQL.Add('SELECT id FROM tabel_barang');
zqry2.Open;

while not zqry2.Eof do
begin
  cbb1.Items.Add(zqry2.FieldByName('id').AsString);
  zqry2.Next;
end;

zqry2.Close;


// Menampilkan data dari tabel stok
zqry1.SQL.Clear;
zqry1.SQL.Add('SELECT * FROM tabel_stok');
zqry1.Open;

// Menghubungkan tabel peminjaman dengan DataSource
ds1.DataSet := zqry1;
DBGrid1.DataSource := ds1;

end;

procedure TFormStok.bbatalClick(Sender: TObject);
begin
posisiawal;
end;

procedure TFormStok.bbaruClick(Sender: TObject);
begin
edtbersih;
edtenable;
bbaru.Enabled:= False;
bsimpan.Enabled:= True;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= True;
end;

procedure TFormStok.bsimpanClick(Sender: TObject);
begin
  if (Edtdesc.Text='') or (Edtjumlah.Text='') or (Edtharga.Text='')or (Edtstatus.Text='')then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tabel_stok values (null,"'+cbb1.Text+'","'+Edtdesc.Text+'","'+Edtjumlah.Text+'","'+Edtharga.Text+'","'+Edtstatus.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_stok');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  posisiawal;

  end;

end;

procedure TFormStok.dbgrd1CellClick(Column: TColumn);
begin
edtenable;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= True;
bhapus.Enabled:= True;
bbatal.Enabled:= True;

cbb1.Text:= zqry1.FieldList[1].AsString;
Edtdesc.Text:= zqry1.FieldList[2].AsString;
Edtjumlah.Text:= zqry1.FieldList[3].AsString;
Edtharga.Text:= zqry1.FieldList[3].AsString;
Edtstatus.Text:= zqry1.FieldList[3].AsString;
end;

procedure TFormStok.bhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_stok where id="'+id+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_stok');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;

end;
end;

procedure TFormStok.beditClick(Sender: TObject);
begin
  if (Edtdesc.Text='') or (Edtjumlah.Text='') or (Edtharga.Text='')or (Edtstatus.Text='')then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (Edtdesc.Text = zqry1.FieldList[1].AsString) and (Edtjumlah.Text = zqry1.FieldList[2].AsString) and (Edtharga.Text = zqry1.FieldList[3].AsString)and (Edtstatus.Text = zqry1.FieldList[4].AsString)then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
    id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update tabel_stok set id_barang="'+cbb1.Text+'", desc="'+Edtdesc.Text+'", jumlah="'+Edtjumlah.Text+'" where id="'+id+'", harga="'+Edtharga.Text+'" where id="'+id+'", status="'+Edtstatus.Text+'" where id="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_stok');
  zqry1.Open;
  posisiawal;
  end;

end;

procedure TFormStok.bprintClick(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
