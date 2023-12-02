unit Barang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls,
  ExtCtrls;

type
  TFormBarang = class(TForm)
    shp1: TShape;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl3: TLabel;
    Edtidbarang: TEdit;
    Edtdescbarang: TEdit;
    Edtstok: TEdit;
    Edtmerek: TEdit;
    bbaru: TButton;
    bsimpan: TButton;
    bedit: TButton;
    bprint: TButton;
    bbatal: TButton;
    bhapus: TButton;
    Edttglexpired: TEdit;
    ZConnection1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    lbl6: TLabel;
    lbl8: TLabel;
    Edtjual: TEdit;
    Edtbeli: TEdit;
    DBGrid1: TDBGrid;
    Edtnamabarang: TEdit;
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
  FormBarang: TFormBarang;
  id: string;

implementation

{$R *.dfm}

{ TFormBarang }

procedure TFormBarang.edtbersih;
begin
Edtidbarang.Clear;
Edtnamabarang.Clear;
Edtdescbarang.Clear;
Edtjual.Clear;
Edtbeli.Clear;
Edtstok.Clear;
Edtmerek.Clear;
Edttglexpired.Clear;
end;

procedure TFormBarang.edtenable;
begin
Edtidbarang.Enabled:= True;
Edtnamabarang.Enabled:= True;
Edtdescbarang.Enabled:= True;
Edtjual.Enabled:= True;
Edtbeli.Enabled:= True;
Edtstok.Enabled:= True;
Edtmerek.Enabled:= True;
Edttglexpired.Enabled:= True;
end;

procedure TFormBarang.posisiawal;
begin
edtbersih;
Edtidbarang.Enabled:= False;
Edtnamabarang.Enabled:= False;
Edtdescbarang.Enabled:= False;
Edtjual.Enabled:= False;
Edtbeli.Enabled:= False;
Edtstok.Enabled:= False;
Edtmerek.Enabled:= False;
Edttglexpired.Enabled:= False;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= False;
end;

procedure TFormBarang.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TFormBarang.bbatalClick(Sender: TObject);
begin
posisiawal;
end;

procedure TFormBarang.bbaruClick(Sender: TObject);
begin
edtbersih;
edtenable;
bbaru.Enabled:= False;
bsimpan.Enabled:= True;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= True;
end;

procedure TFormBarang.bsimpanClick(Sender: TObject);
begin
  if (Edtidbarang.Text='') or (Edtnamabarang.Text='') or (Edtdescbarang.Text='') or (Edtjual.Text='') or (Edtbeli.Text='') or (Edtstok.Text='') or (Edtmerek.Text='') or (Edttglexpired.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tabel_barang values (null,"'+Edtidbarang.Text+'","'+Edtnamabarang.Text+'","'+Edtdescbarang.Text+'","'+Edtjual.Text+'","'+Edtbeli.Text+'","'+Edtstok.Text+'","'+Edtmerek.Text+'","'+Edttglexpired.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_barang');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  posisiawal;

  end;

end;

procedure TFormBarang.dbgrd1CellClick(Column: TColumn);
begin
edtenable;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= True;
bhapus.Enabled:= True;
bbatal.Enabled:= True;

Edtidbarang.Text:= zqry1.FieldList[1].AsString;
Edtnamabarang.Text := zqry1.FieldList[2].AsString;
Edtdescbarang.Text:= zqry1.FieldList[3].AsString;
Edtjual.Text:= zqry1.FieldList[4].AsString;
Edtbeli.Text:= zqry1.FieldList[5].AsString;
Edtstok.Text:= zqry1.FieldList[6].AsString;
Edtmerek.Text := zqry1.FieldList[7].AsString;
Edttglexpired.Text:= zqry1.FieldList[8].AsString;
end;

procedure TFormBarang.bhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_barang where id="'+id+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_barang');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;

end;

end;

procedure TFormBarang.beditClick(Sender: TObject);
begin
  if (Edtidbarang.Text='') or (Edtnamabarang.Text='') or (Edtdescbarang.Text='') or (Edtjual.Text='') or (Edtbeli.Text='') or (Edtstok.Text='') or (Edtmerek.Text='') or (Edttglexpired.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (Edtidbarang.Text = zqry1.FieldList[1].AsString) and (Edtnamabarang.Text = zqry1.FieldList[2].AsString) AND (Edtdescbarang.Text = zqry1.FieldList[3].AsString) and (Edtjual.Text = zqry1.FieldList[4].AsString) and (Edtbeli.Text = zqry1.FieldList[5].AsString) AND (Edtstok.Text = zqry1.FieldList[6].AsString) and (Edtmerek.Text = zqry1.FieldList[7].AsString) and (Edttglexpired.Text = zqry1.FieldList[8].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
    id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update tabel_barang set id_barang="'+Edtidbarang.Text+'", nama_barang="'+Edtnamabarang.Text+'", desc_barang="'+Edtdescbarang.Text+'", harga_jual="'+Edtjual.Text+'", harga_beli="'+Edtbeli.Text+'", stok="'+Edtstok.Text+'", merek="'+Edtmerek.Text+'", tgl_expired="'+Edttglexpired.Text+'"where id="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_barang');
  zqry1.Open;
  posisiawal;
  end;

end;

procedure TFormBarang.bprintClick(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
