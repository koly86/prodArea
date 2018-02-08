unit unZJob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, ComCtrls,
  ToolWin, // FR_Class, FR_DSet, FR_DBSet,
  IBQuery;

type
  TfmZJob = class(TForm)
    p1: TPanel;
    p2: TPanel;
    Splitter1: TSplitter;
    tlb1: TToolBar;
    tb1: TToolButton;
    ToolButton1: TToolButton;
    pc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    dbg2: TDBGrid;
    DBGrid1: TDBGrid;
    ToolButton2: TToolButton;
    lcb1: TDBLookupComboBox;
    p3: TPanel;
    dbn1: TDBNavigator;
    dbg1: TDBGrid;
    Splitter2: TSplitter;
    p4: TPanel;
    Splitter3: TSplitter;
    dbn2: TDBNavigator;
    DBGrid3: TDBGrid;
    pc2: TPageControl;
    ts11: TTabSheet;
    ts12: TTabSheet;
    tlb2: TToolBar;
    tb23: TToolButton;
    DBGrid2: TDBGrid;
    DBGrid4: TDBGrid;
    tb2: TToolButton;
    tb3: TToolButton;
    tb4: TToolButton;
    lcb2: TDBLookupComboBox;
    ToolButton3: TToolButton;
    tb5: TToolButton;
    Panel1: TPanel;
    Label1: TLabel;
    ed1: TEdit;
    dtp1: TDateTimePicker;
    Label2: TLabel;
    tb6: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tb1Click(Sender: TObject);
    procedure tb23Click(Sender: TObject);
    procedure tb2Click(Sender: TObject);
    procedure tb3Click(Sender: TObject);
    procedure tb4Click(Sender: TObject);
    procedure tb5Click(Sender: TObject);
    procedure dtp1CloseUp(Sender: TObject);
    procedure tb6Click(Sender: TObject);
    procedure dbg1DblClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
  private
    OP1, OP2: Integer;
    procedure OpenState;
    { Private declarations }
  public
    C_B: integer;
    C_D: string;
    { Public declarations }
  end;

var
  fmZJob: TfmZJob;

implementation
uses unMain, unIS, unOBJECT, DB, IBCustomDataSet;

const
  id_Form = 19;

{$R *.dfm}

procedure TfmZJob.OpenState;
begin
  with dmIS.qJR do
  begin
    Close;
    ParamByName('pa1').AsInteger := fmMain.C_PA;
    Open;
  end;
  with dmIS.qBState do
  begin
    if Active then
      OP1 := dmIS.qBStateID_PA_STATE.AsInteger;
    Close;
    AfterScroll := nil;
    ParamByName('pa1').AsInteger := fmMain.C_PA;
    Open;
    Locate('ID_PA_STATE', OP1, []);
    AfterScroll := dmIS.qBStateAfterScroll;
  end;
  with dmIS.qNew_Oper do
  begin
    Close;
    ParamByName('obj1').AsInteger := dmIS.qBStateID_OBJECT.AsInteger;
    ParamByName('ar1').AsInteger := fmMain.C_PA;
    ParamByName('st1').AsInteger := dmIS.qBStateID_STEP.AsInteger;
    Open;
  end;
  with dmIS.qZBill_S do
  begin
    Close;
    ParamByName('cpa').AsInteger := fmZJob.C_B;
    Open;
  end;
  with dmIS.qSBill_s do
  begin
    Close;
    ParamByName('cpa').AsInteger := fmZJob.C_B;
    Open;
  end;
end;

procedure TfmZJob.FormCreate(Sender: TObject);
begin
  pc1.ActivePage := ts1;
  pc2.ActivePage := ts11;
  lcb1.Hide;
  lcb2.Hide;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read(p2, iniRect);
    Read(p3, iniRect);
    Read(p4, iniRect);
  finally
    Free;
  end;
end;

procedure TfmZJob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qPers.Close;
  dmIS.qNOper.Close;
  dmIS.qC_PROJECT.Close;
  dmIS.qC_Oper.Close;
  dmIS.qJR.Close;
  dmIS.qBState.Close;
  dmIS.qNew_Oper.Close;
  dmIS.qZBill_S.Close;
  dmIS.qSBill_s.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write(p2, iniRect);
    Write(p3, iniRect);
    Write(p4, iniRect);
  finally
    Free;
  end;
