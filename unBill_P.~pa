unit unBill_P;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, DBCtrls,
  StdCtrls
  //, FR_Class, FR_DSet, FR_DBSet, StdCtrls
  ;

type
  TfmBill_P = class(TForm)
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
    procedure dtp1CloseUp(Sender: TObject);
    procedure dtp2CloseUp(Sender: TObject);
  private
    C_B: Integer;
    procedure OpenBill;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBill_P: TfmBill_P;

implementation
uses unMain, unIS, IBQuery, IBCustomDataSet;

const
  id_Form = 15;

{$R *.dfm}

procedure TfmBill_P.OpenBill;
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
    Add('WHERE ((ID_DESTINATION = :cpa AND D_GET IS NOT NULL');
    Add('AND PA_BILL_TYPE IN(51,52)) OR (ID_P_AREA = :cpa AND D_FIX IS NOT NULL');
    Add('AND PA_BILL_TYPE IN(1,2))) AND D_FIX IS NOT NULL ');
    Add('AND D_BILL >= :d1 AND D_BILL < :d2 ');
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
end;

procedure TfmBill_P.FormCreate(Sender: TObject);
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

procedure TfmBill_P.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfmBill_P.FormActivate(Sender: TObject);
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
  fmBill_P.OpenBill;
end;

procedure TfmBill_P.tb6Click(Sender: TObject);
begin
  //If not dmIS.qZBill.IsEmpty Then frReport1.ShowReport;
end;

procedure TfmBill_P.dtp1CloseUp(Sender: TObject);
begin
  fmBill_P.OpenBill;
end;

procedure TfmBill_P.dtp2CloseUp(Sender: TObject);
begin
  fmBill_P.OpenBill;
end;

end.
