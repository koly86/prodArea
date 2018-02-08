unit unD_JOB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, ShrFunc, Grids, DBGrids, DBCtrls,
  Buttons, ToolWin, IBQuery, unMainForm,
  DBGridEh, DB, IBCustomDataSet, IBUpdateSQL, Menus,
  TeEngine, Series, GanttCh, TeeProcs, Chart, DbChart, DBTrees, Mask,
  DBCtrlsEh, DBLookupEh, frxClass, frxDBSet, IBSQLMonitor;

type
  TfmD_JOB = class(TMainForm)
    tlb1: TToolBar;
    Label1: TLabel;
    dtp1: TDateTimePicker;
    tb1: TToolButton;
    tb2: TToolButton;
    ToolButton4: TToolButton;
    tb3: TToolButton;
    qStore_Det: TIBQuery;
    dsStore_Det: TDataSource;
    qOper_Mats: TIBQuery;
    qOper_MatsID_ITEM: TIntegerField;
    qOper_MatsAMOUNT: TFloatField;
    qOper_MatsWASTE: TIBBCDField;
    qOper_MatsDEFECT: TIBBCDField;
    qOper_MatsLENG: TFloatField;
    qOper_MatsWIDTH: TFloatField;
    qOper_MatsHEIGHT: TFloatField;
    qOper_MatsREM: TBlobField;
    qOper_MatsNAME: TIBStringField;
    dsOper_Mats: TDataSource;
    qIns: TIBQuery;
    qBills: TIBQuery;
    dsBills: TDataSource;
    qBillsD_BILL: TDateField;
    qBillsD_FIX: TDateTimeField;
    qBillsID_PA_BILL_POS: TIntegerField;
    qBillsID_OBJECT: TIntegerField;
    qBillsID_BATCH: TIntegerField;
    qBillsID_PROD_OPER: TIntegerField;
    qBillsAMOUNT: TIBBCDField;
    qBillsOBJ_TYPE: TIntegerField;
    qBillsOLD_PROD_OPER: TIntegerField;
    qBillsID_STEP: TIntegerField;
    qBillsOBJ_NAME: TIBStringField;
    qBillsONAME: TIBStringField;
    qBillsNUMBER: TIBStringField;
    qOper_MatsUNIT_Y: TIBStringField;
    qOper_MatsPROD_AMOUNT: TFloatField;
    qOper_MatsAMOUNT_PLAN: TFloatField;
    qOper_MatsAMOUNT_MATS_PLAN: TFloatField;
    qOper_MatsAMOUNT_MATS_ORDS: TFloatField;
    qOper_MatsAMOUNT_MATS_WASTE: TFloatField;
    qOper_MatsAMOUNT_MATS_WASTE_ORD: TFloatField;
    qOper_MatsAMOUNT_MATS_WASTE_PROD: TFloatField;
    qOper_MatsAMOUNT_MATS_WASTE_PLAN: TFloatField;
    qOper_MatsAMOUNT_MATS_PROD: TFloatField;
    qDoc: TIBQuery;
    dsDoc: TDataSource;
    qDocID_PROD_DOC: TIntegerField;
    qDocID_PRODUCT: TIntegerField;
    qDocID_OBJECT: TIntegerField;
    qDocDOC_TYPE: TIntegerField;
    qDocNAME: TIBStringField;
    qDocD_CONFIRM: TDateTimeField;
    qDocID_CONFIRM: TIntegerField;
    qDocID_DOC: TIntegerField;
    qDocID_PROD_OPER: TIntegerField;
    frxD_JOB: TfrxDBDataset;
    frxSum_Oper_Mats: TfrxDBDataset;
    dsSum_Oper_Mats: TDataSource;
    qSum_Oper_Mats: TIBQuery;
    qBillsFIO: TIBStringField;
    tb4: TToolButton;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    qBill_s: TIBQuery;
    frxZBill_s: TfrxDBDataset;
    qBill_sNAME_O: TIBStringField;
    qBill_sID_PA_BILL: TIntegerField;
    qBill_sID_P_AREA: TIntegerField;
    qBill_sN_ID_P_AREA: TIBStringField;
    qBill_sPA_BILL_TYPE: TSmallintField;
    qBill_sN_PA_BILL_TYPE: TIBStringField;
    qBill_sID_DESTINATION: TIntegerField;
    qBill_sN_ID_DESTINATION: TIBStringField;
    qBill_sID_TEAM: TIntegerField;
    qBill_sID_C: TIntegerField;
    qBill_sD_BILL: TDateField;
    qBill_sNUMBER_BILL: TIBStringField;
    qBill_sNUMBER: TIBStringField;
    qBill_sD_EDIT: TDateTimeField;
    qBill_sID_EDIT: TIntegerField;
    qBill_sN_ID_EDIT: TIBStringField;
    qBill_sD_CONFIRM: TDateTimeField;
    qBill_sID_CONFIRM: TIntegerField;
    qBill_sN_ID_CONFIRM: TIBStringField;
    qBill_sD_FIX: TDateTimeField;
    qBill_sID_FIX: TIntegerField;
    qBill_sN_ID_FIX: TIBStringField;
    qBill_sD_GET: TDateTimeField;
    qBill_sID_GET: TIntegerField;
    qBill_sN_ID_GET: TIBStringField;
    qBill_sNUMBER_PO: TIBStringField;
    qBill_sID_CURRENCY: TIntegerField;
    qBill_sN_ID_CURRENCY: TIBStringField;
    qBill_sID_AGENT: TIntegerField;
    qBill_sN_AGENT: TIBStringField;
    qBill_sREM: TBlobField;
    qBill_sSUMMA: TFloatField;
    qBill_sSUMMA_DEF: TFloatField;
    qBill_sID_PA_BILL_POS: TIntegerField;
    qBill_sID_OBJECT: TIntegerField;
    qBill_sNAME: TIBStringField;
    qBill_sUNIT1: TIBStringField;
    qBill_sUNIT2: TIBStringField;
    qBill_sID_BATCH: TIntegerField;
    qBill_sFACTOR: TIBBCDField;
    qBill_sAMOUNT: TIBBCDField;
    qBill_sAMOUNT2: TIBBCDField;
    qBill_sOBJ_TYPE: TIntegerField;
    qBill_sN_ORDER: TIBStringField;
    qBill_sORD_NAME: TIBStringField;
    qBill_sSUMMA_: TIBBCDField;
    qBill_sSUMMA_EXP: TIBBCDField;
    qBill_sCENA: TIBBCDField;
    qBill_sCENA1: TIBBCDField;
    qBill_sID_C_TMC: TIntegerField;
    qBill_sREM_BILL_POS: TMemoField;
    qBill_sNAME_OF: TBlobField;
    qBill_sADR_P: TBlobField;
    qBill_sADR_F: TBlobField;
    qBill_sADR_D: TBlobField;
    qBill_sTELR: TBlobField;
    qBill_sFIO_R: TBlobField;
    qBill_sDOL_R: TBlobField;
    qBill_sFIO_B: TBlobField;
    qBill_sDOL_B: TBlobField;
    qBill_sINN: TBlobField;
    qBill_sAMOUNT_ORD: TIntegerField;
    qD_JOB: TIBQuery;
    frxRepD_JOB: TfrxReport;
    qBill_sQCD: TIntegerField;
    frxRepBills_s: TfrxReport;
    N4: TMenuItem;
    frxRepDay_JOB: TfrxReport;
    tb5: TToolButton;
    qBillsFIO_ID_P: TIBStringField;
    qBillsID_P: TIntegerField;
    qBill_sNMAT: TIBStringField;
    Label2: TLabel;
    lcbShift: TDBLookupComboboxEh;
    N5: TMenuItem;
    qList_Plan: TIBQuery;
    qList_PlanD_OUT: TDateField;
    frxList_Plan: TfrxDBDataset;
    qList_PlanID_AREA: TIntegerField;
    qList_PlanNAMEA: TIBStringField;
    qList_PlanNAMEWS: TIBStringField;
    frxRepList_Plan: TfrxReport;
    ToolButton2: TToolButton;
    qBillsID_PA_TO: TIntegerField;
    qBillsNAME_AREA: TIBStringField;
    qBill_sNDS: TFloatField;
    qBill_sSUMMA_NDS: TFloatField;
    qBill_sFIO_S: TIBStringField;
    qBill_sID_P: TIntegerField;
    qBill_sID_PA_TO: TIntegerField;
    qBill_sNAME_AREA: TIBStringField;
    qBillsID_PA_BILL: TIntegerField;
    lcbEqp: TDBLookupComboboxEh;
    Label3: TLabel;
    qObj_Fix: TIBQuery;
    qObj_FixOBJ_NAME: TIBStringField;
    qObj_FixONAME: TIBStringField;
    qObj_FixD_BILL: TDateField;
    qObj_FixD_FIX: TDateTimeField;
    qObj_FixID_OBJECT: TIntegerField;
    qObj_FixID_BATCH: TIntegerField;
    qObj_FixID_STEP: TIntegerField;
    qObj_FixAMOUNT: TIBBCDField;
    dsObj_Fix: TDataSource;
    qObj_Sum: TIBQuery;
    qObj_SumD_FIX: TDateField;
    qObj_SumSUM: TIBBCDField;
    dsObj_Sum: TDataSource;
    qPlan: TIBQuery;
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
    dsPlan: TDataSource;
    qObj_FixFIO: TIBStringField;
    qObj_FixID_P: TIntegerField;
    qObj_FixID_PFIO: TIBStringField;
    qBillsNAME: TIBStringField;
    qBillsID_ORDER: TIntegerField;
    qBillsN_ORDER: TIBStringField;
    N6: TMenuItem;
    qSum_Mats_Ord: TIBQuery;
    qSum_Mats_OrdN_ORDER: TIBStringField;
    qSum_Mats_OrdID_ORDER: TIntegerField;
    qSum_Mats_OrdID_ITEM: TIntegerField;
    qSum_Mats_OrdUNIT_Y: TIBStringField;
    qSum_Mats_OrdAMOUNT_MATS_WASTE: TFloatField;
    qSum_Mats_OrdAMOUNT_MATS_WASTE_ORD: TFloatField;
    qSum_Mats_OrdAMOUNT_MATS_WASTE_PROD: TFloatField;
    qSum_Mats_OrdAMOUNT_MATS_WASTE_PLAN: TFloatField;
    qSum_Mats_OrdAMOUNT_MATS_PROD: TFloatField;
    qSum_Mats_OrdAMOUNT_PLAN: TFloatField;
    qSum_Mats_OrdAMOUNT_MATS_PLAN: TFloatField;
    qSum_Mats_OrdAMOUNT_MATS_ORDS: TFloatField;
    qSum_Mats_OrdNAME_ORD: TIBStringField;
    qSum_Mats_OrdNAME_TMC: TIBStringField;
    qSum_Mats_OrdPROD_AMOUNT: TFloatField;
    dsSum_Mats_Ord: TDataSource;
    qSum_TMC_Ord: TIBQuery;
    qSum_TMC_OrdN_ORDER: TIBStringField;
    qSum_TMC_OrdNAME_ORD: TIBStringField;
    qSum_TMC_OrdNAME_TMC: TIBStringField;
    qSum_TMC_OrdID_ORDER: TIntegerField;
    qSum_TMC_OrdAMOUNT: TFloatField;
    qSum_TMC_OrdID_ITEM: TIntegerField;
    qSum_TMC_OrdUNIT_Y: TIBStringField;
    qSum_TMC_OrdAMOUNT_MATS_WASTE: TFloatField;
    qSum_TMC_OrdAMOUNT_MATS_WASTE_ORD: TFloatField;
    qSum_TMC_OrdAMOUNT_MATS_WASTE_PROD: TFloatField;
    qSum_TMC_OrdAMOUNT_MATS_WASTE_PLAN: TFloatField;
    qSum_TMC_OrdPROD_AMOUNT: TFloatField;
    qSum_TMC_OrdAMOUNT_MATS_PROD: TFloatField;
    qSum_TMC_OrdAMOUNT_PLAN: TFloatField;
    qSum_TMC_OrdAMOUNT_MATS_PLAN: TFloatField;
    qSum_TMC_OrdAMOUNT_MATS_ORDS: TFloatField;
    dsSum_TMC_Ord: TDataSource;
    frxSum_TMC_Ord: TfrxDBDataset;
    qOrd: TIBQuery;
    qOrdN_ORDER: TIBStringField;
    qOrdNAME_ORD: TIBStringField;
    qOrdID_ORDER: TIntegerField;
    qOrdID_CONSTR: TIntegerField;
    qOrdFIO: TIBStringField;
    dsOrd: TDataSource;
    frxOrd: TfrxDBDataset;
    qOrdID_VERSION: TIntegerField;
    qRep_ord_Det_TMC: TIBQuery;
    qRep_ord_Det_TMCTP: TIntegerField;
    qRep_ord_Det_TMCNM: TIBStringField;
    qRep_ord_Det_TMCN_ORDER: TIBStringField;
    qRep_ord_Det_TMCNAME_ORD: TIBStringField;
    qRep_ord_Det_TMCID_ORDER: TIntegerField;
    qRep_ord_Det_TMCPOSIT: TIntegerField;
    qRep_ord_Det_TMCSTEP: TIntegerField;
    qRep_ord_Det_TMCID_VERSION: TIntegerField;
    qRep_ord_Det_TMCID_OBJECT: TIntegerField;
    qRep_ord_Det_TMCAMOUNT: TFloatField;
    qRep_ord_Det_TMCF_AMOUNT: TFloatField;
    qRep_ord_Det_TMCP_AMOUNT: TFloatField;
    qRep_ord_Det_TMCOST: TFloatField;
    qRep_ord_Det_TMCF_TIME: TFloatField;
    qRep_ord_Det_TMCP_TIME: TFloatField;
    qRep_ord_Det_TMCID_PROD_TRAFF: TIntegerField;
    qRep_ord_Det_TMCID_AREA: TIntegerField;
    qRep_ord_Det_TMCID_SHIFT: TIntegerField;
    qRep_ord_Det_TMCID_EQUIPMENT: TIntegerField;
    qRep_ord_Det_TMCID_PA_TO: TIntegerField;
    qRep_ord_Det_TMCCOMMENT: TMemoField;
    qRep_ord_Det_TMCREM_PLAN: TMemoField;
    qRep_ord_Det_TMCREM_OPER: TMemoField;
    qRep_ord_Det_TMCREM_TEH: TIBStringField;
    qRep_ord_Det_TMCEQ_PL_NAME: TIBStringField;
    qRep_ord_Det_TMCFIO: TIBStringField;
    qRep_ord_Det_TMCNAME_AREA_TO: TIBStringField;
    qRep_ord_Det_TMCNAME_TMC: TIBStringField;
    qRep_ord_Det_TMCID_ITEM: TIntegerField;
    qRep_ord_Det_TMCNAME_U: TIBStringField;
    qRep_ord_Det_TMCAMOUNT_MATS_WASTE: TFloatField;
    qRep_ord_Det_TMCAMOUNT_MATS_WASTE_ORD: TFloatField;
    qRep_ord_Det_TMCAMOUNT_MATS_WASTE_PROD: TFloatField;
    qRep_ord_Det_TMCAMOUNT_MATS_WASTE_PLAN: TFloatField;
    qRep_ord_Det_TMCPROD_AMOUNT: TFloatField;
    qRep_ord_Det_TMCAMOUNT_MATS_PROD: TFloatField;
    qRep_ord_Det_TMCAMOUNT_PLAN: TFloatField;
    qRep_ord_Det_TMCAMOUNT_MATS_PLAN: TFloatField;
    qRep_ord_Det_TMCAMOUNT_MATS_ORDS: TFloatField;
    dsRep_ord_Det_TMC: TDataSource;
    frxRep_ord_Det_TMC: TfrxDBDataset;
    frxRep_ord_Det_TMC_: TfrxReport;
    qSum_Oper_MatsNAME: TIBStringField;
    qSum_Oper_MatsID_ITEM: TIntegerField;
    qSum_Oper_MatsUNIT_Y: TIBStringField;
    qSum_Oper_MatsAMOUNT_MATS_WASTE: TFloatField;
    qSum_Oper_MatsAMOUNT_MATS_WASTE_ORD: TFloatField;
    qSum_Oper_MatsAMOUNT_MATS_WASTE_PROD: TFloatField;
    qSum_Oper_MatsAMOUNT_MATS_WASTE_PLAN: TFloatField;
    qSum_Oper_MatsPROD_AMOUNT: TFloatField;
    qSum_Oper_MatsAMOUNT_MATS_PROD: TFloatField;
    qSum_Oper_MatsAMOUNT_PLAN: TFloatField;
    qSum_Oper_MatsAMOUNT_MATS_PLAN: TFloatField;
    qSum_Oper_MatsAMOUNT_MATS_ORDS: TFloatField;
    qBillsID_PROD_TRAFF: TIntegerField;
    cbClose: TCheckBox;
    tbVib: TToolButton;
    qIn: TIBQuery;
    qStore_DetID_P_AREA: TIntegerField;
    qStore_DetNAME: TIBStringField;
    qStore_DetNM: TIBStringField;
    qStore_DetAMOUNT: TIBBCDField;
    qStore_DetID_PROD_TRAFF: TIntegerField;
    qStore_DetID_STEP: TIntegerField;
    qStore_DetONAME: TIBStringField;
    qStore_DetID_OBJECT: TIntegerField;
    qStore_DetID_BATCH: TIntegerField;
    qStore_DetID_OBJECT_TYPE: TIntegerField;
    qObj: TIBQuery;
    qObjID_OBJECT: TIntegerField;
    qObjOBJ_TYPE: TIntegerField;
    qObjAMOUNT: TIBBCDField;
    qObjREM: TMemoField;
    qObjNAME: TIBStringField;
    qLoad_P: TIBQuery;
    dsLoad_P: TDataSource;
    qLoad_PID_TEAM: TIntegerField;
    qLoad_PID_P: TIntegerField;
    qLoad_PID_POST: TIntegerField;
    qLoad_PNAME: TIBStringField;
    qLoad_PLOAD_TIME: TFloatField;
    qLoad_PWORK_TIME: TFloatField;
    qLoad_PNAME_POST: TIBStringField;
    UpPlan_PP: TIBUpdateSQL;
    qPlan_P: TIBQuery;
    qPlan_PID_PROD_PLAN_P: TIntegerField;
    qPlan_PID_PROD_PLAN: TIntegerField;
    qPlan_PID_P: TIntegerField;
    qPlan_PAMOUNT: TFloatField;
    qPlan_PfIO: TStringField;
    qPlan_PT_PERS: TFloatField;
    qPlan_PF_AMOUNT: TFloatField;
    qPlan_PF_TIME: TFloatField;
    qPlan_PREM: TBlobField;
    qPlan_PPOSIT: TIntegerField;
    qPlan_PD_TO: TDateTimeField;
    dsPlan_P: TDataSource;
    qPlan_PP_TIME: TFloatField;
    pcAll: TPageControl;
    tsWork: TTabSheet;
    tsFio: TTabSheet;
    p2: TPanel;
    Splitter1: TSplitter;
    Panel1: TPanel;
    DBText1: TDBText;
    Panel2: TPanel;
    Panel3: TPanel;
    sbYtv: TSpeedButton;
    sbPlanFakt: TSpeedButton;
    dbn1: TDBNavigator;
    cbNakl: TCheckBox;
    Panel7: TPanel;
    Splitter2: TSplitter;
    pc: TPageControl;
    ts_bill: TTabSheet;
    ts_Fio: TTabSheet;
    Splitter4: TSplitter;
    Panel15: TPanel;
    dbg12: TDBGridEh;
    Panel16: TPanel;
    DBMemo1: TDBMemo;
    Panel18: TPanel;
    sbDel: TSpeedButton;
    Panel17: TPanel;
    Panel14: TPanel;
    SpeedButton21: TSpeedButton;
    SpeedButton18: TSpeedButton;
    sbIn: TSpeedButton;
    dbn14: TDBNavigator;
    cbFIO: TCheckBox;
    dbg14: TDBGridEh;
    ts_Det: TTabSheet;
    Splitter3: TSplitter;
    dbg4: TDBGridEh;
    Panel13: TPanel;
    ToolBar2: TToolBar;
    cbTree: TCheckBox;
    SpeedButton17: TSpeedButton;
    ToolButton7: TToolButton;
    cbDet: TCheckBox;
    SpeedButton16: TSpeedButton;
    dbt1: TDB_TreeView;
    ts_oper: TTabSheet;
    dbg11: TDBGridEh;
    ts_mat: TTabSheet;
    ts_mat_ord: TTabSheet;
    Panel8: TPanel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    dbg8: TDBGridEh;
    ts_mat_sum: TTabSheet;
    dbg9: TDBGridEh;
    Panel9: TPanel;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    ts_doc: TTabSheet;
    dbg5: TDBGridEh;
    Panel11: TPanel;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    ts_vip: TTabSheet;
    dbg6: TDBGridEh;
    Panel6: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ts_plan: TTabSheet;
    dbg10: TDBGridEh;
    Panel10: TPanel;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton20: TSpeedButton;
    Panel19: TPanel;
    qRep_Plan_Day: TIBQuery;
    qRep_Plan_DayFIO: TIBStringField;
    qRep_Plan_DayNM: TIBStringField;
    qRep_Plan_DayNAME_ORD: TIBStringField;
    qRep_Plan_DayN_ORDER: TIBStringField;
    qRep_Plan_DayNAME_OPER: TIBStringField;
    qRep_Plan_DayNAME_POST: TIBStringField;
    qRep_Plan_DaySHOTNAME: TIBStringField;
    qRep_Plan_DayID_PROD_PLAN_P: TIntegerField;
    qRep_Plan_DayID_P: TIntegerField;
    qRep_Plan_DayAMOUNT_P: TFloatField;
    qRep_Plan_DayP_TIME_P: TFloatField;
    qRep_Plan_DayREM_P: TBlobField;
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
    dsRep_Plan_Day: TDataSource;
    dbg15: TDBGridEh;
    qPlan_PD_IN: TDateTimeField;
    Splitter5: TSplitter;
    pcGraf: TPageControl;
    tsGraf_Fio: TTabSheet;
    DBChart1: TDBChart;
    Series1: TGanttSeries;
    pcGraf_Det: TTabSheet;
    DBChart2: TDBChart;
    Series2: TGanttSeries;
    qPlan_PDIN: TDateField;
    qPlan_PTIN: TTimeField;
    qPlan_PDTO: TDateField;
    qPlan_PTTO: TTimeField;
    qRep_Plan_DayDIN: TDateTimeField;
    qRep_Plan_DayDTO: TDateTimeField;
    qRep_Plan_DayTM: TFloatField;
    qRepDay_Pers: TIBQuery;
    qRepDay_PersFIO: TIBStringField;
    qRepDay_PersID_P: TIntegerField;
    qRepDay_Persnom: TIntegerField;
    qRep_Plan_Dayid_nom: TIntegerField;
    qRepDay_Det: TIBQuery;
    qRepDay_DetID_OBJECT: TIntegerField;
    qRepDay_Detnom: TIntegerField;
    qRep_Plan_Daynom_det: TIntegerField;
    ToolBar1: TToolBar;
    ToolButton3: TToolButton;
    Label4: TLabel;
    edDay: TEdit;
    ToolButton5: TToolButton;
    tsIn: TToolButton;
    Label5: TLabel;
    edKol: TEdit;
    ToolButton6: TToolButton;
    Label6: TLabel;
    ed1: TEdit;
    ToolButton8: TToolButton;
    ToolButton1: TToolButton;
    edTime: TEdit;
    Label7: TLabel;
    lcbDutyType: TDBLookupComboboxEh;
    tsStop: TTabSheet;
    qPlan_PID_PROD_PLAN_STOP: TIntegerField;
    qProd_Plan_Stop: TIBQuery;
    qProd_Plan_StopID_PROD_PLAN_STOP: TIntegerField;
    qProd_Plan_StopID_DUTYTYPE: TIntegerField;
    qProd_Plan_StopID_EQUIPMENT: TIntegerField;
    qProd_Plan_StopF_TIME: TFloatField;
    qProd_Plan_StopP_TIME: TFloatField;
    qProd_Plan_StopDIN: TDateField;
    qProd_Plan_StopTIN: TTimeField;
    qProd_Plan_StopDTO: TDateField;
    qProd_Plan_StopTTO: TTimeField;
    qProd_Plan_Stopn_ID_DUTY_TYPE: TStringField;
    dsProd_Plan_Stop: TDataSource;
    qProd_Plan_StopID_SHIFT: TIntegerField;
    qProd_Plan_StopPL_NAME: TIBStringField;
    qProd_Plan_StopNAME_SHIFT: TIBStringField;
    Panel12: TPanel;
    Panel20: TPanel;
    Splitter6: TSplitter;
    Panel21: TPanel;
    dbg16: TDBGridEh;
    UpProd_Plan_Stop: TIBUpdateSQL;
    tb6: TSpeedButton;
    tb7: TSpeedButton;
    dbn16: TDBNavigator;
    qProd_Plan_StopID_AREA: TIntegerField;
    dbMm: TDBMemo;
    qProd_Plan_StopD_OUT: TDateField;
    qPlan_P_Stop: TIBQuery;
    qPlan_P_StopID_PROD_PLAN_P: TIntegerField;
    qPlan_P_StopID_P: TIntegerField;
    qPlan_P_StopID_TEAM: TIntegerField;
    qPlan_P_StopF_TIME: TFloatField;
    qPlan_P_StopP_TIME: TFloatField;
    qPlan_P_StopREM: TBlobField;
    qPlan_P_StopDIN: TDateField;
    qPlan_P_StopTIN: TTimeField;
    qPlan_P_StopDTO: TDateField;
    qPlan_P_StopTTO: TTimeField;
    qPlan_P_StopID_PROD_PLAN_STOP: TIntegerField;
    Panel22: TPanel;
    Panel23: TPanel;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    DBNavigator1: TDBNavigator;
    dbg18: TDBGridEh;
    Panel24: TPanel;
    Splitter7: TSplitter;
    dbg17: TDBGridEh;
    Panel25: TPanel;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    dsPlan_P_Stop: TDataSource;
    sbFio: TSpeedButton;
    qPlan_P_StopFIO: TIBStringField;
    UpPlanP_StopP: TIBUpdateSQL;
    qRep_Plan_DayID_EQUIPMENT: TIntegerField;
    qRep_Plan_DayD_OUT: TDateField;
    qRep_Plan_DayDTO_: TDateTimeField;
    qRep_Plan_DayTM_: TFloatField;
    qRep_Plan_DayNAME_SHIFT: TIBStringField;
    dsRepDay_Det: TDataSource;
    ts_FIO_Pers: TTabSheet;
    DBChart3: TDBChart;
    GanttSeries1: TGanttSeries;
    qFio_Det: TIBQuery;
    qFio_DetFIO: TIBStringField;
    qFio_DetDIN: TDateTimeField;
    qFio_DetDTO: TDateTimeField;
    qFio_DetNM: TIBStringField;
    qFio_DetF_TIME_P: TFloatField;
    qFio_DetID_OBJECT: TIntegerField;
    qFio_Detnom_det: TIntegerField;
    dsFio_Det: TDataSource;
    qProd_Plan_StopID_ORDER: TIntegerField;
    qProd_Plan_StopNAME_ORD: TIBStringField;
    qProd_Plan_StopN_ORDER: TIBStringField;
    dbM: TDBMemo;
    qOper_MatsAMOUNT_MATS_WASTE_F_AM: TFloatField;
    qOper_MatsAMOUNT_MATS_WASTE_P_AM: TFloatField;
    qOper_MatsAMOUNT_MATS_PLAN_F_AM: TFloatField;
    qOper_MatsAMOUNT_MATS_PLAN_P_AM: TFloatField;
    Panel26: TPanel;
    Panel5: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton6: TSpeedButton;
    dbg2: TDBGridEh;
    GroupBox1: TGroupBox;
    Splitter8: TSplitter;
    qSTORE_TMS_BATCH: TIBQuery;
    qSTORE_TMS_BATCHID_P_AREA: TIntegerField;
    qSTORE_TMS_BATCHID_OBJECT: TIntegerField;
    qSTORE_TMS_BATCHID_BATCH: TIntegerField;
    qSTORE_TMS_BATCHN_ID_PA_AREA: TIBStringField;
    qSTORE_TMS_BATCHNAME_TMS: TIBStringField;
    qSTORE_TMS_BATCHAMOUNT: TFloatField;
    qSTORE_TMS_BATCHSUM_R: TFloatField;
    qSTORE_TMS_BATCHOST: TFloatField;
    qSTORE_TMS_BATCHID_OBJ_TYPE: TIntegerField;
    qSTORE_TMS_BATCHPRICE: TFloatField;
    qSTORE_TMS_BATCHID_PROD_OPER: TIntegerField;
    qSTORE_TMS_BATCHID_PROD_TRAFF: TIntegerField;
    qSTORE_TMS_BATCHNDS: TFloatField;
    dbg23: TDBGridEh;
    Panel27: TPanel;
    dsSTORE_TMS_BATCH: TDataSource;
    cbStore: TCheckBox;
    pcBill: TPageControl;
    ts70: TTabSheet;
    ts106: TTabSheet;
    dbg3: TDBGridEh;
    tsBill_List: TTabSheet;
    qBILLPOS_BILL70TRAFF: TIBQuery;
    dsBILLPOS_BILL70TRAFF: TDataSource;
    qBILLPOS_BILL70TRAFFOBJ_NAME: TIBStringField;
    qBILLPOS_BILL70TRAFFONAME: TIBStringField;
    qBILLPOS_BILL70TRAFFID_STEP: TIntegerField;
    qBILLPOS_BILL70TRAFFOBJECT_NAME: TIBStringField;
    qBILLPOS_BILL70TRAFFOPERNAME: TIBStringField;
    qBILLPOS_BILL70TRAFFID_ID_STEP: TIntegerField;
    qBILLPOS_BILL70TRAFFID_AREA: TIntegerField;
    qBILLPOS_BILL70TRAFFID_PA_BILL: TIntegerField;
    qBILLPOS_BILL70TRAFFNUMBER: TIBStringField;
    qBILLPOS_BILL70TRAFFD_BILL: TDateField;
    qBILLPOS_BILL70TRAFFD_FIX: TDateTimeField;
    qBILLPOS_BILL70TRAFFID_PROD_TRAFF: TIntegerField;
    qBILLPOS_BILL70TRAFFID_ORDER: TIntegerField;
    qBILLPOS_BILL70TRAFFORDNAME: TIBStringField;
    qBILLPOS_BILL70TRAFFN_ORDER: TIBStringField;
    qBILLPOS_BILL70TRAFFID_PA_BILL_POS: TIntegerField;
    qBILLPOS_BILL70TRAFFID_OBJECT: TIntegerField;
    qBILLPOS_BILL70TRAFFID_BATCH: TIntegerField;
    qBILLPOS_BILL70TRAFFAMOUNT: TFloatField;
    qBILLPOS_BILL70TRAFFID_ITEM: TIntegerField;
    qBILLPOS_BILL70TRAFFNAME_TMC: TIBStringField;
    qBILLPOS_BILL70TRAFFNAME_U: TIBStringField;
    qBILLPOS_BILL70TRAFFAMOUNT_TMC: TFloatField;
    qBILLPOS_BILL70TRAFFAMOUNT_WASTE: TFloatField;
    dbg33: TDBGridEh;
    Panel4: TPanel;
    SpeedButton2: TSpeedButton;
    sb1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Panel28: TPanel;
    SpeedButton22: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    qBILLPOS_BILL70TRAFFAMOUNT_TMC_NOT_WASTE: TFloatField;
    qBILLPOS_BILL70TRAFFNAME_UP: TIBStringField;
    qBILLPOS_BILL70TRAFFAMOUNT_TMC_P: TFloatField;
    qBILLPOS_BILL70TRAFFAMOUNT_TMC_NOT_WASTE_P: TFloatField;
    qBILLPOS_BILL70TRAFFAMOUNT_WASTE_P: TFloatField;
    qBILLPOS_BILL70TRAFFFACTOR: TFloatField;
    qBILLPOS_BILL70TRAFFOST: TFloatField;
    qBILLPOS_BILL70TRAFFOST_P: TFloatField;
    Panel29: TPanel;
    lbItem: TLabel;
    cbStore_List: TCheckBox;
    Panel_Bill: TPanel;
    Label8: TLabel;
    qIns_Bill: TIBQuery;
    lbNom: TLabel;
    edNom: TEdit;
    qBillsSUMMA: TIBBCDField;
    qBillsSUMMA_NDS: TFloatField;
    mm: TMemo;
    Panel30: TPanel;
    Splitter9: TSplitter;
    Panel31: TPanel;
    dbg44: TDBGridEh;
    dbg444: TDBGridEh;
    Panel32: TPanel;
    sbDFix: TSpeedButton;
    sbTraff_Mat: TSpeedButton;
    sbBill: TSpeedButton;
    qBILLPOS_BILL70TRAFFNOM: TIntegerField;
    SpeedButton27: TSpeedButton;
    qBILLPOS_BILL70TRAFFEXP: TFloatField;
    qBILLPOS_BILL70TRAFFEXP_W: TFloatField;
    qBILLPOS_BILL70TRAFFFULL_AMOUNT: TFloatField;
    qBILLPOS_BILL70TRAFFFULL_AMOUNT_NOT_WASTE: TFloatField;
    qBILLPOS_BILL70TRAFFFULL_AMOUNT_WASTE: TFloatField;
    qBILLPOS_BILL70TRAFFAMOUNT_FIX: TFloatField;
    qBILLPOS_BILL70TRAFFAMOUNT_W_FIX: TFloatField;
    qBILLPOS_BILL70TRAFFAMOUNT_NOT_FIX: TFloatField;
    qBILLPOS_BILL70TRAFFAMOUNT_W_NOT_FIX: TFloatField;
    tsExp: TTabSheet;
    qExp: TIBQuery;
    dsExp: TDataSource;
    dbg51: TDBGridEh;
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
    cbBeep: TCheckBox;
    pnKol: TPanel;
    dbg7: TDBGridEh;
    sbDelBill: TSpeedButton;
    dbg1: TDBGridEh;
    SpeedButton19: TSpeedButton;
    Splitter10: TSplitter;
    qDet: TIBQuery;
    qDetDEC_NO: TIBStringField;
    qDetNM: TIBStringField;
    qDetNAME_ORD: TIBStringField;
    qDetN_ORDER: TIBStringField;
    qDetSTEP: TIntegerField;
    qDetNAME_OPER: TIBStringField;
    qDetNAME_POST: TIBStringField;
    qDetFIO: TIBStringField;
    qDetID_EQUIPMENT: TIntegerField;
    qDetSHOTNAME: TIBStringField;
    qDetID_PROD_PLAN_P: TIntegerField;
    qDetID_P: TIntegerField;
    qDetAMOUNT: TFloatField;
    qDetT_PERS: TFloatField;
    qDetREM: TBlobField;
    qDetF_AMOUNT: TFloatField;
    qDetD_OUT: TDateField;
    qDetF_TIME_P: TFloatField;
    qDetDIN: TDateTimeField;
    qDetDTO_: TDateTimeField;
    qDetDTO: TDateTimeField;
    qDetTM_: TFloatField;
    qDetTM: TFloatField;
    qDetF_TIME: TFloatField;
    qDetP_TIME: TFloatField;
    qDetID_VERSION: TIntegerField;
    qDetID_PROJECT: TIntegerField;
    qDetID_ORDER: TIntegerField;
    qDetID_OBJECT: TIntegerField;
    qDetID_PROD_OPER: TIntegerField;
    qDetOBJ_TYPE: TIntegerField;
    qDetNAME_SHIFT: TIBStringField;
    dsDet: TDataSource;
    GroupBox2: TGroupBox;
    dbg_Obj: TDBGridEh;
    cbWork: TCheckBox;
    Splitter11: TSplitter;
    GroupBox3: TGroupBox;
    dbg_Obj1: TDBGridEh;
    cbWorks: TCheckBox;
    qLoad_PID_P_AREA: TIntegerField;
    qPlan_PFIO_P: TIBStringField;
    qPlan_PID_TEAM: TIntegerField;
    qPlan_PID_EQUIPMENT: TIntegerField;
    qPlan_PP_AMOUNT: TFloatField;
    qPlan_PSHOTNAME: TIBStringField;
    qProd_Plan_StopF_TIME_SUM: TFloatField;
    qProd_Plan_StopREM: TIBStringField;
    qBillsCENA: TFloatField;
    UpPlan_P: TIBUpdateSQL;
    UpPlanP_Stop: TIBUpdateSQL;
    cb_ss: TCheckBox;
    qProd_Plan_StopFIO: TStringField;
    qProd_Plan_StopFIO_ID: TIntegerField;
    tsP_Plan: TTabSheet;
    Panel33: TPanel;
    dbgPPlan: TDBGridEh;
    qPPlan: TIBQuery;
    dsPPlan: TDataSource;
    qPPlanN_ORDER: TIBStringField;
    qPPlanOPER_NAME: TIBStringField;
    qPPlanWC_NAME: TIBStringField;
    qPPlanD_BEGIN: TDateField;
    qPPlanD_END: TDateField;
    qPPlanAMOUNT: TFloatField;
    qPPlanAMOUNT_TIME: TFloatField;
    qPPlanFULL_AMOUNT: TFloatField;
    qPPlanNAME_ORD: TIBStringField;
    sbRfrPPlan: TSpeedButton;
    Label9: TLabel;
    dblWCentrPlans: TDBLookupComboboxEh;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    sbMovePlan: TSpeedButton;
    qWC: TIBQuery;
    dsWC: TDataSource;
    qWCID_WCENTER: TIntegerField;
    qWCNAME: TIBStringField;
    dtpPlanFrom: TDateTimePicker;
    dtpPLanTo: TDateTimePicker;
    qPPlanID_WC_OWR: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tb1Click(Sender: TObject);
    procedure tb2Click(Sender: TObject);
    procedure sbYtvClick(Sender: TObject);
    procedure tb4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure qD_JOBBeforeOpen(DataSet: TDataSet);
    procedure N4Click(Sender: TObject);
    procedure tb5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure sb1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbPlanFaktClick(Sender: TObject);
    procedure pcChange(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure frxRepBills_sAfterPrintReport(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure dbg5DblClick(Sender: TObject);
    procedure dbg5GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbg3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbg3SortMarkingChanged(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure dbg6SortMarkingChanged(Sender: TObject);
    procedure dbg2SortMarkingChanged(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure dbg8SortMarkingChanged(Sender: TObject);
    procedure qSum_Oper_MatsBeforeOpen(DataSet: TDataSet);
    procedure SpeedButton9Click(Sender: TObject);
    procedure dbg9SortMarkingChanged(Sender: TObject);
    procedure tbVibClick(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure dbg11SortMarkingChanged(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure dbg11GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure tsInClick(Sender: TObject);
    procedure ed1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg4SortMarkingChanged(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure cbDetClick(Sender: TObject);
    procedure cbTreeClick(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure dbg14SortMarkingChanged(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure dbn14BeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cbFIOClick(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure dbg12SortMarkingChanged(Sender: TObject);
    procedure sbInClick(Sender: TObject);
    procedure dbg12D_INUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg12D_TOUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg12PTIMEUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure sbDelClick(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure pcAllChange(Sender: TObject);
    procedure dbg15SortMarkingChanged(Sender: TObject);
    procedure dbg12DINUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg12TINUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg12DTOUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg12TTOUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure qRepDay_PersCalcFields(DataSet: TDataSet);
    procedure qRepDay_DetCalcFields(DataSet: TDataSet);
    procedure ToolButton1Click(Sender: TObject);
    procedure edTimeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tb6Click(Sender: TObject);
    procedure tb7Click(Sender: TObject);
    procedure qProd_Plan_StopNewRecord(DataSet: TDataSet);
    procedure dbg16SortMarkingChanged(Sender: TObject);
    procedure dbg16PTIMEUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure qProd_Plan_StopBeforePost(DataSet: TDataSet);
    procedure SpeedButton26Click(Sender: TObject);
    procedure sbFioClick(Sender: TObject);
    procedure qProd_Plan_StopAfterScroll(DataSet: TDataSet);
    procedure SpeedButton24Click(Sender: TObject);
    procedure dbg17SortMarkingChanged(Sender: TObject);
//    procedure dbg17DINUpdateData(Sender: TObject; var Text: string;
    //  var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg17TINUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg17DTOUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg17TTOUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg17PTIMEUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure qRep_Plan_DayAfterScroll(DataSet: TDataSet);
    procedure qPlan_P_StopAfterPost(DataSet: TDataSet);
    procedure qPlan_PAfterPost(DataSet: TDataSet);
    procedure qProd_Plan_StopAfterInsert(DataSet: TDataSet);
    procedure dbg16DINUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg16TINUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg16Columns3UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg16TTOUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg16NOrderUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg16NOrderEditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure qOper_MatsAfterScroll(DataSet: TDataSet);
    procedure cbStoreClick(Sender: TObject);
    //    procedure pcBillChange(Sender: TObject);
    procedure dbg33GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure SpeedButton22Click(Sender: TObject);
    procedure qBILLPOS_BILL70TRAFFAfterScroll(DataSet: TDataSet);
    procedure cbStore_ListClick(Sender: TObject);
    procedure SpeedButton30Click(Sender: TObject);
    procedure sbTraff_MatClick(Sender: TObject);
    procedure dbg44GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure sbBillClick(Sender: TObject);
    procedure sbDFixClick(Sender: TObject);
    procedure dbg33MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dtp1Change(Sender: TObject);
    procedure sbDelBillClick(Sender: TObject);
    procedure dbg1P_AMOUNTUpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg1P_TIME5UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg1REMEditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure dbg1ColExit(Sender: TObject);
    procedure dbg1DblClick(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbg1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg1SortMarkingChanged(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure dbg_ObjSortMarkingChanged(Sender: TObject);
    procedure qLoad_PAfterScroll(DataSet: TDataSet);
    procedure cbWorkClick(Sender: TObject);
    procedure cbWorksClick(Sender: TObject);
    procedure dbg17MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbg17KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg12KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg12MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbg12RemUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg17REMUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure qDetBeforeOpen(DataSet: TDataSet);
    procedure qLoad_PBeforeOpen(DataSet: TDataSet);
    procedure dbg_Obj1SortMarkingChanged(Sender: TObject);
    procedure qPlan_P_StopAfterOpen(DataSet: TDataSet);
    procedure dbg18SortMarkingChanged(Sender: TObject);
    procedure edKolKeyPress(Sender: TObject; var Key: Char);
    procedure dbg1Columns44EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure sbRfrPPlanClick(Sender: TObject);
    procedure sbMovePlanClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

  private
    id_p: Integer;
    tree_up: Boolean;
    qDet_Txt: string;
    C_BSS: Integer;
    { Private declarations }
    procedure OpenPlanP;
    procedure WriteDJob(id_wc_owr: integer);
      //������������ ��������� ������� �� ����� �����
  public
    Vibor, id_newnom, Ins_Ord, id: Integer; //id ��� �������� ��������� 106

    procedure Plan_Day_FIO(id_p: integer);
    procedure OpenD_JOB;
    procedure OpenStore_Det;
    procedure WritePlan;
    procedure InitPPLanCntrls(all: byte);

    { Public declarations }
  end;

var
  fmD_JOB: TfmD_JOB;

implementation
uses unMain, unIS, unDistrJob, unOBJECT, UnMmRem, unTabPlan, UnListTZ,
  unState, unPBar, UnEqp;

const
  id_Form = 24;

{$R *.dfm}

procedure TfmD_Job.WriteDJob(id_wc_owr: integer);
begin
  //������������ ��������� ������� �� ����� �����
end ;

procedure TfmD_Job.InitPPLanCntrls(all: byte);
begin
  if all = 1 then
  begin
    dtpPlanFrom.Date := Server_now(dmIS.qIM);
    dtpPlanTo.Date := Server_now(dmIS.qIM) + 2;
  end;

  qWC.close;
  qWC.ParamByName('id_area').AsInteger := fmMain.C_PA;
  qWC.Open;
end;

procedure TfmD_Job.OpenPlanP;
begin
  with qPPlan, qPPlan.SQL do
  begin
    close;
    clear;
    add('select  po.n_order, o.name oper_name,  wc.name wc_name,');
    add('wo.d_begin, wo.d_end, t.amount, t.amount_time, t.full_amount,');
    add('po.name name_ord,wo.id_wc_owr');
    add('from  wc_ord_work_res  wo');
    add('join wc_work_res w on w.id_wc_wr = wo.id_wc_owr');
    add('join wc_ms_traff t  on t.id_ms_traff = wo.id_ms_traff');
    add('join wcenters wc on wc.id_wcenter = wo.id_wcenter');
    add('join est_ord_traff pt on pt.id_order = wo.id_order  and pt.id_wcenter = wo.id_wcenter');
    add('join operations o on o.id_operation = pt.id_operation and o.id_area = pt.id_area');
    add('join project_ords po on po.id_order = wo.id_order');
    add('where wc.id_area = :id_area and wo.d_begin >= :d1 and wo.d_end <= :d2');
    parambyname('id_area').AsInteger := fmMain.C_PA;
    parambyname('d1').AsDate := dtpPlanFrom.Date;
    parambyname('d2').AsDate := dtpPlanTo.Date;
    if dblWCentrPlans.KeyValue <> null then
    begin
      add('and wo.id_wcenter = :idwc');
      parambyname('idwc').AsInteger := dblWCentrPlans.KeyValue;
    end;

    add(ordby(dbgPPlan));
    open;
  end;
end;

procedure TfmD_Job.Plan_Day_FIO(id_p: integer);
var
  s: string;
begin
  qRepDay_Pers.Close;
  qRepDay_Det.Close;
  qRep_Plan_Day.Close;
  qFio_Det.Close;
  //����������
  s := 'select distinct per.fio,per.id_p' +
    ' from product_plans l' +
    ' join product_plans_p l1 on l1.id_prod_plan = l.id_prod_plan and l.d_out = :d_out';
  if fmD_Job.lcbShift.KeyValue <> null then
    s := s + '  and l.ID_SHIFT = :ID_SHIFT';
  s := s +
    ' join product_traff f on  l.id_prod_traf = f.id_prod_traff and f.id_area = :id_area' +
    ' left join personnel per on l1.id_p = per.id_p' +
    '  union' +
    ' select distinct per.fio,per.id_p' +
    ' from product_plans_stop l' +
    ' join product_plans_p l1 on l1.id_prod_plan_stop = l.id_prod_plan_stop ' +
    ' and l.d_out = :d_out and l.id_area = :id_area';
  if fmD_Job.lcbShift.KeyValue <> null then
    s := s + ' and l.ID_SHIFT = :ID_SHIFT ';
  s := s + ' left join personnel per on l1.id_p = per.id_p';
  qRepDay_Pers.Close;
  qRepDay_Pers.SQL.Clear;
  qRepDay_Pers.SQL.Add(s);

  qRepDay_Pers.ParamByName('id_area').AsInteger := fmMain.C_PA;
  qRepDay_Pers.ParamByName('d_out').AsDate := fmD_Job.dtp1.Date;
  if fmD_Job.lcbShift.KeyValue <> null then
    qRepDay_Pers.ParamByName('id_shift').AsInteger := fmD_Job.lcbShift.KeyValue;
  qRepDay_Pers.Open;
  if qRepDay_Pers.IsEmpty then
  begin
    ShowMessage('����� ������...');
    Exit;
  end;
  //������
  s := ' select distinct o.id_object ' +
    ' from product_objects o  join product_oper r on r.id_object = o.id_object' +
    ' join product_traff f on f.id_prod_oper = r.id_prod_oper and f.id_area = :id_area' +
    ' join product_plans l on l.d_out = :d_out';
  if fmD_Job.lcbShift.KeyValue <> null then
    s := s + '  and l.ID_SHIFT = :ID_SHIFT';
  s := s + ' and  l.id_prod_traf = f.id_prod_traff' +
    ' join product_plans_p l1 on l1.id_prod_plan = l.id_prod_plan' +
    ' left join items i on i.id_item = o.id_item' +
    ' left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT' +
    ' left join personnel per on l1.id_p = per.id_p' +
    ' union ' +
    ' select distinct coalesce(l.id_dutytype,1) id_object' +
    ' from product_plans_stop l' +
    ' join product_plans_p l1 on  l.id_area = :id_area';
  if fmD_Job.lcbShift.KeyValue <> null then
    s := s + ' and l.ID_SHIFT = :ID_SHIFT';
  s := s + ' and l.d_out = :d_out' + //and l.d_out < :d_out + 1'+
  ' and l1.id_prod_plan_stop = l.id_prod_plan_stop' +
    ' left join dutytypes d on d.id_dutytype = l.id_dutytype' +
    ' left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT' +
    ' left join personnel per on l1.id_p = per.id_p';
  if fmD_Job.lcbShift.KeyValue <> null then
    s := s + ' left join shifts h on h.id_shift = l.id_shift';
  qRepDay_Det.Close;
  qRepDay_Det.SQL.Clear;
  qRepDay_Det.SQL.Add(s);
  qRepDay_Det.ParamByName('id_area').AsInteger := fmMain.C_PA;
  qRepDay_Det.ParamByName('d_out').AsDate := Int(fmD_Job.dtp1.Date);
  if fmD_Job.lcbShift.KeyValue <> null then
    qRepDay_Det.ParamByName('id_shift').AsInteger := fmD_Job.lcbShift.KeyValue;
  qRepDay_Det.Open;

  s := 'select per.fio,l1.din+l1.tin din , l1.dto+l1.tto dto,' +
    'coalesce(o.obj_name,i.name)||coalesce(o.dec_no,''' + '' + ''') nm,' +
    'p.name name_ord,p.n_order,r.step, s.name  name_oper, ps.name  name_post, l.id_equipment,' +
    'case when (e.id_equipment = 0 or e.id_equipment is null)  then ''' + '' +
    ''' else e.shotname end shotname,' +
    'l1.id_prod_plan_p,l1.id_p,l1.amount ,l1.rem,l1.f_amount,l.d_out,l.f_time f_time_p,' +
    'l1.dto+l1.tto dto_,' +
    'floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+ ( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24' +
    '- floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 tm_ ,' +
    'floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+ ( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24' +
    '- floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 tm ,' +
    'l1.f_time,l1.p_time ,' +
    'p.id_version,p.id_project, p.id_order, o.id_object,r.id_prod_oper, o.obj_type,' +
    'f.id_operation,l.id_prod_plan, h.name name_shift' +

  ' from project_ords p join product_objects o on o.id_version = p.id_version' +
    ' join product_oper r on r.id_object = o.id_object' +
    ' join product_traff f on f.id_prod_oper = r.id_prod_oper and f.id_area = :id_area' +
    ' join operations s on s.id_area = f.id_area and s.id_operation = f.id_operation' +
    ' join product_plans l on l.d_out = :d_out and l.amount > 0';
  if fmD_Job.lcbShift.KeyValue <> null then
    s := s + ' and l.id_shift = :id_shift ';
  s := s + ' and l.id_prod_traf = f.id_prod_traff';
  if id_p = 1 then
    s := s +
      ' join product_plans_p l1 on l1.id_p = :id_p and l1.id_prod_plan = l.id_prod_plan'
  else
    s := s + ' join product_plans_p l1 on l1.id_prod_plan = l.id_prod_plan';
  s := s + ' left join items i on i.id_item = o.id_item' +
    ' left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT' +
    ' left join personnel per on l1.id_p = per.id_p' +
    ' left join post ps on per.idpost = ps.idpost' +
    ' left join shifts h on h.id_shift = l.id_shift';
  // ' order by per.fio,l.posit , o.dec_no,s.name';
  s := s + ' union ' +
    'select per.fio, coalesce(l1.din+l1.tin, cast(l.d_out as timestamp)) din ,' +
    'coalesce(l1.dto+l1.tto, cast(l.d_out as timestamp) +' +
    '( (floor(l.f_time) + (l.f_time - floor(l.f_time))) )/24) dto,' +
    'cast(coalesce(d.name,''' + '��� ����' + ''') as varchar(160))  nm,' +
    'cast(coalesce(o.name,''' + '��� ������' + ''') as varchar(64)) name_ord,' +

  'coalesce(o.n_order,cast(''' + '��� ������' + ''' as varchar(16))) n_order,' +
    // 'cast('''+'��� ������'+''' as varchar(16)) n_order,'+
  'cast(0 as integer) step,cast(''' + '*' + ''' as varchar(30)) name_oper,' +
    'ps.name  name_post, l.id_equipment,' +
    'case when (l.id_equipment = 0 or l.id_equipment is null)  then ''' + '' +
    ''' else e.shotname end shotname,' +
    'l1.id_prod_plan_p,l1.id_p,l1.amount ,' +
    'l1.rem,l1.f_amount , l.d_out, l.f_time f_time_p,' +
    'l1.dto+l1.tto dto_,' +
    'floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+' +
    '( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24' +
    '- floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 tm_,' +
    'coalesce(floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+' +
    '( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24' +
    '- floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 ,' +
    ' (floor(l.f_time) + (l.f_time - floor(l.f_time)) *60/100)  ) tm ,' +
    'l1.f_time,l1.p_time,' +
    'cast(0 as integer) id_version, cast(0 as integer) id_project, cast(0 as integer) id_order,' +
    ' coalesce(l.id_dutytype,1) id_object,' +
    'cast(0 as integer) id_prod_oper, cast(0 as integer) obj_type , cast(0 as integer) id_operation,' +
    'cast(0 as integer) id_prod_plan, cast(h.name as varchar(64)) name_shift' +
    ' from product_plans_stop l' +
    ' join product_plans_p l1 on  l.id_area = :id_area and l.d_out >= :d_out' +
    '   and l.d_out < :d1 and l1.id_prod_plan_stop = l.id_prod_plan_stop' +
    ' left join dutytypes d on d.id_dutytype = l.id_dutytype' +
    ' left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT' +
    ' left join personnel per on l1.id_p = per.id_p' +
    ' left join post ps on per.idpost = ps.idpost' +
    ' left join shifts h on h.id_shift = l.id_shift' +
    ' left join project_ords o on o.id_order = l.id_order';
  qRep_Plan_Day.Close;
  qRep_Plan_Day.SQL.Clear;
  qRep_Plan_Day.SQL.Add(s);
  qRep_Plan_Day.SQL.Add(OrdBy(dbg15));

  qRep_Plan_Day.ParamByName('id_area').AsInteger := fmMain.C_PA;
  qRep_Plan_Day.ParamByName('d_out').AsDate := Int(fmD_Job.dtp1.Date);
  qRep_Plan_Day.ParamByName('d1').AsDate := Int(fmD_Job.dtp1.Date) + 1;
  if fmD_Job.lcbShift.KeyValue <> null then
    qRep_Plan_Day.ParamByName('id_shift').AsInteger :=
      fmD_Job.lcbShift.KeyValue;
  qRep_Plan_Day.AfterScroll := nil;
  qRep_Plan_Day.Open;
  qRep_Plan_Day.First;
  qRep_Plan_Day.AfterScroll := qRep_Plan_DayAfterScroll;
  qRep_Plan_DayAfterScroll(qRep_Plan_Day);
  if qRep_Plan_Day.IsEmpty then
  begin
    ShowMessage('����� ������...');
    Exit;
  end;
end;

procedure TfmD_JOB.WritePlan;
var
  p_am: extended;
begin
  with qIn, qIn.SQL do
  begin
    Close;
    Clear;
    Add('SELECT ID_PROD_PLAN FROM PRODUCT_PLANS WHERE ID_PROD_TRAF = :tr1');
    Add('AND D_OUT = :d1 and ID_SHIFT = :sh1');
    if lcbEqp.KeyValue <> NULL then
      Add(' and ID_EQUIPMENT = :eq1');
    ParamByName('tr1').AsInteger := dmIS.qPA_OperID_PROD_TRAFF.AsInteger;
    ParamByName('d1').AsDate := Int(dtp1.Date);
    if lcbShift.KeyValue = NULL then
      ParamByName('sh1').Clear
    else
      ParamByName('sh1').AsInteger := lcbShift.KeyValue;
    if lcbEqp.KeyValue <> NULL then
      ParamByName('eq1').AsInteger := lcbEqp.KeyValue;

    Open;
    if (not IsEmpty) and (MsgQuestion('���� ��� ���� �������� ��� ����������.' +
      ' ������������� �������� ��� �� ��������? ', '������������� ������') =
      id_no) then
    begin
      id_newnom := qIn.FieldByName('ID_PROD_PLAN').AsInteger;
      exit;
    end;
    Close;
    Clear;
    Add('select GEN_ID(obj_id, 1) id from ACCESS_LEVELS where ACCESS_KEY = 0');
    Open;
    id_newnom := qIn.FieldByName('id').asInteger;
    Close;
    Clear;
    Add('INSERT INTO PRODUCT_PLANS(ID_PROD_PLAN, ID_PROD_TRAF, D_OUT');
    Add(', ID_SHIFT, AMOUNT, ID_EQUIPMENT)');
    Add('VALUES (' + IntToStr(id_newnom) + ', :tr1, :d1, :sh1, :am1, :eqi1)');
    ParamByName('tr1').AsInteger := dmIS.qPA_OperID_PROD_TRAFF.AsInteger;
    ParamByName('d1').AsDate := Int(dtp1.Date);
    try
      if edKol.Text = '' then
        p_am := dmIS.qPA_OperrEST.AsFloat
      else
        p_am := StrToFloat(edKol.Text);
    except
      p_am := 0;
    end;
    ParamByName('am1').AsFloat := p_am; //*dmIS.qPA_OperPROD_AMOUNT.AsFloat;
    if ParamByName('am1').AsFloat = 0 then
      ParamByName('am1').AsFloat := dmIS.qPA_OperrEST.AsFloat;
    if lcbShift.KeyValue = NULL then
      ParamByName('sh1').Clear
    else
      ParamByName('sh1').AsInteger := lcbShift.KeyValue;
    if lcbEqp.KeyValue = NULL then
      ParamByName('eqi1').Clear
    else
      ParamByName('eqi1').AsInteger := lcbEqp.KeyValue;
    try
      ExecSQL;
      if Transaction.InTransaction then
        Transaction.Commit;
    except;
      if Transaction.InTransaction then
        Transaction.Rollback;
      raise;
    end;
  end;
end;

procedure TfmD_JOB.OpenStore_Det;
begin
  if (qPlan_P.Active = True) and (dsPlan_P.State in [dsEdit, dsInsert]) then
    qPlan_P.Post;
  if dmIs.qD_JOB.IsEmpty then
  begin
    if pc.ActivePage = ts_Det then
    begin
      qStore_Det.Close;
      qObj.Close;
    end;
    // if pc.ActivePage = ts_oper then dmIS.qPA_Oper.Close;
    { if pc.ActivePage = ts_Fio then
     begin
      qLoad_P.Close;
      qPlan_P.Close;
     end;}
    if (pc.ActivePage = ts_bill) and (pcBill.ActivePage = ts70) then
      qBills.Close;
    if (pc.ActivePage = ts_bill) and (pcBill.ActivePage = tsBill_List) then
      qBILLPOS_BILL70TRAFF.Close;
    if pc.ActivePage = ts_plan then
      qPlan.Close;
    if pc.ActivePage = ts_vip then
      qObj_Fix.Close;
    if pc.ActivePage = ts_mat then
      qOper_Mats.Close;
    if pc.ActivePage = ts_mat_ord then
      qSum_Mats_Ord.Close;
    if pc.ActivePage = ts_mat_sum then
      qSum_Oper_Mats.Close;
    if pc.ActivePage = tsExp then
      qExp.Close;
    // Exit;
  end;

  if vibor = 0 then
  begin
    Screen.Cursor := crHourGlass;
    if pc.ActivePage = ts_bill then
    begin
      with qBills, qBills.SQL do
      begin
        Close;
        Clear;
        //  Add('select coalesce(coalesce(b.obj_name,'''')||'' - ''||coalesce(b.dec_no,''''),'+
        Add('select distinct coalesce(coalesce(b.obj_name,i.name)||'' - ''||coalesce(b.dec_no,''''),'
          +
          'coalesce(i.name,'''')) obj_name,o.name oname,p.id_pa_bill,' +
          'p.d_bill,p.d_fix, s.ID_PA_BILL_POS, s.ID_OBJECT, s.ID_BATCH,' +
          's.ID_PROD_OPER,s.id_prod_traff, s.AMOUNT,p.number,s.OBJ_TYPE, s.OLD_PROD_OPER,' +
          's.ID_STEP,r.fio,s.id_p,' +
          'case when s.id_p is null then ''''' +
          ' when s.id_p = -1 then ''������''' +
          ' else r1.fio end fio_id_p,' + //t.id_area,
          ' t.id_pa_to, a.name name_area,' +
          'po.name,s.id_order,po.n_order,s.summa,s.summa_nds,s.summa/s.AMOUNT cena' +
          ' from (((p_area_bills p join  PA_BILL_POS s on p.id_pa_bill = s.id_pa_bill' +
          ' and p.pa_bill_type = 70 and p.id_p_area = :id_p_area)' +
          ' join operations o on o.id_operation = s.id_suboper and p.id_p_area = o.id_area)' +
          ' join product_objects b on s.id_object = b.id_object)' +
          ' left join items i on i.id_item = b.id_product' +
          ' left join product_traff t on t.id_prod_oper = s.id_prod_oper' +
          ' left join personnel r on r.id_p = p.id_fix' +
          ' left join personnel r1 on r1.id_p = s.id_p' +
          ' left join prod_areas a on a.id_p_area = t.id_pa_to' +
          ' left join project_ords po on po.id_order = s.id_order' +
          ' where p.d_bill >= :d_bill and p.d_bill <:d_bill + 1');
        ParamByName('id_p_area').AsInteger := fmMain.C_PA;
        ParamByName('d_bill').AsDate := Int(dtp1.Date);
        // Add(OrdBy(dbg3));
       //  ShowMessage(text);
        Open;
      end;
    end;
    {    if (cbStore_List.Checked) and (pc.ActivePage = ts_bill) and
          (pcBill.ActivePage = tsBill_List) then
          pcBillChange(pcBill);}
    ;

    if pc.ActivePage = ts_Fio then
    begin
      with qPlan_p, qPlan_p.SQL do
      begin
        Close;
        Clear;
        Add('select P.id_prod_plan_p, p.id_prod_plan, p.id_p, p.id_team, p.amount,p.f_amount,');
        Add(' p.f_time, p.id_equipment, p.p_amount, p.p_time, p.rem, p.d_in, p.d_to,');
        aDD('DIN,TIN,DTO,TTO,');
        Add(' e.shotname,P.AMOUNT*T.T_PERSONNEL as T_PERS,l.posit,p.ID_PROD_PLAN_STOP,r.fio fio_p');
        Add(' from (PRODUCT_PLANS_P P');
        Add(' join PRODUCT_PLANS L on L.ID_PROD_PLAN = P.ID_PROD_PLAN)');
        Add(' join PRODUCT_TRAFF T on T.ID_PROD_TRAFF = L.ID_PROD_TRAF');
        Add(' left join equipments e on e.ID_EQUIPMENT = p.ID_EQUIPMENT');
        Add('left join personnel r on r.id_p = p.id_p');
        Add(' where P.ID_PROD_PLAN = :ID_PROD_PLAN');
        Add(OrdBy(dbg12));
        // ShowMessage(Text);
        ParamByName('ID_PROD_PLAN').Value := dmIs.qD_JOBID_PROD_PLAN.Value;
        Open;
        if (qLoad_P.Active) and (not qLoad_P.IsEmpty) then
          qLoad_P.Locate('ID_P', qPlan_PID_P.AsInteger, []);

      end;

      { with qLoad_P,qLoad_P.SQL do begin
       Close;
       Clear;
       Add('select distinct g.id_p_area, g.ID_TEAM ,g.ID_P,g.ID_POST,g.NAME ,g.LOAD_TIME,g.WORK_TIME,g.NAME_POST');
       Add(' from GET_PA_DAY_LOAD_P(:id_area,:d_work,:kop) g');
       Case cbFio.State of
        cbChecked   : begin
          cbFio.Caption := '���������';
          Add(' join oper_posts o on o.id_post = g.id_post and o.id_area = :id_area');
          Add(' and o.id_operation = :id_operation');
          ParamByName('id_operation').AsInteger := dmIS.qD_JOBID_OPERATION.AsInteger;
                      end;
        cbUnchecked : cbFio.Caption := '������ ������';
       end;
       Add(OrdBy(dbg14));
      // ShowMessage(text);
       ParamByName('id_area').AsInteger := fmMain.C_PA;
       ParamByName('d_work').AsDate := fmD_JOB.dtp1.Date;
       ParamByName('kop').AsInteger := 1;//Kdistr;
      // ParamByName('id_prod_plan').AsInteger := dmIS.qD_JOBID_PROD_PLAN.AsInteger;
       Open;
      end;}

    end;

    if pc.ActivePage = ts_Det then
    begin
      cbTreeClick(dbt1);

      with qStore_Det, qStore_Det.SQL do
      begin
        Close;
        Clear;
        Add('SELECT p.id_p_area,a.name,coalesce(o.obj_name,i.name) nm,' +
          ' p.AMOUNT,p.id_prod_traff,p.id_step, s.name oname,' +
          ' p.ID_OBJECT, p.ID_BATCH, p.ID_OBJECT_TYPE' +
          ' FROM product_objects o' +
          ' join P_AREA_STATES p  on o.id_parent = :id_parent');
        if cbDet.State = cbChecked then
          Add(' and  p.ID_P_AREA = :ID_P_AREA');
        Add('  and (p.amount is not null or p.amount >0) and o.id_object = p.id_object'
          +
          ' left join prod_areas a on a.id_p_area = p.id_p_area' +
          ' left join items i on i.id_item = o.id_item' +
          ' join product_traff f on f.id_prod_traff = p.id_prod_traff' +
          ' join operations s on  s.id_operation = f.id_operation');
        Add(OrdBy(dbg4));
        if cbDet.State = cbChecked then
          ParamByName('id_p_area').Value := dmIs.qD_JOBID_AREA.Value;
        ParamByName('id_parent').Value := dmIs.qD_JOBID_OBJECT.Value;
        Open;
      end;
    end;

    if pc.ActivePage = ts_plan then
    begin
      with qPlan, qPlan.SQL do
      begin
        Close;
        ParamByName('id_prod_traff').AsInteger :=
          dmIs.qD_JOBID_PROD_TRAFF.Value;
        Open;
      end;
    end;

    if pc.ActivePage = ts_vip then
    begin
      with qObj_Fix, qObj_Fix.SQL do
      begin
        Close;
        Clear;
        Add('select coalesce(coalesce(b.obj_name,i.name)||'' - ''||coalesce(b.dec_no,''''),'
          +
          'coalesce(i.name,'''')) obj_name,' +
          'o.name oname,p.d_bill,p.d_fix, s.ID_OBJECT, s.ID_BATCH, s.ID_STEP,' +
          'r.fio,s.id_p,coalesce(r1.fio,''' + '������''' + ') id_pFio,' +
          'sum(s.AMOUNT) amount' +
          ' from  p_area_bills p join  PA_BILL_POS s on p.id_pa_bill = s.id_pa_bill' +
          '                                 and p.pa_bill_type = 70' +
          ' join operations o on o.id_operation = s.id_suboper and p.id_p_area = o.id_area' +
          ' join product_objects b on s.id_object = b.id_object' +
          ' left join items i on i.id_item = b.id_product' +
          ' left join product_traff t on t.id_prod_traff = s.id_prod_traff' +
          ' left join personnel r on r.id_p = p.id_fix' +
          ' left join personnel r1 on r1.id_p = s.id_p' +
          ' where s.id_object = :id_object' +
          ' group by 1,2,o.name, p.d_bill,' +
          ' p.d_fix, s.ID_OBJECT, s.ID_BATCH, s.ID_STEP,r.fio,s.id_p,r1.fio');
        Add(OrdBy(dbg6));
        //  ShowMessage(text);
        ParamByName('id_object').AsInteger := dmIs.qD_JOBID_OBJECT.Value;

        Open;
      end;
    end;

    if pc.ActivePage = ts_mat then
    begin
      with qOper_Mats, qOper_Mats.SQL do
      begin
        Close;
        Clear;
        Add('select M.*, I.NAME, u.name unit_y,');
        Add('m.amount * m.waste /100                 amount_mats_waste,');
        Add('m.amount * t.full_amount * m.waste /100 amount_mats_waste_ord,');
        Add('m.amount * t.prod_amount * m.waste /100 amount_mats_waste_prod,');
        Add('m.amount * l.amount * m.waste /100      amount_mats_waste_plan,');
        Add('m.amount * l.f_amount * m.waste /100    amount_mats_waste_f_am,');
        Add('m.amount * l.p_amount * m.waste /100    amount_mats_waste_p_am,');
        Add('t.prod_amount,');
        Add('l.amount amount_plan,' +
          'm.amount * t.prod_amount  amount_mats_prod,' +
          'm.amount * l.amount       amount_mats_plan,' +
          'm.amount * l.p_amount     amount_mats_plan_f_am,' +
          'm.amount * l.f_amount     amount_mats_plan_p_am,' +
          'm.amount * t.full_amount  amount_mats_ords,' +
          't.full_amount amount_ord' +
          ' from product_traff_mats M join ITEMS I on M.ID_ITEM = I.ID_ITEM' +
          ' join product_traff t on t.id_prod_traff = m.id_prod_traff' +
          ' join product_plans l on l.id_prod_traf = t.id_prod_traff and l.d_out = :d_out');
        if lcbShift.KeyValue <> null then
          Add(' and l.id_shift = :id_shift');
        if lcbEqp.KeyValue <> null then
          Add(' and l.ID_EQUIPMENT= :ID_EQUIPMENT');

        Add(' left outer join params_value v on' +
          ' (v.id_item =  m.id_item and v.id_param = 1 and v.data = :dt)' +
          ' left outer join units u on u.id_unit = v.smlval' +
          ' where  m.id_prod_traff = :id_prod_traff and l.id_shift is not null');
        Add(OrdBy(dbg2));
        ParamByName('id_prod_traff').AsInteger :=
          dmIs.qD_JOBID_PROD_TRAFF.AsInteger;
        ParamByName('d_out').AsDate := Int(dtp1.Date);
        ParamByName('dt').AsString := '1.01.1900';
        if lcbShift.KeyValue <> null then
          ParamByName('id_shift').AsInteger := lcbShift.KeyValue;
        if lcbEqp.KeyValue <> null then
          ParamByName('ID_EQUIPMENT').AsInteger := lcbEqp.KeyValue;

        {  ParamByName('id_object').AsInteger := dmIs.qD_JOBID_OBJECT.Value;
          ParamByName('id_area').AsInteger := dmIs.qD_JOBID_AREA.Value;
          ParamByName('d_out').AsDate := Int(dtp1.Date);
          ParamByName('id_prod_oper').AsInteger := dmIs.qD_JOBID_PROD_OPER.Value;
         }Open;
        qOper_MatsAfterScroll(qSTORE_TMS_BATCH);
      end;
    end;
    if pc.ActivePage = ts_mat_ord then
    begin
      with qSum_Mats_Ord, qSum_Mats_Ord.SQL do
      begin
        Close;
        Clear;
        Add('select p.n_order,p.name name_ord,I.NAME name_tmc,p.id_order,' +
          'i.id_item,  u.name unit_y,' +
          'SUM(m.amount * m.waste /100) amount_mats_waste,' +
          'SUM(m.amount * t.full_amount * m.waste /100) amount_mats_waste_ord,' +
          'SUM(m.amount * t.prod_amount * m.waste /100)  amount_mats_waste_prod,' +
          'SUM(m.amount * l.amount * m.waste /100) amount_mats_waste_plan,' +
          'SUM(t.prod_amount) prod_amount,' +
          'SUM(t.prod_amount * m.amount) amount_mats_prod,' +
          'SUM(l.amount) amount_plan,' +
          'SUM(l.amount * m.amount) amount_mats_plan,' +
          'SUM(t.full_amount * m.amount) amount_mats_ords' +
          ' from product_traff_mats M ' +
          ' join ITEMS I on i.ID_ITEM = m.ID_ITEM' +
          ' join product_traff t on t.id_prod_traff = m.id_prod_traff and t.id_area = :id_area' +
          ' join product_plans l on l.id_prod_traf = t.id_prod_traff and l.d_out = :d_out');
        if lcbShift.KeyValue <> null then
          Add(' and l.id_shift = :id_shift');
        if lcbEqp.KeyValue <> null then
          Add(' and l.ID_EQUIPMENT= :ID_EQUIPMENT');

        Add(' join product_oper r on r.id_prod_oper = t.id_prod_oper ' +
          ' join project_ords p on p.id_version = r.id_version and p.id_order = :id_order');
        case cbClose.State of
          cbChecked: Add(' and p.d_close is null');
          cbUnchecked: Add(' and p.d_close is not null');
        end;
        Add(' left outer join params_value v on' +
          '   (v.id_item =  m.id_item and v.id_param = 1 and v.data = :dt)' +
          ' left outer join units u on u.id_unit = v.smlval ' +
          ' group by  p.n_order,p.name,I.NAME,p.id_order,i.id_item, u.name');
        Add(OrdBy(dbg8));
        ParamByName('id_area').AsInteger := dmIs.qD_JOBID_AREA.AsInteger;
        ParamByName('id_order').AsInteger := dmIs.qD_JOBID_ORDER.AsInteger;
        ParamByName('d_out').AsDate := Int(dtp1.Date);
        ParamByName('dt').AsString := '1.01.1900';
        if lcbShift.KeyValue <> null then
          ParamByName('id_shift').AsInteger := lcbShift.KeyValue;
        if lcbEqp.KeyValue <> null then
          ParamByName('ID_EQUIPMENT').AsInteger := lcbEqp.KeyValue;
        //  ShowMessage(Text);
        Open;
      end;
    end;
    if pc.ActivePage = ts_mat_sum then
    begin
      qSum_Oper_Mats.Close;
      qSum_Oper_Mats.Open;
    end;
    if pc.ActivePage = ts_doc then
    begin
      with qDoc, qDoc.SQL do
      begin
        Close;
        ParamByName('id_object').AsInteger := dmIs.qD_JOBID_OBJECT.Value;
        Open;
      end;
    end;
    if pc.ActivePage = tsExp then
    begin
      with qExp, qExp.SQL do
      begin
        Close;
        ParamByName('id_order').AsInteger := dmIs.qD_JOBID_ORDER.Value;
        ParamByName('id_field').AsInteger := dmIs.qD_JOBID_PROD_TRAFF.Value;
        Open;
      end;
    end;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmD_JOB.OpenD_JOB;
var
  s: string;
  //  h, h1, h2: Extended;
  id_nom: Integer;
begin
  Screen.Cursor := crHourGlass;
  with dmIS.qSum_P_All, dmIS.qSum_P_All.SQL do
  begin
    Close;
    ParamByName('id_area').AsInteger := fmMain.C_PA;
    ParamByName('d_out').AsDate := dtp1.Date;
    if lcbShift.KeyValue <> null then
      ParamByName('id_shift').AsInteger := lcbShift.KeyValue;
    Open;
  end;
  qLoad_P.Close;
  qLoad_P.Open;
  with dmIS.qD_JOB, dmIS.qD_JOB.SQL do
  begin
    if Active then
      id_nom := dmIS.qD_JOBID_PROD_PLAN.AsInteger;
    Close;
    s := 'select o.dec_no, ii.name nmat,' +
      { ' floor(sum(pp.f_time))  + ((sum(pp.f_time) - ' +
   ' floor(sum(pp.f_time)))*60)/100 f_tm,' + }
    ' floor(l.f_time) + ((l.f_time - floor(l.f_time))*60)/100 f_tm,' +
      'r.id_prod_oper,o.id_item,p.id_project, p.n_order,p.id_order, p.name,' +
      'o.id_object, o.obj_type,p.id_version,o.obj_name,o.amount amount_ord,' +
      'coalesce(o.obj_name,i.name) nm,s.id_operation, s.name oname,' +

    ' l.amount, l.f_amount, l.p_amount,' +
      ' coalesce(l.amount,0) - coalesce(l.f_amount,0) ost,' +
      ' l.f_time, l.p_time,' +
      ' l.amount,' +
      { ' sum(pp.f_amount) f_amount,' +
' sum(pp.p_amount) p_amount,' +
' l.p_amount,' +
' coalesce(l.amount,0) - coalesce(sum(pp.f_amount),0) ost,' +
' sum(pp.f_time) f_time,' +
' sum(pp.p_time) p_time,' +
}
    'i.name as iname, f.t_personnel,f.id_prod_traff,f.id_area,' +
      'f.t_personnel*l.amount as sum_pers, l.id_prod_plan,l.posit,' +
      'l.COMMENT,l.ID_EQUIPMENT,q.pl_name,' +
      'f.full_amount,f.produced,f.full_amount - coalesce(f.produced,0) ost_ord,' +
      ' cast((substring  (l.rem from 1 for 1024)) as varchar(1024)) rem,' +
      ' cast((substring  (r.rem from 1 for 1024)) as varchar(1024)) rem_oper,r.step,r.descript,pr.fio,l.id_shift,' +
      'case when f.t_personnel is null then 0' +
      '   when f.t_personnel=0 then 0' +
      '   else 1/f.t_personnel end kol_h,' +
      'f.id_pa_to,a.name name_areain,p.d_close, f.id_batch,' +
      's.cost,s.cost* f.t_personnel total,' +
      '(select first 1 obj.obj_name from br_up_objects_l(o.id_object,0) br' +
      ' join product_objects obj on obj.id_object = br.id where obj.obj_name is not null' +
      ' order by br.id_level desc) parent_name, q.shotname eq_name ' +
      ' from (((((project_ords p join product_objects o on o.id_version = p.id_version)' +
      ' join product_oper r on r.id_object = o.id_object)' +
      ' join product_traff f on f.id_batch = p.id_batch and f.id_prod_oper = r.id_prod_oper and f.id_area = :pa1)' +
      //     ' left join equipments e on e.id_equipment = f.id_equipment'+
    ' join operations s on s.id_area = f.id_area and s.id_operation = f.id_operation)' +

    ' join product_plans l on l.d_out = :d1 and l.amount >0 ';

    //     ' left join equipments e on e.id_equipment = l.id_equipment '; //'and e.id_area = s.id_area'+
    if lcbShift.KeyValue <> null then
      s := s + ' and l.id_shift = :id_shift';
    s := s + ' and l.id_prod_traf = f.id_prod_traff)' +
      //' left join product_plans_p pp on pp.id_prod_plan = l.id_prod_plan'+
    ' left join items i on i.id_item = o.id_item' +
      ' left join items ii on ii.id_item = f.base_item' +
      ' left join personnel pr on p.id_constr = pr.id_p' +
      ' left join prod_areas a on a.id_p_area = f.id_pa_to' +
      ' left join equipments q on q.id_equipment = l.id_equipment';
    case cbClose.State of
      cbChecked: s := s + ' where p.d_close is null';
      cbUnchecked: s := s + ' where p.d_close is not null';
    end;
    if lcbEqp.KeyValue <> null then
      s := s + ' and l.ID_EQUIPMENT = ' + IntToStr(lcbEqp.KeyValue);
    { s := s + ' group by 1,2,4,5,6,7,8,9,10,11,12,13,14,15,16,17,' +
     '18, 20,'+
     ' 24,25,26,27,28,' +
             ' 29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51';}
    SQL.Clear;
    SQL.Add(s);
    ParamByName('pa1').AsInteger := fmMain.C_PA;
    ParamByName('d1').AsDate := dtp1.Date;
    if lcbShift.KeyValue <> null then
      ParamByName('id_shift').AsInteger := lcbShift.KeyValue;
    dmIS.qD_JOB.AfterScroll := nil;
    Open;
    FetchAll;
    if id_newnom > 0 then
      Locate('ID_PROD_PLAN', id_newnom, [])
    else
      Locate('ID_PROD_PLAN', id_nom, []);
    id_newnom := 0;
    dmIS.qD_JOB.AfterScroll := dmIS.qD_JOBAfterScroll;
    with qObj_Sum, qObj_Sum.SQL do
    begin
      Close;
      //   ParamByName('id_prod_traff').AsInteger := dmIs.qD_JOBID_PROD_TRAFF.Value;
      Open;
    end;
    //dbg11SortMarkingChanged(dbg11);
    OpenStore_Det;
    { While not EOF do
    begin
     dmIs.qD_JOB.Edit;
   //  Result:=FormatMaskText('!000:00:00;1;0', Format('%d:%d:%d',[h, m, s]));
      h :=Frac(dmIs.qD_JOBF_TIME.AsFloat) * 60;
     h := Int(h);
     if h < 0.1 then h := 1;
     h1 := Int(dmIs.qD_JOBF_TIME.Value);
     if h < 10 then s := FloatToStr(h1) + ':0' + FloatToStr(h)
     else s := FloatToStr(h1) + ':' + FloatToStr(h);
      dbg1.FieldColumns['F_DT'].Field.AsString := s;
   //  Delete(SysVars.NReg,1,Pos(' ',SysVars.FReg)) ;
   //  Delete(dbg1.FieldColumns['F_DT'].Field.AsString,6,Length(dbg1.FieldColumns['F_DT'].Field.AsString));
     Next;            
    end;
    dmIs.mT.CommitRetaining;
   }
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmD_JOB.FormCreate(Sender: TObject);
var
  col1: TColumnEh;
begin
  //fmOpen.pbar.Max := 20;
  //fmOpen.Show;
  fmMain.pb.StepBy(5);
  pcAll.ActivePage := tsWork;
  pcBill.ActivePage := ts70;
  pcGraf.ActivePage := tsFio;
  dtp1.DateTime := Int(now);
  qDet_Txt := qDet.SQL.Text;
  qDet.Close;
  qDet.Open;
  qLoad_P.Close;
  qLoad_P.Open;
  dbg11SortMarkingChanged(dbg11);
  //Plan_P_Stop.Close;qPlan_P_Stop.Open;
  tree_up := False;
  sbDFix.Enabled := fmMain.UF_DOC;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    fmMain.pb.StepBy(5);
    //   Read(pc,iniRect);
    Read(PnKol, iniRect);
    fmMain.pb.StepBy(5);
    ;
    //   Read(Panel15,iniRect);    fmMain.pb.StepBy(5);
    Read(Panel17, iniRect);
    fmMain.pb.StepBy(5);
    Read(Panel22, iniRect);
    fmMain.pb.StepBy(5);

    {Read(dbg1,iniGridEh);    fmMain.pb.StepBy(5);;
    Read(dbg2,iniGridEh);    fmMain.pb.StepBy(5);;
    Read(dbg3,iniGridEh);    fmMain.pb.StepBy(5);;
    Read(dbg33,iniGridEh);   fmMain.pb.StepBy(5);;
    Read(dbg4,iniGridEh);    fmMain.pb.StepBy(5);;
    Read(dbg44,iniGridEh);   fmMain.pb.StepBy(5);;
    Read(dbg44,iniGridEh);   fmMain.pb.StepBy(5);;
    Read(dbg5,iniGridEh);    fmMain.pb.StepBy(5);;
    Read(dbg51,iniGridEh);   fmMain.pb.StepBy(5);;
    Read(dbg6,iniGridEh);    fmMain.pb.StepBy(5);;
    Read(dbg7,iniGridEh);    fmMain.pb.StepBy(5);;
    Read(dbg8,iniGridEh);    fmMain.pb.StepBy(5);;
    Read(dbg9,iniGridEh);    fmMain.pb.StepBy(5);;
    Read(dbg10,iniGridEh);   fmMain.pb.StepBy(5);;
    Read(dbg11,iniGridEh);   fmMain.pb.StepBy(5);;
 //   Read(dbg12,iniGridEh);
    Read(dbg14,iniGridEh);   fmMain.pb.StepBy(5);;
 //   Read(dbg15,iniGridEh);
    Read(dbg16,iniGridEh);   fmMain.pb.StepBy(5);
    Read(dbg17,iniGridEh); fmMain.pb.StepBy(5);// fmOpen.pbar.StepIt;
    Read(dbg_Obj,iniGridEh); fmMain.pb.StepBy(5);
    Read(dbg_Obj1,iniGridEh); fmMain.pb.StepBy(5); }
    ReadEh(dbg1, id_Form);
    fmMain.pb.StepBy(5);
    ;
    ReadEh(dbg2, id_Form);
    fmMain.pb.StepBy(5);
    ;
    ReadEh(dbg3, id_Form);
    fmMain.pb.StepBy(5);
    ;
    ReadEh(dbg33, id_Form);
    fmMain.pb.StepBy(5);
    ;
    ReadEh(dbg4, id_Form);
    fmMain.pb.StepBy(5);
    ;
    ReadEh(dbg44, id_Form);
    fmMain.pb.StepBy(5);
    ;
    ReadEh(dbg44, id_Form);
    fmMain.pb.StepBy(5);
    ;
    ReadEh(dbg5, id_Form);
    fmMain.pb.StepBy(5);
    ;
    ReadEh(dbg51, id_Form);
    fmMain.pb.StepBy(5);
    ;
    ReadEh(dbg6, id_Form);
    fmMain.pb.StepBy(5);
    ;
    ReadEh(dbg7, id_Form);
    fmMain.pb.StepBy(5);
    ;
    ReadEh(dbg8, id_Form);
    fmMain.pb.StepBy(5);
    ;
    ReadEh(dbg9, id_Form);
    fmMain.pb.StepBy(5);
    ;
    ReadEh(dbg10, id_Form);
    fmMain.pb.StepBy(5);
    ;
    ReadEh(dbg11, id_Form);
    fmMain.pb.StepBy(5);
    ;
    //   Read(dbg12,iniGridEh);
    Read(dbg14, iniGridEh);
    fmMain.pb.StepBy(5);
    ;
    //   Read(dbg15,iniGridEh);
    Read(dbg16, iniGridEh);
    fmMain.pb.StepBy(5);
    Read(dbg17, iniGridEh);
    fmMain.pb.StepBy(5); // fmOpen.pbar.StepIt;
    Read(dbg_Obj, iniGridEh);
    fmMain.pb.StepBy(5);
    Read(dbg_Obj1, iniGridEh);
    fmMain.pb.StepBy(5);
    //   Read(dbg1,iniGridEh);
    Read('C_BSS', C_BSS);
  finally
    Free;
  end;

  pc.ActivePage := ts_bill;
  //���������� �� ����� ��� �������� �����
  col1 := dbg1.FieldColumns['N_ORDER'];
  col1.Title.TitleButton := True;
  col1.Title.SortMarker := smDownEh;

  col1 := dbg1.FieldColumns['NM'];
  col1.Title.TitleButton := True;
  col1.Title.SortMarker := smDownEh;

  col1 := dbg1.FieldColumns['STEP'];
  col1.Title.TitleButton := True;
  col1.Title.SortMarker := smDownEh;

  dbg1.FieldColumns['P_AMOUNT'].Color := clWhite;
  dbg1.FieldColumns['P_TIME'].Color := clWhite;
  dbg1.FieldColumns['REM'].Color := clWhite;
  dbg1.ReadOnly := True;
  dbn1.VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast];

  col1 := dbg16.FieldColumns['DIN'];
  col1.Title.TitleButton := True;
  col1.Title.SortMarker := smDownEh;
  col1 := dbg16.FieldColumns['TIN'];
  col1.Title.TitleButton := True;
  col1.Title.SortMarker := smDownEh;
  col1 := dbg16.FieldColumns['DTO'];
  col1.Title.TitleButton := True;
  col1.Title.SortMarker := smDownEh;
  col1 := dbg16.FieldColumns['TTO'];
  col1.Title.TitleButton := True;
  col1.Title.SortMarker := smDownEh;

  dbg16.FieldColumns['DIN'].Color := clWhite;
  dbg16.ReadOnly := True;
  dbn16.VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast];

  cb_ss.Checked := C_BSS = 1;

  //fmOpen.Close;
  fmMain.pb.StepBy(5);
  InitPPLanCntrls(1);
end;

procedure TfmD_JOB.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if dmIS.mT.InTransaction then
    dmIS.mT.CommitRetaining;
  Panel_Bill.Hide;
  edNom.Clear;
  lbNom.Caption := '';
  mm.Clear;

  tb6Click(Sender);
  tb7Click(Sender);

  dmIS.qD_JOB.Close;
  qBILLPOS_BILL70TRAFF.Close;
  dmIs.qBill.Close;
  dmIs.qBill_ss.Close;

  pcAll.ActivePage := tsWork;
  {dbg1.FieldColumns['P_AMOUNT'].Color := clWhite;
  dbg1.FieldColumns['P_TIME'].Color := clWhite;
  dbg1.FieldColumns['REM'].Color := clWhite;
  dbg1.ReadOnly := True;}
  //dmIs.qD_JOB.CachedUpdates := False;
  if cb_ss.Checked then
    C_BSS := 1
  else
    C_BSS := 0;

  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    //   Write(pc,iniRect);
    Write(PnKol, iniRect);
    Write(Panel17, iniRect);
    Write(Panel22, iniRect);

    Write(dbg1, iniGridEh);
    Write(dbg2, iniGridEh);
    Write(dbg3, iniGridEh);
    Write(dbg33, iniGridEh);
    Write(dbg4, iniGridEh);
    Write(dbg44, iniGridEh);
    Write(dbg44, iniGridEh);
    Write(dbg5, iniGridEh);
    Write(dbg51, iniGridEh);
    Write(dbg6, iniGridEh);
    Write(dbg7, iniGridEh);
    Write(dbg8, iniGridEh);
    Write(dbg9, iniGridEh);
    Write(dbg10, iniGridEh);
    Write(dbg11, iniGridEh);
    Write(dbg12, iniGridEh);
    Write(dbg14, iniGridEh);
    Write(dbg15, iniGridEh);
    Write(dbg16, iniGridEh);

    Write(dbg17, iniGridEh);

    Write('C_BSS', C_BSS);
  finally
    Free;
  end;
end;

procedure TfmD_JOB.tb1Click(Sender: TObject);
begin
  if dmIS.qD_JOB.IsEmpty then
    exit;
  vibor := 1;
  dbg1.FieldColumns['P_AMOUNT'].Color := clWhite;
  dbg1.FieldColumns['P_TIME'].Color := clWhite;
  dbg1.FieldColumns['REM'].Color := clWhite;
  dbg1.ReadOnly := True;
  dbn1.VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast];

  if not Assigned(fmDistrJob) then
    Application.CreateForm(TfmDistrJob, fmDistrJob);
  //fmDistrJob.dbg1.SumList.Active := True;
  fmDistrJob.Caption := '������������� ����� �� ' + DateToStr(dtp1.Date) +
    ' - ' + dmIS.qPANAME.AsString + '. (�����������)';
  fmDistrJob.Kdistr := 1;
  fmDistrJob.Show;
end;

procedure TfmD_JOB.tb2Click(Sender: TObject);
begin
  if dmIS.qD_JOB.IsEmpty then
    exit;
  dbg1.FieldColumns['P_AMOUNT'].Color := clWhite;
  dbg1.FieldColumns['P_TIME'].Color := clWhite;
  dbg1.FieldColumns['REM'].Color := clWhite;
  dbg1.ReadOnly := True;
  dbn1.VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast];

  if not Assigned(fmDistrJob) then
    Application.CreateForm(TfmDistrJob, fmDistrJob);
  fmDistrJob.Caption := '������������� ����� �� ' + DateToStr(dtp1.Date) +
    ' - ' + dmIS.qPANAME.AsString + '. (�� ��������)';
  fmDistrJob.Kdistr := 2;
  fmDistrJob.ShowModal;
end;

procedure TfmD_JOB.sbYtvClick(Sender: TObject);
var
  status, id_p: Integer;
begin
  if dmIS.dsD_JOB.State in [dsEdit, dsInsert] then
    dmIS.qD_JOB.Post;
  if dsPlan_P.State in [dsEdit, dsInsert] then
    qPlan_P.Post;

  if dmIs.mT.InTransaction then
    dmIs.mT.CommitRetaining;
  if
    MsgQuestion('����� �������� ��������� ������� ����� ���������� ��� ��������������. '
    +
    '��� �������� � ������������ ������� ����� ������� �� �����. ' + SysVars.NReg
    +
    ' , �� ������������� ������ ������� �������� �������?',
    '�������� ��������� �������') = id_yes then
   
    with dmIS.qInsW, dmIS.qInsW.SQL do
    begin
      Screen.Cursor := crHourGlass;
      Close;
      Clear;
      Add('select status,id from PA_BILL_P70(:ID_AREA,:D_IN,:ID_TN,:ID_SHIFT,:ID_EQ)');
      ParamByName('ID_AREA').AsInteger := fmMain.C_PA;
      ParamByName('D_IN').AsDate := dtp1.Date;
      ParamByName('ID_TN').AsInteger := SysVars.RegTN;
      if fmD_JOB.lcbShift.KeyValue <> null then
        ParamByName('ID_SHIFT').AsInteger := fmD_JOB.lcbShift.KeyValue;
      if fmD_JOB.lcbEqp.KeyValue <> null then
        ParamByName('ID_EQ').AsInteger := fmD_JOB.lcbEqp.KeyValue
      else
        ParamByName('ID_EQ').Clear;
      try
        Open;
        status := FieldByName('status').asInteger;
        id_p := FieldByName('id').asInteger;
        if status = -1 then
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
          if dmIS.mTW.InTransaction then
            dmIS.mTW.Commit;
          tbVibClick(Sender);
          tb6Click(Sender);
        end;
        if status >= 0 then
        begin
          if dmIS.mTW.InTransaction then
            dmIS.mTW.Rollback;
          Close;
          Clear;
          Add('select obj_name from product_objects where id_object = :id_object');
          ParamByName('id_object').AsInteger := status;
          Open;
          Screen.Cursor := crDefault;
          MsgError('������ ��� �������� ��������� �������. ������: (' +
            IntToStr(status) + ') ' +
            dmIS.qInsW.FieldByName('obj_name').AsString + '',
            '������ ��������');

        end;
      except
        on E: Exception do
        begin
          if dmIS.mTW.InTransaction then
            dmIS.mTW.Rollback;
          if Pos('exception 13', e.Message) > 0 then
          begin
            Screen.Cursor := crDefault;
            ShowMessage(E.Message);
            Exit;
          end
          else
            raise;
        end; //do
      end; //try

      Screen.Cursor := crDefault;
      //  end; //try
    end; //with

end;

procedure TfmD_JOB.tb4Click(Sender: TObject);
var
  P_OBJ: integer;
begin
  Screen.Cursor := crHourGlass;
  if dmIs.mT.InTransaction then
    dmIs.mT.CommitRetaining;
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

procedure TfmD_JOB.N1Click(Sender: TObject);
{var
  s: string;}
begin
  if dmIS.qD_JOB.IsEmpty then
    exit;
  qSUM_Oper_Mats.Close;
  qSUM_Oper_Mats.Open;
  frxRepD_JOB.Script.Variables['N_PROD_AREA'] := fmMain.lcb1.Text;
  frxRepD_JOB.Script.Variables['D_JOB'] := '��  ' +
    FormatDateTime('dd  mmmm  yyyy', dtp1.Date) +
    '     ' + lcbShift.Text +
    '     ' + lcbEqp.Text;
  frxRepD_JOB.ShowReport(True);

  {If dmIS.qD_JOB.IsEmpty Then exit;
  frVariables['D_JOB'] := DateToStr(dtp1.Date);
  frReport1.ShowReport;
  }
end;

procedure TfmD_JOB.N3Click(Sender: TObject);
var
  s: string;
  i: Integer;
begin
  s := 'select * from REP_NAKL(:ID ,:PA_BILL_TYPE_,:PA_BILL_TYPE_1,' +
    ':PA_BILL_TYPE_2,:PA_BILL_TYPE_3,' +
    ' :D_IN, :D_OUT, :IS_NAKL, :IS_ALL, :NUMBER_,:NUMBER_BILL, :ID_AGENT_,' +
    ':TIP,:YSL,:rec_uragent)' +
    'order by id_pa_bill,name, id_object,id_batch';
  with qBill_s do
  begin
    Close;
    SQL.Clear;
    SQL.Clear;
    SQL.Add(s);
    ParamByName('ID').Value := fmMain.C_PA;
    ParamByName('PA_BILL_TYPE_').Value := 70;
    ParamByName('PA_BILL_TYPE_1').Value := 70;
    ParamByName('PA_BILL_TYPE_2').Value := 70;
    ParamByName('PA_BILL_TYPE_3').Value := 70;
    ParamByName('D_IN').Value := null;
    ParamByName('D_OUT').Value := null;
    ParamByName('IS_NAKL').Value := 1;
    ParamByName('IS_ALL').Value := 0; //0-�������� �����������
    ParamByName('NUMBER_').Value := qBillsNUMBER.AsString; //�����. �����
    ParamByName('NUMBER_BILL').Value := null; //����� �����������
    ParamByName('ID_AGENT_').Value := null;
    ParamByName('TIP').Value := 1;
    ParamByName('YSL').Value := 1;
    ParamByName('rec_uragent').Value := null; // ��������� ������
    Open;
  end; //with qBill_s
  i := 0;
  fmD_JOB.frxRepBills_s.Pages[i];
  fmD_JOB.frxRepBills_s.Pages[i].Visible := True;
  fmD_JOB.frxRepBills_s.Pages[i + 1].Visible := False;
  fmD_JOB.frxRepBills_s.ShowReport;
end;

procedure TfmD_JOB.N2Click(Sender: TObject);
begin
  qD_JOB.Close;
  qD_JOB.Open;
end;

procedure TfmD_JOB.qD_JOBBeforeOpen(DataSet: TDataSet);
var
  s, s1: string;
begin
  s1 := '';
  s1 := id_str(dbg1, 'ID_PROD_TRAFF');
  if s1 = '' then
    s1 := dmIs.qD_JOBID_PROD_TRAFF.AsString;
  s := 'select floor(l.f_time) + ((l.f_time - floor(l.f_time))*60)/100 as f_tm,'
    +
    'r.id_prod_oper,p.id_project, p.n_order,p.id_order, p.name, o.id_object,' +
    'o.obj_type,p.id_version,o.obj_name, coalesce(o.obj_name,i.name) as nm,' +
    's.id_operation, s.name as oname, l.amount,l.f_amount,' +
    'l.p_amount,l.amount - l.f_amount as ost,l.f_time,l.p_time,' +
    'i.name as iname, f.t_personnel,f.id_prod_traff,f.id_area,' +
    'f.t_personnel*l.amount as sum_pers, l.id_prod_plan,l.posit,' +
    'l.rem ,r.rem as rem_oper,r.step,r.descript' +
    ' from (((((project_ords p join product_objects o on o.id_version = p.id_version)' +
    ' join product_oper r on r.id_object = o.id_object)' +
    ' join product_traff f on f.id_prod_oper = r.id_prod_oper and f.id_area = :pa1)' +
    ' join operations s on s.id_area = f.id_area and s.id_operation = f.id_operation)' +
    ' join product_plans l on l.d_out = :d1 and  l.id_prod_traf = f.id_prod_traff' +
    '                         and l.amount >0)' +
    ' left join items i on i.id_item = o.id_item' +
    ' where p.d_close is null' +
    ' and f.id_prod_traff in (' + s1 + ')';
  qD_JOB.SQL.Clear;
  qD_JOB.SQL.Add(s);
  //ShowMessage(qD_JOB.SQL.Text);
end;

procedure TfmD_JOB.N4Click(Sender: TObject);
begin
  frxRepDay_JOB.Script.Variables['N_PROD_AREA'] := fmMain.lcb1.Text;
  frxRepDay_JOB.Script.Variables['D_JOB'] := '�� ' +
    FormatDateTime('dd  mmmm  yyyy', dtp1.Date) +
    '     ' + lcbShift.Text;
  frxRepDay_JOB.Pages[0].Visible := False;
  frxRepDay_JOB.Pages[1].Visible := False;
  frxRepDay_JOB.Pages[0].Visible := True;

  frxRepDay_JOB.ShowReport(True);
end;

procedure TfmD_JOB.tb5Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if pcAll.ActivePage = tsWork then
    GridToExcel(dbg1);
  if pcAll.ActivePage = tsFio then
    GridToExcel(dbg15);

  Screen.Cursor := crDefault;

end;

procedure TfmD_JOB.SpeedButton2Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg3);
  Screen.Cursor := crDefault;

end;

procedure TfmD_JOB.SpeedButton3Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg2);
  Screen.Cursor := crDefault;

end;

procedure TfmD_JOB.FormShow(Sender: TObject);
begin
  vibor := 0;
  fmD_JOB.Caption := '�������� �������: ' + fmMain.lcb1.Text;
  tb2.Enabled := fmMain.Is_Teams;
  //sb1.Enabled := fmMain.Is_Teams;

  dmIs.qDutyType.Close;
  dmIs.qDutyType.SQL.Clear;
  dmIs.qDutyType.SQL.Add('select * from DUTYTYPES where id_dutytype<>100 order by name');
  dmIs.qDutyType.Open;
  fmMain.pb.StepBy(5);
  dmIs.qShifts.Close;
  dmIs.qShifts.Open;
  fmMain.pb.StepBy(5);
  if dmIs.qShifts.IsEmpty then
  begin
    ShowMessage('���������� ��������� ���������� ����...');
    exit;
  end
  else
    lcbShift.KeyValue := dmIs.qShiftsID_SHIFT.AsInteger;
  OpenD_JOB;
  if dmIs.qD_JOB.IsEmpty then
    Exit;
  {With qBills, qBills.SQL do
  begin
   Close;
   ParamByName('id_p_area').AsInteger := fmMain.C_PA;
   ParamByName('d_bill').AsDate := Int(dtp1.Date);
   Open;
  end;
  }
  fmMain.pb.Position := 0;

  Screen.Cursor := crDefault;
end;

procedure TfmD_JOB.N5Click(Sender: TObject);
begin
  qList_Plan.Close;
  qList_Plan.ParamByName('pa1').AsInteger := fmMain.C_PA;
  qList_Plan.Open;
  frxRepList_Plan.ShowReport(True);
end;

procedure TfmD_JOB.ToolButton2Click(Sender: TObject);
begin
  if not Assigned(fmDistrJob) then
    Application.CreateForm(TfmDistrJob, fmDistrJob);
  fmDistrJob.qIns.Close;
  fmDistrJob.qIns.SQL.Clear;
  fmDistrJob.qIns.SQL.Add('select id_object from product_objects');
  fmDistrJob.qIns.SQL.Add('where id_version = :id_version and id_parent = 0');
  fmDistrJob.qIns.ParamByName('id_version').AsInteger :=
    dmIs.qD_JOBID_VERSION.AsInteger;
  //ShowMessage(qInsT.text);
  fmDistrJob.qIns.Open;
  if not fmDistrJob.qIns.FieldByName('id_object').IsNull then
  begin
    fmDistrJob.qRep_MR_CART.Close;
    fmDistrJob.qRep_MR_CART.SQL.Clear;
    fmDistrJob.qRep_MR_CART.SQL.Add('select * from REP_MR_CART(:ID_OBJECT_)');
    fmDistrJob.qRep_MR_CART.ParamByName('ID_OBJECT_').AsInteger :=
      fmDistrJob.qIns.FieldByName('id_object').AsInteger;
    fmDistrJob.qRep_MR_CART.Open;
    fmDistrJob.frxRRep_MR_CART.ShowReport(True);
  end;

end;

procedure TfmD_JOB.sb1Click(Sender: TObject);
begin
  if (dmIs.qPAU_TYPE.AsInteger = 1) or (dmIs.qPAU_TYPE.IsNull) then
  begin
    ShowMessage('�� �� ������ ��������� ��������� (�������� ��������� � ��-�� "�����"). '
      +
      '������� �������� � �������� �������...');
    Exit;
  end;
  if not qBills.IsEmpty then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('select * from create_traff_bills(:ID_BILL)');
      ParamByName('ID_BILL').AsInteger := qBillsID_PA_BILL.AsInteger;
      Open;
      if not IsEmpty then
        MsgInformation('��������� �� ����������� �������.',
          '��������� �� �����������')
      else
        MsgInformation('������� �� ����������� ���.',
          '��������� �� �����������');
      if dmIS.mT.InTransaction then
        dmIS.mT.CommitRetaining;
    end;
end;

procedure TfmD_JOB.SpeedButton1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg6);
  Screen.Cursor := crDefault;

end;

procedure TfmD_JOB.sbPlanFaktClick(Sender: TObject);
var
  k: integer;

begin

  with dbg1 do
  begin
    dmIs.qD_JOB.DisableControls;
    if SelectedRows.Count > 0 then
    begin
      for k := 0 to SelectedRows.Count - 1 do
      begin
        dmIs.qD_JOB.GotoBookmark(pointer(SelectedRows.Items[k]));
        with qIns, qIns.SQL do
        begin
          Close;
          Clear;
          Add('update product_plans  set p_amount = :amount, p_time = :p_time ');
          //:amount * :t_personnel');
          Add('where id_prod_plan = :id_prod_plan');
          ParamByName('amount').AsFloat := dmIs.qD_JOBAMOUNT.AsFloat;
          qIns.ParamByName('p_time').AsFloat :=
            Int(dmIs.qD_JOBAMOUNT.AsFloat * dmIs.qD_JOBT_PERSONNEL.AsFloat) +
            Frac(dmIs.qD_JOBAMOUNT.AsFloat * dmIs.qD_JOBT_PERSONNEL.AsFloat) * 60
            / 100;
          if Frac(qIns.ParamByName('p_time').AsFloat) >= 0.599 then
            qIns.ParamByName('p_time').AsFloat :=
              Int(qIns.ParamByName('p_time').AsFloat) + 1;

          //     ParamByName('t_personnel').AsFloat := dmIs.qD_JOBT_PERSONNEL.AsFloat;
          ParamByName('id_prod_plan').AsInteger :=
            dmIs.qD_JOBID_PROD_PLAN.AsInteger;
          ExecSQL;
        end;
      end;
    end
    else
      ShowMessage('���������� �������� ������...');

    dmIS.qD_JOB.EnableControls;
    if dmIS.mT.InTransaction then
      dmIS.mT.CommitRetaining;
    tbVibClick(Sender);
    //dtp1CloseUp(Sender);
  end;

end;

procedure TfmD_JOB.pcChange(Sender: TObject);
var
  C_OP, id_obj: Integer;
  dt_out: TDate;
begin
  if pc.ActivePage = ts_Fio then
  begin
    qLoad_P.Close;
    qLoad_P.Open;
  end;
  if pc.ActivePage = ts_oper then
  begin
    with dmIS.qPA_Oper, dmIS.qPA_Oper.SQL do
    begin
      if Active then
        C_OP := dmIS.qPA_OperID_PROD_TRAFF.AsInteger;
      Close;
      Clear;
      Add('select o.n_order, o.id_order, b.id_object, o.name ordname,');
      Add('coalesce(b.obj_name,o.name) obj_name, p.step, f.id_operation,');
      Add('r.name oname, f.id_prod_oper, f.id_prod_traff, b.amount, f.produced,');
      Add('f.is_unit, f.full_amount, f.prod_amount, f.t_personnel, f.waste,');
      Add('i.name nmat, b.dec_no, a.name toname, f.id_batch');

      Add(',(select first 1 obj.obj_name');
      Add('  from br_up_objects_l(b.id_object,0) br ');
      Add('  join product_objects obj on obj.id_object = br.id ');
      Add('  where obj.obj_name is not null order by br.id_level desc) parent_name');

      Add('from project_ords o join product_objects b on b.id_version = o.id_version');
      Add(' join product_oper p on p.id_object = b.id_object');
      Add(' join product_traff f on  f.id_batch = o.id_batch');
      Add('and f.id_prod_oper = p.id_prod_oper and f.id_area = :id_area');
      Add('   and ((coalesce(f.produced,0) - coalesce(f.waste,0))< f.full_amount)');
      Add(' left join operations r on r.id_operation = f.id_operation');
      Add(' left join items i on i.id_item = f.base_item');
      Add(' left join prod_areas a on a.id_p_area = f.id_pa_to and a.id_p_area <> :id_area');
      try
        if (edDay.Text <> '') and (StrToInt(edDay.Text) > 0) then
        begin
          dt_out := Int(dtp1.Date + StrToInt(edDay.Text) + 1);
          Add(' join product_plans l on l.d_out > :d1 and l.d_out <= :dt_out and l.amount >0');
          Add(' and  l.id_prod_traf = f.id_prod_traff');
          ParamByName('d1').AsDate := Int(dtp1.Date);
          ParamByName('dt_out').AsDate := dt_out;
        end;
      except
      end;
      Add('where o.d_reject is null');
      Add('and (select a1.is_outsource from prod_areas a1 where a1.id_p_area = o.id_cprod) <> 1');
      if cb_ss.Checked then
        Add('and O.STATUS <> 95');

      case cbClose.State of
        cbChecked: Add(' and o.d_close is null');
        cbUnchecked: Add(' and o.d_close is not null');
      end;
      Add(OrdBy(dbg11));
      ParamByName('id_area').AsInteger := fmMain.C_PA;
      //  ShowMessage(text);
      Open;
      Locate('ID_PROD_TRAFF', C_OP, []);
    end;
  end;
  OpenStore_Det;
end;

procedure TfmD_JOB.SpeedButton5Click(Sender: TObject);
begin
  fmMain.N17Click(Sender);
end;

procedure TfmD_JOB.frxRepBills_sAfterPrintReport(Sender: TObject);
begin
  if dmIS.mT.InTransaction then
    dmIS.mT.CommitRetaining;
  if dmIS.qZBill.IsEmpty then
    exit;

  if (frxRepBills_s.Pages[1].Visible = True)
    {//  and (dmIs.qZaBillsPA_BILL_TYPE.AsInteger <> 110 )}then //��������� �� ����� (���-��)
  begin
    qIns.Close;
    qIns.SQL.Clear;
    qIns.SQL.Add('update p_area_bills' +
      ' set D_CONFIRM = current_timestamp, ID_CONFIRM = :id_p' +
      ' where ID_PA_BILL = :id_pa_bill');
    qIns.ParamByName('id_pa_bill').AsInteger := dmIS.qZBillID_PA_BILL.AsInteger;
    qIns.ParamByName('id_p').AsInteger := SysVars.RegTN;
    qIns.ExecSQL;
    dmIs.qZBill.Edit;
    dmIs.qZBillD_CONFIRM.AsDateTime := now;
    dmIs.qZBillID_CONFIRM.AsInteger := SysVars.RegTN;
    dmIs.qZBill.Post;
  end;
end;

procedure TfmD_JOB.SpeedButton6Click(Sender: TObject);
begin
  fmMain.N8Click(Sender);
end;

procedure TfmD_JOB.dbg5DblClick(Sender: TObject);
begin
  if qDOC.IsEmpty then
    exit;
  if qDOCID_DOC.IsNull then
    exit;
  {  if not dmIS.dbDOC.Connected then
    try
      dmIS.dbDOC.Connected := True;
    except
      MsgError('��� ����� � ���������� ����������', '������ �����������');
    end;                           }
  try
    //    fmMain.StoreDoc(0, qDocID_DOC.Value, '');
    Old_DocBody(qDocID_DOC.Value, 0, '');
  except
    MsgError('������ ������ ���������', '������');
  end;

  {If dmIS1.qPA_DOC.IsEmpty Then exit;
  If dmIS1.qPA_DOCID_DOC.IsNull Then exit;
  If not dmIS.dbDOC.Connected Then
  try
   dmIS.dbDOC.Connected := True;
  except
   MsgError('��� ����� � ���������� ����������','������ �����������');
  end;
  try
   fmMain.StoreDoc(0,dmIS1.qPA_DOCID_DOC.Value,'',dmIS.qS_BODY);
  except
   MsgError('������ ������ ���������','������');
  end;
  }
end;

procedure TfmD_JOB.dbg5GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if not qDocD_CONFIRM.IsNull then
    Background := clSkyBlue;

end;

procedure TfmD_JOB.dbg3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if Column.Field.FieldName = 'OBJ_NAME' then
    with dbg3.Canvas do
    begin
      if (qBillsID_PA_TO.AsInteger <> qBillsID_P.AsInteger) and
        (not qBillsID_PA_TO.IsNull) and not (gdFocused in State) then
      begin
        Brush.Color := clMoneyGreen;
        FillRect(Rect);
        TextOut(Rect.Left, Rect.Top, Column.Field.Text);
      end
      else
        dbg3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;

end;

procedure TfmD_JOB.dbg3SortMarkingChanged(Sender: TObject);
begin
  OpenStore_Det;
end;

procedure TfmD_JOB.N6Click(Sender: TObject);
begin
  frxRep_ord_Det_TMC_.Script.Variables['N_PROD_AREA'] := fmMain.lcb1.Text;
  frxRep_ord_Det_TMC_.Script.Variables['D_JOB'] := '�� ' +
    FormatDateTime('dd  mmmm  yyyy', dtp1.Date) +
    '     ' + lcbShift.Text +
    '     ' + lcbEqp.Text;
  with qRep_ord_Det_TMC, qRep_ord_Det_TMC.SQL do
  begin
    Close;
    Clear;
    Add('select * from REP_DAY_JOB(:IDAREA,:D_OUT,:IDSHIFT,:IDEQUIPMENT)');
    case cbClose.State of
      cbChecked: Add(' where d_close is null');
      cbUnChecked: Add(' where d_close is not null');
    end;
    Add('order by id_order,tp');
    ParamByName('idarea').AsInteger := dmIs.qD_JOBID_AREA.AsInteger;
    ParamByName('d_out').AsDate := Int(dtp1.Date);
    if lcbShift.KeyValue <> null then
      ParamByName('idshift').AsInteger := lcbShift.KeyValue;
    if lcbEqp.KeyValue <> null then
      ParamByName('IDEQUIPMENT').AsInteger := lcbEqp.KeyValue;
    //  ShowMessage(Text);
    Open;
  end;
  frxRep_ord_Det_TMC_.ShowReport(True);

  {  With qOrd, qOrd.SQL do
    begin
    Close;
    Clear ;
    Add('select distinct p.id_version, p.n_order,p.name name_ord,p.id_order,p.id_constr,s.fio'+
        ' from product_traff_mats M'+
        ' join product_traff t on t.id_prod_traff = m.id_prod_traff and t.id_area = :id_area'+
        ' join product_plans l on l.id_prod_traf = t.id_prod_traff and l.d_out = :d_out');
    if lcbShift.KeyValue <> null then
       Add(' and l.id_shift = :id_shift');
    if lcbEqp.KeyValue <> null then
       Add(' and l.ID_EQUIPMENT= :ID_EQUIPMENT');
    Add(' join product_oper r on r.id_prod_oper = t.id_prod_oper'+
        ' join project_ords p on p.id_version = r.id_version'+
        ' left join personnel s on s.id_p = p.id_constr'+
        ' order by  p.n_order,p.name,p.id_order');
    ParamByName('id_area').AsInteger := dmIs.qD_JOBID_AREA.AsInteger;
    ParamByName('d_out').AsDate := Int(dtp1.Date);
    if lcbShift.KeyValue <> null then
     ParamByName('id_shift').AsInteger := lcbShift.KeyValue;
    if lcbEqp.KeyValue <> null then
     ParamByName('ID_EQUIPMENT').AsInteger := lcbEqp.KeyValue;
  //  ShowMessage(Text);
    Open;
    end;

    With qSum_TMC_Ord, qSum_TMC_Ord.SQL do
    begin
    Close;
    Clear ;
    Add('select p.n_order,p.name name_ord,p.id_order,I.NAME name_tmc,'+
       'i.id_item,  u.name unit_y,'+
       'SUM(m.amount * m.waste /100) amount_mats_waste,'+
       'SUM(m.amount * t.full_amount * m.waste /100) amount_mats_waste_ord,'+
       'SUM(m.amount * t.prod_amount * m.waste /100)  amount_mats_waste_prod,'+
       'SUM(m.amount * l.amount * m.waste /100) amount_mats_waste_plan,'+
       'SUM(t.prod_amount) prod_amount,'+
       'SUM(t.prod_amount * m.amount) amount_mats_prod,'+
       'SUM(l.amount) amount_plan,'+
       'SUM(l.amount * m.amount) amount_mats_plan,'+
       'SUM(t.full_amount * m.amount) amount_mats_ords'+
       ' from product_traff_mats M'+
       ' join ITEMS I on i.ID_ITEM = m.ID_ITEM'+
       ' join product_traff t on t.id_prod_traff = m.id_prod_traff and t.id_area = :id_area'+
       ' join product_plans l on l.id_prod_traf = t.id_prod_traff and l.d_out = :d_out');
    if lcbShift.KeyValue <> null then
       Add(' and l.id_shift = :id_shift');
    if lcbEqp.KeyValue <> null then
       Add(' and l.ID_EQUIPMENT= :ID_EQUIPMENT');

       Add(' join product_oper r on r.id_prod_oper = t.id_prod_oper'+
       ' join project_ords p on p.id_version = r.id_version'+
       ' left outer join params_value v on'+
       '    (v.id_item =  m.id_item and v.id_param = 1 and v.data = :dt)'+
       ' left outer join units u on u.id_unit = v.smlval'+
       ' group by  p.n_order,p.name,p.id_order,I.NAME, i.id_item,  u.name');
    ParamByName('id_area').AsInteger := dmIs.qD_JOBID_AREA.AsInteger;
    ParamByName('d_out').AsDate := Int(dtp1.Date);
    ParamByName('dt').AsString :=  '1.01.1900';
    if lcbShift.KeyValue <> null then
     ParamByName('id_shift').AsInteger := lcbShift.KeyValue;
    if lcbEqp.KeyValue <> null then
     ParamByName('ID_EQUIPMENT').AsInteger := lcbEqp.KeyValue;

  //  ShowMessage(Text);
    Open;
    end;

  frxRepDay_JOB.Script.Variables['N_PROD_AREA'] := fmMain.lcb1.Text;
  frxRepDay_JOB.Script.Variables['D_JOB'] := '�� ' + FormatDateTime('dd  mmmm  yyyy', dtp1.Date)+
                                           '     ' + lcbShift.Text +
                                           '     ' + lcbEqp.Text;

  frxRepDay_JOB.Pages[0].Visible := False;
  frxRepDay_JOB.Pages[1].Visible := False;
  //frxRepDay_JOB.Pages[1].Visible := True;
  frxRepDay_JOB.Pages[2].Visible := True;

  frxRepDay_JOB.ShowReport(True);
  }
end;

procedure TfmD_JOB.dbg6SortMarkingChanged(Sender: TObject);
begin
  OpenStore_Det;
end;

procedure TfmD_JOB.dbg2SortMarkingChanged(Sender: TObject);
begin
  OpenStore_Det;
end;

procedure TfmD_JOB.SpeedButton7Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg8);
  Screen.Cursor := crDefault;

end;

procedure TfmD_JOB.dbg8SortMarkingChanged(Sender: TObject);
begin
  OpenStore_Det;
end;

procedure TfmD_JOB.qSum_Oper_MatsBeforeOpen(DataSet: TDataSet);
var
  s: string;
begin
  s := 'select I.NAME,i.id_item,  u.name as unit_y,' +
    'SUM(m.amount * m.waste /100) as amount_mats_waste,' +
    'SUM(m.amount * t.full_amount * m.waste /100) as amount_mats_waste_ord,' +
    'SUM(m.amount * t.prod_amount * m.waste /100) as amount_mats_waste_prod,' +
    'SUM(m.amount * l.amount * m.waste /100) as amount_mats_waste_plan,' +
    'SUM(t.prod_amount) prod_amount,' +
    'SUM(t.prod_amount * m.amount) as amount_mats_prod,' +
    'SUM(l.amount) as amount_plan,' +
    'SUM(l.amount * m.amount) as amount_mats_plan,' +
    'SUM(t.full_amount * m.amount) as amount_mats_ords' +
    ' from product_traff_mats M join ITEMS I on M.ID_ITEM = I.ID_ITEM' +
    ' join product_traff t on t.id_prod_traff = m.id_prod_traff and t.id_area = :id_area' +
    ' join product_oper r on r.id_prod_oper = t.id_prod_oper' +
    ' join project_ords p on p.id_version = r.id_version ';
  case cbClose.State of
    cbChecked: s := s + ' and p.d_close is null';
    cbUnChecked: s := s + ' and p.d_close is not null';
  end;
  s := s +
    ' join product_plans l on l.id_prod_traf = t.id_prod_traff and l.d_out = :d_out';
  if lcbShift.KeyValue <> null then
    s := s + ' and l.id_shift = :id_shift';
  if lcbEqp.KeyValue <> null then
    s := s + ' and l.ID_EQUIPMENT= :ID_EQUIPMENT';
  s := s + ' left outer join params_value v on' +
    '   (v.id_item =  m.id_item and v.id_param = 1 and v.data = ' + '''1.01.1900'''
    + ')' +
    ' left outer join units u on u.id_unit = v.smlval' +
    ' where l.id_shift is not null' +
    ' group by I.NAME,i.id_item, u.name';
  with qSUM_Oper_Mats, qSUM_Oper_Mats.SQL do
  begin
    Close;
    Clear;
    Add(s);
    ParamByName('id_area').AsInteger := dmIs.qD_JOBID_AREA.Value;
    ParamByName('d_out').AsDate := Int(dtp1.Date);
    if lcbShift.KeyValue <> null then
      ParamByName('id_shift').AsInteger := lcbShift.KeyValue;
    if lcbEqp.KeyValue <> null then
      ParamByName('ID_EQUIPMENT').AsInteger := lcbEqp.KeyValue;
  end;

end;

procedure TfmD_JOB.SpeedButton9Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg9);
  Screen.Cursor := crDefault;

end;

procedure TfmD_JOB.dbg9SortMarkingChanged(Sender: TObject);
begin
  OpenStore_Det;
end;

procedure TfmD_JOB.tbVibClick(Sender: TObject);
begin
  if (dmIS.qD_JOB.Active = True) and (dmIS.dsD_JOB.State in [dsEdit, dsInsert])
    then
    dmIS.qD_JOB.Post; //������ ������ � �������
  if (qPlan_P.Active = True) and (dsPlan_P.State in [dsEdit, dsInsert]) then
    qPlan_P.Post;     //������ ������ � �������

  if (qProd_Plan_Stop.Active = True) and (dsProd_Plan_Stop.State in [dsEdit,
    dsInsert]) then
    qProd_Plan_Stop.Post;   //������ ������ � �������
  if (qPlan_P_Stop.Active = True) and (dsPlan_P_Stop.State in [dsEdit, dsInsert])
    then
    qPlan_P_Stop.Post;    //������ ������ � �������

  if dmIS.mT.InTransaction then    //true ���� ������� ������ ���� ��� �� ����������� ����������
    dmIS.mT.CommitRetaining;  //������ � ��
  if pcAll.ActivePage = tsWork then
  begin
    qStore_Det.Close;   //��������� ��
    qOper_Mats.Close;         //��������� ��
    qBills.Close;         //��������� ��
    qDoc.Close;        //��������� ��
    dmIs.qD_JOB.DisableControls;  // ����������� DataSet �� ���� �����������
    fmD_JOB.OpenD_JOB;
    dmIs.qD_JOB.EnableControls;
  end;
  if (pcAll.ActivePage = tsStop) or (pcAll.ActivePage = tsFio) then
    pcAllChange(Sender);
  {if dmIs.qD_JOB.IsEmpty then Exit;
  With qBills, qBills.SQL do
  begin
   Close;
   ParamByName('id_p_area').AsInteger := fmMain.C_PA;
   ParamByName('d_bill').AsDate := Int(dtp1.Date);
   Open;
  end;
  }

end;

procedure TfmD_JOB.SpeedButton11Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg10);
  Screen.Cursor := crDefault;

end;

procedure TfmD_JOB.SpeedButton14Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg5);
  Screen.Cursor := crDefault;
end;

procedure TfmD_JOB.dbg11SortMarkingChanged(Sender: TObject);
var
  C_OP: Integer;
  dt_out: TDate;
begin
  with dmIS.qPA_Oper, dmIS.qPA_Oper.SQL do
  begin
    if Active then
      C_OP := dmIS.qPA_OperID_PROD_TRAFF.AsInteger;
    Close;
    Clear;
    Add('select o.n_order, o.id_order, b.id_object, o.name ordname,');
    Add('coalesce(b.obj_name,o.name) obj_name, p.step, f.id_operation,');
    Add('r.name oname, f.id_prod_oper, f.id_prod_traff, b.amount, f.produced,');
    Add('f.is_unit, f.full_amount, f.prod_amount, f.t_personnel, f.waste,');
    Add(' i.name nmat, b.dec_no, a.name toname, f.id_batch');
    Add(',(select first 1 obj.obj_name');
    Add('  from br_up_objects_l(b.id_object,0) br');
    Add('  join product_objects obj on obj.id_object = br.id');
    Add('  where obj.obj_name is not null order by br.id_level desc) parent_name');
    Add('from project_ords o join product_objects b on b.id_version = o.id_version');

    Add(' join product_oper p on p.id_object = b.id_object');
    Add(' join product_traff f on  o.id_batch = f.id_batch');
    Add('   and f.id_prod_oper = p.id_prod_oper and f.id_area = :id_area');
    Add('   and ((coalesce(f.produced,0) - coalesce(f.waste,0))< f.full_amount)');

    Add(' left join operations r on r.id_operation = f.id_operation');
    Add(' left join items i on i.id_item = f.base_item');
    Add(' left join prod_areas a on a.id_p_area = f.id_pa_to and a.id_p_area <> :id_area');
    try
      if (edDay.Text <> '') and (StrToInt(edDay.Text) > 0) then
      begin
        dt_out := Int(dtp1.Date + StrToInt(edDay.Text) + 1);
        Add(' join product_plans l on l.d_out > :d1 and l.d_out <= :dt_out and l.amount >0');
        Add(' and  l.id_prod_traf = f.id_prod_traff');
        ParamByName('d1').AsDate := Int(dtp1.Date);
        ParamByName('dt_out').AsDate := dt_out;
      end;
    except
    end;
    Add('where o.d_reject is null ');
    add('and (select a1.is_outsource from prod_areas a1 where a1.id_p_area = o.id_cprod) <> 1 ');
    if cb_ss.Checked then
      Add('and O.STATUS <> 95');

    case cbClose.State of
      cbChecked: Add(' and o.d_close is null');
      cbUnchecked: Add(' and o.d_close is not null');
    end;
    Add(OrdBy(dbg11));
    ParamByName('id_area').AsInteger := fmMain.C_PA;
    //  ShowMessage(text);
    Open;
    Locate('ID_PROD_TRAFF', C_OP, []);
  end;

end;

procedure TfmD_JOB.ToolButton6Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg11);
  Screen.Cursor := crDefault;

end;

procedure TfmD_JOB.ToolButton3Click(Sender: TObject);
begin
  dbg11SortMarkingChanged(Sender);
end;

procedure TfmD_JOB.dbg11GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if (not dmIS.qPA_OperPRODUCED.IsNull) and (not dmIS.qPA_OperFULL_AMOUNT.IsNull)
    and ((dmIS.qPA_OperPRODUCED.AsFloat - dmIS.qPA_OperWASTE.AsFloat) >=
    dmIS.qPA_OperFULL_AMOUNT.AsFloat) then
  begin
    if (not dmIS.qPA_OperTONAME.IsNull) and (Column.Field.FieldName = 'OBJ_NAME')
      then
      AFont.Color := clBlue;
    Background := clMoneyGreen;
  end
  else if (not dmIS.qPA_OperTONAME.IsNull) and (Column.Field.FieldName =
    'OBJ_NAME') then
    AFont.Color := clBlue;
end;

procedure TfmD_JOB.tsInClick(Sender: TObject);
var
  i: integer;
begin
  id_newnom := 0;
  if dmIS.qPA_Oper.IsEmpty then
    exit;
  if dmIS.mT.InTransaction then
    dmIS.mT.CommitRetaining;
  {If cb2.Checked Then with dmIS1.qPA_Oper do
  begin
   First;
   while not EOF do begin
    WritePlan;
    Next;
   end;
   cb2.Checked := false;
  end
  else
  begin }
  if (dbg11.SelectedRows.Count = 0) then
    WritePlan;
  if (dbg11.SelectedRows.Count > 0) then
    for i := 0 to dbg11.SelectedRows.Count - 1 do
    begin
      dmIS.qPA_Oper.GotoBookmark(pointer(dbg11.SelectedRows.Items[i]));
      WritePlan;
    end;
  //end;
  tbVib.Click;
end;

procedure TfmD_JOB.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  C_OP: Integer;
begin
  if dmIS.qPA_Oper.IsEmpty then
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
    C_OP := dmIS.qPA_OperID_PROD_TRAFF.Value;
    dmIS.qPA_Oper.DisableControls;
    repeat
      if dmIS.qPA_Oper.Eof then
        dmIS.qPA_Oper.First
      else
        dmIS.qPA_Oper.Next;
    until (Pos(ansiuppercase(ed1.Text),
      ansiuppercase(dbg11.SelectedField.AsString)) > 0)
      or (C_OP = dmIS.qPA_OperID_PROD_TRAFF.Value);
    dmIS.qPA_Oper.EnableControls;
    Screen.Cursor := crDefault;
  except
  end;
end;

procedure TfmD_JOB.dbg4SortMarkingChanged(Sender: TObject);
begin
  OpenStore_Det;
end;

procedure TfmD_JOB.SpeedButton16Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg4);
  Screen.Cursor := crDefault;

