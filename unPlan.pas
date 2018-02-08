unit unPlan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, StdCtrls, ComCtrls, ToolWin, Grids, ExtCtrls, IBQuery,
  unMainForm, DB, IBCustomDataSet, DBGridEh, Mask, DBCtrlsEh, Buttons,
  xlcClasses, xlEngine, xlReport, DBLookupEh, DateUtils;
//Placemnt

type
  TfmPlan = class(TMainForm)
    pc: TPageControl;
    tsTime: TTabSheet;
    sg1: TStringGrid;
    ts_Obj: TTabSheet;
    Panel1: TPanel;
    IBQuery1: TIBQuery;
    Splitter1: TSplitter;
    qDATE_ORD_OBJECT: TIBQuery;
    dsDATE_ORD_OBJECT: TDataSource;
    qDATE_ORD_OBJECTN_ORDER: TIBStringField;
    qDATE_ORD_OBJECTNAME: TIBStringField;
    qDATE_ORD_OBJECTID_ORDER: TIntegerField;
    qDATE_ORD_OBJECTID_PROD_TRAFF: TIntegerField;
    qDATE_ORD_OBJECTID_OBJECT: TIntegerField;
    qDATE_ORD_OBJECTOBJ_NAME: TIBStringField;
    qDATE_ORD_OBJECTAMOUNT_ORD: TIntegerField;
    qDATE_ORD_OBJECTNAME_OPER: TIBStringField;
    qDATE_ORD_OBJECTD1: TFloatField;
    qDATE_ORD_OBJECTD2: TFloatField;
    qDATE_ORD_OBJECTD3: TFloatField;
    qDATE_ORD_OBJECTD4: TFloatField;
    qDATE_ORD_OBJECTD5: TFloatField;
    qDATE_ORD_OBJECTD6: TFloatField;
    qDATE_ORD_OBJECTD7: TFloatField;
    qDATE_ORD_OBJECTD8: TFloatField;
    qDATE_ORD_OBJECTD9: TFloatField;
    qDATE_ORD_OBJECTD10: TFloatField;
    qDATE_ORD_OBJECTD11: TFloatField;
    qDATE_ORD_OBJECTD12: TFloatField;
    qDATE_ORD_OBJECTD13: TFloatField;
    qDATE_ORD_OBJECTD14: TFloatField;
    qDATE_ORD_OBJECTD15: TFloatField;
    qDATE_ORD_OBJECTD16: TFloatField;
    qDATE_ORD_OBJECTD17: TFloatField;
    qDATE_ORD_OBJECTD18: TFloatField;
    qDATE_ORD_OBJECTD19: TFloatField;
    qDATE_ORD_OBJECTD20: TFloatField;
    qDATE_ORD_OBJECTD21: TFloatField;
    qDATE_ORD_OBJECTD22: TFloatField;
    qDATE_ORD_OBJECTD23: TFloatField;
    qDATE_ORD_OBJECTD24: TFloatField;
    qDATE_ORD_OBJECTD25: TFloatField;
    qDATE_ORD_OBJECTD26: TFloatField;
    qDATE_ORD_OBJECTD27: TFloatField;
    qDATE_ORD_OBJECTD28: TFloatField;
    qDATE_ORD_OBJECTD29: TFloatField;
    qDATE_ORD_OBJECTD30: TFloatField;
    qDATE_ORD_OBJECTD31: TFloatField;
    tlb1: TToolBar;
    Label1: TLabel;
    ed1: TEdit;
    ud1: TUpDown;
    ToolButton1: TToolButton;
    Label2: TLabel;
    cb1: TComboBox;
    xlReportDATE_ORD_OBJECT: TxlReport;
    qDATE_ORD_OBJECTID_AREA: TIntegerField;
    qDATE_ORD_OBJECTN_ID_AREA: TIBStringField;
    qDATE_ORD_OBJECTFULL_AMOUNT: TFloatField;
    qDATE_ORD_OBJECTPRODUCED: TFloatField;
    qDATE_ORD_OBJECTPRODUCED_PERID: TFloatField;
    qDATE_ORD_OBJECTD_CLOSE: TDateField;
    qInsT: TIBQuery;
    qIns: TIBQuery;
    qDATE_ORD_OBJECTOST: TFloatField;
    qObj_Sum: TIBQuery;
    qPlan: TIBQuery;
    qObj_SumD_FIX: TDateField;
    qObj_SumSUM: TIBBCDField;
    dsObj_Sum: TDataSource;
    qPlanD_OUT: TDateField;
    qPlanNAME: TIBStringField;
    qPlanF_TIME: TFloatField;
    qPlanF_TM: TFloatField;
    qPlanAMOUNT: TFloatField;
    qPlanF_AMOUNT: TFloatField;
    qPlanP_AMOUNT: TFloatField;
    qPlanOST: TFloatField;
    qPlanP_TIME: TFloatField;
    qPlanID_EQUIPMENT: TIntegerField;
    qPlanPL_NAME: TIBStringField;
    qPlanSHOTNAME: TIBStringField;
    qPlanID_AREA: TIntegerField;
    qPlanID_SHIFT: TIntegerField;
    qPlanID_PA_TO: TIntegerField;
    qPlanNAME_AREAIN: TIBStringField;
    gb2: TGroupBox;
    dbg2: TDBGridEh;
    gb3: TGroupBox;
    dsPlan: TDataSource;
    dbg3: TDBGridEh;
    qPlanID_PROD_PLAN: TIntegerField;
    tsP_F_Obj: TTabSheet;
    Panel2: TPanel;
    Label3: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    ed_pf_ord: TEdit;
    lcbPa: TDBLookupComboboxEh;
    Label5: TLabel;
    qPa: TIBQuery;
    dsPa: TDataSource;
    ToolButton2: TToolButton;
    qDATE_Plan_ORD_OBJECT: TIBQuery;
    dsDATE_Plan_ORD_OBJECT: TDataSource;
    dbg4: TDBGridEh;
    qDATE_Plan_ORD_OBJECTID_AREA: TIntegerField;
    qDATE_Plan_ORD_OBJECTN_ID_AREA: TIBStringField;
    qDATE_Plan_ORD_OBJECTN_ORDER: TIBStringField;
    qDATE_Plan_ORD_OBJECTNAME: TIBStringField;
    qDATE_Plan_ORD_OBJECTID_ORDER: TIntegerField;
    qDATE_Plan_ORD_OBJECTID_PROD_TRAFF: TIntegerField;
    qDATE_Plan_ORD_OBJECTID_OBJECT: TIntegerField;
    qDATE_Plan_ORD_OBJECTOBJ_NAME: TIBStringField;
    qDATE_Plan_ORD_OBJECTAMOUNT_ORD: TIntegerField;
    qDATE_Plan_ORD_OBJECTNAME_OPER: TIBStringField;
    qDATE_Plan_ORD_OBJECTFULL_AMOUNT: TFloatField;
    qDATE_Plan_ORD_OBJECTPRODUCED: TFloatField;
    qDATE_Plan_ORD_OBJECTPRODUCED_PERID: TFloatField;
    qDATE_Plan_ORD_OBJECTOST: TFloatField;
    qDATE_Plan_ORD_OBJECTD_CLOSE: TDateField;
    qDATE_Plan_ORD_OBJECTPRODUCED_PERID_PLAN: TFloatField;
    qDATE_Plan_ORD_OBJECTTP: TIBStringField;
    qDATE_Plan_ORD_OBJECTD1: TFloatField;
    qDATE_Plan_ORD_OBJECTD2: TFloatField;
    qDATE_Plan_ORD_OBJECTD3: TFloatField;
    qDATE_Plan_ORD_OBJECTD4: TFloatField;
    qDATE_Plan_ORD_OBJECTD5: TFloatField;
    qDATE_Plan_ORD_OBJECTD6: TFloatField;
    qDATE_Plan_ORD_OBJECTD7: TFloatField;
    qDATE_Plan_ORD_OBJECTD8: TFloatField;
    qDATE_Plan_ORD_OBJECTD9: TFloatField;
    qDATE_Plan_ORD_OBJECTD10: TFloatField;
    qDATE_Plan_ORD_OBJECTD11: TFloatField;
    qDATE_Plan_ORD_OBJECTD12: TFloatField;
    qDATE_Plan_ORD_OBJECTD13: TFloatField;
    qDATE_Plan_ORD_OBJECTD14: TFloatField;
    qDATE_Plan_ORD_OBJECTD15: TFloatField;
    qDATE_Plan_ORD_OBJECTD16: TFloatField;
    qDATE_Plan_ORD_OBJECTD17: TFloatField;
    qDATE_Plan_ORD_OBJECTD18: TFloatField;
    qDATE_Plan_ORD_OBJECTD19: TFloatField;
    qDATE_Plan_ORD_OBJECTD20: TFloatField;
    qDATE_Plan_ORD_OBJECTD21: TFloatField;
    qDATE_Plan_ORD_OBJECTD22: TFloatField;
    qDATE_Plan_ORD_OBJECTD23: TFloatField;
    qDATE_Plan_ORD_OBJECTD24: TFloatField;
    qDATE_Plan_ORD_OBJECTD25: TFloatField;
    qDATE_Plan_ORD_OBJECTD26: TFloatField;
    qDATE_Plan_ORD_OBJECTD27: TFloatField;
    qDATE_Plan_ORD_OBJECTD28: TFloatField;
    qDATE_Plan_ORD_OBJECTD29: TFloatField;
    qDATE_Plan_ORD_OBJECTD30: TFloatField;
    qDATE_Plan_ORD_OBJECTD31: TFloatField;
    qDATE_Plan_ORD_OBJECTF_CONSTR: TIBStringField;
    qDATE_Plan_ORD_OBJECTID_VERSION: TIntegerField;
    qDATE_ORD_OBJECTID_VERSION: TIntegerField;
    CheckBox1: TCheckBox;
    dbg1: TDBGridEh;
    Panel3: TPanel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ed_ord: TEdit;
    qTab: TIBQuery;
    qTabVAL: TIBBCDField;
    qTabID_DAY: TSmallintField;
    lbtsP_F_Obj: TLabel;
    lbts_Obj: TLabel;
    qDATE_ORD_OBJECTAMOUNT_STORE: TFloatField;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    qExp: TIBQuery;
    qExpID_EXPOS: TIntegerField;
    qExpID_EXPENCE: TIntegerField;
    qExpAMOUNT: TFloatField;
    qExpTOTAL_SUM: TFloatField;
    qExpPROC_NDS: TFloatField;
    qExpDEF_SUM: TFloatField;
    qExpRATE: TFloatField;
    qExpID_UNIT: TIntegerField;
    qExpID_SERVICE: TIntegerField;
    qExpUNAME: TIBStringField;
    qExpNAME: TIBStringField;
    qExpEXPENCE_DATE: TDateField;
    qExpEXPENCE_NUMBER: TIBStringField;
    qExpID_CURRENCY: TIntegerField;
    qExpNCURR: TIBStringField;
    qExpID_AGENT: TIntegerField;
    qExpN_ID_AGENT: TIBStringField;
    qExpDOC_NUMBER: TIBStringField;
    qExpDESCRIPTION: TBlobField;
    dsExp: TDataSource;
    GroupBox1: TGroupBox;
    DBGridEh1: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cb1CloseUp(Sender: TObject);
    procedure sg1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sg1DblClick(Sender: TObject);
    procedure qDATE_ORD_OBJECTBeforeOpen(DataSet: TDataSet);
    procedure dbg1SortMarkingChanged(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ed_ordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure dbg1DblClick(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure qObj_SumBeforeOpen(DataSet: TDataSet);
    procedure ToolButton2Click(Sender: TObject);
    procedure qDATE_Plan_ORD_OBJECTBeforeOpen(DataSet: TDataSet);
    procedure dbg4SortMarkingChanged(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dbg4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbg4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ed_pf_ordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure lcbPaChange(Sender: TObject);
    procedure cb1Change(Sender: TObject);

  private
    Y, M, D: word;
    D1, D2: TDate;
    procedure IniGrid;
    procedure IniGridEh_Bill(dbg: TDBGridEH);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPlan: TfmPlan;

implementation
uses unMain, unIS, unD_JOB, unOBJECT;

const
  id_Form = 26;

{$R *.dfm}

procedure TfmPlan.IniGridEh_Bill(dbg: TDBGridEH);
var
  c_d: TDate;
  d_m: word;
  i: integer;
  s: string;
begin
  d_m := DayOf(D2);
  for i := 0 to dbg.Columns.Count - 1 do
  begin
    s := dbg.Columns[i].FieldName;
    if (s[1] = 'D') then
    try
      if StrToInt(dbg.Columns[i].Title.Caption) <= d_m then
      begin
        dbg1.Columns[i].Visible := True;
        //  dd := StrToInt(Column.Title.Caption)  ;
        c_d := EncodeDate(Y, M, StrToInt(dbg.Columns[i].Title.Caption));
        with dmIs.qHolid do
        begin
          ParamByName('d1').AsDate := c_d;
          Open;
          if c_d = date then
            dbg.Columns[i].Title.Color := clSkyBlue
          else
          begin
            if not IsEmpty then
              dbg.Columns[i].Title.Color := clRed
            else
              dbg.Columns[i].Title.Color := clBtnFace;
          end;
          Close;
        end;
      end
      else
        dbg.Columns[i].Visible := false;
    except
      on EConvertError do
        dbg.Columns[i].Title.Color := clBtnFace;
    end;
  end;
end;

procedure TfmPlan.IniGrid;
var
  i, k: integer;
begin
  D1 := EncodeDate(Y, M, 1);
  if M < 12 then
    D2 := EncodeDate(Y, M + 1, 1) - 1
  else
    D2 := EncodeDate(Y, M, 31);
  {for i := 0 to sg1.RowCount - 1 do
   for k := 0 to sg1.ColCount -1 do
    sg1.Cells[k,i] := '';
  sg1.Refresh;
  }
  for i := 1 to sg1.ColCount - 1 do
    for k := 1 to sg1.RowCount - 1 do
      sg1.Cells[i, k] := '';
  if lcbPa.KeyValue <> null then
  begin
    with qINS, qINS.SQL do
    begin
      Close;
      Clear;
      Add('SELECT ID_TAB, D_FIX, D_END FROM TABS WHERE ID_P_AREA = :ar1 ');
      Add('AND ID_YEAR = :y1 AND ID_MONTH = :m1');
      ParamByName('ar1').AsInteger := lcbPa.KeyValue; //fmMain.C_PA;
      ParamByName('y1').AsInteger := Y;
      ParamByName('m1').AsInteger := M;
      Open;
      if not IsEmpty then
        //  C_TAB := FieldByName('ID_TAB').AsInteger;
        with qTab do
        begin
          Close;
          ParamByName('tb1').AsInteger := qINS.FieldByName('ID_TAB').AsInteger;
          Prepare;
        end
      else
        qTab.ParamByName('tb1').Clear;
    end;
    with dmIS.qPA_WORK do
    begin
      Close;
      ParamByName('ar1').AsInteger := lcbPa.KeyValue; //fmMain.C_PA;
      ParamByName('d1').AsDate := D1;
      ParamByName('d2').AsDate := D2;
      Prepare;
    end;
    with dmIS.qP_WORK do
    begin
      Close;
      ParamByName('id_area').AsInteger := lcbPa.KeyValue; //fmMain.C_PA;
      ParamByName('d1').AsDate := D1;
      ParamByName('d2').AsDate := D2;
      Prepare;
    end;

    with dmIS.qD_PL do
    begin
      Close;
      ParamByName('id_area').AsInteger := lcbPa.KeyValue; //fmMain.C_PA;
      ParamByName('d1').AsDate := D1;
      ParamByName('d2').AsDate := D2;
      Prepare;
    end;
    with dmIS.qPL_Proj do
    begin
      Close;
      ParamByName('id_area').AsInteger := lcbPa.KeyValue; // fmMain.C_PA;
      ParamByName('d1').AsDate := D1;
      ParamByName('d2').AsDate := D2;
      Open;
      Last;
    end;

    with sg1 do
    begin
      ColCount := Trunc(D2 - D1 + 1) + 1;
      RowCount := dmIS.qPL_Proj.RecordCount + 7; //5;
      // Cells[0,0] := dmIS.qPANAME.AsString;
      ColWidths[0] := 80;
      RowHeights[0] := 28;
      i := 1;
      repeat
        ColWidths[i] := 26;
        Cells[i, 0] := IntToStr(i);
        i := i + 1;
      until
        i = ColCount;
      Cells[0, 1] := 'Загрузка (%)';
      //  Cells[0,3] := 'Ресурс (н-час)';
      Cells[0, 2] := 'План (н-час)';
      Cells[0, 3] := 'Факт (н-час)';
      Cells[0, 4] := 'Ресурс (н-час)';
      Cells[0, 5] := 'Табель (н-час)';
      //***********
      RowHeights[3] := 18;
      RowHeights[4] := 18;
      //***********************
      RowHeights[1] := 18;
      RowHeights[2] := 18;
      RowHeights[3] := 18;
      RowHeights[4] := 18;
      RowHeights[5] := 18;

      RowHeights[6] := 4;

      k := 7; // 5;
      dmIS.qPL_Proj.First;
      while not dmIS.qPL_Proj.Eof do
      begin
        Cells[0, k] := dmIS.qPL_ProjN_ORDER.AsString;
        RowHeights[k] := 18;
        k := k + 1;
        dmIS.qPL_Proj.Next;
      end;

      for i := 2 to sg1.ColCount - 1 do
        for k := 1 to sg1.RowCount - 1 do
          sg1.Cells[i, k] := '';

      Screen.Cursor := crHourGlass;
      dmIS.qPA_WORK.Close;
      dmIS.qPA_WORK.Open;
      dmIS.qPA_WORK.First;
      while not dmIS.qPA_WORK.Eof do
      begin
        if dmIS.qPA_WORKpROC.AsFloat = -1 then
          Cells[dmIS.qPA_WORKID_DAY.AsInteger, 1] := ''
        else
          Cells[dmIS.qPA_WORKID_DAY.AsInteger, 1] := FormatFloat('#0',
            dmIS.qPA_WORKpROC.AsInteger);
        Cells[dmIS.qPA_WORKID_DAY.AsInteger, 2] := FormatFloat('0.0',
          dmIS.qPA_WORKT_NECESSARY.AsFloat);
        Cells[dmIS.qPA_WORKID_DAY.AsInteger, 4] := FormatFloat('#0',
          dmIS.qPA_WORKT_WORK.AsFloat);
        dmIS.qPA_WORK.Next;
      end;

      dmIS.qP_WORK.Close;
      dmIS.qP_WORK.Open;
      dmIS.qP_WORK.First;
      while not dmIS.qP_WORK.Eof do
      begin
        Cells[dmIS.qP_WORKID_DAY.AsInteger, 3] := FormatFloat('#0',
          dmIS.qP_WORKF_TIME.AsFloat);
        dmIS.qP_WORK.Next;
      end;

      qTAB.Close;
      qTab.Open;
      qTAB.First;
      while not qTAB.Eof do
      begin
        Cells[qTabID_DAY.AsInteger, 5] := FormatFloat('#0', qTabVAL.AsFloat);
        qTab.Next;
      end;

      for k := 7 //5
      to RowCount - 1 do
      begin
        with dmIS.qD_PL do
        begin
          Close;
          ParamByName('or1').AsString := Cells[0, k];
          Open;
          First;
        end;
        while not dmIS.qD_PL.Eof do
        begin
          if dmIS.qD_PLT_WORK.AsFloat > 0 then
            Cells[dmIS.qD_PLID_DAY.AsInteger, k] := FormatFloat('#0.00',
              dmIS.qD_PLT_WORK.AsFloat);
          dmIS.qD_PL.Next;
        end;
      end;
      Screen.Cursor := crDefault;
    end;
  end; //if lcbPa.KeyValue <> null
  dmIS.qPA_WORK.Close;
  dmIS.qPL_Proj.Close;
  qTab.Close;
  dmIS.qP_WORK.Close;
  dmIS.qD_PL.Close;

  if dmIS.mmT.InTransaction then
    dmIS.mmT.Commit;
  sg1.Refresh;

end;

procedure TfmPlan.FormCreate(Sender: TObject);
{var
  i: integer;}
begin
  DecodeDate(Date, Y, M, D);
  ud1.Position := Y;
  cb1.Text := cb1.Items.Strings[M - 1];
  cb1.ItemIndex := m - 1;
  pc.ActivePage := tsTime;
  lbts_Obj.Caption := '';
  lbtsP_F_Obj.Caption := '';

  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    fmMain.pb.StepBy(5);
    Read(pc, iniRect);
    fmMain.pb.StepBy(5);
    Read(panel1, iniRect);
    fmMain.pb.StepBy(5);
    Read(dbg1, iniGridEh);
    fmMain.pb.StepBy(5);
    Read(dbg2, iniGridEh);
    fmMain.pb.StepBy(5);
    Read(dbg3, iniGridEh);
    fmMain.pb.StepBy(5);
    Read(dbg4, iniGridEh);
    fmMain.pb.StepBy(5);
  finally
    Free;
  end;
end;

procedure TfmPlan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qDATE_ORD_OBJECT.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write(pc, iniRect);
    Write(panel1, iniRect);
    Write(dbg1, iniGridEh);
    Write(dbg2, iniGridEh);
    Write(dbg3, iniGridEh);
    Write(dbg4, iniGridEh);
  finally
    Free;
  end;
end;

procedure TfmPlan.ud1Click(Sender: TObject; Button: TUDBtnType);
var
  y0: integer;
begin
  if not TryStrToInt(ed1.Text, y0) then
  begin
    MsgError('Ошибка величины года', 'Ошибка');
    Exit;
  end
  else
    Y := y0;
  IniGrid;
end;

procedure TfmPlan.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  y0: integer;
begin
  if Key = 13 then
  begin
    if not TryStrToInt(ed1.Text, y0) then
    begin
      MsgError('Ошибка величины года', 'Ошибка');
      Exit;
    end
    else
      Y := y0;
    IniGrid;
  end;
end;

procedure TfmPlan.cb1CloseUp(Sender: TObject);
{var
  d: integer;}
begin
  M := cb1.ItemIndex + 1;
  IniGrid;
  if pc.ActivePage = ts_Obj then
  begin
    IniGridEh_Bill(dbg1);
    dbg1SortMarkingChanged(Sender);
  end;
  if pc.ActivePage = tsP_F_Obj then
  begin
    IniGridEh_Bill(dbg4);
    dbg4SortMarkingChanged(Sender);
  end;
end;

procedure TfmPlan.sg1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  Pr_z: integer;
begin
  Pr_z := 0;
  if (DayOfWeek(D1 + ACol - 1) in [1, 7]) and (ACol > 0) then
    with sg1.Canvas do
    begin
      if ARow = 0 then
        Brush.Color := rgb(255, 74, 74)
      else
        Font.Color := clBLue;
      FillRect(Rect);
      if ARow = 0 then
        TextOut(Rect.Left + 2, rect.Top + 2, sg1.Cells[ACol, ARow]);
      if (DayOfWeek(D1 + ACol - 1) = 1) and (ARow = 0) then
        TextOut(rect.Left + 2, Rect.Top + 15, 'Вс');
      if (DayOfWeek(D1 + ACol - 1) = 7) and (ARow = 0) then
        TextOut(rect.Left + 2, Rect.Top + 15, 'Сб');
    end;
  if ((D1 + ACol - 1) < Date) and (ARow > 0) and (ACol > 0) then
    with sg1.Canvas do
    begin
      Brush.Color := clMoneyGreen;
    end;
  if ((D1 + ACol - 1) = Date) and (ARow = 0) then
    with sg1.Canvas do
    begin
      Brush.Color := clBlue;
      Font.Color := clWhite;
      FillRect(Rect);
      TextOut(Rect.Left + 2, rect.Top + 2, sg1.Cells[ACol, ARow]);
    end;
  if (ARow = 6) then //4
    with sg1.Canvas do
    begin
      Brush.Color := clGray;
      FillRect(Rect);
    end;
  if ((D1 + ACol - 1) >= Date) and (ARow = 1) and (ACol > 0) then
    with sg1.Canvas do
      if sg1.Cells[ACol, ARow] <> '' then
      begin
        Font.Color := clBlack;
        try
          Pr_z := StrToInt(sg1.Cells[ACol, ARow]);
        except;
        end;
        if (Pr_z > 0) and (Pr_z <= 20) then
          Brush.Color := clYellow;
        if (Pr_z > 20) and (Pr_z <= 50) then
          Brush.Color := clSkyBlue;
        if (Pr_z > 50) and (Pr_z <= 100) then
          Brush.Color := clLime;
        if (Pr_z > 100) and (Pr_z <= 200) then
        begin
          Font.Color := clWhite;
          Brush.Color := clRed;
        end;
        if (Pr_z > 200) then
        begin
          Font.Color := clWhite;
          Brush.Color := clMaroon;
        end;
      end;
  if (ACol > 0) and (ARow = 2) then
    with sg1.Canvas do
    begin
      Font.Color := clRed;
    end;
  if (ACol > 0) and (ARow = 3) then
    with sg1.Canvas do
    begin
      Font.Color := clGreen;
    end;
  if (ACol > 0) and (ARow > 0) then
    with sg1.Canvas do
    begin
      if sg1.Cells[ACol, ARow] <> '0' then
        Font.Style := [fsBold];
      FillRect(Rect);
      TextOut(Rect.Left + 2, rect.Top + 2, sg1.Cells[ACol, ARow]);
    end;
end;

procedure TfmPlan.sg1DblClick(Sender: TObject);
begin
  //If not fmMain.UF39 Then exit;
  Screen.Cursor := crHourGlass;
  if (sg1.Row = 2) and (sg1.Col > 0) then
  begin
    if not Assigned(fmD_JOB) then
      Application.CreateForm(TfmD_JOB, fmD_JOB);
    fmD_JOB.dtp1.Date := EncodeDate(Y, M, StrToInt(sg1.Cells[sg1.Col, 0]));
    fmD_JOB.Show;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmPlan.qDATE_ORD_OBJECTBeforeOpen(DataSet: TDataSet);
begin
  with qDATE_ORD_OBJECT, qDATE_ORD_OBJECT.SQL do
  begin
    Close;
    Clear;
    Add('select * from DATE_ORD_OBJECT(:D_BEGIN,:id_p_area,:ord)');
    ParamByName('D_BEGIN').AsDate := D1;
    if lcbPa.KeyValue <> null then
      ParamByName('id_p_area').AsInteger := lcbPa.KeyValue
    else
      ParamByName('id_p_area').Clear;
    if ed_ord.Text <> '' then
      ParamByName('ord').AsString := ed_ord.text
    else
      ParamByName('ord').Clear;
    Add(OrderBy(dbg1));
    // ShowMessage(Text);
  end;
end;

procedure TfmPlan.dbg1SortMarkingChanged(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qDATE_ORD_OBJECT.Close;
  qDATE_ORD_OBJECT.Open;
  qObj_Sum.Close;
  qObj_Sum.Open;
  qPlan.Close;
  qPlan.Open;
  qExp.Close;
  qExp.Open;
  Screen.Cursor := crDefault;
end;

procedure TfmPlan.SpeedButton1Click(Sender: TObject);
begin
  //dbg1SortMarkingChanged(Sender);
  cb1Change(Sender);
  cb1CloseUp(Sender);
end;

procedure TfmPlan.SpeedButton2Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg1);
  Screen.Cursor := crDefault;

end;

procedure TfmPlan.ed_ordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    dbg1SortMarkingChanged(Sender);
end;

procedure TfmPlan.dbg1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
{var
  d: integer;}
begin
  //if qDATE_ORD_OBJECTFULL_AMOUNT.AsFloat > qDATE_ORD_OBJECTPRODUCED.AsFloat then
  //   AFont.Color := clRed;
  if qDATE_ORD_OBJECTFULL_AMOUNT.AsFloat <= qDATE_ORD_OBJECTPRODUCED.AsFloat
    then
    AFont.Color := clNavy;
  if (not qDATE_ORD_OBJECTD_CLOSE.IsNull) then
    Background := clMoneyGreen;

end;

procedure TfmPlan.SpeedButton3Click(Sender: TObject);
var
  s1 : string;
begin
  Screen.Cursor := crHourGlass;
  {  if not dmIS.dbDOC.Connected then
      dmIS.dbDOC.Connected := True;
    qInsT.Close;
    qInsT.sql.Clear;
    qInsT.SQL.Add('select w.id_doc from workdocs w where w.id_owner = :id_owner');
    qInsT.ParamByName('id_owner').Value := 11;
      //код *** выполнение деталей за период - переворот по датам
    qInsT.Open;
    if qInsT.IsEmpty then
    begin
      ShowMessage('Нет шаблона....');
      Screen.Cursor := crDefault;
      Exit;
    end
    else   }
  begin
    {    fmMain.StoreDoc_Sh(0, qInsT.FieldByName('ID_DOC').Value,
          '.\Tmp\DATE_ORD_OBJECT.xls', 1);
        xlReportDATE_ORD_OBJECT.XLSTemplate := fmMain.FN;
        dmIS.dbDOC.Connected := False;   }
    if shrfunc.GetTemplate(11, dmIs.qIn, xlReportDATE_ORD_OBJECT) = false then
    begin
      MsgError('Нет шаблона...', 'Проверка шаблона');
      screen.Cursor := crDefault;
      exit;
    end;

    qIns.Close;
    qIns.SQL.clear;
    qIns.SQL.Add('select first 1 b.*,p.name' +
      ' from BR_UP_P_AREAS(:id_parea,1) b join prod_areas p on b.id = p.id_p_area' +
      ' order by b.id desc');
    qIns.ParamByName('id_parea').asInteger := fmMain.C_PA;
    qIns.Open;
    s1 := '';
    s1 := 'Выполнение деталей по ' + qIns.FieldByName('name').AsString +
      ' по ' + fmMain.lcb1.Text + ' за ' + cb1.Text;

    xlReportDATE_ORD_OBJECT.ParamByName['D_FROM'].AsString := s1;
    qDATE_ORD_OBJECT.DisableControls;
    xlReportDATE_ORD_OBJECT.Report;
    qDATE_ORD_OBJECT.EnableControls;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmPlan.dbg1DblClick(Sender: TObject);
var
//  s: string;
  d: integer;
begin
  //If not fmMain.UF39 Then exit;
  try
    d := StrToInt(dbg1.Columns.Items[dbg1.SelectedIndex].Title.Caption);
    Screen.Cursor := crHourGlass;
    if not Assigned(fmD_JOB) then
      Application.CreateForm(TfmD_JOB, fmD_JOB);

    fmD_JOB.dtp1.Date := EncodeDate(Y, M, d);
    fmD_JOB.Show;
    Screen.Cursor := crDefault;

  except
    exit;
  end;
  Screen.Cursor := crDefault;

end;

procedure TfmPlan.dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  {try
    d := StrToInt(Column.Title.Caption)  ;
    If (DayOfWeek(EncodeDate(Y,M,d)) in [1,7]) Then Column.Title.Color := clRed
     else Column.Title.Color := clBtnFace;
  except
    On EConvertError do
     Column.Title.Color := clBtnFace;
  end;
  }
end;

procedure TfmPlan.qObj_SumBeforeOpen(DataSet: TDataSet);
begin
  { With qPlan, qPlan.SQL do
   begin
    Close;
    ParamByName('id_prod_traff').AsInteger := dmIs.qD_JOBID_PROD_TRAFF.Value;
    Open;
   end;

   With qObj_Sum, qObj_Sum.SQL do
   begin
    Close;
    ParamByName('id_prod_traff').AsInteger := dmIs.qD_JOBID_PROD_TRAFF.Value;
    Open;
   end;
   }
end;

procedure TfmPlan.ToolButton2Click(Sender: TObject);
var
  id_ver, P_OBJ : integer;
  n_ord, name_ord, name_constr: string;
begin
  Screen.Cursor := crHourGlass;
  fmMain.Tree_Det := True;
  if not Assigned(fmOBJECT) then
    Application.CreateForm(TfmOBJECT, fmOBJECT);
  P_OBJ := 0;

  if pc.ActivePage = ts_Obj then
  begin
    P_OBJ := qDATE_ORD_OBJECTID_OBJECT.AsInteger;
    id_ver := qDATE_ORD_OBJECTID_VERSION.AsInteger;
    n_ord := qDATE_ORD_OBJECTN_ORDER.AsString;
    name_ord := qDATE_ORD_OBJECTNAME.AsString;
    // name_constr := qDATE_ORD_OBJECTF_CONSTR.AsInteger ;
  end;
  if pc.ActivePage = tsP_F_Obj then
  begin
    P_OBJ := qDATE_Plan_ORD_OBJECTID_OBJECT.AsInteger;
    id_ver := qDATE_Plan_ORD_OBJECTID_VERSION.AsInteger;
    n_ord := qDATE_Plan_ORD_OBJECTN_ORDER.AsString;
    name_ord := qDATE_Plan_ORD_OBJECTNAME.AsString;
    name_constr := qDATE_Plan_ORD_OBJECTF_CONSTR.AsString;
  end;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT ID_OBJECT FROM PRODUCT_OBJECTS');
    Add('WHERE ID_VERSION = :or1 AND ID_PARENT = 0');
    ParamByName('or1').AsInteger := id_ver;
    try
      Open;
    except;
    end;
    // If not IsEmpty Then P_OBJ := FieldByName('ID_OBJECT').AsInteger;
  end;
  fmMain.CP_VER := id_ver;
  fmOBJECT.C_OBJ := P_OBJ;
  fmOBJECT.Caption := 'Заказ - ' + n_ord + ' - ' + name_ord;
  fmOBJECT.lbConstr.Caption := name_constr;
  Screen.Cursor := crDefault;
  fmOBJECT.ShowModal;

end;

procedure TfmPlan.qDATE_Plan_ORD_OBJECTBeforeOpen(DataSet: TDataSet);
begin
  with qDATE_Plan_ORD_OBJECT, qDATE_Plan_ORD_OBJECT.SQL do
  begin
    Close;
    Clear;
    Add('select * from DATE_PLAN_ORD_OBJECT(:D_BEGIN,:id_p_area,:ord)');
    ParamByName('D_BEGIN').AsDate := D1;
    if lcbPa.KeyValue <> null then
      ParamByName('id_p_area').AsInteger := lcbPa.KeyValue
    else
      ParamByName('id_p_area').Clear;
    if ed_pf_ord.Text <> '' then
      ParamByName('ord').AsString := ed_pf_ord.text
    else
      ParamByName('ord').Clear;
    Add(OrderBy(dbg4));
    // ShowMessage(Text);
  end;

end;

procedure TfmPlan.dbg4SortMarkingChanged(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qDATE_Plan_ORD_OBJECT.Close;
  qDATE_Plan_ORD_OBJECT.Open;
  Screen.Cursor := crDefault;

end;

procedure TfmPlan.SpeedButton4Click(Sender: TObject);
begin
  //dbg4SortMarkingChanged(Sender);
  cb1Change(Sender);
  cb1CloseUp(Sender);
end;

procedure TfmPlan.SpeedButton5Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg4);
  Screen.Cursor := crDefault;

end;

procedure TfmPlan.dbg4GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if qDATE_Plan_ORD_OBJECTFULL_AMOUNT.AsFloat <=
    qDATE_Plan_ORD_OBJECTPRODUCED.AsFloat then
    AFont.Color := clGreen;
  if (qDATE_Plan_ORD_OBJECTTP.AsString = '*') then
    AFont.Color := clRed;

  {if (not qDATE_Plan_ORD_OBJECTD_CLOSE.IsNull) and
     (qDATE_Plan_ORD_OBJECTTP.AsString = 'план') then AFont.Color := clGreen;
  }
  if (qDATE_Plan_ORD_OBJECTTP.AsString = 'факт') or
    (qDATE_Plan_ORD_OBJECTTP.AsString = '*факт') then
    Background := clBtnFace;

end;

procedure TfmPlan.dbg4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  {try
    d := StrToInt(Column.Title.Caption)  ;
    If (DayOfWeek(EncodeDate(Y,M,d)) in [1,7]) Then Column.Title.Color := clRed
     else Column.Title.Color := clBtnFace;
  except
    On EConvertError do
     Column.Title.Color := clBtnFace;
  end;

  }
end;

procedure TfmPlan.SpeedButton6Click(Sender: TObject);
begin
  ShowMessage('В разработке....');
end;

procedure TfmPlan.ed_pf_ordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    dbg4SortMarkingChanged(Sender);

end;

procedure TfmPlan.FormShow(Sender: TObject);
begin
  //IniGrid;
end;

procedure TfmPlan.lcbPaChange(Sender: TObject);
begin
  cb1Change(Sender);
  IniGrid;
end;

procedure TfmPlan.cb1Change(Sender: TObject);
begin
  if pc.ActivePage = tsTime then
    sg1.Cells[0, 0] := cb1.Text;
  if pc.ActivePage = ts_Obj then
    lbts_Obj.Caption := cb1.Text;
  if pc.ActivePage = tsP_F_Obj then
    lbtsP_F_Obj.Caption := cb1.Text;

end;

end.

