unit unState;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, ToolWin, ComCtrls, ShrFunc,
  IBQuery, unMainForm, DBGridEh, StdCtrls, frxClass, frxDBSet, Buttons;

type
  TfmSTATE = class(TMainForm)
    tlb1: TToolBar;
    pc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    dbg1: TDBGrid;
    DBGrid1: TDBGrid;
    dbn2: TDBNavigator;
    dbn1: TDBNavigator;
    pcStore: TPageControl;
    tsDet: TTabSheet;
    dbg3: TDBGridEh;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    frxDet: TfrxDBDataset;
    ToolButton4: TToolButton;
    frxRepDet: TfrxReport;
    tsTms: TTabSheet;
    dbg4: TDBGridEh;
    frxRepItem: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Panel_Amount: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edAmount: TEdit;
    edCena: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edAmountP: TEdit;
    edCenaP: TEdit;
    Label5: TLabel;
    edNDS: TEdit;
    SpeedButton2: TSpeedButton;
    edUnit: TEdit;
    edUnitP: TEdit;
    Find_Det: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edAm: TEdit;
    edAmW: TEdit;
    Label8: TLabel;
    edAmP: TEdit;
    edAmWP: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure dbg3SortMarkingChanged(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure dbg3DblClick(Sender: TObject);
    procedure dbg3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure ToolButton3Click(Sender: TObject);
    procedure Find_DetKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton4Click(Sender: TObject);
    procedure dbg4SortMarkingChanged(Sender: TObject);
    procedure dbg4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbg4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edAmountPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edAmountKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edAmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edAmWKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edAmPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edAmWPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    procedure Dbg2Up;
    { Public declarations }
  end;

var
  fmSTATE: TfmSTATE;

implementation
uses unMain, unIS, unOBJECT, DB, unD_JOB;

const
  id_Form = 13;

{$R *.dfm}

procedure TfmSTATE.Dbg2Up;
{var
  R1, R2: Extended;}
begin
  edAm.Text := '';
  edAmP.Text := '';
  edAmW.Text := '';
  edAmWP.Text := '';

  edAmount.Text := dmIS.qIStateOST.AsString;
  edCena.Text := dmIs.qIStateCENA.AsString;
  edAmountP.Text := dmIS.qIStateOST2.AsString;
  edCenaP.Text := dmIs.qIStateCENA2.AsString;
  edUnit.Text := dmIs.qIStateUNIT1.AsString;
  edUnitP.Text := dmIs.qIStateUNIT2.AsString;
  edNDS.Text := dmIs.qIStateNDS.AsString;
end;

procedure TfmSTATE.FormCreate(Sender: TObject);
begin
  pc1.ActivePage := ts1;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    fmMain.pb.StepBy(5);
    Read(dbg3, iniGridEh);
    fmMain.pb.StepBy(5);
    Read(dbg4, iniGridEh);
    fmMain.pb.StepBy(5);
  finally
    Free;
  end;
end;

procedure TfmSTATE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qState.Close;
  dmIS.qIState.Close;
  dmIS.qBState.Close;
  dmIS.qNOper.Close;
  dmIS.qRZ.Close;
  dmIS.qR.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write(dbg3, iniGridEh);
    Write(dbg4, iniGridEh);
  finally

    Free;
  end;
end;

procedure TfmSTATE.FormActivate(Sender: TObject);
begin
  {with dmIS.qRZ do begin
   Close;
   ParamByName('pa1').AsInteger := fmMain.C_PA ;
   Open;
  end;
  with dmIS.qR do begin
   Close;
   ParamByName('pa1').AsInteger := fmMain.C_PA ;
   Open;
  end;
  with dmIS.qNOper do begin
   Close;
   Open;
  end;
  with dmIS.qState do begin
   Close;
   ParamByName('pa1').AsInteger := fmMain.C_PA;
   Open;
  end;
  with dmIS.qBState do begin
   Close;
   ParamByName('pa1').AsInteger := fmMain.C_PA;
   Open;
  end;}
end;

procedure TfmSTATE.DBGrid1DblClick(Sender: TObject);
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
    ParamByName('or1').AsInteger := dmIS.qBStateID_ORDER.AsInteger;
    try
      Open;
    except;
    end;
    if not IsEmpty then
      P_OBJ := FieldByName('ID_OBJECT').AsInteger;
  end;
  fmOBJECT.C_OBJ := P_OBJ;
  fmOBJECT.Caption := 'Заказ - ' + dmIS.qBStateN_ORDER.AsString + ' - ' +
    dmIS.qBStateORD_NAME.AsString;
  fmOBJECT.Show;
end;

procedure TfmSTATE.dbg3SortMarkingChanged(Sender: TObject);
var
  id_obj: Integer;
begin
  Screen.Cursor := crHourGlass;
  id_obj := dmIs.qBState_P_DetID_OBJECT.AsInteger;
  with dmIs.qBState_P_Det do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from GET_PA_STATE_PARENT(:pa1,:id_parent,:id_is,:id_cena)');
    SQL.Add(OrderBy(dbg3));
    // SQL.Add('order by ID_OBJECT, ID_PROD_OPER, ID_BATCH');
    ParamByName('pa1').Value := fmMain.lcb1.KeyValue;
    ParamByName('id_parent').Value := null; //dbt1.GetId; детали
    ParamByName('id_is').Value := 2;
    ParamByName('id_cena').Value := 1;
    Screen.Cursor := crHourGlass;
    Open;
    Locate('ID_OBJECT', id_obj, []);
  end;
  Screen.Cursor := crDefault;

end;

procedure TfmSTATE.ToolButton1Click(Sender: TObject);
begin
  if pcStore.ActivePage = tsDet then
    dbg3SortMarkingChanged(Sender);
  if pcStore.ActivePage = tsTms then
    dbg4SortMarkingChanged(Sender);

end;

procedure TfmSTATE.dbg3DblClick(Sender: TObject);
var
  P_OBJ: integer;
begin
  if not Assigned(fmOBJECT) then
    Application.CreateForm(TfmOBJECT, fmOBJECT);
  P_OBJ := 0;
  fmMain.Tree_Det := True;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT ID_OBJECT,ID_VERSION FROM PRODUCT_OBJECTS');
    Add('WHERE ID_OBJECT = :or1');
    ParamByName('or1').AsInteger := dmIS.qBState_P_DetID_OBJECT.AsInteger;
    try
      Open;
    except;
    end;
    if not IsEmpty then
    begin
      P_OBJ := FieldByName('ID_OBJECT').AsInteger;
      fmMain.CP_VER := FieldByName('ID_VERSION').AsInteger;
    end;
  end;
  fmOBJECT.C_OBJ := P_OBJ;
  fmOBJECT.Caption := 'Заказ - ' + dmIS.qBState_P_DetN_ORDER.AsString + ' - ' +
    dmIS.qBState_P_DetPR_NAME.AsString;
  fmOBJECT.Show;

end;

procedure TfmSTATE.dbg3GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if dmIS.qBState_P_DetID_PA_TO.AsInteger <> fmMain.C_PA then
    Background := clMoneyGreen;
  // dbg3.EvenRowColor := clSkyBlue;
  // AFont.Color := clRed;

end;

procedure TfmSTATE.ToolButton3Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if pcStore.ActivePage = tsDet then
    GridToExcel(dbg3);
  if pcStore.ActivePage = tsTms then
    GridToExcel(dbg4);

  Screen.Cursor := crDefault;

end;

procedure TfmSTATE.Find_DetKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ID_ITEM: integer;
begin
  if pcStore.ActivePage = tsDet then
  begin
    if dbg3.DataSource = dmIS.dsBState_P_Det then
    begin
      if dmIS.qBState_P_Det.IsEmpty then
        exit;
      if Key = 13 then
      try
        Screen.Cursor := crHourGlass;
        if Find_Det.Text = '' then
        begin
          ShowMessage('Заполните образец поиска.... ');
          Screen.Cursor := crDefault;
          exit;
        end;
        ID_ITEM := dmIS.qBState_P_DetID_OBJECT.Value;
        dmIS.qBState_P_Det.DisableControls;
        repeat
          if dmIS.qBState_P_Det.Eof then
            dmIS.qBState_P_Det.First
          else
            dmIS.qBState_P_Det.Next;
        until (Pos(ansiuppercase(Find_Det.Text),
          ansiuppercase(dmIS.qBState_P_DetNAME.AsString)) > 0)
          or (ID_ITEM = dmIS.qBState_P_DetID_OBJECT.Value);
        dmIS.qBState_P_Det.EnableControls;
        Screen.Cursor := crDefault;
      except
      end;
    end;
  end;

end;

procedure TfmSTATE.ToolButton4Click(Sender: TObject);
begin
  if pcStore.ActivePage = tsDet then
  begin
    frxRepDet.Script.Variables['NSTORE'] := fmMain.lcb1.Text;
    frxRepDet.ShowReport(True);
  end;
  if pcStore.ActivePage = tsTms then
  begin
    frxRepItem.Script.Variables['NSTORE'] := fmMain.lcb1.Text;
    frxRepItem.ShowReport(True);
  end;

end;

procedure TfmSTATE.dbg4SortMarkingChanged(Sender: TObject);
var
  id_item: Integer;
begin
  Screen.Cursor := crHourGlass;
  id_item := dmIS.qIStateID_OBJECT.AsInteger;
  dmIS.qIState.Close;
  dmIS.qIState.SQL.Clear;
  dmIS.qIState.SQL.Add('select p.* from GET_PA_STATE(:pa1) p where p.id_object_type in (1,2)');
  dmIS.qIState.SQL.Add(OrderBy(dbg4));
  dmIS.qIState.ParamByName('pa1').AsInteger := fmMain.lcb1.KeyValue;
  dmIS.qIState.Open;
  dmIS.qIState.Locate('ID_OBJECT', id_item, []);
  if Panel_Amount.Visible = True then
    Dbg2Up;
  Screen.Cursor := crDefault;

end;

procedure TfmSTATE.dbg4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Dbg2Up;
end;

procedure TfmSTATE.dbg4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Dbg2Up;
end;

procedure TfmSTATE.edAmountPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
{var
  factor: Extended;}
begin
  //if (Key = 13) then edy.Text := FormatFloat('0.0#',StrToFloat(edb.Text) / fmZNakl.qSSkladCOEFF.Value,dm.fmt) ;
  if (Key = 13) then
  begin
    edAmountP.Text := StringReplace(edAmountP.Text, ' ', '', [rfReplaceAll]);
    edAmountP.Text := StringReplace(edAmountP.Text, '.', ',', [rfReplaceAll]);

    edAmount.Text := FloatToStrF(StrToFloat(edAmountP.Text) *
      dmIs.qIStateFACTOR.Value, ffFixed, 15, 4);
    edAmWP.Text := FloatToStrF(StrToFloat(edAmountP.Text) -
      StrToFloat(edAmP.Text), ffFixed, 15, 4);
    edAmW.Text := FloatToStrF(StrToFloat(edAmWP.Text) *
      dmIs.qIStateFACTOR.Value, ffFixed, 15, 4);

  end;
end;

procedure TfmSTATE.SpeedButton2Click(Sender: TObject);
begin
  if (StrToFloat(edAmount.Text) - 0.000005) > dmIS.qIStateOST.asFloat then
  begin
    ShowMessage('Вы взяли больше, чем на участке...');
    exit;
  end;
  if not (dmIs.qBill_ss.State in [dsInsert]) then
    dmIs.qBill_ss.Append;
  dmIs.qBill_ss.Edit;
  ///   dmIs.qBill_ssID_PA_BILL_.AsInteger  := dmIs.qBillID_PA_BILL.AsInteger    ;//накладная
  dmIs.qBill_ssID_ORDER.AsString :=
    fmD_JOB.qBILLPOS_BILL70TRAFFID_ORDER.AsString; //заказ
  dmIs.qBill_ssN_ORDER.AsString := fmD_JOB.qBILLPOS_BILL70TRAFFN_ORDER.AsString;
  //№ заказ
  dmIs.qBill_ssORD_NAME.AsString :=
    fmD_JOB.qBILLPOS_BILL70TRAFFORDNAME.AsString;
  // наименование заказа
  dmIs.qBill_ssID_OBJECT.Value := dmIS.qIStateID_OBJECT.Value; //объект ТМЦ
  dmIs.qBill_ssNAME.Value := dmIS.qIStateNAME.Value; //наименование ТМЦ
  dmIs.qBill_ssUNIT1.Value := dmIS.qIStateUNIT1.Value;
  dmIs.qBill_ssUNIT2.Value := dmIS.qIStateUNIT2.Value;
  dmIs.qBill_ssID_BATCH.Value := dmIS.qIStateID_BATCH.Value; //партия
  dmIs.qBill_ssFACTOR.Value := dmIS.qIStateFACTOR.Value; //коэф.
  dmIs.qBill_ssOBJ_TYPE.Value := dmIS.qIStateID_OBJECT_TYPE.Value;
  dmIs.qBill_ssID_PROD_OPER.Value := 0;
  dmIs.qBill_ssID_PROD_TRAFF.Value :=
    fmD_JOB.qBILLPOS_BILL70TRAFFID_PROD_TRAFF.Value;
  dmIs.qBill_ssID_ITEM.Value := fmD_JOB.qBILLPOS_BILL70TRAFFID_ITEM.Value;
  //по traff_mat
  dmIs.qBill_ssNAME_TRAFF_MAT.Value :=
    fmD_JOB.qBILLPOS_BILL70TRAFFNAME_TMC.Value;
  dmIs.qBill_ssNAME_DETAL.AsString := fmD_JOB.qBILLPOS_BILL70TRAFFNUMBER.AsString
    +
    ' Деталь: "' + fmD_JOB.qBILLPOS_BILL70TRAFFOBJ_NAME.AsString +
    '", Шаг ' + fmD_JOB.qBILLPOS_BILL70TRAFFID_STEP.AsString +
    ' /' + fmD_JOB.qBILLPOS_BILL70TRAFFONAME.AsString +
    '/ Кол-во = ' + fmD_JOB.qBILLPOS_BILL70TRAFFAMOUNT.AsString;

  dmIs.qBill_ssLID.Value := fmD_JOB.qBILLPOS_BILL70TRAFFID_PA_BILL_POS.Value;
  dmIs.qBill_ssID_STEP.Value := fmD_JOB.qBILLPOS_BILL70TRAFFID_STEP.Value;
  dmIs.qBill_ssNDS.Value := dmIS.qIStateNDS.Value;
  dmIs.qBill_ssSUMMA_NDS.Value :=
    (StrToFloat(edAmount.text) * dmIS.qIStateCENA.Value *
    (dmIS.qIStateNDS.Value / 100)) / (1 + dmIS.qIStateNDS.Value / 100);

  dmIs.qBill_ssAMOUNT.Value := StrToFloat(edAmount.text);
  dmIs.qBill_ssAM.Value := StrToFloat(edAm.text);
  dmIs.qBill_ssAMOUNT_W.Value := StrToFloat(edAmW.text);

  dmIs.qBill_ssAMOUNT2.Value := StrToFloat(edAmount.text) *
    dmIS.qIStateFACTOR.Value;
  dmIs.qBill_ssAM2.Value := StrToFloat(edAm.text) * dmIS.qIStateFACTOR.Value;
  dmIs.qBill_ssAMOUNT2_W.Value := StrToFloat(edAmW.text) *
    dmIS.qIStateFACTOR.Value;

  dmIs.qBill_ssCENA.Value := dmIS.qIStateCENA.Value;
  dmIs.qBill_ssCENA1.Value := dmIS.qIStateCENA.Value * dmIS.qIStateFACTOR.Value;
  dmIs.qBill_ssSUMMA.Value := StrToFloat(edAmount.text) *
    dmIS.qIStateCENA.Value;

  dmIs.qBill_ss.Post;
  if dmIS.mT.InTransaction then
    dmIS.mT.CommitRetaining;
  dmIs.qBill_ss.Edit;
  //  dbg7SortMarkingChanged(Sender);

end;

procedure TfmSTATE.edAmountKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) then
  begin
    edAmount.Text := StringReplace(edAmount.Text, ' ', '', [rfReplaceAll]);
    edAmount.Text := StringReplace(edAmount.Text, '.', ',', [rfReplaceAll]);

    edAmW.Text := FloatToStrF(StrToFloat(edAmount.Text) - StrToFloat(edAm.Text),
      ffFixed, 15, 4);
    edAmountP.Text := FloatToStrF(StrToFloat(edAmount.Text) /
      dmIs.qIStateFACTOR.Value, ffFixed, 15, 4);
    edAmWP.Text := FloatToStrF(StrToFloat(edAmW.Text) /
      dmIs.qIStateFACTOR.Value, ffFixed, 15, 4);

  end;

