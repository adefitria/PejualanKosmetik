unit Kustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls,
  ExtCtrls;

type
  TFormKustomer = class(TForm)
    shp1: TShape;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    Edtnama: TEdit;
    Edtalamat: TEdit;
    Edtkota: TEdit;
    Edtkodepos: TEdit;
    Edtnotelp: TEdit;
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
  FormKustomer: TFormKustomer;
  id: string;

implementation

{$R *.dfm}

{ TFormKustomer }

procedure TFormKustomer.edtbersih;
begin
Edtnama.Clear;
Edtalamat.Clear;
Edtkota.Clear;
Edtkodepos.Clear;
Edtnotelp.Clear;
end;

procedure TFormKustomer.edtenable;
begin
Edtnama.Enabled:= True;
Edtalamat.Enabled:= True;
Edtkota.Enabled:= True;
Edtkodepos.Enabled:= True;
Edtnotelp.Enabled:= True;
end;

procedure TFormKustomer.posisiawal;
begin
edtbersih;
Edtnama.Enabled:= False;
Edtalamat.Enabled:= False;
Edtkota.Enabled:= False;
Edtkodepos.Enabled:= False;
Edtnotelp.Enabled:= False;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= False;
end;

procedure TFormKustomer.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TFormKustomer.bbatalClick(Sender: TObject);
begin
posisiawal;
end;

procedure TFormKustomer.bbaruClick(Sender: TObject);
begin
edtbersih;
edtenable;
bbaru.Enabled:= False;
bsimpan.Enabled:= True;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= True;
end;

procedure TFormKustomer.bsimpanClick(Sender: TObject);
begin
  if (Edtnama.Text='') or (Edtalamat.Text='') or (Edtkota.Text='') or (Edtkodepos.Text='') or (Edtnotelp.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tabel_kustomer values (null,"'+Edtnama.Text+'","'+Edtalamat.Text+'","'+Edtkota.Text+'","'+Edtkodepos.Text+'","'+Edtnotelp.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_kustomer');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  posisiawal;

  end;

end;

procedure TFormKustomer.dbgrd1CellClick(Column: TColumn);
begin
edtenable;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= True;
bhapus.Enabled:= True;
bbatal.Enabled:= True;

Edtnama.Text:= zqry1.FieldList[1].AsString;
Edtalamat.Text := zqry1.FieldList[2].AsString;
Edtkota.Text:= zqry1.FieldList[3].AsString;
Edtkodepos.Text:= zqry1.FieldList[4].AsString;
Edtnotelp.Text:= zqry1.FieldList[5].AsString;
end;

procedure TFormKustomer.bhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_kustomer where id="'+id+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_kustomer');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;

end;

end;

procedure TFormKustomer.beditClick(Sender: TObject);
begin
  if (Edtnama.Text='') or (Edtalamat.Text='') or (Edtkota.Text='') or (Edtkodepos.Text='') or (Edtnotelp.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (Edtnama.Text = zqry1.FieldList[1].AsString) and (Edtalamat.Text = zqry1.FieldList[2].AsString) AND (Edtkota.Text = zqry1.FieldList[3].AsString) and (Edtkodepos.Text = zqry1.FieldList[4].AsString) and (Edtnotelp.Text = zqry1.FieldList[6].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
    id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update tbl_kustomer set nama="'+Edtnama.Text+'", alamat="'+Edtalamat.Text+'", kota="'+Edtkota.Text+'", kode_pos="'+Edtkodepos.Text+'", no_telp="'+Edtnotelp.Text+'" where id="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_kustomer');
  zqry1.Open;
  posisiawal;
  end;

end;

procedure TFormKustomer.bprintClick(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