end;

procedure TfmZJob.FormActivate(Sender: TObject);
begin
  dtp1.Enabled := fmMain.UF21;
  tb1.Enabled := fmMain.UF_DOC;
  tb4.Enabled := fmMain.Is_Teams;
  fmZJob.Caption := 'Выполнение работ - отчет Рег. №: ' + IntToStr(fmZJob.C_B);
  dtp1.DateTime := StrToDate(fmZJob.C_D);
  with dmIS.qC_PROJECT do
  begin
    Close;
    ParamByName('ar1').AsInteger := fmMain.C_PA;
    Open;
  end;
  with dmIS.qC_Oper do
  begin
    Close;
    ParamByName('ar1').AsInteger := fmMain.C_PA;
    ParamByName('pr1').AsInteger := dmIS.qC_PROJECTID_ORDER.AsInteger;
    Open;
  end;
  with dmIS.qNOper do
  begin
    Close;
    Open;
  end;
  with dmIS.qPers do
  begin
    Close;
    ParamByName('pa1').AsInteger := fmMain.C_PA;
    Open;
    Last;
    First;
    lcb1.KeyValue := dmIS.qPersID_P.AsInteger;
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
    Last;
    First;
    lcb2.KeyValue := dmIS.qTeamsID_TEAM.AsInteger;
  end;
  OpenState;
end;

procedure TfmZJob.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  KLV: extended;
  BATCH: integer;