end;

procedure TfmSTATE.edAmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) then
  begin
    edAm.Text := StringReplace(edAm.Text, ' ', '', [rfReplaceAll]);
    edAm.Text := StringReplace(edAm.Text, '.', ',', [rfReplaceAll]);

    edAmount.Text := FloatToStrF(StrToFloat(edAm.Text) + StrToFloat(edAmW.Text),
      ffFixed, 15, 4);
    edAmountP.Text := FloatToStrF(StrToFloat(edAmount.Text) /
      dmIs.qIStateFACTOR.Value, ffFixed, 15, 4);
    edAmP.Text := FloatToStrF(StrToFloat(edAm.Text) / dmIs.qIStateFACTOR.Value,
      ffFixed, 15, 4);

  end;

end;

procedure TfmSTATE.edAmWKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) then
  begin
    edAmW.Text := StringReplace(edAmW.Text, ' ', '', [rfReplaceAll]);
    edAmW.Text := StringReplace(edAmW.Text, '.', ',', [rfReplaceAll]);

    edAmount.Text := FloatToStrF(StrToFloat(edAm.Text) + StrToFloat(edAmW.Text),
      ffFixed, 15, 4);
    edAmountP.Text := FloatToStrF(StrToFloat(edAmount.Text) /
      dmIs.qIStateFACTOR.Value, ffFixed, 15, 4);
    edAmWP.Text := FloatToStrF(StrToFloat(edAmW.Text) /
      dmIs.qIStateFACTOR.Value, ffFixed, 15, 4);

  end;