end;

procedure TfmD_JOB.cbDetClick(Sender: TObject);
begin
  dbg4SortMarkingChanged(Sender);
end;

procedure TfmD_JOB.cbTreeClick(Sender: TObject);
begin
  if cbTree.State = cbChecked then
  begin
    with qOBJ do
    begin
      Close;
      ParamByName('obj1').AsInteger := dmIs.qD_JOBID_OBJECT.Value; //dbt1.GetId;
      Open;
    end;

    with dbt1 do
    begin
      BeginDrag(false);
      ClearTree;
      RootId := dmIs.qD_JOBID_OBJECT.Value;
      Items.BeginUpdate;
      BuildTree;
      Items[0].Expand(false);
      Items.EndUpdate;
      Selected := Items[0];
      EndDrag(false);
    end;
  end
  else
  begin
    dmIS.qOBJ.Close;
    dbt1.ClearTree;
  end;
end;

procedure TfmD_JOB.SpeedButton17Click(Sender: TObject);
begin
  if tree_up = False then
  begin
    dbt1.FullExpand;
    tree_up := True;
  end
  else
  begin
    dbt1.FullCollapse;
    tree_up := False;
  end

end;

procedure TfmD_JOB.dbg14SortMarkingChanged(Sender: TObject);
begin
  qLoad_P.Close;
  qLoad_P.Open;
  //OpenStore_Det;
