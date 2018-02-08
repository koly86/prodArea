unit unTAB_S;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, Grids, DBGrids, DBCtrls, ExtCtrls, DB, DBGridEh;

type
  TfmTAB_S = class(TForm)
    p1: TPanel;
    dbn1: TDBNavigator;
    dbg1: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1Columns3UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTAB_S: TfmTAB_S;

implementation
uses unMain, unIS, unTabel;

const
  id_Form = 18;

{$R *.dfm}

procedure TfmTAB_S.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read(dbg1, iniGridEh);
  finally
    Free;
  end;
end;

procedure TfmTAB_S.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dmIs.qTAB_S.State in [dsEdit, dsInsert] then
    dmIs.qTAB_S.Post;
  dmIS.qTAB_S.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write(dbg1, iniGridEh);
  finally
    Free;
  end;
end;

procedure TfmTAB_S.DBGridEh1Columns3UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if not (dmIs.qTAB_S.State in [dsEdit, dsInsert]) then
    dmIs.qTAB_S.Edit;
  fmTabel.lcb1.KeyValue := dmIs.qT_COEFID_TAB_COEFF.Value;
  dmIs.qTAB_SCOEFF.Value := dmIs.qT_COEFVAL.Value;



end;

end.
