unit unOper;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, ExtCtrls, ShrFunc;

type
  TfmOper = class(TForm)
    p1: TPanel;
    dbn1: TDBNavigator;
    dbg1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOper: TfmOper;

implementation
uses unMain, unIS;

const
  id_form = 3;

{$R *.dfm}

procedure TfmOper.FormActivate(Sender: TObject);
begin
  dmIS.qOper.Close;
  dmIS.qOper.ParamByName('ar1').AsInteger := fmMain.C_PA;
  dmIS.qOper.Open;
end;

procedure TfmOper.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qOper.Close;
end;

procedure TfmOper.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmOper.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

end.