end;

procedure TfmD_JOB.SpeedButton21Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if dbg14.Focused then
    GridToExcel(dbg14);
  if dbg_Obj.Focused then
    GridToExcel(dbg_Obj);
  Screen.Cursor := crDefault;

end;

procedure TfmD_JOB.dbn14BeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
  case Button of
    nbPost: dmIS.qLoad_P.Post;
    {nbRefresh :begin
    with qLoad_P,qLoad_P.SQL do begin
     Close;
     Clear;
     Add('select distinct g.ID_TEAM ,g.ID_P,g.ID_POST,g.NAME ,g.LOAD_TIME,g.WORK_TIME,g.NAME_POST');
    // Add(',p.f_amount,p.f_time,p.d_in,p.d_to,p.id_prod_plan_p,p.rem');
     Add(' from GET_PA_DAY_LOAD_P(:id_area,:d_work,:kop) g');
    // Add(' left join product_plans_p P ON P.ID_P = g.id_p and p.id_prod_plan = :id_prod_plan');

     if (cbFIO.State = cbChecked) then
     begin
      Add(' join oper_posts o on o.id_post = g.id_post and o.id_area = :id_area');
      Add(' and o.id_operation = :id_operation');
      ParamByName('id_operation').AsInteger := dmIS.qD_JOBID_OPERATION.AsInteger;
     end;
     Add(OrdBy(dbg12));
    // ShowMessage(text);
     ParamByName('id_area').AsInteger := fmMain.C_PA;
     ParamByName('d_work').AsDate := fmD_JOB.dtp1.Date;
     ParamByName('kop').AsInteger := 1;//Kdistr;
    // ParamByName('id_prod_plan').AsInteger := dmIS.qD_JOBID_PROD_PLAN.AsInteger;
     Open;
    end;
                end;   }
  end; //Case

