unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, ADODB;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('insert into absen values('''+Edit1.Text+''','''+Edit2.Text+''','''+Edit3.Text+''')');
ADOQuery1.ExecSQL;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select*from absen');
ADOQuery1.Open;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('delete from absen where nama='''+Edit1.Text+'''');
ADOQuery1.ExecSQL;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select*from absen');
ADOQuery1.Open;
end;

end.