begin
  if not fmMain.UF21 then
    exit;
  if Key = 13 then
  begin
    if ed1.Text = '' then
    begin
      MsgInformation('Нужно ввести количество', 'Ввод данных');
      exit;
    end;
    try
      KLV := StrToFloat(ed1.Text);
    except
      MsgError('Ошибка при вводе количества', 'Ошибка ввода');
      exit;
    end;
    if dmIS.qNew_Oper.Active then
      OP2 := dmIS.qNew_OperID_PROD_OPER.AsInteger;
    case pc1.ActivePageIndex of
      0:
        begin
          if dmIS.qBState.IsEmpty then
            exit;
          if dmIS.qNew_Oper.IsEmpty then
            exit;
          if KLV > dmIS.qBStatejfAmount.AsFloat then
          begin
            MsgInformation('Количество превышает имеющееся в наличии.' +
              ' Такое количество записать нельзя.', 'Ошибка количества');
            exit;
          end;
          with dmIS.qIN, dmIS.qIN.SQL do
          begin
            Close;
            Clear;
            Add('INSERT INTO PA_BILL_POS (ID_PA_BILL_POS, ID_PA_BILL, ID_OBJECT,ID_BATCH,');
            Add('ID_PROD_OPER,ID_STEP,AMOUNT, OBJ_TYPE, OLD_PROD_OPER, ID_SUBOPER');
            if tb3.Down then
              Add(', ID_P');
            if tb4.Down then
              Add(', ID_TEAM');
            Add(') VALUES (GEN_ID(OBJ_ID,1), :idb, :ido, :idbh, :idpo, :ids,');
            Add(':amo, :otyp, :oldop, :sop');
            if tb2.Down then
              Add(')');
            if tb3.Down then
            begin
              Add(', :p1)');
              ParamByName('p1').Value := lcb1.KeyValue;
            end;
            if tb4.Down then
            begin
              Add(', :t1)');
              ParamByName('t1').Value := lcb2.KeyValue;
            end;
            ParamByName('idb').AsInteger := fmZJob.C_B;
            ParamByName('ido').AsInteger := dmIS.qBStateID_OBJECT.AsInteger;
            ParamByName('idbh').AsInteger := dmIS.qBStateID_BATCH.AsInteger;
            ParamByName('idpo').AsInteger :=
              dmIS.qNew_OperID_PROD_OPER.AsInteger;
            ParamByName('oldop').AsInteger :=
              dmIS.qBStateID_PROD_OPER.AsInteger;
            ParamByName('ids').AsInteger := dmIS.qNew_OperSTEP.AsInteger;
            ParamByName('sop').AsInteger := dmIS.qNew_OperSUBOPER.AsInteger;
            ParamByName('otyp').AsInteger :=
              dmIS.qBStateID_OBJECT_TYPE.AsInteger;
            try
              ParamByName('amo').AsString := ed1.Text;
            except
              MsgError('Ошибка при вводе количества', 'Ошибка ввода');
            end;
            // showmessage(Text);
            try
              ExecSQL;
            except
              MsgError('Ошибка записи в спецификацию накладной',
                'Ошибка записи');
            end;
          end;
        end;
      1:
        begin
          BATCH := -1;
          if not dmIS.qC_OperID_VERSION.IsNull then
            BATCH := dmIS.qC_OperID_VERSION.AsInteger;
          with dmIS.qIN, dmIS.qIN.SQL do
          begin
            Close;
            Clear;
            Add('SELECT ID_BATCH FROM PA_BILL_POS WHERE ID_PA_BILL = :idb');
            Add('AND ID_OBJECT = :ido AND ID_PROD_OPER = :idpo ');
            ParamByName('idb').AsInteger := fmZJob.C_B;
            ParamByName('ido').AsInteger := dmIS.qC_OperID_OBJECT.AsInteger;
            ParamByName('idpo').AsInteger := dmIS.qC_OperID_PROD_OPER.AsInteger;
            try
              Open;
            except
            end;
            if not IsEmpty then
              BATCH := FieldByName('ID_BATCH').AsInteger;

            Close;
            Clear;
            Add('INSERT INTO PA_BILL_POS (ID_PA_BILL_POS, ID_PA_BILL, ID_OBJECT,ID_BATCH,');
            Add('ID_PROD_OPER,ID_STEP,AMOUNT, OBJ_TYPE, ID_SUBOPER');
            if tb3.Down then
              Add(', ID_P');
            if tb4.Down then
              Add(', ID_TEAM');
            Add(') VALUES (GEN_ID(OBJ_ID,1), :idb, :ido,');
            if BATCH = -1 then
              Add('GEN_ID(BATCH_ID,1)')
            else
              Add(IntToStr(BATCH));
            Add(', :idpo, 1, :amo, :otyp, :sop');
            if tb2.Down then
              Add(')');
            if tb3.Down then
            begin
              Add(', :p1)');
              ParamByName('p1').Value := lcb1.KeyValue;
            end;
            if tb4.Down then
            begin
              Add(', :t1)');
              ParamByName('t1').Value := lcb2.KeyValue;
            end;
            ParamByName('idb').AsInteger := fmZJob.C_B;
            ParamByName('ido').AsInteger := dmIS.qC_OperID_OBJECT.AsInteger;
            ParamByName('idpo').AsInteger := dmIS.qC_OperID_PROD_OPER.AsInteger;
            ParamByName('otyp').AsInteger := dmIS.qC_OperOBJ_TYPE.AsInteger;
            ParamByName('sop').AsInteger := dmIS.qC_OperSUBOPER.AsInteger;
            try
              ParamByName('amo').AsString := ed1.Text;
            except
              MsgError('Ошибка при вводе количества', 'Ошибка ввода');
            end;
            // showmessage(Text);
            try
              ExecSQL;
            except
              MsgError('Ошибка записи в спецификацию накладной',
                'Ошибка записи');
            end;
          end;
        end;
    end; //case
    fmZJob.OpenState;
    dmIS.qNew_Oper.Locate('ID_PROD_OPER', OP2, []);
  end;
end;

procedure TfmZJob.tb1Click(Sender: TObject);
begin
  if dmIS.qZBill_S.IsEmpty then
    exit;
  if MsgQuestion('После подшивки отчет о выполнениии работ будет недоступен для'
    +
    ' редактирования. Все входящие в спецификацию операции будут зафиксированы, ' +
    'как выполненные на вашем участке. ' + SysVars.NReg +
    ' , Вы действительно хотите подшить данный отчет о выполнении работ?',
    'Подшивка отчета') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('SELECT STATUS FROM PA_BILL_P(:idb,0,:idp)');
      ParamByName('idb').AsInteger := fmZJob.C_B;
      ParamByName('idp').AsInteger := SysVars.RegTN;
      try
        Open;
        if dmIS.mT.InTransaction then
          dmIS.mT.Commit;
      except
        if dmIS.mT.InTransaction then
          dmIS.mT.Rollback;
        MsgError('Ошибка при подшивке накладной', 'Ошибка подшивки');
      end;
      fmMain.FormActivate(Self);
      fmZJob.Close;
    end;