end;

procedure TfmD_JOB.cbFIOClick(Sender: TObject);
begin
  qLoad_P.Close;
  qLoad_P.Open;
  //OpenStore_Det;
end;

procedure TfmD_JOB.SpeedButton18Click(Sender: TObject);
begin
  if not Assigned(fmTabPlan) then
    Application.CreateForm(TfmTabPlan, fmTabPlan);
  fmTabPlan.Caption := '����-������ - ' + dmIS.qPANAME.AsString;
  fmTabPlan.Show;

end;

procedure TfmD_JOB.dbg12SortMarkingChanged(Sender: TObject);
begin
  OpenStore_Det;
end;

procedure TfmD_JOB.sbInClick(Sender: TObject);
var
  k: integer;
  DS: TDataSet;
begin
  if dsPlan_P.State in [dsEdit, dsInsert] then
    qPlan_P.Post;
  DS := dbg14.DataSource.DataSet;
  with dbg14 do
  begin
    DS.DisableControls;
    if dbg14.SelectedRows.Count > 0 then
    begin
      for k := 0 to SelectedRows.Count - 1 do
      begin
        DS.GotoBookmark(pointer(SelectedRows.Items[k]));

        with dmIS.qIN, dmIS.qIN.SQL do
        begin
          Close;
          Clear;
          Add('INSERT INTO PRODUCT_PLANS_P (ID_PROD_PLAN_P, ID_PROD_PLAN, ID_P,ID_EQUIPMENT,'
            +
            ' AMOUNT,D_IN,D_TO,F_AMOUNT,P_TIME,F_TIME,din,tin,dto,tto)' +
            ' VALUES (GEN_ID(OBJ_ID,1), :id_prod_plan, :id_p, :ID_EQUIPMENT,' +
            ' :amount,:d_in,:D_TO,:F_AMOUNT,:P_TIME,:F_TIME,:din,:tin,:dto,:tto)');
          ParamByName('id_prod_plan').AsInteger :=
            dmIS.qD_JOBID_PROD_PLAN.AsInteger;
          ParamByName('id_p').AsInteger := qLoad_PID_P.AsInteger;
          ParamByName('ID_EQUIPMENT').AsInteger :=
            dmIS.qD_JOBID_EQUIPMENT.AsInteger;
          ParamByName('amount').AsInteger := dmIS.qD_JOBAMOUNT.AsInteger;
          ParamByName('d_in').AsDateTime := Int(dtp1.DateTime) +
            dmIs.qShiftsTIME_BEGIN.AsDateTime;
          ParamByName('d_to').AsDateTime := Int(dtp1.DateTime) +
            dmIs.qShiftsTIME_BEGIN.AsDateTime +
            (Int(dmIS.qD_JOBP_TIME.AsFloat) +
            frac(dmIS.qD_JOBP_TIME.AsFloat) * 10 / 6) / 24;

          ParamByName('p_time').AsFloat := dmIS.qD_JOBP_TIME.AsFloat;
          ParamByName('f_amount').AsFloat := dmIS.qD_JOBP_AMOUNT.AsFloat;
          ParamByName('din').AsDate := Int(dtp1.DateTime);
          ParamByName('tin').AsTime := dmIs.qShiftsTIME_BEGIN.AsDateTime;
          ParamByName('dto').AsDate :=
            Int(Int(dtp1.DateTime) + dmIs.qShiftsTIME_BEGIN.AsDateTime +
            (Int(dmIS.qD_JOBP_TIME.AsFloat) +
            frac(dmIS.qD_JOBP_TIME.AsFloat) * 10 / 6) / 24);
          ParamByName('tto').AsTime :=
            Int(dtp1.DateTime) + dmIs.qShiftsTIME_BEGIN.AsDateTime +
            (Int(dmIS.qD_JOBP_TIME.AsFloat) +
            frac(dmIS.qD_JOBP_TIME.AsFloat) * 10 / 6) / 24;

          if not dmIS.qD_JOBP_TIME.IsNull then
            ParamByName('f_time').AsFloat :=
              Int(dmIS.qD_JOBP_TIME.AsFloat) + frac(dmIS.qD_JOBP_TIME.AsFloat) *
              10 / 6
          else
            ParamByName('f_time').Clear;
          try
            ExecSQL;
            if dmIS.mT.InTransaction then
              dmIS.mT.CommitRetaining;
            //OpenStore_Det;
        //    qPlan_P.Locate('id_p',qLoad_PID_P.AsInteger,[]);
          except
            MsgInformation('������ ������ ������������� �����',
              '������ ������');
            if dmIS.mT.InTransaction then
              dmIS.mT.RollbackRetaining;
          end; //try
        end; // with dmIS.qIN

      end;
    end;
  end; // with dbg14 do
  DS.EnableControls;
  OpenStore_Det;
  dbg12SortMarkingChanged(dbg12);
  qPlan_P.Locate('id_p', qLoad_PID_P.AsInteger, []);
