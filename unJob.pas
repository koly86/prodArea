unit unJob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, ToolWin, ComCtrls, ExtCtrls, Grids, DBGrids,
  // FR_Class,  FR_DSet, FR_DBSet,
  StdCtrls;

type
  TfmJob = class(TForm)
    p1: TPanel;
    p2: TPanel;
    tlb1: TToolBar;
    ToolButton1: TToolButton;
    tb1: TToolButton;
    Splitter1: TSplitter;
    DBGrid2: TDBGrid;
    dbg1: TDBGrid;
    tb2: TToolButton;
    tb3: TToolButton;
    tb4: TToolButton;
    Label1: TLabel;
    dtp1: TDateTimePicker;
    Label2: TLabel;
    dtp2: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure tb1Click(Sender: TObject);
    procedure dtp1CloseUp(Sender: TObject);
  private
    C_B: integer;
    procedure OpenJob;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmJob: TfmJob;

implementation
uses unMain, unIS, IBQuery;

const
  id_Form = 20;

{$R *.dfm}

procedure TfmJob.OpenJob;
begin
  with dmIS.qZBill, dmIS.qZBill.SQL do
  begin
    if Active then
      C_B := dmIS.qZBillID_PA_BILL.AsInteger;
    Close;
    UpdateObject := nil;
    AfterScroll := nil;
    Clear;
    Add('SELECT * FROM P_AREA_BILLS');
    Add('WHERE ID_P_AREA = :cpa AND D_FIX IS NOT NULL AND PA_BILL_TYPE = 70 ');
    Add('and D_BILL >= :d1 and D_BILL < :d2');
    Add('ORDER BY ID_PA_BILL');
    ParamByName('cpa').AsInteger := fmMain.C_PA;
    ParamByName('d1').AsDate := dtp1.Date;
    ParamByName('d2').AsDate := dtp2.Date + 1;
    try
      Open;
      Locate('ID_PA_BILL', C_B, []);
      AfterScroll := dmIS.qZBillAfterScroll;
    except;
    end;
  end;
  with dmIS.qZBill_S do
  begin
    Close;
    ParamByName('cpa').AsInteger := dmIS.qZBillID_PA_BILL.AsInteger;
    Open;
  end;
  with dmIS.qSBill_s do
  begin
    Close;
    ParamByName('cpa').AsInteger := dmIS.qZBillID_PA_BILL.AsInteger;
    Open;
  end;
end;

procedure TfmJob.FormCreate(Sender: TObject);
begin
  dtp2.Date := date;
  dtp1.Date := dtp2.Date - 7;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmJob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qPers.Close;
  dmIS.qTeams.Close;
  dmIS.qNOper.Close;
  dmIS.qPAreas.Close;
  dmIS.qSBill_s.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmJob.FormActivate(Sender: TObject);
begin
  with dmIS.qNOper do
  begin
    Close;
    Open;
  end;
  with dmIS.qPAreas do
  begin
    Close;
    Open;
    Last;
    First;
  end;
  with dmIS.qPers do
  begin
    Close;
    ParamByName('pa1').AsInteger := fmMain.C_PA;
    Open;
  end;
  with dmIS.qTeams, dmIS.qTeams.SQL do
  begin
    Close;
    Clear;
    Add('SELECT * FROM TEAMS WHERE ID_P_AREA = ' + IntToStr(fmMain.C_PA));
    Add('AND D_CLOSE IS NULL ORDER BY ID_TEAM');
    try
      Open;
    except
      MsgError('Ошибка при открытии справочника бригад', 'Ошибка');
    end;
  end;
  fmJob.OpenJob;
end;

procedure TfmJob.tb1Click(Sender: TObject);
begin
  {If not dmIS.qZBill_S.IsEmpty Then begin
   frVariables['C_JOB'] := dmIS.qZBillID_PA_BILL.AsInteger;
   frVariables['D_JOB'] := dmIS.qZBillD_BILL.AsString;
   If tb1.Down Then fmJob.frReport1.ShowReport;
   If tb2.Down Then fmJob.frReport2.ShowReport;
   If tb3.Down Then fmJob.frReport3.ShowReport;
  end;
  }
end;

procedure TfmJob.dtp1CloseUp(Sender: TObject);
begin
  fmJob.OpenJob;
end;

end.
