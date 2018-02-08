unit unBill_R;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, ExtCtrls, Grids, DBGrids, DBCtrls, ComCtrls, ToolWin,
  StdCtrls;
// , FR_DSet, FR_DBSet, FR_Class,  StdCtrls;

type
  TfmBill_R = class(TForm)
    p2: TPanel;
    dbg2: TDBGrid;
    Splitter1: TSplitter;
    p1: TPanel;
    tlb1: TToolBar;
    ToolButton4: TToolButton;
    tb6: TToolButton;
    dbn1: TDBNavigator;
    dbg1: TDBGrid;
    Label1: TLabel;
    dtp1: TDateTimePicker;
    Label2: TLabel;
    dtp2: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure tb6Click(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dtp1CloseUp(Sender: TObject);
  private
    C_B: Integer;
    procedure OpenBill;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBill_R: TfmBill_R;

implementation
uses unMain, unIS;

const
  id_Form = 16;

{$R *.dfm}

procedure TfmBill_R.OpenBill;
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
    Add('WHERE (ID_P_AREA = :pa1 AND ((PA_BILL_TYPE > 99 AND D_FIX IS NOT NULL)');
    Add('OR (PA_BILL_TYPE IN (51,53) AND D_GET IS NOT NULL)))');
    Add('AND (D_BILL >= :d1) AND (D_BILL < :d2) ');
    Add('ORDER BY ID_PA_BILL');
    ParamByName('pa1').AsInteger := fmMain.C_PA;
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
end;

procedure TfmBill_R.FormCreate(Sender: TObject);
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

procedure TfmBill_R.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qZBill_S.Close;
  dmIS.qZBill.Close;
  dmIS.qPAreas.Close;
  dmIS.qNOper.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmBill_R.FormActivate(Sender: TObject);
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
  fmBill_R.OpenBill;
end;

procedure TfmBill_R.tb6Click(Sender: TObject);
begin
  //If not dmIS.qZBill.IsEmpty Then frReport1.ShowReport;
end;

procedure TfmBill_R.dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with dbg1.Canvas do
  begin
    if (dmIS.qZBillPA_BILL_TYPE.AsInteger = 110) and not (gdFocused in State)
      then
    begin
      Font.Color := clRed;
      FillRect(Rect);
      TextOut(Rect.Left, Rect.Top, Column.Field.Text);
    end
    else
      dbg1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfmBill_R.dtp1CloseUp(Sender: TObject);
begin
  fmBill_R.OpenBill;
end;

end.