end;

procedure TfmD_JOB.dbg12D_INUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  dt: TDateTime;
begin
  try
    dt := StrToDateTime(Text);
    qPlan_PD_TO.AsDateTime := dt +
      (Int(qPlan_PF_TIME.Value) + frac(qPlan_PF_TIME.Value) * 10 / 6) / 24 +
      0.0000001;

    {Value := int((qPlan_PD_TO.AsDateTime - Value)*24) +
                  frac((qPlan_PD_TO.AsDateTime - Value)*24)*0.6 ;
    qPlan_PP_TIME.Value := Value + 0.0000001 ;
    qPlan_PF_TIME.Value := Int(Value) + frac(Value)*10/6 ;}
  except
  end
end;

procedure TfmD_JOB.dbg12D_TOUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  tm: Extended;
begin
  try
    tm := int((Value - qPlan_PD_IN.AsDateTime) * 24) +
      frac((Value - qPlan_PD_IN.AsDateTime) * 24) * 0.6;
    if (1 - frac(tm) > 0.4) and (1 - frac(tm) < 0.4005) then
      tm := Int(tm) + 1;
    qPlan_PP_TIME.Value := tm;
    qPlan_PF_TIME.Value := Int(tm) + frac(tm) * 10 / 6;
  except
  end;

end;

