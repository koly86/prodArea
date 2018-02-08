unit unDistrJob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, ExtCtrls, Grids, DBGrids, DBCtrls, IBQuery, StdCtrls,
  Buttons, DB, IBCustomDataSet, unMainForm,
  DBGridEh, frxClass, frxDBSet, ComCtrls, Menus, xlcClasses,
  xlEngine, xlReport, IBUpdateSQL;

type
  TfmDistrJob = class(TMainForm)
    p2: TPanel;
    Splitter2: TSplitter;
    p4: TPanel;
    qJOB_P: TIBQuery;
    qJOB_PID_P: TIntegerField;
    qJOB_PID_TEAM: TIntegerField;
    qJOB_PAMOUNT: TFloatField;
    qJOB_PN_ORDER: TIBStringField;
    qJOB_PID_OBJECT: TIntegerField;
    qJOB_POBJ_NAME: TIBStringField;
    qJOB_PONAME: TIBStringField;
    qJOB_PINAME: TIBStringField;
    qJOB_PT_PERSONNEL: TFloatField;
    qJOB_PnObj: TStringField;
    qJOB_PfIO: TStringField;
    qJOB_PnTeam: TStringField;
    p1: TPanel;
    Splitter3: TSplitter;
    Panel2: TPanel;
    dbn1: TDBNavigator;
    SpeedButton5: TSpeedButton;
    frxRep_Plan_Day: TfrxDBDataset;
    qRep_Plan_Day: TIBQuery;
    qRep_Plan_DayNM: TIBStringField;
    qRep_Plan_DayNAME_ORD: TIBStringField;
    qRep_Plan_DayN_ORDER: TIBStringField;
    qRep_Plan_DayNAME_OPER: TIBStringField;
    qRep_Plan_DayNAME_POST: TIBStringField;
    qRep_Plan_DayFIO: TIBStringField;
    qRep_Plan_DaySHOTNAME: TIBStringField;
    qRep_Plan_DayID_PROD_PLAN_P: TIntegerField;
    qRep_Plan_DayID_P: TIntegerField;
    qRep_Plan_DayP_AMOUNT_P: TFloatField;
    qRep_Plan_DayP_TIME_P: TFloatField;
    qRep_Plan_DayREM_P: TBlobField;
    qRep_Plan_DayF_AMOUNT_P: TFloatField;
    qRep_Plan_DayF_TIME_P: TFloatField;
    qRep_Plan_DayID_VERSION: TIntegerField;
    qRep_Plan_DayID_PROJECT: TIntegerField;
    qRep_Plan_DayID_ORDER: TIntegerField;
    qRep_Plan_DayID_OBJECT: TIntegerField;
    qRep_Plan_DayID_PROD_OPER: TIntegerField;
    qRep_Plan_DayOBJ_TYPE: TIntegerField;
    qRep_Plan_DayID_OPERATION: TIntegerField;
    qRep_Plan_DayID_PROD_PLAN: TIntegerField;
    qRep_Plan_DayF_AMOUNT: TFloatField;
    qRep_Plan_DaySTEP: TIntegerField;
    qRep_Plan_DayF_TIME: TFloatField;
    qRep_Plan_DayAMOUNT_P: TFloatField;
    frxRRep_Plan_Day: TfrxReport;
    qRep_Plan_DayT_PERS: TFloatField;
    p3: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    p5: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    lb1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    DBText2: TDBText;
    lb2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    sbEdit_P: TSpeedButton;
    dbn3: TDBNavigator;
    Panel3: TPanel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    sbEdit_P_Fio: TSpeedButton;
    dbn4: TDBNavigator;
    pm: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    frxRRep_Plan_Day_Pers: TfrxReport;
    Exel1: TMenuItem;
    xlRepPlan_Day: TxlReport;
    qInsT: TIBQuery;
    qRep_Plan_DayT_PERSONNEL: TFloatField;
    qRep_Plan_DayNORM: TFloatField;
    Panel4: TPanel;
    dbn2: TDBNavigator;
    SpeedButton6: TSpeedButton;
    cbFIO: TCheckBox;
    spVer: TSpeedButton;
    ed1: TEdit;
    qRep_Plan_DayREM_OPER: TMemoField;
    qRep_Plan_DayDESCRIPT: TIBStringField;
    N3: TMenuItem;
    ts3: TTabSheet;
    dsRep_Plan_Day: TDataSource;
    qRep_Plan_DayPOC_P: TFloatField;
    qRep_Plan_DayPOC_F: TFloatField;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    qRep_MR_CART: TIBQuery;
    qRep_MR_CARTID_OBJECT: TIntegerField;
    qRep_MR_CARTPOSIT: TIntegerField;
    qRep_MR_CARTOBJ: TIntegerField;
    qRep_MR_CARTOBJ_NAME: TIBStringField;
    qRep_MR_CARTOBJ_OPER: TIntegerField;
    qRep_MR_CARTOBJ_MATS: TIBStringField;
    qRep_MR_CARTOPER: TIntegerField;
    qRep_MR_CARTOPER_NAME: TIBStringField;
    qRep_MR_CARTOPER_DESC: TIBStringField;
    qRep_MR_CARTAMOUNT: TFloatField;
    qRep_MR_CARTAMOUNT_TIME: TFloatField;
    qRep_MR_CARTVID: TIntegerField;
    qRep_MR_CARTREM: TBlobField;
    qRep_MR_CARTNAME_OBJ: TIBStringField;
    frxRep_MR_CART: TfrxDBDataset;
    qRep_MR_CARTID_ITEM: TIntegerField;
    frxRRep_MR_CART: TfrxReport;
    qIns: TIBQuery;
    qRep_Plan_DayDEC_NO: TIBStringField;
    qRep_Plan_DayPOSIT: TIntegerField;
    cbNakl: TCheckBox;
    SpeedButton15: TSpeedButton;
    Panel6: TPanel;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    sbEdit_P_Fio_List: TSpeedButton;
    SpeedButton20: TSpeedButton;
    dbn5: TDBNavigator;
    UpPlan_P_Fio: TIBUpdateSQL;
    qRep_Plan_DayP_AM: TFloatField;
    qRep_Plan_DayP_TM: TFloatField;
    qRep_Plan_DayAM: TFloatField;
    dbg1: TDBGridEh;
    dbg2: TDBGridEh;
    dbg3: TDBGridEh;
    dbg4: TDBGridEh;
    dbg5: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qJOB_PCalcFields(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbEdit_PClick(Sender: TObject);
    procedure dbg3Columns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure sbEdit_P_FioClick(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure p3Change(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Exel1Click(Sender: TObject);
    procedure dbn1BeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton6Click(Sender: TObject);
    procedure spVerClick(Sender: TObject);
    procedure ed1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbn2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure dbg4444DblClick(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure cbFIOClick(Sender: TObject);
    procedure dbg4444SortMarkingChanged(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure sbEdit_P_Fio_ListClick(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure dbg1DblClick(Sender: TObject);
    procedure dbg1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbg1SortMarkingChanged(Sender: TObject);
    procedure dbg2P_TIMEUpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg2DblClick(Sender: TObject);
    procedure dbg2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGridEh1Columns7EditButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure DBGridEh1Columns8UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh1Columns9UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh1Columns10EditButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure dbg3DblClick(Sender: TObject);
    procedure dbg3SortMarkingChanged(Sender: TObject);
    procedure DBGridEh2Columns12UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns13EditButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure DBGridEh2Columns14UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns15EditButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure dbg5SortMarkingChanged(Sender: TObject);

  private
    C_TZ, id_p: Integer;
    Ysl, Ysl_P: Boolean;
    //    ListRoute:    TList;
    procedure Podshivka;
    { Private declarations }
  public
    Kdistr: word;
    cr, cr0: extended;
    procedure FRFunction(const Name: string; p1, p2, p3: Variant;
      var Val: Variant);
    procedure Rep_Plan_Day(id_p: integer);
    procedure OpenDistr;
    { Public declarations }
  end;

var
  fmDistrJob: TfmDistrJob;

implementation
uses unMain, unIS, unD_JOB, UnWork_V, UnEqp, unTabPlan, unOBJECT, UnMmRem;

const
  id_Form = 27;

{$R *.dfm}

procedure TfmDistrJob.Podshivka;
var
  status1, id_p: Integer;
begin
  if
    MsgQuestion('����� �������� ��������� ������� ����� ���������� ��� ��������������. '
    +
    '��� �������� � ������������ ������� ����� ������� �� �����. ' + SysVars.NReg
    +
    ' , �� ������������� ������ ������� �������� �������?',
    '�������� ��������� �������') = id_yes then
    //try
    Screen.Cursor := crHourGlass;

  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select status,id from PA_BILL_P70_PERS(:ID_AREA,:D_IN,:ID_TN,:ID_FIO,:ID_SHIFT,:id_EQ)');
    ParamByName('ID_AREA').AsInteger := fmMain.C_PA;
    ParamByName('D_IN').AsDate := fmD_JOB.dtp1.Date;
    ParamByName('ID_TN').AsInteger := SysVars.RegTN;
    if Ysl_P then
      ParamByName('ID_FIO').Value := dmIS.qLoad_PID_P.AsInteger
    else
      ParamByName('ID_FIO').Value := null;
    if fmD_JOB.lcbShift.KeyValue = null then
      ParamByName('ID_SHIFT').Clear
    else
      ParamByName('ID_SHIFT').AsInteger := fmD_JOB.lcbShift.KeyValue;
    if fmD_JOB.lcbEqp.KeyValue = null then
      ParamByName('ID_EQ').Clear
    else
      ParamByName('ID_EQ').AsInteger := fmD_JOB.lcbEqp.KeyValue;
    try
      Open;
      status1 := FieldByName('status').asInteger;
      id_p := FieldByName('id').asInteger;
      if status1 = -1 then
      begin
        Close;
        Clear;
        Add('select * from create_traff_bills(:ID_BILL)');
        ParamByName('ID_BILL').AsInteger := id_p;
        if cbNakl.Checked then
          Open;
        if not IsEmpty then
          MsgInformation('��������� �� ����������� �������.',
            '��������� �� �����������');
        if dmIS.mT.InTransaction then
          dmIS.mT.CommitRetaining;
        fmD_JOB.tbVib.Click;
        //fmD_JOB.dtp1CloseUp(Sender);
    //****************************
        if p3.ActivePage = ts1 then //sbEdit_P.down
        begin
          dbg3.FieldColumns['P_AMOUNT'].Color := clWhite;
          dbg3.FieldColumns['P_TIME'].Color := clWhite;
          dbg3.FieldColumns['REM'].Color := clWhite;
          dbg3.FieldColumns['SHOTNAME'].Color := clWhite;
          with dmIS.qPlan_P, dmIS.qPlan_P.SQL do
          begin
            Close;
            Clear;
            Add('select P.* ,e.shotname, P.AMOUNT*T.T_PERSONNEL as T_PERS,l.posit');
            Add('from (PRODUCT_PLANS_P P join PRODUCT_PLANS L');
            Add('on L.ID_PROD_PLAN = P.ID_PROD_PLAN)');
            Add('join PRODUCT_TRAFF T on T.ID_PROD_TRAFF = L.ID_PROD_TRAF');
            Add('left join equipments e on e.ID_EQUIPMENT = p.ID_EQUIPMENT');
            Add('where P.ID_PROD_PLAN = :ID_PROD_PLAN');
            if Kdistr = 1 then
              Add('and P.ID_P is not NULL');
            if Kdistr = 2 then
              Add('and P.ID_TEAM is not NULL');
            Open;
          end;
        end;
        //****************************
        if p3.ActivePage = ts2 then //sbEdit_P_Fio.down
        begin
          dbg4.FieldColumns['P_AMOUNT'].Color := clWhite;
          dbg4.FieldColumns['P_TIME'].Color := clWhite;
          dbg4.FieldColumns['REM'].Color := clWhite;
          dbg4.FieldColumns['SHOTNAME'].Color := clWhite;
          fmDistrJob.p3Change(p3);
        end;
        //**********************************
        if p3.ActivePage = ts3 then //sbEdit_P_Fio_List
        begin
          dbg5.FieldColumns['P_AMOUNT'].Color := clWhite;
          dbg5.FieldColumns['P_TIME'].Color := clWhite;
          dbg5.FieldColumns['REM'].Color := clWhite;
          dbg5.FieldColumns['SHOTNAME'].Color := clWhite;
          fmDistrJob.p3Change(p3);
        end;
        //**********************************sbEdit_P_Fio

      end;
      Screen.Cursor := crDefault;
      if status1 >= 0 then
      begin
        if dmIS.mT.InTransaction then
          dmIS.mT.RollbackRetaining;
        Close;
        Clear;
        Add('select obj_name from product_objects where id_object = :id_object');
        ParamByName('id_object').AsInteger := status1;
        Open;
        MsgError('������ ��� �������� ��������� �������. ������: ' +
          dmIS.qIN.FieldByName('obj_name').AsString + '', '������ ��������');
      end;
    except
      on E: Exception do
      begin
        if dmIS.mT.InTransaction then
          dmIS.mT.RollbackRetaining;
        if Pos('exception 13', e.Message) > 0 then
        begin
          ShowMessage(E.Message);
          Exit;
        end
        else
          raise;
      end; //do
    end; //try
    //  end; //try
  end; //with

end;

procedure TfmDistrJob.FRFunction(const Name: string; p1, p2, p3: Variant; var
  Val: Variant);
begin
  //���� ������� ��� FastReport
  //������� ������ ����������� ����������!!! �������
     // if Name='MYROUND' then val:=myRound(frParser.Calc(p1),p2); //��������� ����� p1 �� p2 ������ ����� �������
 // if Name='HOURTOTIME' then val:=HourToTime(frParser.Calc(p1)); //����������� ���� �� �����
end;

procedure TfmDistrJob.Rep_Plan_Day(id_p: integer);
var
  s: string;
begin
  s := 'select per.fio,l.posit ,o.dec_no,coalesce(o.obj_name,i.name) nm,' +
    'p.name name_ord,p.n_order, s.name name_oper, ps.name name_post,' +
    ' e.shotname,l1.id_prod_plan_p,l1.id_p,l1.amount ,' +
    'l1.AMOUNT*f.T_PERSONNEL  T_PERS,' +
    'l1.p_amount, l1.p_time, l1.rem ,' +
    'l1.f_amount f_amount_p,l1.f_time f_time_p,' +
    'p.id_version,p.id_project, p.id_order, o.id_object,r.id_prod_oper, o.obj_type,' +
    'f.id_operation,l.id_prod_plan, l.amount am,l.f_amount,l.p_amount p_am,r.step,' +
    'l.f_time,l.p_time p_tm,f.T_PERSONNEL,' +
    'case when f.t_personnel is null then 0' +
    '     when f.t_personnel=0 then 0' +
    '     else 1/f.t_personnel end norm,' +
    'case when l1.amount=0 then 0' +
    '     when l1.p_amount=0 then 0' +
    '     else 100*l1.p_amount/l1.amount end poc_p,' +
    'case when l1.amount=0 then 0' +
    '     when l1.f_amount=0 then 0' +
    '     else 100*l1.f_amount/l1.amount end poc_f,' +
    'r.rem rem_oper,r.descript,posit' +

  ' from (((((project_ords p join product_objects o on o.id_version = p.id_version)' +
    ' join product_oper r on r.id_object = o.id_object)' +
    ' join product_traff f on f.id_prod_oper = r.id_prod_oper and f.id_area = :id_area)' +
    ' join operations s on s.id_area = f.id_area and s.id_operation = f.id_operation)' +
    ' join product_plans l on l.d_out = :d_out and l.amount > 0 and l.id_shift = :id_shift and ' +
    ' l.id_prod_traf = f.id_prod_traff)';
  if id_p = 1 then
    s := s +
      ' join product_plans_p l1 on l1.id_p = :id_p and l1.id_prod_plan = l.id_prod_plan'
  else
    s := s + ' join product_plans_p l1 on l1.id_prod_plan = l.id_prod_plan';
  s := s + ' left join items i on i.id_item = o.id_item' +
    ' left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT' +
    ' left join personnel per on l1.id_p = per.id_p' +
    ' left join post ps on per.idpost = ps.idpost';
  // ' order by per.fio,l.posit , o.dec_no,s.name';
  qRep_Plan_Day.Close;
  qRep_Plan_Day.SQL.Clear;
  qRep_Plan_Day.SQL.Add(s);
  qRep_Plan_Day.SQL.Add(OrdBy(dbg5));

  qRep_Plan_Day.ParamByName('id_area').AsInteger := dmIs.qD_JOBID_AREA.Value;
  qRep_Plan_Day.ParamByName('d_out').AsDate := fmD_Job.dtp1.Date;
  if fmD_Job.lcbShift.KeyValue = null then
    qRep_Plan_Day.ParamByName('id_shift').Clear
  else
    qRep_Plan_Day.ParamByName('id_shift').AsInteger :=
      fmD_Job.lcbShift.KeyValue;
  if id_p = 1 then
    qRep_Plan_Day.ParamByName('id_p').AsInteger := dmIs.qLoad_PID_P.AsInteger;
  qRep_Plan_Day.Open;
  if qRep_Plan_Day.IsEmpty then
  begin
    ShowMessage('����� ������...');
    Exit;
  end;

end;

procedure TfmDistrJob.OpenDistr;
begin
  Screen.Cursor := crHourGlass;
  with dmIS.qPlan_P, dmIS.qPlan_P.SQL do
  begin
    Close;
    Clear;
    Add('select P.* ,e.shotname, P.AMOUNT*T.T_PERSONNEL T_PERS,l.posit');
    Add('from (PRODUCT_PLANS_P P join PRODUCT_PLANS L');
    Add('on L.ID_PROD_PLAN = P.ID_PROD_PLAN)');
    Add('join PRODUCT_TRAFF T on T.ID_PROD_TRAFF = L.ID_PROD_TRAF');
    Add('left join equipments e on e.ID_EQUIPMENT = p.ID_EQUIPMENT');
    Add('where P.ID_PROD_PLAN = :ID_PROD_PLAN');
    if Kdistr = 1 then
      Add('and P.ID_P is not NULL');
    if Kdistr = 2 then
      Add('and P.ID_TEAM is not NULL');
    Open;
  end;
  with dmIS.qLoad_P, dmIS.qLoad_P.SQL do
  begin
    Close;
    Clear;
    Add('select g.*,p.p_amount,p.p_time ' +
      ' from GET_PA_DAY_LOAD_P(:id_area,:d_work,:kop) g' +
      ' left join product_planS_p P ON P.ID_P = g.id_p and p.id_prod_plan = :id_prod_plan');

    if (Kdistr = 1) and (cbFIO.State = cbChecked) then
    begin
      Add(' join oper_posts o on o.id_post = g.id_post and o.id_area = :id_area'
        +
        ' and o.id_operation = :id_operation');
      ParamByName('id_operation').AsInteger :=
        dmIS.qD_JOBID_OPERATION.AsInteger;
    end;

    ParamByName('id_area').AsInteger := fmMain.C_PA;
    ParamByName('d_work').AsDate := fmD_JOB.dtp1.Date;
    ParamByName('kop').AsInteger := Kdistr;
    ParamByName('id_prod_plan').AsInteger := dmIS.qD_JOBID_PROD_PLAN.AsInteger;
    Open;
  end;
  with dmIS.qSUM_P do
  begin
    Close;
    Open;
  end;
  try
    lb1.Caption := FormatFloat('### ### ### ##0.0',
      dmIS.qD_JOBSUM_PERS.AsFloat - dmIS.qSUM_PA_SUM.AsFloat);
    lb2.Caption := FormatFloat('### ### ### ##0.0',
      dmIS.qD_JOBAMOUNT.AsFloat - dmIS.qSUM_PAMOUNT_SUM.AsFloat);
  except;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmDistrJob.FormCreate(Sender: TObject);
begin
  //frFunct(frxRRep_MR_CART);
   //���� ������� ��� fastreport
  //frxRRep_MR_CART.OnUserFunction:= fmDistrJob.frxRep_Plan_Day;

  Ysl := false;
  lb1.Caption := '';
  p2.Align := alClient;
  p3.ActivePage := ts1;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read(p1, iniRect);
    Read(p3, iniRect);
    Read(dbg1, iniGridEh);
    Read(dbg2, iniGridEh);
    Read(dbg3, iniGridEh);
    Read(dbg4, iniGridEh);
    Read(dbg5, iniGridEh);

  finally
    Free;
  end;
end;

procedure TfmDistrJob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmD_Job.Vibor := 0;
  dmIS.qPers.Close;
  dmIS.qTeams.Close;
  dmIS.qLoad_P.Close;
  dmIS.qPlan_P.Close;
  dmIS.qSUM_P.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write(p1, iniRect);
    Write(p3, iniRect);
    Write(dbg1, iniGridEh);
    Write(dbg2, iniGridEh);
    Write(dbg3, iniGridEh);
    Write(dbg4, iniGridEh);
    Write(dbg5, iniGridEh);
  finally
    Free;
  end;
end;

procedure TfmDistrJob.SpeedButton1Click(Sender: TObject);
var
  nom: Integer;
begin
  if dmIS.qPlan_P.IsEmpty then
    exit;
  if not dmIS.qPlan_PP_AMOUNT.IsNull then
    exit;
  if not dmIs.qPlan_PF_AMOUNT.IsNull then
    exit;

  if MsgQuestion(SysVars.NReg + ' , �� ������������� ������ ������� ��������� '
    +
    '������?', '�������� ������') = id_yes then
  begin
    nom := dmIs.qD_JOBID_PROD_PLAN.AsInteger;

    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM PRODUCT_PLANS_P WHERE ID_PROD_PLAN_P = :pp1');
      ParamByName('pp1').AsInteger := dmIS.qPlan_PID_PROD_PLAN_P.AsInteger;
      try
        ExecSQL;
        if dmIS.mT.InTransaction then
          dmIS.mT.CommitRetaining;
      except
        MsgInformation('������ ��� �������� ������', '������');
        if dmIS.mT.InTransaction then
          dmIS.mT.RollbackRetaining;
      end;
    end;

    fmD_JOB.OpenD_JOB;
    dmIS.qD_JOB.AfterScroll := nil;
    dmIS.qD_JOB.Locate('ID_PROD_PLAN', nom, []);
    dmIS.qD_JOB.AfterScroll := dmIS.qD_JOBAfterScroll;
    fmD_JOB.OpenStore_Det;
  end;
end;

procedure TfmDistrJob.qJOB_PCalcFields(DataSet: TDataSet);
begin
  if qJOB_POBJ_NAME.AsString = '' then
    qJOB_PnObj.AsString := qJOB_PINAME.AsString
  else
    qJOB_PnOBJ.AsString := qJOB_POBJ_NAME.AsString;
end;

procedure TfmDistrJob.SpeedButton4Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg3);
  Screen.Cursor := crDefault;

end;

procedure TfmDistrJob.SpeedButton3Click(Sender: TObject);
{var
  status1, id_p: Integer;}
begin
  if dmIS.dsPlan_P.State in [dsEdit, dsInsert] then
    dmIS.qPlan_P.Post;
  dmIs.mT.CommitRetaining;
  Ysl_P := True;
  fmDistrJob.Podshivka;
  {
  If MsgQuestion('����� �������� ��������� ������� ����� ���������� ��� ��������������. '+
   '��� �������� � ������������ ������� ����� ������� �� �����. ' + SysVars.NReg +
   ' , �� ������������� ������ ������� �������� �������?',
   '�������� ��������� �������') = id_yes Then
  //try
  Screen.Cursor := crHourGlass;

   with dmIS.qIN, dmIS.qIN.SQL do begin
    Close;
    Clear;
    Add('select status,id from PA_BILL_P70_PERS(:ID_AREA,:D_IN,:ID_TN,:ID_FIO,:ID_SHIFT,:id_EQ)');
    ParamByName('ID_AREA').AsInteger := fmMain.C_PA;
    ParamByName('D_IN').AsDate := fmD_JOB.dtp1.Date;
    ParamByName('ID_TN').AsInteger := SysVars.RegTN;
    ParamByName('ID_FIO').Value := null;
    if fmD_JOB.lcbShift.KeyValue = null then ParamByName('ID_SHIFT').Clear
    else ParamByName('ID_SHIFT').AsInteger := fmD_JOB.lcbShift.KeyValue;
    if fmD_JOB.lcbEqp.KeyValue = null then ParamByName('ID_EQ').Clear
    else ParamByName('ID_EQ').AsInteger := fmD_JOB.lcbEqp.KeyValue;
    try
     Open;
     status1 := FieldByName('status').asInteger;
     id_p := FieldByName('id').asInteger;
     if status1 = -1 then
     begin
      Close;
      Clear;
      Add('select * from create_traff_bills(:ID_BILL)');
      ParamByName('ID_BILL').AsInteger := id_p;
      if cbNakl.Checked then Open;
      if not IsEmpty then
       MsgInformation('��������� �� ����������� �������.','��������� �� �����������');
      If dmIS.mT.InTransaction Then dmIS.mT.CommitRetaining;
      fmD_JOB.tbVib.Click;
      //fmD_JOB.dtp1CloseUp(Sender);
      dbg3.FieldColumns['P_AMOUNT'].Color := clWhite;
      dbg3.FieldColumns['P_TIME'].Color := clWhite;
      dbg3.FieldColumns['REM'].Color := clWhite ;
      dbg3.FieldColumns['SHOTNAME'].Color := clWhite;
      with dmIS.qPlan_P, dmIS.qPlan_P.SQL do begin
        Close;
        Clear;
        Add('select P.* ,e.shotname, P.AMOUNT*T.T_PERSONNEL as T_PERS,l.posit');
        Add('from (PRODUCT_PLANS_P P join PRODUCT_PLANS L');
        Add('on L.ID_PROD_PLAN = P.ID_PROD_PLAN)');
        Add('join PRODUCT_TRAFF T on T.ID_PROD_TRAFF = L.ID_PROD_TRAF');
        Add('left join equipments e on e.ID_EQUIPMENT = p.ID_EQUIPMENT');
        Add('where P.ID_PROD_PLAN = :ID_PROD_PLAN');
        If Kdistr = 1 Then Add('and P.ID_P is not NULL');
        If Kdistr = 2 Then Add('and P.ID_TEAM is not NULL');
        Open;
       end;
     end;
     Screen.Cursor := crDefault;
     If status1 >= 0 Then
     begin
      If dmIS.mT.InTransaction Then dmIS.mT.RollbackRetaining;
      Close;
      Clear;
      Add('select obj_name from product_objects where id_object = :id_object');
      ParamByName('id_object').AsInteger := status1;
      Open;
      MsgError('������ ��� �������� ��������� �������. ������: '+
              dmIS.qIN.FieldByName('obj_name').AsString + '','������ ��������');
     end;
    except
     on E: Exception do
     begin
      If dmIS.mT.InTransaction Then dmIS.mT.RollbackRetaining;
      if Pos('exception 13', e.Message)>0 then
       begin
           ShowMessage(E.Message);
           Exit;
       end else raise;
     end;//do
    end; //try
     //  end; //try
   end; //with
  }

end;

procedure TfmDistrJob.FormShow(Sender: TObject);
begin
  case Kdistr of
    1:
      begin
        dbg3.Columns[1].FieldName := 'fIO';
        dbg2.Columns[1].Title.Caption := '�.�.�.';
      end;
    2:
      begin
        dbg3.Columns[1].FieldName := 'nTEAM';
        dbg2.Columns[1].Title.Caption := '�������';
      end;
  end;
  //dbn2BeforeAction(Sender,nbRefresh);

  with dmIS.qPers do
  begin
    Close;
    ParamByName('pa1').AsInteger := fmMain.C_PA;
    ParamByName('dt').AsDate := fmD_JOB.dtp1.Date;
    // ParamByName('d2').AsDate := fmD_JOB.d2;

    Open;
  end;
  with dmIS.qTeams, dmIS.qTeams.SQL do
  begin
    Close;
    Clear;
    Add('SELECT * FROM TEAMS WHERE ID_P_AREA = :ar1 AND D_CLOSE IS NULL');
    Add('ORDER BY ID_TEAM');
    ParamByName('ar1').AsInteger := fmMain.C_PA;
    Open;
  end;
  fmDistrJob.OpenDistr;
  if not dmIs.qPlan_P.IsEmpty then
    dmIs.qLoad_P.Locate('ID_P', dmIs.qPlan_PID_P.AsInteger, []);

end;

procedure TfmDistrJob.sbEdit_PClick(Sender: TObject);
begin
  if sbEdit_P.Down then
  begin
    dbg3.FieldColumns['P_AMOUNT'].Color := clSkyBlue;
    dbg3.FieldColumns['P_TIME'].Color := clSkyBlue;
    dbg3.FieldColumns['REM'].Color := clSkyBlue;
    dbg3.FieldColumns['SHOTNAME'].Color := clSkyBlue;
    dbg3.ReadOnly := False;
    dmIs.qPlan_P.Edit;
    dbn3.VisibleButtons := [nbFirst, nbLast, nbEdit, nbPost];
  end
  else
  begin
    if dmIS.dsPlan_P.State in [dsEdit] then
      dmIS.qPlan_P.Post;
    dbg3.FieldColumns['P_AMOUNT'].Color := clWhite;
    dbg3.FieldColumns['P_TIME'].Color := clWhite;
    dbg3.FieldColumns['REM'].Color := clWhite;
    dbg3.FieldColumns['SHOTNAME'].Color := clWhite;
    dbg3.ReadOnly := True;
    dbn3.VisibleButtons := [nbFirst, nbLast];
  end;
end;

procedure TfmDistrJob.dbg3Columns6EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if not Assigned(fmEqp) then
    Application.CreateForm(TfmEqp, fmEqp);
  fmEqp.dbg1SortMarkingChanged(Sender);
  fmEqp.lcbEqp.KeyValue := fmMain.C_PA;
  fmEqp.Show;

end;

procedure TfmDistrJob.sbEdit_P_FioClick(Sender: TObject);
begin
  if sbEdit_P_Fio.Down then
  begin
    dbg4.FieldColumns['P_AMOUNT'].Color := clSkyBlue;
    dbg4.FieldColumns['P_TIME'].Color := clSkyBlue;
    dbg4.FieldColumns['REM'].Color := clSkyBlue;
    dbg4.FieldColumns['SHOTNAME'].Color := clSkyBlue;
    dbg4.ReadOnly := False;
    dmIs.qPlan_P_Fio.Edit;
    dbn4.VisibleButtons := [nbFirst, nbLast, nbEdit, nbPost];
  end
  else
  begin
    if dmIS.dsPlan_P_Fio.State in [dsEdit, dsInsert] then
      dmIS.qPlan_P_FIO.Post;
    dbg4.FieldColumns['P_AMOUNT'].Color := clWhite;
    dbg4.FieldColumns['P_TIME'].Color := clWhite;
    dbg4.FieldColumns['REM'].Color := clWhite;
    dbg4.ReadOnly := True;
    dbg4.FieldColumns['SHOTNAME'].Color := clWhite;
    dbn4.VisibleButtons := [nbFirst, nbLast];
  end;
end;

procedure TfmDistrJob.SpeedButton9Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg4);
  Screen.Cursor := crDefault;
end;

procedure TfmDistrJob.p3Change(Sender: TObject);
begin
  if p3.ActivePage.Name = 'ts2' then
  begin
    if dmIS.dsPlan_P.State in [dsEdit, dsInsert] then
      dmIS.qPlan_P.Post;
    dmIs.qPlan_P_Fio.Close;
    dmIs.qPlan_P_Fio.SQL.Clear;
    dmIs.qPlan_P_Fio.SQL.Add('select l.posit, ob.dec_no, s.name oname,' +
      'coalesce(ob.obj_name,i.name) nm,ob.id_object,' +
      'pr.id_version, pr.name name_ord,pr.n_order,' +
      'coalesce(P1.FIO,' + '''������''' + ') fio, coalesce(P1.IDPOST,-1) idpost,'
      +
      'coalesce(T1.NAME,' + '''������''' + ') name_dol,e.shotname,op.step,' +
      'p.id_prod_plan_p, p.id_prod_plan, p.id_p, p.id_team, p.amount,' +
      'p.f_amount, p.f_time,p.id_equipment, p.p_amount, p.p_time, p.rem');
    dmIs.qPlan_P_Fio.SQL.Add(' from (PRODUCT_PLANS_P P join PRODUCT_PLANS L on'
      +
      ' l.d_out = :d1 and l.amount >0 and l.id_shift = :id_shift and' +
      ' p.id_p = :id_p and L.ID_PROD_PLAN = P.ID_PROD_PLAN)' +
      ' left join equipments e on e.ID_EQUIPMENT = p.ID_EQUIPMENT' +
      ' left join PERSONNEL p1 on p1.id_p = p.id_p' +
      ' left join POST t1 on T1.IDPOST = P1.IDPOST' +
      ' join PRODUCT_TRAFF T on T.id_prod_traff = L.id_prod_traf and t.id_area = :pa1' +
      ' join operations s on s.id_area = t.id_area and s.id_operation = t.id_operation' +
      ' join product_oper op on op.id_prod_oper = t.id_prod_oper' +
      ' join product_objects ob on ob.id_object = op.id_object' +
      ' left join items i on i.id_item = ob.id_item' +
      ' join project_ords pr on pr.id_version = op.id_version');
    // ' order by P1.FIO,l.posit, 4, s.name
    dmIs.qPlan_P_Fio.SQL.Add(OrdBy(dbg4));

    dmIs.qPlan_P_Fio.ParamByName('pa1').AsInteger := fmMain.C_PA;
    dmIs.qPlan_P_Fio.ParamByName('d1').AsDate := fmD_Job.dtp1.Date;
    dmIs.qPlan_P_Fio.ParamByName('id_p').AsInteger :=
      dmIs.qLoad_PID_P.AsInteger;
    if fmD_Job.lcbShift.KeyValue = null then
      dmIs.qPlan_P_Fio.ParamByName('id_shift').Clear
    else
      dmIs.qPlan_P_Fio.ParamByName('id_shift').AsInteger :=
        fmD_Job.lcbShift.KeyValue;
    // ShowMessage(dmIs.qPlan_P_Fio.Text);
    dmIs.qPlan_P_Fio.Open;
  end;
  if p3.ActivePage.Name = 'ts1' then
  begin
    if dmIS.dsPlan_P_Fio.State in [dsEdit, dsInsert] then
      dmIS.qPlan_P_Fio.Post;
    dmIs.qPlan_P.Close;
    dmIs.qPlan_P.Open;
  end;
  if p3.ActivePage.Name = 'ts3' then
  begin
    if dmIS.dsPlan_P_Fio.State in [dsEdit, dsInsert] then
      dmIS.qPlan_P_Fio.Post;
    if dmIS.dsPlan_P.State in [dsEdit, dsInsert] then
      dmIS.qPlan_P.Post;
    id_p := 0;
    Rep_Plan_Day(id_p);
  end;
end;

procedure TfmDistrJob.N1Click(Sender: TObject);
begin
  id_p := 0;
  Rep_Plan_Day(id_p);
  frxRRep_Plan_Day.Script.Variables['AREA'] := fmMain.lcb1.Text;
  frxRRep_Plan_Day.Script.Variables['D_JOB'] := '�� ' +
    FormatDateTime('dd  mmmm  yyyy', fmD_JOB.dtp1.Date) +
    '     ' + fmD_JOB.lcbShift.Text;
  frxRRep_Plan_Day.ShowReport;

end;

procedure TfmDistrJob.N2Click(Sender: TObject);
begin
  id_p := 0;
  Rep_Plan_Day(id_p);
  frxRRep_Plan_Day_Pers.Script.Variables['AREA'] := fmMain.lcb1.Text;
  frxRRep_Plan_Day_Pers.Script.Variables['D_JOB'] := '�� ' +
    FormatDateTime('dd  mmmm  yyyy', fmD_JOB.dtp1.Date) +
    '     ' + fmD_JOB.lcbShift.Text;
  frxRRep_Plan_Day_Pers.ShowReport;

end;

procedure TfmDistrJob.SpeedButton8Click(Sender: TObject);
{var
  s: string;}
begin
  {s := 'select coalesce(o.obj_name,i.name) as nm,'+
   'p.name as name_ord,p.n_order, s.name as name_oper, ps.name as name_post,'+
   'per.fio, e.shotname,l1.id_prod_plan_p,l1.id_p,l1.amount as amount_p,'+
   'l1.AMOUNT*f.T_PERSONNEL as T_PERS,'+
   'l1.p_amount as p_amount_p ,l1.p_time as p_time_p,l1.rem as rem_p,'+
   'l1.f_amount as f_amount_p,l1.f_time as f_time_p,'+
   'p.id_version,p.id_project, p.id_order, o.id_object,r.id_prod_oper, o.obj_type,'+
   'f.id_operation,l.id_prod_plan, l.amount,l.f_amount,l.p_amount,r.step,'+
   'l.f_time,l.p_time,f.T_PERSONNEL,coalesce(1/(l1.AMOUNT*f.T_PERSONNEL),0) norm'+
   ' from (((((project_ords p join product_objects o on o.id_version = p.id_version)'+
   ' join product_oper r on r.id_object = o.id_object)'+
   ' join product_traff f on f.id_prod_oper = r.id_prod_oper and f.id_area = :id_area)'+
   ' join operations s on s.id_area = f.id_area and s.id_operation = f.id_operation)'+
   ' join product_plans l on l.d_out = :d_out and l.amount > 0 and l.id_shift = :id_shift and'+
   ' l.id_prod_traf = f.id_prod_traff)'+
   ' join product_plans_p l1 on l1.id_p = :id_p and l1.id_prod_plan = l.id_prod_plan'+
   ' left join items i on i.id_item = o.id_item'+
   ' left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT'+
   ' left join personnel per on l1.id_p = per.id_p'+
   ' left join post ps on per.idpost = ps.idpost'+
   ' order by per.fio, 1,s.name';
  qRep_Plan_Day.Close;
  qRep_Plan_Day.SQL.Clear;
  qRep_Plan_Day.SQL.Add(s);
  qRep_Plan_Day.ParamByName('id_area').AsInteger := dmIs.qD_JOBID_AREA.Value;
  qRep_Plan_Day.ParamByName('d_out').AsDate := fmD_Job.dtp1.Date;
  qRep_Plan_Day.ParamByName('id_shift').AsInteger := fmD_Job.lcbShift.KeyValue;
  qRep_Plan_Day.ParamByName('id_p').AsInteger := dmIs.qLoad_PID_P.AsInteger;
  qRep_Plan_Day.Open;
  If qRep_Plan_Day.IsEmpty Then
  begin
   ShowMessage('����� ������...');
   Exit;
  end;
  }
  id_p := 0;
  Rep_Plan_Day(id_p);
  frxRRep_Plan_Day_Pers.Script.Variables['AREA'] := fmMain.lcb1.Text;
  frxRRep_Plan_Day_Pers.Script.Variables['D_JOB'] := '�� ' +
    FormatDateTime('dd  mmmm  yyyy', fmD_JOB.dtp1.Date) +
    '     ' + fmD_JOB.lcbShift.Text;
  frxRRep_Plan_Day_Pers.ShowReport;

end;

procedure TfmDistrJob.DBGridEh2Columns15EditButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
  if not Assigned(fmMmRem) then
    Application.CreateForm(TfmMmRem, fmMmRem);
  fmMmRem.edRem := 2;
  fmMmRem.lbEdit.Caption := '�������������� ���������.';
  fmMmRem.mmRem.Text := dmIS.qPlan_P_FioREM.Value;
  if sbEdit_P_Fio.Down then
  begin
    dmIS.qPlan_P_Fio.Edit;
    fmMmRem.Visible := True;
    fmMmRem.mmRem.ReadOnly := False;
    fmMmRem.lbEdit.Caption := '�������������� ���������.';
  end;
  fmMmRem.Show;

end;

procedure TfmDistrJob.Exel1Click(Sender: TObject);
var
  s1 : string;
  id_p: Integer;
begin
  id_p := 0;
  Rep_Plan_Day(id_p);
  qRep_Plan_Day.Close;
  qRep_Plan_Day.ParamByName('id_area').AsInteger := dmIs.qD_JOBID_AREA.Value;
  qRep_Plan_Day.ParamByName('d_out').AsDate := fmD_Job.dtp1.Date;
  qRep_Plan_Day.ParamByName('ID_SHIFT').AsInteger := fmD_Job.lcbShift.KeyValue;
  qRep_Plan_Day.Open;
  if qRep_Plan_Day.IsEmpty then
  begin
    ShowMessage('����� ������...');
    Exit;
  end;

  {  if not dmIS.dbDOC.Connected then
      dmIS.dbDOC.Connected := True;
    qInsT.Close;
    qInsT.sql.Clear;
    qInsT.SQL.Add('select w.id_doc from workdocs w where w.id_owner = :id_owner');
    qInsT.ParamByName('id_owner').Value := 5; //��� *** ������� �������
    qInsT.Open;
    if qInsT.IsEmpty then
    begin
      ShowMessage('��� �������....');
      Exit;
    end
    else}
  begin
    {    fmMain.StoreDoc_Sh(0, qInsT.FieldByName('ID_DOC').Value,
          '.\Tmp\Plan_Day.xls', 1);
        xlRepPlan_Day.XLSTemplate := fmMain.FN;
        dmIS.dbDOC.Connected := False;       }
    if shrfunc.GetTemplate(5, dmIs.qIn, xlRepPlan_Day) = false then
    begin
      MsgError('��� �������...', '�������� �������');
      screen.Cursor := crDefault;
      exit;
    end;
    s1 := '';
    s1 := FormatDateTime('dd mmmm yyyy', TDate(fmD_Job.dtp1.DateTime)) +
      fmD_Job.lcbShift.Text;
    xlRepPlan_Day.ParamByName['D_FROM'].AsString := s1;
    xlRepPlan_Day.Report;
  end;

end;

procedure TfmDistrJob.dbn1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
var
  nom: Integer;
begin
  case Button of
    nbRefresh:
      begin
        nom := dmIs.qD_JOBID_PROD_PLAN.AsInteger;
        fmD_JOB.OpenD_JOB;
        dmIS.qD_JOB.AfterScroll := nil;
        dmIS.qD_JOB.Locate('ID_PROD_PLAN', nom, []);
        dmIS.qD_JOB.AfterScroll := dmIS.qD_JOBAfterScroll;
        fmD_JOB.OpenStore_Det;
      end; //nbRefresh
  end; //Case

end;

procedure TfmDistrJob.SpeedButton6Click(Sender: TObject);
begin
  if not Assigned(fmTabPlan) then
    Application.CreateForm(TfmTabPlan, fmTabPlan);
  fmTabPlan.Caption := '����-������ - ' + dmIS.qPANAME.AsString;
  fmTabPlan.Show;

end;

procedure TfmDistrJob.spVerClick(Sender: TObject);
var
  P_OBJ : integer;
begin
  Screen.Cursor := crHourGlass;
  fmMain.Tree_Det := True;
  if not Assigned(fmOBJECT) then
    Application.CreateForm(TfmOBJECT, fmOBJECT);
  P_OBJ := 0;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT ID_OBJECT FROM PRODUCT_OBJECTS');
    Add('WHERE ID_VERSION = :or1 AND ID_PARENT = 0');
    ParamByName('or1').AsInteger := fmMain.CP_VER;
    //dmIS.qD_JOBID_VERSION.AsInteger;
    try
      Open;
    except;
    end;
    if not IsEmpty then
      P_OBJ := FieldByName('ID_OBJECT').AsInteger;
  end;
  //fmOBJECT.C_OBJ := P_OBJ;
  fmOBJECT.C_OBJ := dmIs.qD_JOBID_OBJECT.AsInteger;
  fmMain.CP_VER := dmIS.qD_JOBID_VERSION.AsInteger;
  fmOBJECT.Caption := '����� - ' + dmIS.qP_PRN_ORDER.AsString + ' - ' +
    dmIS.qP_PRNAME.AsString;
  fmOBJECT.lbConstr.Caption := dmIs.qD_JOBFIO.AsString;
  fmOBJECT.ShowModal;

end;

procedure TfmDistrJob.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if dmIS.qD_JOB.IsEmpty then
    exit;
  if Key = 13 then
  try
    Screen.Cursor := crHourGlass;
    if ed1.Text = '' then
    begin
      MsgInformation('��������� ������� ������', '������� ������');
      Screen.Cursor := crDefault;
      exit;
    end;
    C_TZ := dmIS.qD_JOBID_PROD_PLAN.Value;
    dmIS.qD_JOB.DisableControls;
    repeat
      if dmIS.qD_JOB.Eof then
        dmIS.qD_JOB.First
      else
        dmIS.qD_JOB.Next;
    until (Pos(ansiuppercase(ed1.Text),
      ansiuppercase(dbg1.SelectedField.AsString)) > 0)
      or (C_TZ = dmIS.qD_JOBID_PROD_PLAN.Value);
    dmIS.qD_JOB.EnableControls;
    Screen.Cursor := crDefault;
  except
  end;

end;

procedure TfmDistrJob.dbn2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  case Button of
    nbPost: dmIS.qLoad_P.Post;
    nbRefresh:
      begin
        with dmIS.qLoad_P, dmIS.qLoad_P.SQL do
        begin
          Close;
          Clear;
          Add('select g.*,p.p_amount,p.p_time ' +
            ' from GET_PA_DAY_LOAD_P(:id_area,:d_work,:kop) g' +
            ' left join product_planS_p P ON P.ID_P = g.id_p and p.id_prod_plan = :id_prod_plan');

          if (Kdistr = 1) and (cbFIO.State = cbChecked) then
          begin
            Add(' join oper_posts o on o.id_post = g.id_post and o.id_area = :id_area'
              +
              ' and o.id_operation = :id_operation');
            ParamByName('id_operation').AsInteger :=
              dmIS.qD_JOBID_OPERATION.AsInteger;
          end;

          ParamByName('id_area').AsInteger := fmMain.C_PA;
          ParamByName('d_work').AsDate := fmD_JOB.dtp1.Date;
          ParamByName('kop').AsInteger := Kdistr;
          ParamByName('id_prod_plan').AsInteger :=
            dmIS.qD_JOBID_PROD_PLAN.AsInteger;
          Open;
        end;
      end;
  end; //Case
end;

procedure TfmDistrJob.dbg4444DblClick(Sender: TObject);
var
  P_OBJ : integer;
begin
  {If not Assigned(fmOBJECT) Then Application.CreateForm(TfmOBJECT, fmOBJECT);
  P_OBJ := 0;
  P_OBJ := dmIS.qPlan_P_FioID_OBJECT.AsInteger ;
  fmOBJECT.C_OBJ := P_OBJ;
  fmMain.CP_VER := dmIS.qPlan_P_FioID_VERSION.AsInteger;
  fmOBJECT.Caption := '����� - ' + dmIS.qPlan_P_FioN_ORDER.AsString + ' - ' +
    dmIS.qPlan_P_FioNAME_ORD.AsString;
  fmOBJECT.lbConstr.Caption := '';
  fmOBJECT.ShowModal;  }

  Screen.Cursor := crHourGlass;
  fmMain.Tree_Det := True;
  if not Assigned(fmOBJECT) then
    Application.CreateForm(TfmOBJECT, fmOBJECT);
  P_OBJ := 0;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT ID_OBJECT FROM PRODUCT_OBJECTS');
    Add('WHERE ID_VERSION = :or1 AND ID_PARENT = 0');
    ParamByName('or1').AsInteger := fmMain.CP_VER;
    //dmIS.qD_JOBID_VERSION.AsInteger;
    try
      Open;
    except;
    end;
    if not IsEmpty then
      P_OBJ := FieldByName('ID_OBJECT').AsInteger;
  end;
  //fmOBJECT.C_OBJ := P_OBJ;
  fmOBJECT.C_OBJ := dmIS.qPlan_P_FioID_OBJECT.AsInteger;
  fmMain.CP_VER := dmIS.qPlan_P_FioID_VERSION.AsInteger;
  fmOBJECT.Caption := '����� - ' + dmIS.qPlan_P_FioN_ORDER.AsString + ' - ' +
    dmIS.qPlan_P_FioNAME_ORD.AsString;
  fmOBJECT.lbConstr.Caption := '';
  fmOBJECT.ShowModal;

end;

procedure TfmDistrJob.SpeedButton12Click(Sender: TObject);
{var //Route: PRoute;
  R, S: string;}
begin
  qIns.Close;
  qIns.SQL.Clear;
  qIns.SQL.Add('select id_object from product_objects');
  qIns.SQL.Add('where id_version = :id_version and id_parent = 0');
  qIns.ParamByName('id_version').AsInteger := dmIs.qD_JOBID_VERSION.AsInteger;
  //ShowMessage(qInsT.text);
  qIns.Open;
  if not qIns.FieldByName('id_object').IsNull then
  begin
    qRep_MR_CART.Close;
    qRep_MR_CART.SQL.Clear;
    qRep_MR_CART.SQL.Add('select * from REP_MR_CART(:ID_OBJECT_)');
    qRep_MR_CART.ParamByName('ID_OBJECT_').AsInteger :=
      qIns.FieldByName('id_object').AsInteger;
    qRep_MR_CART.Open;
    frxRRep_MR_CART.ShowReport(True);
  end;
end;

procedure TfmDistrJob.SpeedButton13Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg1);
  Screen.Cursor := crDefault;

end;

procedure TfmDistrJob.SpeedButton14Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg2);
  Screen.Cursor := crDefault;

end;

procedure TfmDistrJob.cbFIOClick(Sender: TObject);
begin
  case cbFio.State of
    cbChecked: cbFio.Caption := '���������';
    cbUnchecked: cbFio.Caption := '������ ������';
  end;
end;

procedure TfmDistrJob.dbg4444SortMarkingChanged(Sender: TObject);
begin
  p3Change(Sender);
end;

procedure TfmDistrJob.SpeedButton18Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg5);
  Screen.Cursor := crDefault;
end;

procedure TfmDistrJob.sbEdit_P_Fio_ListClick(Sender: TObject);
begin
  if sbEdit_P_Fio_List.Down then
  begin
    dbg5.FieldColumns['P_AMOUNT'].Color := clSkyBlue;
    dbg5.FieldColumns['P_TIME'].Color := clSkyBlue;
    dbg5.FieldColumns['REM'].Color := clSkyBlue;
    dbg5.FieldColumns['SHOTNAME'].Color := clSkyBlue;
    dbg5.ReadOnly := False;
    qRep_Plan_Day.Edit;
    dbn5.VisibleButtons := [nbFirst, nbLast, nbEdit, nbPost];
  end
  else
  begin
    if qRep_Plan_Day.State in [dsEdit, dsInsert] then
      qRep_Plan_Day.Post;
    dbg5.FieldColumns['P_AMOUNT'].Color := clWhite;
    dbg5.FieldColumns['P_TIME'].Color := clWhite;
    dbg5.FieldColumns['REM'].Color := clWhite;
    dbg5.ReadOnly := True;
    dbg5.FieldColumns['SHOTNAME'].Color := clWhite;
    dbn5.VisibleButtons := [nbFirst, nbLast];
  end;

end;

procedure TfmDistrJob.SpeedButton15Click(Sender: TObject);
begin
  if dmIS.dsPlan_P_Fio.State in [dsEdit, dsInsert] then
    dmIS.qPlan_P_Fio.Post;
  dmIs.mT.CommitRetaining;
  Ysl_P := False;
  fmDistrJob.Podshivka;
end;

procedure TfmDistrJob.SpeedButton20Click(Sender: TObject);
begin
  if dsRep_Plan_Day.State in [dsEdit, dsInsert] then
    qRep_Plan_Day.Post;
  dmIs.mT.CommitRetaining;
  Ysl_P := False;
  fmDistrJob.Podshivka;

end;

procedure TfmDistrJob.dbg1DblClick(Sender: TObject);
{var
  P_OBJ, b, i: integer;}
begin
  spVerClick(Sender);
  {If not Assigned(fmOBJECT) Then Application.CreateForm(TfmOBJECT, fmOBJECT);
  P_OBJ := 0;
  P_OBJ := dmIS.qD_JOBID_OBJECT.AsInteger ;
  fmMain.CP_VER := dmIS.qD_JOBID_VERSION.AsInteger;
  fmOBJECT.C_OBJ := P_OBJ;
  fmOBJECT.Caption := '����� - ' + dmIS.qP_PRN_ORDER.AsString + ' - ' +
    dmIS.qP_PRNAME.AsString;
  fmOBJECT.lbConstr.Caption := dmIs.qD_JOBFIO.AsString;
  fmOBJECT.ShowModal;
   }
end;

procedure TfmDistrJob.dbg1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if dmIS.qD_JOBAMOUNT_SUM_ALL.Value >= dmIs.qD_JOBAMOUNT.Value then
    AFont.Color := clBlue;

end;

procedure TfmDistrJob.dbg1SortMarkingChanged(Sender: TObject);
begin
  fmD_JOB.OpenD_JOB;
end;

procedure TfmDistrJob.dbg2P_TIMEUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
{var
  i: Real;
  y: extended;}
begin
  try
    if Frac(Value) > 0.6 then
    begin
      ShowMessage('� ���� 59 �����....');
      Exit;
    end;
  except
  end;
end;

procedure TfmDistrJob.dbg2DblClick(Sender: TObject);
var
  KLV : string;
  tr, sr: extended;
begin
  if dmIS.qLoad_P.IsEmpty then
    exit;
  dmIs.nom := dmIs.qLoad_PID_P.AsInteger;
  tr := 0;
  sr := 0;
  cr0 := 0;
  try
    tr := dmIS.qD_JOBSUM_PERS.AsFloat - dmIS.qSUM_PA_SUM.AsFloat;
    sr := dmIS.qLoad_PWORK_TIME.AsFloat - dmIS.qLoad_PLOAD_TIME.AsFloat;
  except
  end;
  if sr <= 0 then
  begin
    MsgInformation('������ ��������', '�������� ��������');
    //  if not Ysl then exit;
  end;
  Ysl := false;
  if tr <= 0 then
  begin
    MsgInformation('������ ������������', '�������� ��������');
    //  exit;
  end;
  if (sr >= tr) then
  begin
    cr0 := tr;
    //  KLV := FloatToStr(tr);
    KLV := FormatFloat('##0.000', tr);
  end
  else
  begin
    cr0 := sr;
    //  KLV := FloatToStr(sr);
    KLV := FormatFloat('##0.000', sr);
  end;
  if not Assigned(fmWork_V) then
    Application.CreateForm(TfmWork_V, fmWork_V);
  try
    fmWork_V.lbDet.Caption := dmIs.qD_JOBNM.AsString;
    fmWork_V.lbOper.Caption := dmIs.qD_JOBONAME.AsString;
    if not dmIs.qD_JOBID_EQUIPMENT.IsNull then
      fmWork_V.lcbEqp.KeyValue := dmIs.qD_JOBID_EQUIPMENT.AsInteger
    else
      fmWork_V.lcbEqp.KeyValue := null;
    fmWork_V.edHour.Text := KLV;
    if not (dmIS.qD_JOBT_PERSONNEL.IsNull) and (dmIS.qD_JOBT_PERSONNEL.AsFloat >
      0) then
      fmWork_V.edAmount.Text :=
        FormatFloat('##0.0', StrToFloat(fmWork_V.edHour.Text) /
        dmIS.qD_JOBT_PERSONNEL.AsFloat);
  except
  end;
  fmWork_V.ShowModal;
  {
   If  InputQuery('������������� ����� ',
       '������: '   + dmIS.qD_JOBNM.AsString + '.' +#10#13
     + ' ��������: ' + dmIS.qD_JOBONAME.AsString + '.' +#10#13
     + ' �������������� ������ (�-���): ',KLV) Then
   begin
    try cr := StrToFloat(KLV);
    except
     MsgInformation('�������� ����������','�������� ��������');
     exit;
    end;
    If (cr - cr0) > 0.0001 Then begin
     MsgInformation('��� ������ ���������� �� ������� ��������. ������������� ����������',
      '�������� ��������');
     exit;
    end;
  }

end;

procedure TfmDistrJob.dbg2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  dmIs.qPlan_P.AfterScroll := nil;
  if (dmIs.qPlan_P.Active) then
    dmIs.qPlan_P.Locate('ID_P', dmIS.qLoad_PID_P.AsInteger, []);
  dmIs.qPlan_P.AfterScroll := dmIs.qPlan_PAfterScroll;
  dmIs.qPlan_P_Fio.Close;
  dmIs.qPlan_P_Fio.ParamByName('pa1').AsInteger := fmMain.C_PA;
  dmIs.qPlan_P_Fio.ParamByName('d1').AsDate := fmD_Job.dtp1.Date;
  dmIs.qPlan_P_Fio.ParamByName('id_p').AsInteger := dmIs.qLoad_PID_P.AsInteger;
  dmIs.qPlan_P_Fio.ParamByName('id_shift').AsInteger :=
    fmD_Job.lcbShift.KeyValue;
  dmIs.qPlan_P_Fio.Open;

end;

procedure TfmDistrJob.dbg2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  dmIs.qPlan_P.AfterScroll := nil;
  if dmIs.qPlan_P.Active then
    dmIs.qPlan_P.Locate('ID_P', dmIS.qLoad_PID_P.AsInteger, []);
  dmIs.qPlan_P.AfterScroll := dmIs.qPlan_PAfterScroll;
  dmIs.qPlan_P_Fio.Close;
  dmIs.qPlan_P_Fio.ParamByName('pa1').AsInteger := fmMain.C_PA;
  dmIs.qPlan_P_Fio.ParamByName('d1').AsDate := fmD_Job.dtp1.Date;
  dmIs.qPlan_P_Fio.ParamByName('id_p').AsInteger := dmIs.qLoad_PID_P.AsInteger;
  dmIs.qPlan_P_Fio.ParamByName('id_shift').AsInteger :=
    fmD_Job.lcbShift.KeyValue;
  dmIs.qPlan_P_Fio.Open;

end;

procedure TfmDistrJob.DBGridEh1Columns7EditButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
  if not Assigned(fmEqp) then
    Application.CreateForm(TfmEqp, fmEqp);
  fmEqp.lcbEqp.Enabled := False;
  fmEqp.ShowModal;

end;

procedure TfmDistrJob.DBGridEh1Columns8UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if (Text <> '') and (Value > dmIS.qPlan_PAMOUNT.Value) then
    ShowMessage('������, ��� �� �����...');

end;

procedure TfmDistrJob.DBGridEh1Columns9UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  i: Real;
//  y: extended;
begin
  //i := (Value - Int(Value))*100;
  //if  i > 60 then
  try
    i := Frac(Value);
    if i > 0.6 then
    begin
      ShowMessage('� ���� 59 �����....');
      Exit;
    end;
  except
  end;

end;

procedure TfmDistrJob.DBGridEh1Columns10EditButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
  if not Assigned(fmMmRem) then
    Application.CreateForm(TfmMmRem, fmMmRem);
  fmMmRem.edRem := 1;
  fmMmRem.lbEdit.Caption := '�������������� ���������.';
  fmMmRem.mmRem.Text := dmIS.qPlan_PREM.Value;
  if sbEdit_P.Down then
  begin
    dmIS.qPlan_P.Edit;
    fmMmRem.Visible := True;
    fmMmRem.mmRem.ReadOnly := False;
    fmMmRem.lbEdit.Caption := '�������������� ���������.';
  end;
  fmMmRem.Show;

end;

procedure TfmDistrJob.dbg3DblClick(Sender: TObject);
begin
  Ysl := True;
  fmDistrJob.dbg2DblClick(Sender);
end;

procedure TfmDistrJob.dbg3SortMarkingChanged(Sender: TObject);
begin
  p3Change(Sender);
end;

procedure TfmDistrJob.DBGridEh2Columns12UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if (Text <> '') and (Value > dmIS.qPlan_P_FioAMOUNT.Value) then
    ShowMessage('������, ��� �� �����...');

end;

procedure TfmDistrJob.DBGridEh2Columns13EditButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
  if not Assigned(fmEqp) then
    Application.CreateForm(TfmEqp, fmEqp);
  fmEqp.lcbEqp.Enabled := False;
  fmEqp.ShowModal;

end;

procedure TfmDistrJob.DBGridEh2Columns14UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
{var
  i: Real;
  y: extended;}
begin
  //i := (Value - Int(Value))*100;
  //if  i > 60 then
  try
    if Frac(Value) > 0.6 then
    begin
      ShowMessage('� ���� 59 �����....');
      Exit;
    end;
  except
  end;

end;

procedure TfmDistrJob.dbg5SortMarkingChanged(Sender: TObject);
begin
  p3Change(Sender);
end;

end.

