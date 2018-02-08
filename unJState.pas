unit unJState;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, Grids, DBGrids, DBCtrls, ExtCtrls, ToolWin, ComCtrls,
  unMainForm;

type
  TfmJState = class(TMainForm)
    tlb1: TToolBar;
    p1: TPanel;
    p2: TPanel;
    Splitter1: TSplitter;
    dbn1: TDBNavigator;
    dbn2: TDBNavigator;
    dbg1: TDBGrid;
    dbg2: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmJState: TfmJState;

implementation
uses unMain, unIS;

const
  id_Form = 14;

{$R *.dfm}

procedure TfmJState.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    fmMain.pb.StepBy(5);
    Read(p2, iniRect);
    fmMain.pb.StepBy(5);
  finally
    Free;
  end;
end;

procedure TfmJState.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qJState.Close;
  dmIS.qJHead.Close;
  dmIS.qNOper.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write(p2, iniRect);
  finally
    Free;
  end;
end;

procedure TfmJState.FormActivate(Sender: TObject);
begin
  with dmIS.qNOper do
  begin
    Close;
    Open;
    fmMain.pb.StepBy(5);
  end;
  with dmIS.qJHead do
  begin
    Close;
    ParamByName('pa1').AsInteger := fmMain.C_PA;
    Open;
    fmMain.pb.StepBy(5);
  end;
  with dmIS.qJState do
  begin
    Close;
    ParamByName('pa1').AsInteger := dmIS.qJHeadID_PROD_AREA.AsInteger;
    ParamByName('obj1').AsInteger := dmIS.qJHeadID_OBJECT.AsInteger;
    Open;
    fmMain.pb.StepBy(5);
  end;
end;

end.
