unit UnEqp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, StdCtrls, Mask, DBCtrlsEh, DBLookupEh, ExtCtrls, Grids,
  ShrFunc,
  DB;

type
  TfmEqp = class(TForm)
    Panel1: TPanel;
    lcbEqp: TDBLookupComboboxEh;
    Label1: TLabel;
    p1: TPanel;
    dbg1: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure dbg1SortMarkingChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbg1DblClick(Sender: TObject);
    procedure lcbEqpClick(Sender: TObject);
    procedure lcbEqpCloseUp(Sender: TObject; Accept: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    kop: byte;
  end;

var
  fmEqp: TfmEqp;

implementation
uses unIs, unMain, unDistrJob, unD_JOB;

const
  id_Form = 29;
{$R *.dfm}

procedure TfmEqp.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read(p1, iniRect);
    Read(dbg1, iniGridEh);
  finally
    Free;
  end;
  kop := 0;
end;

procedure TfmEqp.dbg1SortMarkingChanged(Sender: TObject);
begin
  dmIs.qEqp.Close;
  dmIs.qEqp.Open;
end;

procedure TfmEqp.FormShow(Sender: TObject);
begin
  lcbEqp.KeyValue := fmMain.C_PA;
  dmIs.qEqp.Close;
  dmIs.qEqp.ParamByName('id_area').AsInteger := lcbEqp.KeyValue;
  dmIs.qEqp.Open;

end;

procedure TfmEqp.dbg1DblClick(Sender: TObject);
begin
  if assigned(fmDistrJob) then
  begin
    if fmDistrJob.sbEdit_P.Down then
    begin
      dmIs.qPlan_P.Edit;
      dmIs.qPlan_PID_EQUIPMENT.AsInteger := dmIs.qEqpID_EQUIPMENT.AsInteger;
      dmIs.qPlan_PSHOTNAME.AsString := dmIs.qEqpSHOTNAME.AsString;
    end;

    if fmDistrJob.sbEdit_P_Fio.Down then
    begin
      dmIs.qPlan_P_Fio.Edit;
      dmIs.qPlan_P_FioID_EQUIPMENT.AsInteger := dmIs.qEqpID_EQUIPMENT.AsInteger;
      dmIs.qPlan_P_FioSHOTNAME.AsString := dmIs.qEqpNAME.AsString;
    end;
  end;

  if (assigned(fmD_JOB)) and (kop = 1) then
  begin
    dmIs.qD_JOB.Edit;
    dmIs.qD_JOBID_EQUIPMENT.AsInteger := dmIs.qEqpID_EQUIPMENT.AsInteger;
    dmIs.qD_JOBEQ_NAME.AsString := dmIs.qEqpNAME.AsString;
    kop := 0;
  end;
  fmEqp.lcbEqp.Enabled := True;
  fmEqp.Close;
end;

procedure TfmEqp.lcbEqpClick(Sender: TObject);
begin
  dbg1SortMarkingChanged(Sender);
end;

procedure TfmEqp.lcbEqpCloseUp(Sender: TObject; Accept: Boolean);
begin
  dbg1SortMarkingChanged(Sender);
end;

procedure TfmEqp.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  fmEqp.lcbEqp.Enabled := True;
end;

procedure TfmEqp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  kop := 0;
end;

end.