end;

procedure TfmZJob.tb23Click(Sender: TObject);
begin
  if dmIS.qZBill_S.IsEmpty then
    exit;
  if MsgQuestion(SysVars.NReg + ' , Вы действительно хотите удалить выбранную '
    +
    'запись?', 'Удаление записи') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM PA_BILL_POS WHERE ID_PA_BILL_POS = ' +
        dmIS.qZBill_SID_PA_BILL_POS.AsString);
      try
        ExecSQL;
        if dmIS.mT.InTransaction then
          dmIS.mT.CommitRetaining;
      except
        MsgInformation('Ошибка при удалении записи', 'Ошибка');
        if dmIS.mT.InTransaction then
          dmIS.mT.RollbackRetaining;
      end;
      with dmIS.qZBill_S do
      begin
        Close;
        ParamByName('cpa').AsInteger := fmZJob.C_B;
        Open;
      end;
    end;
end;

procedure TfmZJob.tb2Click(Sender: TObject);
begin
  lcb1.Hide;
  lcb2.Hide;
end;

procedure TfmZJob.tb3Click(Sender: TObject);
begin
  lcb2.Hide;
  if dmIS.qPers.IsEmpty then
    exit;
  lcb1.Show;
end;

procedure TfmZJob.tb4Click(Sender: TObject);
begin
  lcb1.Hide;
  if dmIS.qTeams.IsEmpty then
    exit;
  lcb2.Show;
end;

procedure TfmZJob.tb5Click(Sender: TObject);
begin
  {If not dmIS.qZBill_S.IsEmpty Then begin
   frVariables['C_JOB'] := fmZJob.C_B;
   frVariables['D_JOB'] := fmZJob.C_D;
   If tb2.Down Then frReport1.ShowReport;
   If tb3.Down Then frReport2.ShowReport;
   If tb4.Down Then frReport3.ShowReport;
  end;  }
end;

procedure TfmZJob.dtp1CloseUp(Sender: TObject);
begin
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('update P_AREA_BILLS set D_BILL = :d1 where ID_PA_BILL = :b1');
    ParamByName('b1').AsInteger := fmZJob.C_B;
    ParamByName('d1').AsDate := dtp1.Date;
    try
      ExecSQL;
    except
    end
  end;
end;

procedure TfmZJob.tb6Click(Sender: TObject);
begin
  {If not dmIS.qZBill_S.IsEmpty Then begin
   frVariables['C_JOB'] := fmZJob.C_B;
   frVariables['D_JOB'] := fmZJob.C_D;
   frReport4.ShowReport;
  end; }
end;

procedure TfmZJob.dbg1DblClick(Sender: TObject);
begin
  if not Assigned(fmOBJECT) then
    Application.CreateForm(TfmOBJECT, fmOBJECT);
  fmOBJECT.C_OBJ := dmIS.qBStateID_OBJECT.AsInteger;
  fmOBJECT.Caption := 'Заказ - ' + dmIS.qBStateN_ORDER.AsString + ' - ' +
    dmIS.qBStateORD_NAME.AsString;
  fmOBJECT.Show;
end;

procedure TfmZJob.DBGrid3DblClick(Sender: TObject);
var
  P_OBJ: integer;
begin
  if not Assigned(fmOBJECT) then
    Application.CreateForm(TfmOBJECT, fmOBJECT);
  P_OBJ := 0;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT ID_OBJECT FROM PRODUCT_OBJECTS');
    Add('WHERE ID_ORDER = :or1 AND ID_PARENT = 0');
    ParamByName('or1').AsInteger := dmIS.qC_PROJECTID_ORDER.AsInteger;
    try
      Open;
    except;
    end;
    if not IsEmpty then
      P_OBJ := FieldByName('ID_OBJECT').AsInteger;
  end;
  fmOBJECT.C_OBJ := P_OBJ;
  fmOBJECT.Caption := 'Заказ - ' + dmIS.qC_PROJECTN_ORDER.AsString + ' - ' +
    dmIS.qC_PROJECTNAME.AsString;
  fmOBJECT.Show;
end;

end.