procedure TfmD_JOB.dbg12PTIMEUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  //  i: Real;
  dt: extended;
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

  if (value > 24)
  and (Pos('��������� ������� �������',qPlan_PFIO.AsString ) = 0) then
  begin
    MsgError('�� ����� ��������� 24 ����','�������� ������');
    handled := true;
  end;

  dt := (Int(value) + frac(value) * 10 / 6) / 24 + 0.0000001;
  try
    // qPlan_PD_TO.AsDateTime := qPlan_PD_IN.AsDateTime + dt ;
    qPlan_PF_TIME.AsFloat := Int(value) + frac(value) * 10 / 6;
    qPlan_PDTO.AsDateTime := Int(qPlan_PDIN.AsDateTime + qPlan_PTIN.AsDateTime +
      dt);
    qPlan_PTTO.AsDateTime := Frac(qPlan_PDIN.AsDateTime + qPlan_PTIN.AsDateTime
      + dt);
  except
    dbg12RemUpdateData(Sender, Text, Value, UseText, Handled)
  end;

end;

procedure TfmD_JOB.sbDelClick(Sender: TObject);
begin

  qIns.Close;
  qIns.SQL.Clear;
  qIns.SQL.Add('delete from product_plans_p where id_prod_plan_p = :id_prod_plan_p');
  if pcAll.ActivePage = tsWork then
    qIns.ParamByName('id_prod_plan_p').AsInteger :=
      qPlan_PID_PROD_PLAN_P.AsInteger;
  if pcAll.ActivePage = tsStop then
    qIns.ParamByName('id_prod_plan_p').AsInteger :=
      qPlan_P_StopID_PROD_PLAN_P.AsInteger;

  qIns.Open;
  if dmIs.mT.InTransaction then
    dmIs.mT.CommitRetaining;
  if pcAll.ActivePage = tsWork then
  begin
    qPlan_P.Close;
    qPlan_P.Open;
  end;
  if pcAll.ActivePage = tsStop then
  begin
    qPlan_P_Stop.Close;
    qPlan_P_Stop.Open;
  end;
end;

procedure TfmD_JOB.SpeedButton20Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg12);
  Screen.Cursor := crDefault;

end;

procedure TfmD_JOB.pcAllChange(Sender: TObject);
begin
  if pcAll.ActivePage = tsStop then
  begin
    sbFioClick(Sender);
    qPlan_P_Stop.Close;
    qProd_Plan_Stop.AfterScroll := nil;
    dbg16SortMarkingChanged(Sender);
    qProd_Plan_Stop.AfterScroll := qProd_Plan_StopAfterScroll;
    dbg17SortMarkingChanged(dbg17);
  end;

  if pcAll.ActivePage = tsFIO then
  begin
    id_p := 0;
    Plan_Day_FIO(id_p);
  end;

end;

procedure TfmD_JOB.dbg15SortMarkingChanged(Sender: TObject);
begin
  pcAllChange(Sender);
end;

procedure TfmD_JOB.dbg12DINUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  dt: TDateTime;
begin
  try //����  �
    dt := StrToDateTime(Text);
    qPlan_PDTO.AsVariant := Int(dt + qPlan_PTIN.Value +
      (Int(qPlan_PF_TIME.Value) + frac(qPlan_PF_TIME.Value) * 10 / 6) / 24 +
      0.0000001);
    qPlan_PTTO.AsVariant := Frac(dt + qPlan_PTIN.Value + +qPlan_PF_TIME.Value /
      24)
  except;
  end;
  dbg12RemUpdateData(Sender, Text, Value, UseText, Handled);
end;

procedure TfmD_JOB.dbg12TINUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  dt: TDateTime;
begin
  try //����� �
    dt := StrToDateTime(Text);
    qPlan_PDTO.AsVariant := Int(qPlan_PDIN.Value + dt +
      (Int(qPlan_PF_TIME.Value) + frac(qPlan_PF_TIME.Value) * 10 / 6) / 24 +
      0.0000001);
    qPlan_PTTO.AsVariant := Frac(qPlan_PDIN.Value + dt + qPlan_PF_TIME.Value /
      24);
  except;
  end;
  dbg12RemUpdateData(Sender, Text, Value, UseText, Handled);
end;

procedure TfmD_JOB.dbg12DTOUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  tm: TDateTime;
begin
  tm := (Value + qPlan_PTTO.Value) -
    (qPlan_PDIN.Value + qPlan_PTIN.Value);
  try // ���� ��
    qPlan_PF_TIME.Value := (tm) * 24;

    qPlan_PP_TIME.Value := Int(qPlan_PF_TIME.Value) + (Frac(qPlan_PF_TIME.Value))
      * 60 / 100;
  except;
  end;
  dbg12RemUpdateData(Sender, Text, Value, UseText, Handled);
end;

procedure TfmD_JOB.dbg12TTOUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  tm: TDateTime;
begin
  tm := (Value + qPlan_PDTO.Value) -
    (qPlan_PDIN.Value + qPlan_PTIN.Value);
  try // ���� ��
    qPlan_PF_TIME.Value := (tm) * 24;

    qPlan_PP_TIME.Value := Int(qPlan_PF_TIME.Value) + (Frac(qPlan_PF_TIME.Value))
      * 60 / 100;
  except;
  end;
  dbg12RemUpdateData(Sender, Text, Value, UseText, Handled);

end;

procedure TfmD_JOB.qRepDay_PersCalcFields(DataSet: TDataSet);
begin
  qRepDay_Persnom.AsInteger := qRepDay_Pers.RecNo;
end;

procedure TfmD_JOB.qRepDay_DetCalcFields(DataSet: TDataSet);
begin
  qRepDay_Detnom.AsInteger := qRepDay_Det.RecNo;
end;

procedure TfmD_JOB.ToolButton1Click(Sender: TObject);
var
  f_tm: extended;
begin
  try
    //y :=  StrToFloat(edTime.Text);
    if Frac(StrToFloat(edTime.Text)) > 0.6 then
    begin
      ShowMessage('� ���� 59 �����....');
      Exit;
    end;
  except
    exit;
  end;
  f_tm := StrToFloat(edTime.Text);
  f_tm := (f_tm - Frac(f_tm)) + Frac(f_tm) * 60 / 100;
  with qIn, qIn.SQL do
  begin
    Close;
    Clear;
    Add('select GEN_ID(obj_id, 1) id from ACCESS_LEVELS where ACCESS_KEY = 0');
    Open;
    id_newnom := qIn.FieldByName('id').asInteger;
    Close;
    Clear;
    Add('INSERT INTO PRODUCT_PLANS(ID_PROD_PLAN, ID_PROD_TRAF, D_OUT');
    Add(',ID_SHIFT, AMOUNT,F_AMOUNT,F_TIME, ID_EQUIPMENT)');
    Add('VALUES (' + IntToStr(id_newnom) + ',:tr1,:d1,:sh1,-1,-1,:f_tm,:eqi1)');
    ParamByName('tr1').AsInteger := dmIS.qPA_OperID_PROD_TRAFF.AsInteger;
    ParamByName('d1').AsDate := Int(dtp1.Date);
    if lcbShift.KeyValue = NULL then
      ParamByName('sh1').Clear
    else
      ParamByName('sh1').AsInteger := lcbShift.KeyValue;
    ParamByName('f_tm').AsFloat := f_tm;
    if lcbEqp.KeyValue = NULL then
      ParamByName('eqi1').Clear
    else
      ParamByName('eqi1').AsInteger := lcbEqp.KeyValue;
    try
      ExecSQL;
      if Transaction.InTransaction then
        Transaction.Commit;
    except;
      if Transaction.InTransaction then
        Transaction.Rollback;
      raise;
    end;
  end;

end;

procedure TfmD_JOB.edTimeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    try
      //y :=  StrToFloat(edTime.Text);
      if Frac(StrToFloat(edTime.Text)) > 0.6 then
      begin
        ShowMessage('� ���� 59 �����....');
        Exit;
      end;
    except
    end;
  end;

end;

procedure TfmD_JOB.tb6Click(Sender: TObject);
begin
  if dbg1.FieldColumns['P_AMOUNT'].Color = clWhite then
  begin
    dbg1.FieldColumns['P_AMOUNT'].Color := clSkyBlue;
    dbg1.FieldColumns['P_TIME'].Color := clSkyBlue;
    dbg1.FieldColumns['REM'].Color := clSkyBlue;
    dbg1.FieldColumns['POSIT'].Color := clSkyBlue;

    dbg12.FieldColumns['F_AMOUNT'].Color := clSkyBlue;
    dbg12.FieldColumns['P_TIME'].Color := clSkyBlue;
    dbg12.FieldColumns['REM'].Color := clSkyBlue;
    dbg12.FieldColumns['DIN'].Color := clSkyBlue;
    dbg12.FieldColumns['DTO'].Color := clSkyBlue;
    dbg12.FieldColumns['TIN'].Color := clSkyBlue;
    dbg12.FieldColumns['TTO'].Color := clSkyBlue;

    dbg1.ReadOnly := False;
    dbn1.VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost];
    dbg12.ReadOnly := False;
  end
  else
  begin
    if dmIS.dsD_JOB.State in [dsEdit, dsInsert] then
      dmIS.qD_JOB.Post;
    if dsPlan_P.State in [dsEdit, dsInsert] then
      qPlan_P.Post;
    if dmIS.mT.InTransaction then
      dmIS.mT.CommitRetaining;
    dbg1.FieldColumns['P_AMOUNT'].Color := clWhite;
    dbg1.FieldColumns['P_TIME'].Color := clWhite;
    dbg1.FieldColumns['REM'].Color := clWhite;
    dbg1.FieldColumns['POSIT'].Color := clWhite;

    dbg12.FieldColumns['F_AMOUNT'].Color := clWhite;
    dbg12.FieldColumns['P_TIME'].Color := clWhite;
    dbg12.FieldColumns['REM'].Color := clWhite;
    dbg12.FieldColumns['DIN'].Color := clWhite;
    dbg12.FieldColumns['DTO'].Color := clWhite;
    dbg12.FieldColumns['TIN'].Color := clWhite;
    dbg12.FieldColumns['TTO'].Color := clWhite;

    dbg1.ReadOnly := True;
    dbn1.VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast];
    dbg12.ReadOnly := True;

  end;

  {dbg1.FieldColumns['P_AMOUNT'].ReadOnly := true;
  dbg1.FieldColumns['P_TIME'].ReadOnly := true; }

end;

procedure TfmD_JOB.tb7Click(Sender: TObject);
begin
  if dbg16.FieldColumns['N_ORDER'].Color = clWhite then
  begin

    dbg16.FieldColumns['F_TIME'].Color := clSkyBlue;
    dbg16.FieldColumns['P_TIME'].Color := clSkyBlue;
    dbg16.FieldColumns['REM'].Color := clSkyBlue;
    // dbg16.FieldColumns['DIN'].Color := clSkyBlue;
    dbg16.FieldColumns['DIN'].ReadOnly := true;
    dbg16.FieldColumns['DTO'].Color := clSkyBlue;
    dbg16.FieldColumns['TIN'].Color := clSkyBlue;
    dbg16.FieldColumns['TTO'].Color := clSkyBlue;
    dbg16.FieldColumns['N_ORDER'].Color := clSkyBlue;
    dbMm.ReadOnly := False;

    dbg17.FieldColumns['P_TIME'].Color := clSkyBlue;
    dbg17.FieldColumns['REM'].Color := clSkyBlue;
    dbg17.FieldColumns['DIN'].Color := clSkyBlue;
    dbg17.FieldColumns['DTO'].Color := clSkyBlue;
    dbg17.FieldColumns['TIN'].Color := clSkyBlue;
    dbg17.FieldColumns['TTO'].Color := clSkyBlue;
    dbM.ReadOnly := False;

    dbg16.ReadOnly := False;
    dbn16.VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost];
    dbg17.ReadOnly := False;
  end
  else
  begin
    if qProd_Plan_Stop.Active = True then
    begin 
      if dsProd_Plan_Stop.State in [dsEdit, dsInsert] then

         qProd_Plan_Stop.Post;


      if dsPlan_P_Stop.State in [dsEdit, dsInsert] then


         //koly86
         if dsPlan_P_Stop.State in [dsEdit, dsInsert] then

          if fmD_job.qPlan_P_Stop.FieldByName('tin').AsDateTime > fmD_job.qPlan_P_Stop.FieldByName('tto').AsDateTime

                then
                     begin
                       showmessage('����� ������, �� ����� , ���� ������ ������� ���������');
                       exit;
                     end else

             if  fmD_job.qPlan_P_Stop.FieldByName('din').AsDateTime > fmD_job.qPlan_P_Stop.FieldByName('dto').AsDateTime
                then
                     begin
                       showmessage('���� ������, �� ����� , ���� ������ ���� ���������');
                       exit;
                     end else
           //koly86


       qPlan_P_Stop.Post;
    end;
    if dmIS.mT.InTransaction then
      dmIS.mT.CommitRetaining;
    dbg16.FieldColumns['F_TIME'].Color := clWhite;
    dbg16.FieldColumns['P_TIME'].Color := clWhite;
    dbg16.FieldColumns['REM'].Color := clWhite;
    dbg16.FieldColumns['DIN'].Color := clWhite;
    dbg16.FieldColumns['DTO'].Color := clWhite;
    dbg16.FieldColumns['TIN'].Color := clWhite;
    dbg16.FieldColumns['TTO'].Color := clWhite;
    dbg16.FieldColumns['N_ORDER'].Color := clWhite;
    dbMm.ReadOnly := True;

    dbg17.FieldColumns['P_TIME'].Color := clWhite;
    dbg17.FieldColumns['REM'].Color := clWhite;
    dbg17.FieldColumns['DIN'].Color := clWhite;
    dbg17.FieldColumns['DTO'].Color := clWhite;
    dbg17.FieldColumns['TIN'].Color := clWhite;
    dbg17.FieldColumns['TTO'].Color := clWhite;
    dbM.ReadOnly := True;

    dbg16.ReadOnly := True;
    dbn16.VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast];
    dbg17.ReadOnly := True;
  end;
  dbg16.FieldColumns['DIN'].ReadOnly := true;
  dbg16.FieldColumns['F_TIME'].ReadOnly := true;
  dbg16.FieldColumns['P_TIME'].ReadOnly := true;
  dbg16.FieldColumns['DTO'].ReadOnly := true;
  dbg16.FieldColumns['TIN'].ReadOnly := true;
  dbg16.FieldColumns['TTO'].ReadOnly := true;

  dbg16.FieldColumns['DIN'].Color := clWhite;
  dbg16.FieldColumns['F_TIME'].Color := clWhite;
  dbg16.FieldColumns['P_TIME'].Color := clWhite;
  dbg16.FieldColumns['DTO'].Color := clWhite;
  dbg16.FieldColumns['TIN'].Color := clWhite;
  dbg16.FieldColumns['TTO'].Color := clWhite;
  dbg16.Canvas.Refresh;
  

end;

procedure TfmD_JOB.qProd_Plan_StopNewRecord(DataSet: TDataSet);
begin
  qProd_Plan_StopD_OUT.AsDateTime := Int(dtp1.Date);
  qProd_Plan_StopID_AREA.AsInteger := fmMain.C_PA;
  if not VarIsNull(lcbShift.KeyValue) then
  begin
    qProd_Plan_StopID_SHIFT.AsInteger := lcbShift.KeyValue;
    qProd_Plan_StopNAME_SHIFT.AsString := lcbShift.Text;
  end;
  if not VarIsNull(lcbEqp.KeyValue) then
  begin
    qProd_Plan_StopID_EQUIPMENT.AsInteger := lcbEqp.KeyValue;
    qProd_Plan_StopPL_NAME.AsString := lcbEqp.Text;
  end;
  qProd_Plan_StopDIN.AsDateTime := Int(dtp1.DateTime);
  qProd_Plan_StopTIN.AsDateTime := dmIs.qShiftsTIME_BEGIN.AsDateTime;
  qProd_Plan_StopDTO.AsDateTime :=
    Int(Int(dtp1.DateTime) + dmIs.qShiftsTIME_BEGIN.AsDateTime +
    (Int(qProd_Plan_StopP_TIME.AsFloat) +
    frac(qProd_Plan_StopP_TIME.AsFloat) * 10 / 6) / 24);
  qProd_Plan_StopTTO.AsDateTime :=
    Int(dtp1.DateTime) + dmIs.qShiftsTIME_BEGIN.AsDateTime +
    (Int(qProd_Plan_StopP_TIME.AsFloat) +
    frac(qProd_Plan_StopP_TIME.AsFloat) * 10 / 6) / 24;
  qProd_Plan_StopFIO_ID.AsInteger := SysVars.RegTN;
  if dmIS.mT.InTransaction then
    dmIS.mT.CommitRetaining;
end;

procedure TfmD_JOB.dbg16SortMarkingChanged(Sender: TObject);
begin
  with qProd_Plan_Stop, qProd_Plan_Stop.SQL do
  begin
    Close;
    Clear;
    {Add('select p.id_prod_plan_stop,p.id_area,'+
        ' p.d_out,p.id_dutytype,p.id_shift,p.id_equipment,' +
        ' ( select max(f_time) from product_plans_p' +
        ' where id_prod_plan_stop = p.id_prod_plan_stop) f_time,' +
        ' ( select max(p_time) from product_plans_p' +
        ' where id_prod_plan_stop = p.id_prod_plan_stop) p_time,' +
         //p.f_time,p.p_time,'+
        //'p.din,p.tin,p.dto,p.tto,
        ' (select min(din) from product_plans_p' +
        ' where id_prod_plan_stop = p.id_prod_plan_stop) din,' +
        ' (select min(tin) from product_plans_p' +
        ' where id_prod_plan_stop = p.id_prod_plan_stop) tin,' +
        ' (select max(dto) from product_plans_p' +
        ' where id_prod_plan_stop = p.id_prod_plan_stop) dto,' +
        ' (select max(tto) from product_plans_p' +
        ' where id_prod_plan_stop = p.id_prod_plan_stop) tto,' +
        ' p.rem,p.id_order, o.name name_ord, o.n_order,' +
        ' e.pl_name,s.name name_shift,'+
        ' (select sum(f_time) from product_plans_p' +
        '  where id_prod_plan_stop = p.id_prod_plan_stop) f_time_sum' +
        ' from product_plans_stop p'+
        ' left join equipments e on e.id_equipment = p.id_equipment');}
    add('select p.id_prod_plan_stop, p.id_area, p.d_out, p.id_dutytype,' +
      '  p.id_shift, p.id_equipment, max(pp.f_time) f_time,' +
      '  max(pp.p_time)p_time, min(pp.din)  din, min(pp.tin) tin,' +
      '  max(pp.dto) dto,max(pp.tto) tto,' +
      '  cast((substring  (p.rem from 1 for 1024)) as varchar(1024)) rem,' +
      '  p.id_order, o.name name_ord,' +
      '  o.n_order, e.pl_name, s.name name_shift, sum(pp.f_time) f_time_sum,' +
      '  ps.fio, p.id_fix ' +
      '  from product_plans_stop p' +
      '  left join product_plans_p pp' +
      '    on pp.id_prod_plan_stop = p.id_prod_plan_stop' +
      '  left join equipments e on e.id_equipment = p.id_equipment' +
      '  left join shifts s on s.id_shift = p.id_shift' +
      '  left join project_ords o on o.id_order = p.id_order' +
      '  left join personnel ps on ps.id_p = p.id_fix ' +
      '  where p.d_out = :d_out and p.id_area = :id_area');
    if lcbShift.KeyValue <> null then
      Add(' and p.id_shift = :id_shift');
    if lcbEqp.KeyValue <> null then
      Add(' and p.id_equipment = :id_equipment');
    add('  group by 1,2,3,4,5, 6, 13,14,15,16,17,18,ps.fio,p.id_fix');
    {  Add(' left join shifts s on s.id_shift = p.id_shift');
      Add(' left join project_ords o on o.id_order = p.id_order');
      Add(' where p.d_out = :d_out and p.id_area = :id_area');}

    Add(OrdBy(dbg16));
    ParamByName('id_area').AsInteger := fmMain.C_PA;
    ParamByName('d_out').AsDate := Int(dtp1.DateTime);
    if lcbEqp.KeyValue <> null then
      ParamByName('id_equipment').Value := lcbEqp.KeyValue;
    if lcbShift.KeyValue <> null then
      ParamByName('id_shift').Value := lcbShift.KeyValue;
    Open;
  end;
end;

procedure TfmD_JOB.dbg16PTIMEUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  //  i: Real;
  dt: extended;
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

  {if value > 24 then
  begin
    MsgError('�� ����� ��������� 24 ����','�������� ������');
    handled := true;
  end;
  }
  dt := (Int(value) + frac(value) * 10 / 6) / 24 + 0.0000001;
  try
    qProd_Plan_StopF_TIME.AsFloat := Int(value) + frac(value) * 10 / 6;
    qProd_Plan_StopDTO.AsDateTime :=
      Int(qProd_Plan_StopDIN.AsDateTime + qProd_Plan_StopTIN.AsDateTime + dt);
    qProd_Plan_StopTTO.AsDateTime :=
      Frac(qProd_Plan_StopDIN.AsDateTime + qProd_Plan_StopTIN.AsDateTime + dt);
  except
  end;

end;

procedure TfmD_JOB.qProd_Plan_StopBeforePost(DataSet: TDataSet);
begin
  //if dsProd_Plan_Stop.State in [dsEdit,dsInsert] then qProd_Plan_Stop.Post;
  if qProd_Plan_StopID_DUTYTYPE.IsNull then
  begin
    MsgInformation('��������� ���� "��� �����"', '��������');
    // qProd_Plan_Stop.Cancel;
    Abort;
  end
end;

procedure TfmD_JOB.SpeedButton26Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg17);
  Screen.Cursor := crDefault;

end;

procedure TfmD_JOB.sbFioClick(Sender: TObject);
begin
  with qLoad_P, qLoad_P.SQL do
  begin
    Close;
    Clear;
    Add('select distinct g.ID_TEAM ,g.ID_P,g.ID_POST,g.NAME ,g.LOAD_TIME,g.WORK_TIME,g.NAME_POST');
    Add(' from GET_PA_DAY_LOAD_P(:id_area,:d_work,:kop) g');
    Add(OrdBy(dbg18));
    // ShowMessage(text);
    ParamByName('id_area').AsInteger := fmMain.C_PA;
    ParamByName('d_work').AsDate := fmD_JOB.dtp1.Date;
    ParamByName('kop').AsInteger := 1; //Kdistr;
    // ParamByName('id_prod_plan').AsInteger := dmIS.qD_JOBID_PROD_PLAN.AsInteger;
    Open;
  end;
end;

procedure TfmD_JOB.qProd_Plan_StopAfterScroll(DataSet: TDataSet);
begin
  dbg17SortMarkingChanged(dbg17);
end;

procedure TfmD_JOB.SpeedButton24Click(Sender: TObject);
var
  k: integer;
  DS: TDataSet;
begin
  if dsPlan_P_Stop.State in [dsEdit, dsInsert] then
    qPlan_P_Stop.Post;
  if dmIs.mT.Active then
    dmIs.mT.CommitRetaining;
  DS := dbg18.DataSource.DataSet;
  with dbg18 do
  begin
    DS.DisableControls;
    if dbg18.SelectedRows.Count > 0 then
    begin
      for k := 0 to SelectedRows.Count - 1 do
      begin
        DS.GotoBookmark(pointer(SelectedRows.Items[k]));

        with dmIS.qIN, dmIS.qIN.SQL do
        begin
          Close;
          Clear;
          Add('INSERT INTO PRODUCT_PLANS_P (ID_PROD_PLAN_P, ID_PROD_PLAN, ID_P,ID_EQUIPMENT,'
            +
            ' AMOUNT,F_AMOUNT,P_TIME,F_TIME,din,tin,dto,tto,ID_PROD_PLAN_STOP)' +
            ' VALUES (GEN_ID(OBJ_ID,1), null, :id_p, :ID_EQUIPMENT,' +
            ' 0,0,:P_TIME,:F_TIME,:din,:tin,:dto,:tto,:ID_PROD_PLAN_STOP)');
          try
            ParamByName('id_p').AsInteger := qLoad_PID_P.AsInteger;
            ParamByName('ID_EQUIPMENT').AsInteger :=
              qProd_Plan_StopID_EQUIPMENT.AsInteger;
            ParamByName('p_time').AsFloat := qProd_Plan_StopP_TIME.AsFloat;
            ParamByName('din').AsDate := Int(qProd_Plan_StopDIN.AsDateTime);
            //Int(dtp1.DateTime);
            ParamByName('tin').AsTime := qProd_Plan_StopTIN.AsDateTime;
            //dmIs.qShiftsTIME_BEGIN.AsDateTime;
            ParamByName('dto').AsDate := Int(qProd_Plan_StopDTO.AsDateTime);
            {                  Int(Int(dtp1.DateTime) + dmIs.qShiftsTIME_BEGIN.AsDateTime +
                                 (Int(qProd_Plan_StopP_TIME.AsFloat) +
                                      frac(qProd_Plan_StopP_TIME.AsFloat)*10/6)/24);}
            ParamByName('tto').AsTime := qProd_Plan_StopTTO.AsDateTime;
            {                  Int(dtp1.DateTime) + dmIs.qShiftsTIME_BEGIN.AsDateTime +
                                 (Int(qProd_Plan_StopP_TIME.AsFloat) +
                                      frac(qProd_Plan_StopP_TIME.AsFloat)*10/6)/24 ;  }

            if not qProd_Plan_StopP_TIME.IsNull then
              ParamByName('f_time').AsFloat :=
                Int(qProd_Plan_StopP_TIME.AsFloat) +
                frac(qProd_Plan_StopP_TIME.AsFloat) * 10 / 6
            else
              ParamByName('f_time').Clear;
            ParamByName('ID_PROD_PLAN_STOP').AsInteger :=
              qProd_Plan_StopID_PROD_PLAN_STOP.AsInteger;
            ExecSQL;
            if dmIS.mT.InTransaction then
              dmIS.mT.CommitRetaining;
          except
            MsgInformation('������ ������ ������������� ����������� �����',
              '������ ������');
            if dmIS.mT.InTransaction then
              dmIS.mT.RollbackRetaining;
          end; //try
        end; // with dmIS.qIN

      end;
    end;
  end; // with dbg14 do
  DS.EnableControls;
  OpenStore_Det;
  dbg17SortMarkingChanged(dbg17);
  if qPlan_P_Stop.Active then
    qPlan_P_Stop.Locate('id_p', qLoad_PID_P.AsInteger, []);

