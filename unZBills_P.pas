unit unZBills_P;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, DBLookupEh, Mask, DBCtrlsEh, StdCtrls, Buttons,
  DBCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, ToolWin, ShrFunc
  //,FR_DSet, FR_DBSet, FR_Class
  ;

type
  TfmZBills_P = class(TForm)
    p1: TPanel;
    tlb1: TToolBar;
    tb5: TToolButton;
    ToolButton4: TToolButton;
    tb6: TToolButton;
    dbn1: TDBNavigator;
    dbg1: TDBGrid;
    p2: TPanel;
    dbg2: TDBGrid;
    tlb2: TToolBar;
    tb22: TToolButton;
    Splitter1: TSplitter;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure tb6Click(Sender: TObject);
    procedure tb22Click(Sender: TObject);
    procedure tb5Click(Sender: TObject);
  private
    C_B: integer;
    procedure OpenZBill;
    { Private declarations }
  public
    N_TYPE: Integer;
    { Public declarations }
  end;

var
  fmZBills_P: TfmZBills_P;

implementation
uses unMain, unIS, IBQuery;

const
  id_Form = 11;

{$R *.dfm}

procedure TfmZBills_P.OpenZBill;
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
    Add('WHERE ID_DESTINATION = :cpa AND PA_BILL_TYPE = :tb AND D_GET IS NULL');
    Add('AND D_FIX IS NOT NULL ORDER BY ID_PA_BILL');
    ParamByName('cpa').AsInteger := fmMain.C_PA;
    ParamByName('tb').AsInteger := N_TYPE;
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

procedure TfmZBills_P.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmZBills_P.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfmZBills_P.FormActivate(Sender: TObject);
begin
  tb5.Enabled := fmMain.UF_DOC;
  tb22.Enabled := fmMain.UF_DOC;
  case N_TYPE of
    51: fmZBills_P.Caption := '������ � ������� �������';
    52: fmZBills_P.Caption := '��������� �� ������';
  end;
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
  fmZBills_P.OpenZBill;
end;

procedure TfmZBills_P.tb6Click(Sender: TObject);
begin
  //If not dmIS.qZBill.IsEmpty Then frReport1.ShowReport;
end;

procedure TfmZBills_P.tb22Click(Sender: TObject);
var
  KLV: string;
begin
  if dmIS.qZBill_S.IsEmpty then
    exit;
  KLV := dmIS.qZBill_SAMOUNT.AsString;
  if InputQuery('����� ����������: ', '��������� ���������� ��� ' +
    dmIS.qZBill_SNAME.AsString, KLV) then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE PA_BILL_POS SET AMOUNT = :am1 WHERE ID_PA_BILL_POS = ' +
        dmIS.qZBill_SID_PA_BILL_POS.AsString);
      try
        ParamByName('am1').AsString := KLV;
        ExecSQL;
        if dmIS.mT.InTransaction then
          dmIS.mT.CommitRetaining;
      except
        MsgInformation('������ ��� ��������� ���������� ��� ' +
          dmIS.qZBill_SNAME.AsString, '������');
        if dmIS.mT.InTransaction then
          dmIS.mT.RollbackRetaining;
      end;
      with dmIS.qZBill_S do
      begin
        Close;
        ParamByName('cpa').AsInteger := dmIS.qZBillID_PA_BILL.AsInteger;
        Open;
      end;
    end;
end;

procedure TfmZBills_P.tb5Click(Sender: TObject);
begin
  if dmIS.qZBill.IsEmpty then
    exit;
  if MsgQuestion('����� �������� ��������� ����� ���������� ��� ��������������. '
    +
    '��� �������� � ������������ ������ ����� ������� �� ��� �������. ' +
    SysVars.NReg +
    ' , �� ������������� ������ ������� ��������� ���������?',
    '�������� ���������') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('SELECT STATUS FROM PA_BILL_P(:idb,0,:idp)');
      ParamByName('idb').AsInteger := dmIS.qZBillID_PA_BILL.AsInteger;
      ParamByName('idp').AsInteger := SysVars.RegTN;
      try
        Open;
        Close;
        Clear;
        Add('SELECT STATUS FROM PA_BILL_P(:idb,1,:idp)');
        ParamByName('idb').AsInteger := dmIS.qZBillID_PA_BILL.AsInteger;
        ParamByName('idp').AsInteger := SysVars.RegTN;
        Open;
        if dmIS.mT.InTransaction then
          dmIS.mT.Commit;
      except
        if dmIS.mT.InTransaction then
          dmIS.mT.Rollback;
        MsgError('������ ��� �������� ���������', '������ ��������');
      end;
      fmMain.FormActivate(Self);
      fmZBills_P.FormActivate(Self);
    end;
end;

end.
