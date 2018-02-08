unit unZD_JOB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, ComCtrls, StdCtrls, ToolWin, Grids, DBGrids, DBCtrls,
  ExtCtrls;

type
  TfmZD_JOB = class(TForm)
    tlb1: TToolBar;
    Label1: TLabel;
    dtp1: TDateTimePicker;
    ToolButton1: TToolButton;
    tb1: TToolButton;
    tb2: TToolButton;
    ToolButton4: TToolButton;
    tb3: TToolButton;
    p1: TPanel;
    dbn1: TDBNavigator;
    dbg1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure dtp1CloseUp(Sender: TObject);
    procedure tb1Click(Sender: TObject);
  private
    procedure OpenZD_JOB;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmZD_JOB: TfmZD_JOB;

implementation
uses unMain, unIS, IBQuery;

const
  id_Form = 28;

{$R *.dfm}

procedure TfmZD_JOB.OpenZD_JOB;
begin
  with dmIS.qZD_JOB do
  begin
    Close;
    ParamByName('pa1').AsInteger := fmMain.C_PA;
    ParamByName('d1').AsDate := dtp1.Date;
    if tb1.Down then
    begin
      dmIS.qZD_JOBNAME.DisplayLabel := 'Ф.И.О.';
      ParamByName('k1').AsInteger := 1;
    end;
    if tb2.Down then
    begin
      dmIS.qZD_JOBNAME.DisplayLabel := 'Бригада';
      ParamByName('k1').AsInteger := 2;
    end;
    Open;
  end;
end;

procedure TfmZD_JOB.FormCreate(Sender: TObject);
begin
  dtp1.DateTime := now;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmZD_JOB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qZD_JOB.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmZD_JOB.FormActivate(Sender: TObject);
begin
  fmZD_JOB.OpenZD_JOB;
end;

procedure TfmZD_JOB.dtp1CloseUp(Sender: TObject);
begin
  fmZD_JOB.OpenZD_JOB;
end;

procedure TfmZD_JOB.tb1Click(Sender: TObject);
begin
  fmZD_JOB.OpenZD_JOB;
end;

end.