end;

procedure TfmD_JOB.dbg17SortMarkingChanged(Sender: TObject);
begin
  if (qPlan_P_Stop.Active = True) and (dsPlan_P_Stop.State in [dsEdit, dsInsert])
    then
    qPlan_P_Stop.Post;
  with qPlan_P_Stop, qPlan_P_Stop.SQL do
  begin
    Close;
    Clear;
    Add('select P.id_prod_plan_p, p.id_p, p.id_team,');
    Add(' p.f_time, p.p_time, p.rem,p.DIN,p.TIN,p.DTO,p.TTO,');
    Add('p.ID_PROD_PLAN_STOP, r.fio ');
    Add('from PRODUCT_PLANS_P P');
    Add('left join product_plans_stop s on p.id_prod_plan_stop = s.id_prod_plan_stop');
    Add('left join personnel r on r.id_p = p.id_p');
    //  Add('where s.id_prod_plan_stop = :id_prod_plan_stop'); ����� ��������
    Add('where p.id_prod_plan_stop = :id_prod_plan_stop');
    Add(OrdBy(dbg17));
    ParamByName('id_prod_plan_stop').Value :=
      qProd_Plan_Stopid_prod_plan_stop.AsInteger;
    ;
    if qProd_Plan_Stopid_prod_plan_stop.AsInteger > 0 then
      Open;
  end;

end;

{procedure TfmD_JOB.dbg17DINUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  dt: TDateTime;
begin
  try //����  �
    dt := StrToDateTime(Text);
    qPlan_P_STOPDTO.AsVariant := Int(dt + qPlan_P_STOPTIN.Value +
      (Int(qPlan_P_STOPF_TIME.Value) + frac(qPlan_P_STOPF_TIME.Value) * 10 / 6)
      / 24 + 0.0000001);
    qPlan_P_STOPTTO.AsVariant := Frac(dt + qPlan_P_STOPTIN.Value +
      +qPlan_P_STOPF_TIME.Value / 24)
  except;
  end;
  dbg17REMUpdateData(Sender, Text, Value, UseText, Handled);

end;  }

procedure TfmD_JOB.dbg17TINUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  dt: TDateTime;
begin
  try //����� �
    dt := StrToDateTime(Text);
    qPlan_P_StopDTO.AsVariant := Int(qPlan_P_StopDIN.Value + dt +
      (Int(qPlan_P_StopF_TIME.Value) + frac(qPlan_P_StopF_TIME.Value) * 10 / 6)
      / 24 + 0.0000001);
    qPlan_P_StopTTO.AsVariant := Frac(qPlan_P_StopDIN.Value + dt +
      qPlan_P_StopF_TIME.Value / 24);
  except;
  end;
  dbg17REMUpdateData(Sender, Text, Value, UseText, Handled);
end;

procedure TfmD_JOB.dbg17DTOUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  tm: TDateTime;
begin
  tm := (Value + qPlan_P_StopTTO.Value) -
    (qPlan_P_StopDIN.Value + qPlan_P_StopTIN.Value);
  try // ���� ��
    qPlan_P_StopF_TIME.Value := (tm) * 24;

    qPlan_P_StopP_TIME.Value := Int(qPlan_P_StopF_TIME.Value) +
      (Frac(qPlan_P_StopF_TIME.Value)) * 60 / 100;
  except;
  end;
  dbg17REMUpdateData(Sender, Text, Value, UseText, Handled);
end;

procedure TfmD_JOB.dbg17TTOUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  tm: TDateTime;
begin
  tm := (Value + qPlan_P_StopDTO.Value) -
    (qPlan_P_StopDIN.Value + qPlan_P_StopTIN.Value);
  try // ���� ��
    qPlan_P_StopF_TIME.Value := (tm) * 24;

    qPlan_P_StopP_TIME.Value := Int(qPlan_P_StopF_TIME.Value) +
      (Frac(qPlan_P_StopF_TIME.Value)) * 60 / 100;

  except;
  end;
  dbg17REMUpdateData(Sender, Text, Value, UseText, Handled);
end;

procedure TfmD_JOB.dbg17PTIMEUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  //  i: Real;
  dt: extended;
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

  if (value > 24)
  and (Pos('��������� ������� �������',qPlan_P_StopFIO.AsString ) = 0) then
  begin
    MsgError('�� ����� ��������� 24 ����','�������� ������');
    handled := true;
  end;

  
  dt := (Int(value) + frac(value) * 10 / 6) / 24 + 0.0000001;
  try
    // qPlan_PD_TO.AsDateTime := qPlan_PD_IN.AsDateTime + dt ;
    qPlan_P_StopF_TIME.AsFloat := Int(value) + frac(value) * 10 / 6 + 0.000001;
    qPlan_P_StopDTO.AsDateTime := Int(qPlan_P_StopDIN.AsDateTime +
      qPlan_P_StopTIN.AsDateTime + dt);
    qPlan_P_StopTTO.AsDateTime := Frac(qPlan_P_StopDIN.AsDateTime +
      qPlan_P_StopTIN.AsDateTime + dt);
  except
    dbg17REMUpdateData(Sender, Text, Value, UseText, Handled);
  end;

end;

procedure TfmD_JOB.qRep_Plan_DayAfterScroll(DataSet: TDataSet);
var
  s: string;
begin
  if pcGraf.ActivePage = ts_FIO_Pers then
  begin
    s := 'select per.fio,l1.din+l1.tin din , l1.dto+l1.tto dto,' +
      'coalesce(o.obj_name,i.name)||coalesce(o.dec_no,''' + '' + ''') nm,' +
      'l.f_time f_time_p, o.id_object' +
      ' from project_ords p join product_objects o on o.id_version = p.id_version' +
      ' join product_oper r on r.id_object = o.id_object' +
      ' join product_traff f on f.id_prod_oper = r.id_prod_oper and f.id_area = :id_area' +
      ' join operations s on s.id_area = f.id_area and s.id_operation = f.id_operation' +
      ' join product_plans l on l.d_out = :d_out and l.amount > 0';
    if fmD_Job.lcbShift.KeyValue <> null then
      s := s + ' and l.id_shift = :id_shift ';
    s := s + ' and l.id_prod_traf = f.id_prod_traff' +
      ' join product_plans_p l1 on l1.id_p = :id_p and l1.id_prod_plan = l.id_prod_plan' +
      ' left join items i on i.id_item = o.id_item' +
      ' left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT' +
      ' left join personnel per on l1.id_p = per.id_p' +
      ' left join post ps on per.idpost = ps.idpost' +
      ' left join shifts h on h.id_shift = l.id_shift';
    // ' order by per.fio,l.posit , o.dec_no,s.name';
    s := s + ' union ' +
      'select per.fio, coalesce(l1.din+l1.tin, cast(l.d_out as timestamp)) din ,' +
      'coalesce(l1.dto+l1.tto, cast(l.d_out as timestamp) +' +
      '( (floor(l.f_time) + (l.f_time - floor(l.f_time))) )/24) dto,' +
      'cast(coalesce(d.name,''' + '��� ����' + ''') as varchar(160))  nm,' +
      'l.f_time f_time_p, coalesce(l.id_dutytype,1) id_object' +
      ' from product_plans_stop l' +
      ' join product_plans_p l1 on  l.id_area = :id_area and l.d_out >= :d_out' +
      '   and l.d_out < :d_out + 1 and l1.id_p = :id_p';
    if fmD_Job.lcbShift.KeyValue <> null then
      s := s + ' and l.id_shift = :id_shift ';
    s := s + ' and l1.id_prod_plan_stop = l.id_prod_plan_stop' +
      ' left join dutytypes d on d.id_dutytype = l.id_dutytype' +
      ' left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT' +
      ' left join personnel per on l1.id_p = per.id_p' +
      ' left join post ps on per.idpost = ps.idpost' +
      ' left join shifts h on h.id_shift = l.id_shift';
    qFIO_DET.Close;
    qFIO_DET.SQL.Clear;
    qFIO_DET.SQL.Add(s);
    qFIO_DET.SQL.Add(OrdBy(dbg15));

    qFIO_DET.ParamByName('id_area').AsInteger := fmMain.C_PA;
    qFIO_DET.ParamByName('d_out').AsDate := Int(fmD_Job.dtp1.Date);
    qFIO_DET.ParamByName('id_p').AsInteger := qRep_Plan_DayID_P.Value;

    if fmD_Job.lcbShift.KeyValue <> null then
      qFIO_DET.ParamByName('id_shift').AsInteger := fmD_Job.lcbShift.KeyValue;
    qFIO_DET.Open;
  end;
end;

procedure TfmD_JOB.qPlan_P_StopAfterPost(DataSet: TDataSet);
begin
  if dmIs.mT.InTransaction then
    dmIs.mT.CommitRetaining;
  dbg_ObjSortMarkingChanged(dbg_Obj);
end;

procedure TfmD_JOB.qPlan_PAfterPost(DataSet: TDataSet);
begin
  if dmIs.mT.InTransaction then
    dmIs.mT.CommitRetaining;
  dbg_ObjSortMarkingChanged(dbg_Obj);
end;

procedure TfmD_JOB.qProd_Plan_StopAfterInsert(DataSet: TDataSet);
begin
  //if dsProd_Plan_Stop.State in [dsEdit,dsInsert] then qProd_Plan_Stop.Post;
end;

procedure TfmD_JOB.dbg16DINUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  dt: TDateTime;
begin
  try //����  �
    dt := StrToDateTime(Text);
    qProd_Plan_StopDTO.AsVariant := Int(dt + qProd_Plan_StopTIN.Value +
      (Int(qProd_Plan_StopF_TIME.Value) + frac(qProd_Plan_StopF_TIME.Value) * 10
      / 6) / 24 + 0.0000001);
    qProd_Plan_StopTTO.AsVariant := Frac(dt + qProd_Plan_StopTIN.Value +
      +qProd_Plan_StopF_TIME.Value / 24)
  except;
  end;

end;

procedure TfmD_JOB.dbg16TINUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  dt: TDateTime;
begin
  try //����� �
    dt := StrToDateTime(Text);
    qProd_Plan_StopDTO.AsVariant := Int(qProd_Plan_StopDIN.Value + dt +
      (Int(qProd_Plan_StopF_TIME.Value) + frac(qProd_Plan_StopF_TIME.Value) * 10
      / 6) / 24 + 0.0000001);
    qProd_Plan_StopTTO.AsVariant := Frac(qProd_Plan_StopDIN.Value + dt +
      qProd_Plan_StopF_TIME.Value / 24);
  except;
  end;

end;

procedure TfmD_JOB.dbg16Columns3UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  tm: TDateTime;
begin
  tm := (Value + qPlan_P_StopTTO.Value) -
    (qPlan_P_StopDIN.Value + qPlan_P_StopTIN.Value);
  try // ���� ��
    qProd_Plan_StopF_TIME.Value := (tm) * 24;
    qProd_Plan_StopP_TIME.Value := Int(qProd_Plan_StopF_TIME.Value) +
      (Frac(qProd_Plan_StopF_TIME.Value)) * 60 / 100;
  except;
  end;

end;

procedure TfmD_JOB.dbg16TTOUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  tm: TDateTime;
begin
  tm := (Value + qProd_Plan_StopDTO.Value) -
    (qProd_Plan_StopDIN.Value + qProd_Plan_StopTIN.Value);
  try // ���� ��
    qProd_Plan_StopF_TIME.Value := (tm) * 24;
    qProd_Plan_StopP_TIME.Value := Int(qProd_Plan_StopF_TIME.Value) +
      (Frac(qProd_Plan_StopF_TIME.Value)) * 60 / 100;
  except;
  end;

end;

procedure TfmD_JOB.dbg16NOrderUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  nom_id: Integer;
begin
  try
    qIns.Close;
    qIns.sql.Clear;
    qIns.SQL.Add('select p.*');
    qIns.SQL.Add(' from PROJECT_ORDS p');
    qIns.SQL.Add(' where upper(p.N_ORDER) like upper(' + '''%' +
      AnsiUpperCase(text) + '%''' + ')');
    qIns.SQL.Add(' and p.d_open >= :d');
    //qIns.SQL.Add('and p.n_order = :n_order');
    qIns.ParamByName('d').Value := '1.01.2008';
    //showMessage(qIns.Text);
    qIns.Open;
    qIns.FetchAll;
    if qIns.IsEmpty then
    begin
      ShowMessage('�� ������ ����� � ����� ����������.. ');
      exit;
    end;
    if qIns.RecordCount > 1 then
    begin
      ShowMessage('������� ��������� �������.. ');
      if not Assigned(fmListTZ) then
        Application.CreateForm(TfmListTZ, fmListTZ);
      if dbg16.FieldColumns['DIN'].Color = clSkyBlue then
      begin
        qProd_Plan_Stop.Edit;
        Ins_Ord := 1;
      end;
      fmListTZ.edFind.Text := text;
      fmListTZ.Show;
    end;

    if qIns.FieldByName('AMOUNT').Value = qIns.FieldByName('PRODUSED').Value
      then
    begin
      //�������� �� ���� �����������
      nom_id := qIns.FieldByName('id_order').Value;
      with dmIS.qIM, dmIS.qIM.SQL do
      begin
        Close;
        Clear;
        Add('select current_date dt, o.id_order,cast(o.d_fact as date) d_fact,');
        Add('case when o.d_fact is not null then current_date - cast(o.d_fact as date) else 0 end d1');
        Add('from project_ords_state o where o.id_order = :id_order and o.id_ord_event = 200');
        ParamByName('id_order').AsInteger := nom_id;
        Open;
        if (fmMain.S39 = 1) and (dmIS.qIM.FieldByName('d1').Value > fmMain.S40)
          then
        begin
          MsgInformation('���� ������������ ������ ��������� ����������. ' +
            '����������� ���������', '�������� ���� ������������');
          text := '';
          Handled := True;
          qProd_Plan_Stop.Edit;
          qProd_Plan_StopN_ORDER.Clear;
          qProd_Plan_StopNAME_ORD.Clear;
          qProd_Plan_StopID_ORDER.Clear;
          qProd_Plan_Stop.Post;
          qProd_Plan_Stop.Edit;
          dmIS.qIM.Close;
          exit;
        end;
      end;
    end;
    text := qIns.FieldByName('N_ORDER').Value;
    qProd_Plan_Stop.Edit;
    qProd_Plan_StopN_ORDER.Value := text;
    qProd_Plan_StopNAME_ORD.Value := qIns.FieldByName('NAME').Value;
    qProd_Plan_StopID_ORDER.Value := qIns.FieldByName('ID_ORDER').Value;
    qProd_Plan_StopFIO_ID.AsInteger := SysVars.RegTN;
    qProd_Plan_Stop.Post;
    qProd_Plan_Stop.Edit;
  except
    Handled := True;
    qProd_Plan_Stop.Edit;
    qProd_Plan_StopN_ORDER.Clear;
    qProd_Plan_StopNAME_ORD.Clear;
    qProd_Plan_StopID_ORDER.Clear;
    qProd_Plan_Stop.Post;
    qProd_Plan_Stop.Edit;

  end;
  qIns.Close;
end;

procedure TfmD_JOB.dbg16NOrderEditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if dbg16.FieldColumns['N_order'].Color = clSkyBlue then
    Ins_Ord := 1;

  if not Assigned(fmListTZ) then
    Application.CreateForm(TfmListTZ, fmListTZ);
  fmListTZ.edFind.Text := qProd_Plan_StopN_ORDER.AsString;
  fmListTZ.Show;

end;

procedure TfmD_JOB.qOper_MatsAfterScroll(DataSet: TDataSet);
begin
  with qSTORE_TMS_BATCH, qSTORE_TMS_BATCH.SQL do
  begin
    Close;
    Clear;
    Add('select * from STORE_TMS_BATCH(:ID_OBJ,:ID_P_AR)');
    if cbStore.Checked then
      Add('where id_p_area = :id_p_area order by N_ID_PA_AREA');
    ParamByName('ID_OBJ').AsInteger := qOper_MatsID_ITEM.AsInteger;
    ParamByName('ID_P_AR').AsInteger := fmMain.C_PA_PROD;
    if cbStore.Checked then
      ParamByName('id_p_area').AsInteger := fmMain.C_PA;
    Open;
  end;

end;

procedure TfmD_JOB.cbStoreClick(Sender: TObject);
begin
  qOper_MatsAfterScroll(qSTORE_TMS_BATCH);
end;

{procedure TfmD_JOB.pcBillChange(Sender: TObject);
var
  id_pos, id_item, id_bill, id_bill_pos: Integer;
begin
  if qBILLPOS_BILL70TRAFF.Active = True then
  begin
   id_pos  := qBILLPOS_BILL70TRAFFID_PA_BILL_POS.AsInteger;
   id_item := qBILLPOS_BILL70TRAFFID_ITEM.AsInteger;
  end;
  if dmIs.qBill .Active = True then
  begin
   id_bill  := dmIs.qBillID_PA_BILL.AsInteger;
  end;
  if dmIs.qBill_ss.Active = True then
  begin
   id_bill_pos  := dmIs.qBill_ssID_PA_BILL_POS.AsInteger;
  end;
  if pcBill.ActivePage = ts106 then
  begin
   with dmIS.qBill, dmIS.qBill_ss.SQL do begin
    Close;
    Clear;
    Add('select a.name, p.id_pa_bill, p.id_p_area, p.pa_bill_type,p.d_bill,p.number,');
    Add('p.d_edit, p.id_edit,d_fix, id_fix,rem ,r.fio fio_fix,r1.fio fio_edit');
    Add('from p_area_bills p');
    Add('left join personnel r on r.id_p = p.id_fix');
    Add('left join personnel r1 on r1.id_p = p.id_edit');
    Add('left join prod_areas a on a.id_p_area = p.id_p_area');
    Add('where p.id_p_area = :id_area and p.d_bill = :d_bill and  p.pa_bill_type = 106)');
    ParamByName('id_area').AsInteger := fmMain.C_PA;
    ParamByName('d_bill').AsDate := Int(dtp1.Date);
    Open;
    dmIS.qBill.Locate('id_pa_bill',id_bill,[]);
    if not dmIs.qBill_ss.IsEmpty then dmIS.qBill_ss.Locate('id_pa_bill_pos',id_bill_pos,[]);
  end;
  end;
  if pcBill.ActivePage = tsBill_List then
  begin
   lbItem.Caption := '';
   Screen.Cursor := crHourGlass;
   qBILLPOS_BILL70TRAFF.Close;
   qBILLPOS_BILL70TRAFF.SQL.Clear;
   qBILLPOS_BILL70TRAFF.SQL.Add('select * from BILLPOS_BILL70TRAFF(:ID_AR,:D_BIL)');
   qBILLPOS_BILL70TRAFF.ParamByName('ID_AR').AsInteger := fmMain.C_PA;
   qBILLPOS_BILL70TRAFF.ParamByName('D_BIL').AsDate := fmD_Job.dtp1.Date;;
   qBILLPOS_BILL70TRAFF.Open;
   qBILLPOS_BILL70TRAFF.Locate('ID_PA_BILL_POS,ID_ITEM',VarArrayOf([id_pos,id_item]),[]);
    Screen.Cursor := crDefault;
  end;

end; }

procedure TfmD_JOB.dbg33GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if not qBILLPOS_BILL70TRAFFOBJ_NAME.IsNull then
    Background := clBtnFace;

end;

procedure TfmD_JOB.SpeedButton22Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg33);
  Screen.Cursor := crDefault;

end;

procedure TfmD_JOB.qBILLPOS_BILL70TRAFFAfterScroll(DataSet: TDataSet);
begin
  lbItem.Caption := '';
  lbItem.Caption := qBILLPOS_BILL70TRAFFN_ORDER.AsString + ' "' +
    qBILLPOS_BILL70TRAFFORDNAME.AsString + '" ������: ' +
    qBILLPOS_BILL70TRAFFOBJ_NAME.AsString + '/' +
    qBILLPOS_BILL70TRAFFONAME.AsString + ' ��� ' +
    qBILLPOS_BILL70TRAFFID_STEP.AsString + ' ���-��=' +
    qBILLPOS_BILL70TRAFFAMOUNT.AsString;
  if (cbStore_List.Checked) then
  begin
    if not Assigned(fmSTATE) then
      Application.CreateForm(TfmSTATE, fmSTATE);
    fmState.Caption := '��������� ������� - ' + dmIS.qPANAME.AsString;
    if Panel_Bill.Visible = True then
      fmSTATE.Panel_Amount.Show
    else
      fmSTATE.Panel_Amount.Hide;
    if dmIS.qIState.Active = False then
    begin
      fmSTATE.pcStore.ActivePage := fmSTATE.tsTms;
      fmSTATE.dbg4SortMarkingChanged(fmSTATE.dbg4);
    end;
    fmSTATE.Show;
    if dmIS.qIState.Locate('ID_OBJECT', qBILLPOS_BILL70TRAFFID_ITEM.AsInteger,
      []) then
    begin
      fmSTATE.Dbg2Up;
      {  fmSTATE.edAmount.Text  :=
         FloatToStrF(qBILLPOS_BILL70TRAFFAMOUNT_TMC.AsFloat, ffFixed,15,4);
        fmSTATE.edAm.Text  :=
         FloatToStrF(qBILLPOS_BILL70TRAFFAMOUNT_TMC_NOT_WASTE.AsFloat, ffFixed,15,4);
        fmSTATE.edAmW.Text  :=
         FloatToStrF(qBILLPOS_BILL70TRAFFAMOUNT_WASTE.AsFloat, ffFixed,15,4);

        fmSTATE.edAmountP.Text :=
         FloatToStrF(qBILLPOS_BILL70TRAFFAMOUNT_TMC.AsFloat / dmIS.qIStateFACTOR.Value,
         ffFixed,15,4) ;
        fmSTATE.edAmP.Text  :=
         FloatToStrF(qBILLPOS_BILL70TRAFFAMOUNT_TMC_NOT_WASTE_P.AsFloat/ dmIS.qIStateFACTOR.Value,
         ffFixed,15,4);
        fmSTATE.edAmWP.Text  :=
         FloatToStrF(qBILLPOS_BILL70TRAFFAMOUNT_WASTE_P.AsFloat / dmIS.qIStateFACTOR.Value,
         ffFixed,15,4);}
    end
    else
    begin
      if cbBeep.Checked then
        ShowMessage('��� ��������� ...')
      else
        Beep;
    end;
    fmSTATE.edAmount.Text :=
      FloatToStrF(qBILLPOS_BILL70TRAFFAMOUNT_TMC.AsFloat, ffFixed, 15, 4);
    fmSTATE.edAm.Text :=
      FloatToStrF(qBILLPOS_BILL70TRAFFAMOUNT_TMC_NOT_WASTE.AsFloat, ffFixed, 15,
      4);
    fmSTATE.edAmW.Text :=
      FloatToStrF(qBILLPOS_BILL70TRAFFAMOUNT_WASTE.AsFloat, ffFixed, 15, 4);

    fmSTATE.edAmountP.Text :=
      FloatToStrF(qBILLPOS_BILL70TRAFFAMOUNT_TMC.AsFloat /
      dmIS.qIStateFACTOR.Value,
      ffFixed, 15, 4);
    fmSTATE.edAmP.Text :=
      FloatToStrF(qBILLPOS_BILL70TRAFFAMOUNT_TMC_NOT_WASTE_P.AsFloat /
      dmIS.qIStateFACTOR.Value,
      ffFixed, 15, 4);
    fmSTATE.edAmWP.Text :=
      FloatToStrF(qBILLPOS_BILL70TRAFFAMOUNT_WASTE_P.AsFloat /
      dmIS.qIStateFACTOR.Value,
      ffFixed, 15, 4);

  end; //if (cbStore_List.Checked) then

end;

procedure TfmD_JOB.cbStore_ListClick(Sender: TObject);
begin
  qBILLPOS_BILL70TRAFFAfterScroll(qBILLPOS_BILL70TRAFF);
end;

procedure TfmD_JOB.SpeedButton30Click(Sender: TObject);
var
  nom: string;
begin
  Screen.Cursor := crHourGlass;
  Panel_Bill.Show;
  qIns.Close;
  qIns.SQL.Clear;
  qIns.SQL.Add('select ID,NUMBER from  GET_DOC_NUMBERS(5)');
  qIns.Open;
  id := qIns.FieldByName('id').AsInteger;
  nom := qIns.FieldByName('number').AsString;
  qIn.Close;
  qIn.SQL.Clear;
  qIn.SQL.Add('insert into p_area_bills (id_pa_bill, id_p_area, pa_bill_type,');
  qIn.SQL.Add('id_destination,d_bill, d_edit, id_edit,id_currency, rem, number)');
  qIn.SQL.Add('values (:id_pa_bill,:id_p_area,:pa_bill_type,:id_destination,');
  qIn.SQL.Add(':d_bill,current_timestamp,:id_edit,:id_currency,:rem,:number)');
  qIn.ParamByName('id_pa_bill').AsInteger := id;
  qIn.ParamByName('id_p_area').AsInteger := fmMain.C_PA;
  qIn.ParamByName('pa_bill_type').AsInteger := 106;
  qIn.ParamByName('id_destination').AsInteger := fmMain.C_PA;
  qIn.ParamByName('d_bill').AsDate := dtp1.Date;
  qIn.ParamByName('id_edit').AsInteger := SysVars.RegTN;
  qIn.ParamByName('id_currency').AsInteger := 1;
  qIn.ParamByName('rem').AsString := '�� ��������� ��������� �� ' +
    DateToStr(dtp1.Date);
  qIn.ParamByName('number').AsString := nom;
  qIn.ExecSQL;
  if dmIS.mTW.InTransaction then
    dmIS.mTW.Commit;
  edNom.Text := nom;
  lbNom.Caption := IntToStr(id);
  mm.Text := '�� ��������� ���������' + DateToStr(dtp1.Date);
  with dmIS.qBill, dmIS.qBill_ss.SQL do
  begin
    Close;
    Clear;
    Add('select a.name, p.id_pa_bill, p.id_p_area, p.pa_bill_type,p.d_bill,p.number,');
    Add('p.d_edit, p.id_edit,d_fix, id_fix,rem ,r.fio fio_fix,r1.fio fio_edit');
    Add('from p_area_bills p');
    Add('left join personnel r on r.id_p = p.id_fix');
    Add('left join personnel r1 on r1.id_p = p.id_edit');
    Add('left join prod_areas a on a.id_p_area = p.id_p_area');
    Add('where p.id_p_area = :id_area and p.d_bill = :d_bill and  p.pa_bill_type = 106)');
    Add('order by p.id_pa_bill');
    ParamByName('id_area').AsInteger := fmMain.C_PA;
    ParamByName('d_bill').AsDate := Int(dtp1.Date);
    dmIS.qBill.AfterScroll := nil;
    Open;
    dmIS.qBill.Locate('id_pa_bill', id, []);
    with dmIS.qBill_ss, dmIS.qBill_ss.SQL do
    begin
      Close;
      Clear;
      SQL.Add('select * from GET_BILL_POS(:cpa)');
      OrderBy(fmD_Job.dbg444);
      ParamByName('cpa').AsInteger := id;
      Open;
    end;
    dmIS.qBill.AfterScroll := dmIS.qBillAfterScroll;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmD_JOB.sbTraff_MatClick(Sender: TObject);