end;

procedure TfmSTATE.edAmPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) then
  begin
    edAm.Text := StringReplace(edAmP.Text, ' ', '', [rfReplaceAll]);
    edAm.Text := StringReplace(edAmP.Text, '.', ',', [rfReplaceAll]);

    edAmountP.Text := FloatToStrF(StrToFloat(edAmP.Text) +
      StrToFloat(edAmWP.Text), ffFixed, 15, 4);
    edAm.Text := FloatToStrF(StrToFloat(edAmP.Text) * dmIs.qIStateFACTOR.Value,
      ffFixed, 15, 4);
    edAmount.Text := FloatToStrF(StrToFloat(edAmountP.Text) *
      dmIs.qIStateFACTOR.Value, ffFixed, 15, 4);

  end;

end;

procedure TfmSTATE.edAmWPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) then
  begin
    edAm.Text := StringReplace(edAmWP.Text, ' ', '', [rfReplaceAll]);
    edAm.Text := StringReplace(edAmWP.Text, '.', ',', [rfReplaceAll]);

    edAmountP.Text := FloatToStrF(StrToFloat(edAmP.Text) +
      StrToFloat(edAmWP.Text), ffFixed, 15, 4);
    edAmW.Text := FloatToStrF(StrToFloat(edAmWP.Text) *
      dmIs.qIStateFACTOR.Value, ffFixed, 15, 4);
    edAmount.Text := FloatToStrF(StrToFloat(edAmountP.Text) *
      dmIs.qIStateFACTOR.Value, ffFixed, 15, 4);

  end;
end;

end.
