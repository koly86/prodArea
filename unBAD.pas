unit unBAD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, ExtCtrls, ComCtrls, ToolWin, Buttons, StdCtrls, Mask,
  DBCtrlsEh, DBCtrls, Grids, DBGrids;

type
  TfmBAD = class(TForm)
    stb1: TStatusBar;
    tlb1: TToolBar;
    tb5: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    p1: TPanel;
    p2: TPanel;
    Splitter1: TSplitter;
    p3: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    dbt1: TDBText;
    Label6: TLabel;
    dtp1: TDBDateTimeEditEh;
    dbn1: TDBNavigator;
    dbn2: TDBNavigator;
    dbg1: TDBGrid;
    dbg2: TDBGrid;
    tb6: TToolButton;
    tlb2: TToolBar;
    tb21: TToolButton;
    tb22: TToolButton;
    tb23: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure tb21Click(Sender: TObject);
    procedure tb22Click(Sender: TObject);
    procedure tb5Click(Sender: TObject);
    procedure tb23Click(Sender: TObject);
  private
    Kop: word;
    procedure OpenBad;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBAD: TfmBAD;

implementation
uses unMain, unIS, IBQuery, unSpec;

const
  id_Form = 21;

{$R *.dfm}

procedure TfmBAD.OpenBad;
begin
  with dmIS.qZBAD do
  begin
    Close;
    if fmMain.UF21 then
      UpdateObject := dmIS.upBAD
    else
      UpdateObject := nil;
    ParamByName('pa1').AsInteger := fmMain.C_PA;
    ParamByName('t1').AsInteger := 110;
    Open;
  end;
  with dmIS.qZB_S do
  begin
    Close;
    Open;
  end;
end;

procedure TfmBAD.FormCreate(Sender: TObject);
begin
  Kop := 0;
  p1.BringToFront;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmBAD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qZBAD.Close;
  dmIS.qZB_S.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmBAD.SpeedButton1Click(Sender: TObject);
begin
  p1.BringToFront;
end;

procedure TfmBAD.FormActivate(Sender: TObject);
begin
  tb21.Enabled := fmMain.UF21;
  tb22.Enabled := fmMain.UF21;
  tb23.Enabled := fmMain.UF21;
  tb5.Enabled := fmMain.UF_DOC;
  fmBAD.OpenBad;
end;

procedure TfmBAD.tb21Click(Sender: TObject);
begin
  if dmIS.qZBAD.IsEmpty then
    exit;
  if not Assigned(fmSpec) then
    Application.CreateForm(TfmSpec, fmSpec);
  fmSpec.D_PA := fmMain.C_PA;
  fmSpec.C_B := dmIS.qZBADID_PA_BILL.AsInteger;
  fmSpec.Show;
  with dmIS.qZB_S do
  begin
    Close;
    Open;
  end;
end;

procedure TfmBAD.tb22Click(Sender: TObject);
var
  KLV: string;
begin
  if dmIS.qZB_S.IsEmpty then
    exit;
  KLV := dmIS.qZB_SAMOUNT.AsString;
  if InputQuery('����� ����������: ', '��������� ���������� ��� ' +
    dmIS.qZB_SNAME.AsString, KLV) then
  begin
    try
      if StrToFloat(KLV) > dmIS.qZB_SAMOUNT.AsFloat then
      begin
        MsgError('���������� �� ����� ���� ���������', '������ � ����������');
        exit;
      end;
    except
      MsgError('������ � ����������', '������ �����');
      exit;
    end;
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE PA_BILL_POS SET AMOUNT = :am1 WHERE ID_PA_BILL_POS = ' +
        dmIS.qZB_SID_PA_BILL_POS.AsString);
      try
        ParamByName('am1').AsString := KLV;
        ExecSQL;
        if dmIS.mT.InTransaction then
          dmIS.mT.CommitRetaining;
      except
        MsgInformation('������ ��� ��������� ���������� ��� ' +
          dmIS.qZB_SNAME.AsString, '������');
        if dmIS.mT.InTransaction then
          dmIS.mT.RollbackRetaining;
      end;
      with dmIS.qZB_S do
      begin
        Close;
        Open;
      end;
    end;
  end;
end;

procedure TfmBAD.tb5Click(Sender: TObject);
begin
  if dmIS.qZBAD.IsEmpty then
    exit;
  if MsgQuestion('����� �������� ������ ����� ���������� ��� ��������������. ' +
    '��� �������� � ������������ ������ ����� ���������, ��� ����. ' +
    SysVars.NReg +
    ' , �� ������������� ������ ������� ��������� ������?',
    '��������') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('SELECT STATUS FROM PA_BILL_P(:idb,1,:idp)');
      ParamByName('idb').AsInteger := dmIS.qZBADID_PA_BILL.AsInteger;
      ParamByName('idp').AsInteger := SysVars.RegTN;
      try
        Open;
        if dmIS.mT.InTransaction then
          dmIS.mT.Commit;
      except
        if dmIS.mT.InTransaction then
          dmIS.mT.Rollback;
        MsgError('������ ��� �������� ���������', '������ ��������');
      end;
      fmMain.FormActivate(Self);
      fmBAD.FormActivate(Self);
    end;
end;

procedure TfmBAD.tb23Click(Sender: TObject);
begin
  if dmIS.qZB_S.IsEmpty then
    exit;
  if MsgQuestion(SysVars.NReg + ' , �� ������������� ������ ������� ��������� '
    +
    '������?', '�������� ������') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM PA_BILL_POS WHERE ID_PA_BILL_POS = ' +
        dmIS.qZB_SID_PA_BILL_POS.AsString);
      try
        ExecSQL;
        if dmIS.mT.InTransaction then
          dmIS.mT.CommitRetaining;
      except
        MsgInformation('������ ��� �������� ������', '������');
        if dmIS.mT.InTransaction then
          dmIS.mT.RollbackRetaining;
      end;
      with dmIS.qZB_S do
      begin
        Close;
        Open;
      end;
    end;
end;

end.