var
  id_n: Integer;
begin
  Screen.Cursor := crHourGlass;
  if qBILLPOS_BILL70TRAFF.Active = True then
    id_n := qBILLPOS_BILL70TRAFFNOM.AsInteger;
  lbItem.Caption := '';

  qBILLPOS_BILL70TRAFF.Close;
  qBILLPOS_BILL70TRAFF.SQL.Clear;
  qBILLPOS_BILL70TRAFF.SQL.Add('select * from BILLPOS_BILL70TRAFF(:ID_AR,:D_BIL)');
  qBILLPOS_BILL70TRAFF.ParamByName('ID_AR').AsInteger := fmMain.C_PA;
  qBILLPOS_BILL70TRAFF.ParamByName('D_BIL').AsDate := fmD_Job.dtp1.Date;
  ;
  qBILLPOS_BILL70TRAFF.Open;
  qBILLPOS_BILL70TRAFF.Locate('NOM', id_n, []);
  Screen.Cursor := crDefault;

end;

procedure TfmD_JOB.dbg44GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if dmIS.qBillD_FIX.IsNull then
    AFont.Color := clRed;
end;

procedure TfmD_JOB.sbBillClick(Sender: TObject);
var
  id, id_bill_pos: integer;
begin
  Screen.Cursor := crHourGlass;
  if dmIs.qBill.Active = True then
    id := dmIS.qBillID_PA_BILL.AsInteger;
  if dmIs.qBill_ss.Active = True then
    id_bill_pos := dmIS.qBill_ssID_PA_BILL_POS.AsInteger;

  with dmIS.qBill, dmIS.qBill_ss.SQL do
  begin
    Close;
    Clear;
    Add('select a.name, p.id_pa_bill, p.id_p_area, p.pa_bill_type,p.d_bill,p.number,');
    Add('p.d_edit, p.id_edit,d_fix, id_fix,rem ,r.fio fio_fix,r1.fio fio_edit');
    Add('from p_area_bills p');
    Add('left join personnel r on r.id_p = p.id_fix');
    Add('left join personnel r1 on r1.id_p = p.id_edit');
    Add('left join prod_areas a on a.id_p_area = p.id_p_area');
    Add('where p.id_p_area = :id_area and p.d_bill = :d_bill and  p.pa_bill_type = 106)');
    Add('order by  p.id_pa_bill');
    ParamByName('id_area').AsInteger := fmMain.C_PA;
    ParamByName('d_bill').AsDate := Int(dtp1.Date);
    dmIS.qBill.AfterScroll := nil;
    Open;
    if id = 0 then
      id := dmIS.qBillID_PA_BILL.AsInteger;
    dmIS.qBill.Locate('id_pa_bill', id, []);
    with dmIS.qBill_ss, dmIS.qBill_ss.SQL do
    begin
      Close;
      Clear;
      SQL.Add('select * from GET_BILL_POS(:cpa)');
      OrderBy(fmD_Job.dbg444);
      ParamByName('cpa').AsInteger := id;
      Open;
    end;
    dmIS.qBill.AfterScroll := dmIS.qBillAfterScroll;
    if not dmIs.qBill_ss.IsEmpty then
      dmIS.qBill_ss.Locate('id_pa_bill_pos', id_bill_pos, []);
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmD_JOB.sbDFixClick(Sender: TObject);
var
  nom_bill: Integer;
begin
  if dmIS.mT.InTransaction then
    dmIS.mT.CommitRetaining;
  if dmIS.qBill.IsEmpty then
    exit;
  if dmIS.qBill_ss.IsEmpty then
    exit;
  if dmIS.qBillD_FIX.IsNull then
  begin
    if
      MsgQuestion('����� �������� ��������� ����� ���������� ��� ��������������. '
      +
      '��� �������� � ������������ ������� ����� ����������� ��������� ��������� ������/�������. ' +
      SysVars.NReg +
      ' , �� ������������� ������ ������� ��������� ���������?',
      '�������� ���������') = id_yes then
    begin
      Screen.Cursor := crHourGlass;
      nom_bill := dmIS.qBillID_PA_BILL.AsInteger;
      //  pa_bill := dmIS.qBillPA_BILL_TYPE.Value;

      with dmIS.qInsW, dmIS.qInsW.SQL do
      begin
        //�������� � ������� ���-���
        Close;
        SQL.Clear;
        SQL.Add('delete from pa_bill_pos where id_pa_bill = :id_pa_bill ' +
          'and (amount is null or amount =0)');
        ParamByName('id_pa_bill').Value := nom_bill;
        // dmIs.qZaBillsID_PA_BILL.Value ;
        try
          ExecSQL;
          if Transaction.InTransaction then
            Transaction.Commit;
        except
          if Transaction.InTransaction then
            Transaction.Rollback;
        end;

        //�������� �� ������� ��� �� ������
        Close;
        Clear;
        Add('select * from VALNAKL(:ID_P_AREA ,:ID_PA_BILL)');
        ParamByName('id_p_area').Value := dmIs.qBillID_P_AREA.Value;
        ParamByName('id_pa_bill').Value := nom_bill;
        //dmIs.qZaBillsID_PA_BILL.Value ;
        Open;
        if RecordCount <> 0 then
        begin
          ShowMessage('������ � ���������� ������ ' +
            FieldByName('ID_OBJECT').AsString +
            ' - ' + UpperCase(FieldByName('NAME').AsString) +
            ', ������ � ' + FieldByName('ID_BATCH').AsString +
            ', �� ������ ' + FieldByName('SK').AsString +
            ', ������� = ' + FieldByName('OST').AsString);
          Screen.Cursor := crDefault;
          Exit;
        end;

        Close;
        Clear;
        Add('SELECT STATUS FROM PA_BILL_P(:idb,:ras,:idp)');
        ParamByName('idb').AsInteger := nom_bill;
        //dmIS.qZaBillsID_PA_BILL.AsInteger;
        ParamByName('idp').AsInteger := SysVars.RegTN;
        ParamByName('ras').AsInteger := 1; //������
        try
          Open;
          if Transaction.InTransaction then
            Transaction.Commit;
          sbBillClick(Sender);
          if lbNom.Caption = IntToStr(nom_bill) then
          begin
            Panel_Bill.Hide;
            edNom.Clear;
            lbNom.Caption := '';
            mm.Clear;
          end;
        except
          begin
            dmIs.qBill_ss.Locate('ID_OBJECT', FieldByName('status').AsInteger,
              []);
            Screen.Cursor := crDefault;
            MsgError('������ ��� �������� ���������. ���: (' +
              FieldByName('status').AsString + ') ' +
              dmIs.qBill_SsNAME.AsString, '������ ��������.');
            if Transaction.InTransaction then
              Transaction.Rollback;
          end;

        end; //with
      end // ������

    end
    else
    begin
      Screen.Cursor := crDefault;
      ShowMessage('��������� ������� ������...'); //D_FIX
    end;

  end;

end;

procedure TfmD_JOB.dbg33MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cbStore_List.Checked then
    cbStore_ListClick(Sender);
end;

procedure TfmD_JOB.dtp1Change(Sender: TObject);
begin
  dmIs.qBill.Close;
  dmIs.qBill_ss.Close;
  qBILLPOS_BILL70TRAFF.Close;

end;

procedure TfmD_JOB.sbDelBillClick(Sender: TObject);
var
  dtn: TDateTime;
  remm: string;
begin
  if dmIS.qBill.IsEmpty then
    exit;
  if (not dmIS.qBillD_FIX.IsNull) then
    exit;
  if fmMain.UF_DOC = False then
    exit;
  if MsgQuestion(SysVars.NReg +
    ' , �� ������������� ������ ������� ��������� ���������?',
    '�������� ���������') = id_yes then
    //  dmIs.qZaBills.Delete;
  begin
    //dmIs.id_nom := dmIs.qBillID_PA_BILL.Value;
    try
      with qIns, qIns.SQL do
      begin
        Close;
        Clear;
        Add('select current_timestamp as dt from ACCESS_LEVELS' +
          ' where ACCESS_KEY = 0');
        Open;
      end;
      dtn := qIns.FieldByName('dt').AsDateTime;
      remm := dmIs.qBillREM.AsString + ' ������: ' + SysVars.FReg + ', ' +
        DateTimeToStr(dtn);
      with qIns, qIns.SQL do
      begin
        Close;
        Clear;
        Add('update P_AREA_BILLS ' +
          ' set rem = :rem,NUMBER_BILL = :dtn' +
          ' where id_pa_bill = :id_pa_bill');
        ParamByName('id_pa_bill').AsInteger := dmIS.qBillID_PA_BILL.AsInteger;
        ParamByName('rem').AsBlob := remm;
        ParamByName('dtn').AsString := FormatDateTime('dd.mm.yyyy hh:mm', dtn);
        ExecSQL;
      end;
      with qIns, qIns.SQL do
      begin
        Close;
        Clear;
        Add('insert into DEL_P_AREA_BILLS ' +
          ' select * from P_AREA_BILLS p where p.id_pa_bill = :id_pa_bill');
        ParamByName('id_pa_bill').AsInteger := dmIS.qBillID_PA_BILL.AsInteger;
        ExecSQL;
      end;
      with qIns, qIns.SQL do
      begin
        Close;
        Clear;
        Add('insert into DEL_PA_BILL_POS ' +
          ' select * from PA_BILL_POS p where p.id_pa_bill = :id_pa_bill');
        ParamByName('id_pa_bill').AsInteger := dmIS.qBillID_PA_BILL.AsInteger;
        ExecSQL;
      end;
      dmIs.qBill.Delete;
      if dmIS.mT.InTransaction then
        dmIS.mT.CommitRetaining;
    except
      if dmIS.mT.InTransaction then
        dmIS.mT.RollbackRetaining;
      MsgError('������ ��� �������� ������.', '������ ��������.');
    end; //try
  end;

end;

procedure TfmD_JOB.dbg1P_AMOUNTUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if (Text <> '') and (Value > dmIS.qD_JOBAMOUNT.Value) then
    ShowMessage('������, ��� �� �����...');
  if (Text <> '') and (Value > dmIS.qD_JOBOST_ORD.Value) then
    ShowMessage('������� �� �� ����������� ������� ���������� ' +
      dmIS.qD_JOBOST_ORD.AsString + '!!!!');
  if (Text <> '') then
    dmIs.qD_JOBP_TIME.AsFloat := Value * dmIs.qD_JOBT_PERSONNEL.AsFloat
  else
    dmIs.qD_JOBP_TIME.Clear;

  dmIs.qD_JOBP_TIME.AsFloat := Int(dmIs.qD_JOBP_TIME.AsFloat) +
    Frac(dmIs.qD_JOBP_TIME.AsFloat) * 60 / 100;
  if Frac(dmIs.qD_JOBP_TIME.AsFloat) >= 0.599 then
    dmIs.qD_JOBP_TIME.AsFloat := Int(dmIs.qD_JOBP_TIME.AsFloat) + 1;

  // Int(qPlan_PF_TIME.Value) + (Frac(qPlan_PF_TIME.Value))* 60/100;
end;

procedure TfmD_JOB.dbg1P_TIME5UpdateData(Sender: TObject;
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

  if value > 24 then
  begin
    MsgError('�� ����� ��������� 24 ����','�������� ������');
    handled := true;
  end;
  {dmIs.qD_JOB.Edit;
  text := text + ':00';
  dmIs.qD_JOBP_TIME.Value := TimeToHour(Text);
  }

end;

procedure TfmD_JOB.dbg1REMEditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if not Assigned(fmMmRem) then
    Application.CreateForm(TfmMmRem, fmMmRem);
  fmMmRem.edRem := 0;
  fmMmRem.lbEdit.Caption := '�������������� ���������.';
  fmMmRem.mmRem.Text := dmIS.qD_JOBREM.Value;
  if dbg1.FieldColumns['REM'].Color = clSkyBlue then
  begin
    dmIS.qD_JOB.Edit;
    fmMmRem.Visible := True;
    fmMmRem.mmRem.ReadOnly := False;
    fmMmRem.lbEdit.Caption := '�������������� ���������.';
  end;
  fmMmRem.Show;

end;

procedure TfmD_JOB.dbg1ColExit(Sender: TObject);
var
  i: Real;
  //  y: extended;
begin
  if dbg1.SelectedField.FieldName = 'P_TIME' then
  begin
    i := Frac(dmIs.qD_JOBP_TIME.AsFloat) * 100;
    if i > 60 then
    begin
      ShowMessage('� ���� 59 �����....');
      Exit;
    end;
  end;

end;

procedure TfmD_JOB.dbg1DblClick(Sender: TObject);
begin
  tb4Click(Sender);
end;

procedure TfmD_JOB.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Column.Field.FieldName = 'NM' then
    with dbg1.Canvas do
    begin
      if (dmIs.qD_JOBID_PA_TO.AsInteger <> dmIs.qD_JOBID_AREA.AsInteger) and
        (not dmIs.qD_JOBID_PA_TO.IsNull) and not (gdFocused in State) then
      begin
        Brush.Color := clMoneyGreen;
        FillRect(Rect);
        TextOut(Rect.Left, Rect.Top, Column.Field.Text);
      end
      else
        dbg1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
end;

procedure TfmD_JOB.dbg1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //if (Key = 13) then dbg1.SelectedIndex := dbg1.SelectedIndex +1 ;

  //if (key = VK_Delete) and  (Shift = [ssCtrl]) then key := 0;
  //if ((key = VK_Down) and (dmIs.qD_JOB.Eof)) or (key = VK_Insert) then key := 0;

end;

procedure TfmD_JOB.dbg1SortMarkingChanged(Sender: TObject);
begin
  OpenD_JOB;
end;

procedure TfmD_JOB.SpeedButton19Click(Sender: TObject);
var
  tm: Extended;
  //  kol: Integer;
begin
  if dsProd_Plan_Stop.State in [dsEdit, dsInsert] then
    qProd_Plan_Stop.Post;
  if qPlan_P_Stop.State in [dsEdit, dsInsert] then
                 //koly86
         if dsPlan_P_Stop.State in [dsEdit, dsInsert] then

          if fmD_job.qPlan_P_Stop.FieldByName('tin').AsDateTime > fmD_job.qPlan_P_Stop.FieldByName('tto').AsDateTime

                then
                     begin
                       showmessage('����� ������, �� ����� , ���� ������ ������� ���������');
                       exit;
                     end else

             if  fmD_job.qPlan_P_Stop.FieldByName('din').AsDateTime > fmD_job.qPlan_P_Stop.FieldByName('dto').AsDateTime
                then
                     begin
                       showmessage('���� ������, �� ����� , ���� ������ ���� ���������');
                       exit;
                     end else
           //koly86
    qPlan_P_Stop.Post;
  if dmIs.mT.InTransaction then
    dmIs.mT.CommitRetaining;
  {With qIns, qIns.SQL do
  begin
   Close;
   Clear;
   Add('select s.id_prod_plan_stop,s.d_out, s.f_time,');
   Add('(select sum(p.f_time) from product_plans_p p  where p.id_prod_plan_stop =s.id_prod_plan_stop) f_time_p');
   Add('from product_plans_stop s');
   Add('where s.id_prod_plan_stop = :id_prod_plan_stop');
   ParamByName('id_prod_plan_stop').AsInteger := qProd_Plan_StopID_PROD_PLAN_STOP.AsInteger;
   Open;
   r := abs(abs(FieldByName('f_time').AsFloat) - abs(FieldByName('f_time_p').AsFloat));
   if (r > 0.00005) then
   begin
    ShowMessage('��������� �����...');
    Exit;
   end;
  end
   }

  {With qIns, qIns.SQL do
  begin
   Close;
   Clear;
   Add('update product_plans_stop s');
   Add('set  s.f_time =');
   Add(' (select sum(p.f_time) from product_plans_p p  where p.id_prod_plan_stop =s.id_prod_plan_stop)');
   Add('where s.id_prod_plan_stop = :id_prod_plan_stop');
   ParamByName('id_prod_plan_stop').AsInteger := qProd_Plan_StopID_PROD_PLAN_STOP.AsInteger;
   Open;
  end; }
  with qIns, qIns.SQL do
  begin
    Close;
    Clear;
    Add('select sum(p.f_time) f_time from product_plans_p p');
    Add('where p.id_prod_plan_stop = :id_prod_plan_stop');
    ParamByName('id_prod_plan_stop').AsInteger :=
      qProd_Plan_StopID_PROD_PLAN_STOP.AsInteger;
    Open;
    tm := FieldByName('f_time').Value;
    if not (qProd_Plan_Stop.State in [dsEdit, dsInsert]) then
      qProd_Plan_Stop.Edit;
    qProd_Plan_StopF_TIME.Value := tm;
    qProd_Plan_StopP_TIME.Value := Int(qProd_Plan_StopF_TIME.Value) +
      (Frac(qProd_Plan_StopF_TIME.Value)) * 60 / 100;
    qProd_Plan_StopFIO_ID.AsInteger := SysVars.RegTN;
    qProd_Plan_Stop.Post;
  end;
  {select s.id_prod_plan_stop,s.d_out, s.f_time,
  (select sum(p.f_time) from product_plans_p p  where p.id_prod_plan_stop =s.id_prod_plan_stop) f_time,
  coalesce(s.f_time,0)-
  coalesce((select sum(coalesce(p.f_time,0))
           from product_plans_p p  where p.id_prod_plan_stop =s.id_prod_plan_stop),0) raz
  from product_plans_stop s
  where (coalesce(s.f_time,0)-
  coalesce((select sum(coalesce(p.f_time,0))
           from product_plans_p p  where p.id_prod_plan_stop =s.id_prod_plan_stop),0)) < -0.0005
           and
  (coalesce((select sum(coalesce(p.f_time,0))
           from product_plans_p p  where p.id_prod_plan_stop =s.id_prod_plan_stop),0)) > 0
  --s.f_time is null
  update product_plans_p s  set  s.f_time = -1*s.f_time,  s.p_time = -1*s.p_time
   where s.f_time <0

  select * from product_plans_p s where  s.id_prod_plan_stop=1974422 --s.f_time < 0

  --select sum(p.f_time) from product_plans_p p  where p.id_prod_plan_stop =3834360
  select  * from product_objects o where
  --o.obj_name = '����� 30�60�3 L=2028��. ' o.id_object in (307568,307715)
  o.id_version=180189

  update product_plans_stop s
  set  s.f_time = ( select sum(p.f_time) from product_plans_p p  where p.id_prod_plan_stop =s.id_prod_plan_stop)
  where s.f_time is null
  }
  qProd_Plan_Stop.Close;
  qProd_Plan_Stop.Open;
end;

procedure TfmD_JOB.dbg_ObjSortMarkingChanged(Sender: TObject);
begin
  qDet.Close;
  {qDet.SQL.Clear;
  qDet.SQL.Add(qDet_Txt);
  qDet.SQL.Add(OrdBy(dbg_Obj)) ;

  qDet.ParamByName('id_area').AsInteger := fmMain.C_PA;
  qDet.ParamByName('d1').AsDate := dtp1.Date;
  qDet.ParamByName('d2').AsDate := dtp1.Date+1;
  qDet.ParamByName('id_p').AsInteger := qLoad_PID_P.AsInteger;
  }
  qDet.Open;

end;

procedure TfmD_JOB.qLoad_PAfterScroll(DataSet: TDataSet);
begin
  //if (pcAll.ActivePage = tsWork) and (cbWork.Checked) then dbg_ObjSortMarkingChanged(dbg_Obj);
  //if (pcAll.ActivePage = tsStop) and (cbWorks.Checked) then dbg_ObjSortMarkingChanged(dbg_Obj);

  //else qDet.Close;
end;

procedure TfmD_JOB.cbWorkClick(Sender: TObject);
begin
  if cbWork.Checked then
    dbg_ObjSortMarkingChanged(dbg_Obj)
  else
    qDet.Close;
end;

procedure TfmD_JOB.cbWorksClick(Sender: TObject);
begin
  if cbWork.Checked then
    dbg_ObjSortMarkingChanged(dbg_Obj)
  else
    qDet.Close;
end;

procedure TfmD_JOB.dbg17MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (qLoad_P.Active) and (not qLoad_P.IsEmpty) then
    qLoad_P.Locate('ID_P', qPlan_P_StopID_P.AsInteger, []);

end;

procedure TfmD_JOB.dbg17KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Key = 38) or (Key = 40)) then //((Key = VK_DOWN) or (Key = VK_UP)) then
    if (qLoad_P.Active) and (not qLoad_P.IsEmpty) then
      qLoad_P.Locate('ID_P', qPlan_P_StopID_P.AsInteger, []);

end;

procedure TfmD_JOB.dbg12KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Key = 38) or (Key = 40)) then //((Key = VK_DOWN) or (Key = VK_UP)) then
    if (qLoad_P.Active) and (not qLoad_P.IsEmpty) then
      qLoad_P.Locate('ID_P', qPlan_PID_P.AsInteger, []);

end;

procedure TfmD_JOB.dbg12MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (qLoad_P.Active) and (not qLoad_P.IsEmpty) then
    qLoad_P.Locate('ID_P', qPlan_PID_P.AsInteger, []);

end;

procedure TfmD_JOB.dbg12RemUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if dsPlan_P.State in [dsEdit, dsInsert] then
    qPlan_P.Post;
  if dmIs.mT.InTransaction then
    dmIs.mT.CommitRetaining;
  qPlan_P.Edit;
  dbg_ObjSortMarkingChanged(dbg_Obj);

end;

procedure TfmD_JOB.dbg17REMUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if dsPlan_P_Stop.State in [dsEdit, dsInsert] then
    qPlan_P_Stop.Post;
  if dmIs.mT.InTransaction then
    dmIs.mT.CommitRetaining;
  qPlan_P_Stop.Edit;
  dbg_Obj1SortMarkingChanged(dbg_Obj1);

end;

procedure TfmD_JOB.qDetBeforeOpen(DataSet: TDataSet);
begin
  qDet.Close;
  qDet.SQL.Clear;
  qDet.SQL.Add(qDet_Txt);
  qDet.SQL.Add(OrdBy(dbg_Obj));

  qDet.ParamByName('id_area').AsInteger := fmMain.C_PA;
  qDet.ParamByName('d1').AsDate := dtp1.Date;
  qDet.ParamByName('d2').AsDate := dtp1.Date + 1;
  qDet.ParamByName('id_p').AsInteger := qLoad_PID_P.AsInteger;

end;

procedure TfmD_JOB.qLoad_PBeforeOpen(DataSet: TDataSet);
begin
  with qLoad_P, qLoad_P.SQL do
  begin
    Close;
    Clear;
    Add('select distinct g.id_p_area, g.ID_TEAM ,g.ID_P,g.ID_POST,g.NAME ,g.LOAD_TIME,g.WORK_TIME,g.NAME_POST');
    Add(' from GET_PA_DAY_LOAD_P(:id_area,:d_work,:kop) g');
    case cbFio.State of
      cbChecked:
        begin
          cbFio.Caption := '���������';
          Add(' join oper_posts o on o.id_post = g.id_post and o.id_area = :id_area');
          Add(' and o.id_operation = :id_operation');
          ParamByName('id_operation').AsInteger :=
            dmIS.qD_JOBID_OPERATION.AsInteger;
        end;
      cbUnchecked: cbFio.Caption := '������ ������';
    end;
    if pcAll.ActivePage = tsWork then
      Add(OrdBy(dbg14));
    if pcAll.ActivePage = tsStop then
      Add(OrdBy(dbg18));
    // ShowMessage(text);
    ParamByName('id_area').AsInteger := fmMain.C_PA;
    ParamByName('d_work').AsDate := fmD_JOB.dtp1.Date;
    ParamByName('kop').AsInteger := 1; //Kdistr;
    // ParamByName('id_prod_plan').AsInteger := dmIS.qD_JOBID_PROD_PLAN.AsInteger;
    // if Active = False then  Open;
  end;
end;

procedure TfmD_JOB.dbg_Obj1SortMarkingChanged(Sender: TObject);
begin
  qDet.Close;
  qDet.Open;

end;

procedure TfmD_JOB.qPlan_P_StopAfterOpen(DataSet: TDataSet);
begin
  if (qLoad_P.Active) and (not qLoad_P.IsEmpty) then
    qLoad_P.Locate('ID_P', qPlan_P_StopID_P.AsInteger, []);

end;

procedure TfmD_JOB.dbg18SortMarkingChanged(Sender: TObject);
begin
  qLoad_P.Close;
  qLoad_P.Open;
end;

procedure TfmD_JOB.edKolKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = '.') or (Key = ',') then
    Key := DecimalSeparator;

end;

procedure TfmD_JOB.dbg1Columns44EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if not fmMain.UF39 then
    exit;
  if not Assigned(fmEqp) then
    Application.CreateForm(TfmEqp, fmEqp);
  fmEqp.kop := 1;
  fmEqp.ShowModal;
end;

procedure TfmD_JOB.sbRfrPPlanClick(Sender: TObject);
begin
  InitPPLanCntrls(0);
  OpenPlanP;
end;

procedure TfmD_JOB.sbMovePlanClick(Sender: TObject);
var i: integer;
begin
  if dmIS.mT.InTransaction then
    dmIS.mT.CommitRetaining;

  if (dbgPPlan.SelectedRows.Count = 0) then
    WriteDJob(qPPlanID_WC_OWR.AsInteger);
  if (dbgPPlan.SelectedRows.Count > 0) then
    for i := 0 to dbg11.SelectedRows.Count - 1 do
    begin
      qPPlan.GotoBookmark(pointer(dbgPPlan.SelectedRows.Items[i]));
      WriteDJob(qPPlanID_WC_OWR.AsInteger);
    end;

end;

procedure TfmD_JOB.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if  fmd_job.dbg17.FieldColumns['P_TIME'].Color = clSkyBlue 

   then
     begin
        showmessage('���������� ��������� ��� ������');
        canclose:=false;
        exit;

     end;

end;

end.

