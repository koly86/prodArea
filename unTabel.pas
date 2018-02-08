unit unTabel;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, ExtCtrls, ToolWin, ComCtrls, StdCtrls, Grids, IBQuery, DB,
  DBCtrls, DBGridEh, Mask, DBCtrlsEh, DBLookupEh, unMainForm,
  IBCustomDataSet, frxClass, frxDBSet, frxCross, Menus, CheckLst, Buttons,
  frxExportPDF, //cxGridCustomPopupMenu, cxGridPopupMenu,
  frxExportXLS, TeEngine, Series, GanttCh, TeeProcs, Chart, DbChart,
  IBUpdateSQL, ComObj, ActiveX;

type
  TfmTABEL = class(TMainForm)
    stb1: TStatusBar;
    tlb1: TToolBar;
    ed1: TEdit;
    cb1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ud1: TUpDown;
    chb1: TCheckBox;
    ed2: TEdit;
    lcb1: TDBLookupComboboxEh;
    DBText1: TDBText;
    Label3: TLabel;
    clb1: TCoolBar;
    tlb2: TToolBar;
    tb1: TToolButton;
    tb2: TToolButton;
    Label4: TLabel;
    dtp1: TDateTimePicker;
    qSum_T: TIBQuery;
    dsSum_Y: TDataSource;
    qSum_TSUM: TIBBCDField;
    dt1: TDateTimePicker;
    tbPrint1: TToolButton;
    frxTab: TfrxDBDataset;
    frxCrossObject1: TfrxCrossObject;
    qTab: TIBQuery;
    frxReport1: TfrxReport;
    qRep_Tab: TIBQuery;
    qRep_TabID_TAB: TIntegerField;
    qRep_TabID_P_AREA: TIntegerField;
    qRep_TabID_YEAR: TSmallintField;
    qRep_TabID_MONTH: TSmallintField;
    qRep_TabTAB_DAY: TDateField;
    qRep_TabNOM_DAY: TSmallintField;
    qRep_TabID_P: TIntegerField;
    qRep_TabID_TAB_COEFF: TIntegerField;
    qRep_TabCOEFF: TFloatField;
    qRep_TabVAL: TFloatField;
    qRep_TabSHORTNAME_COEFF: TIBStringField;
    qRep_TabFIO: TIBStringField;
    qRep_TabNAME: TIBStringField;
    qRep_TabD1: TFloatField;
    qRep_TabD2: TFloatField;
    qRep_TabD3: TFloatField;
    qRep_TabD4: TFloatField;
    qRep_TabD5: TFloatField;
    qRep_TabD6: TFloatField;
    qRep_TabD7: TFloatField;
    qRep_TabD8: TFloatField;
    qRep_TabD9: TFloatField;
    qRep_TabD10: TFloatField;
    qRep_TabD11: TFloatField;
    qRep_TabD12: TFloatField;
    qRep_TabD13: TFloatField;
    qRep_TabD14: TFloatField;
    qRep_TabD15: TFloatField;
    qRep_TabD16: TFloatField;
    qRep_TabD17: TFloatField;
    qRep_TabD18: TFloatField;
    qRep_TabD19: TFloatField;
    qRep_TabD20: TFloatField;
    qRep_TabD21: TFloatField;
    qRep_TabD22: TFloatField;
    qRep_TabD23: TFloatField;
    qRep_TabD24: TFloatField;
    qRep_TabD25: TFloatField;
    qRep_TabD26: TFloatField;
    qRep_TabD27: TFloatField;
    qRep_TabD28: TFloatField;
    qRep_TabD29: TFloatField;
    qRep_TabD30: TFloatField;
    qRep_TabD31: TFloatField;
    frxRep_Tab: TfrxDBDataset;
    qRep_TabTOTAL: TFloatField;
    frxReport2: TfrxReport;
    qRep_TabTOTAL_ALL: TFloatField;
    qRep_TabNAME_AREA: TIBStringField;
    frxRepTab1: TfrxReport;
    lbNomTab: TLabel;
    pm: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    frxTab_Coeff: TfrxDBDataset;
    qTab_Coeff: TIBQuery;
    pnRep: TPanel;
    clb: TCheckListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    frxRep_Tab_Coeff: TfrxReport;
    qRep_Sors: TIBQuery;
    qRep_SorsFIO: TIBStringField;
    qRep_SorsTOTAL_R: TFloatField;
    qRep_SorsTOTAL_F: TFloatField;
    qRep_SorsD1: TFloatField;
    qRep_SorsD2: TFloatField;
    qRep_SorsD3: TFloatField;
    qRep_SorsD4: TFloatField;
    qRep_SorsD5: TFloatField;
    qRep_SorsD6: TFloatField;
    qRep_SorsD7: TFloatField;
    qRep_SorsD8: TFloatField;
    qRep_SorsD9: TFloatField;
    qRep_SorsD10: TFloatField;
    qRep_SorsD11: TFloatField;
    qRep_SorsD12: TFloatField;
    qRep_SorsD13: TFloatField;
    qRep_SorsD14: TFloatField;
    qRep_SorsD15: TFloatField;
    qRep_SorsD16: TFloatField;
    qRep_SorsD17: TFloatField;
    qRep_SorsD18: TFloatField;
    qRep_SorsD19: TFloatField;
    qRep_SorsD20: TFloatField;
    qRep_SorsD21: TFloatField;
    qRep_SorsD22: TFloatField;
    qRep_SorsD23: TFloatField;
    qRep_SorsD24: TFloatField;
    qRep_SorsD25: TFloatField;
    qRep_SorsD26: TFloatField;
    qRep_SorsD27: TFloatField;
    qRep_SorsD28: TFloatField;
    qRep_SorsD29: TFloatField;
    qRep_SorsD30: TFloatField;
    qRep_SorsD31: TFloatField;
    frxRep_Sors: TfrxDBDataset;
    dsRep_Sors: TDataSource;
    frxReport3: TfrxReport;
    frxRepTab: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    qRep_Sors_CF: TIBQuery;
    qRep_Sors_CFFIO: TIBStringField;
    qRep_Sors_CFTOTAL_R: TFloatField;
    qRep_Sors_CFTOTAL_F: TFloatField;
    qRep_Sors_CFD1: TFloatField;
    qRep_Sors_CFD2: TFloatField;
    qRep_Sors_CFD3: TFloatField;
    qRep_Sors_CFD4: TFloatField;
    qRep_Sors_CFD5: TFloatField;
    qRep_Sors_CFD6: TFloatField;
    qRep_Sors_CFD7: TFloatField;
    qRep_Sors_CFD8: TFloatField;
    qRep_Sors_CFD9: TFloatField;
    qRep_Sors_CFD10: TFloatField;
    qRep_Sors_CFD11: TFloatField;
    qRep_Sors_CFD12: TFloatField;
    qRep_Sors_CFD13: TFloatField;
    qRep_Sors_CFD14: TFloatField;
    qRep_Sors_CFD15: TFloatField;
    qRep_Sors_CFD16: TFloatField;
    qRep_Sors_CFD17: TFloatField;
    qRep_Sors_CFD18: TFloatField;
    qRep_Sors_CFD19: TFloatField;
    qRep_Sors_CFD20: TFloatField;
    qRep_Sors_CFD21: TFloatField;
    qRep_Sors_CFD22: TFloatField;
    qRep_Sors_CFD23: TFloatField;
    qRep_Sors_CFD24: TFloatField;
    qRep_Sors_CFD25: TFloatField;
    qRep_Sors_CFD26: TFloatField;
    qRep_Sors_CFD27: TFloatField;
    qRep_Sors_CFD28: TFloatField;
    qRep_Sors_CFD29: TFloatField;
    qRep_Sors_CFD30: TFloatField;
    qRep_Sors_CFD31: TFloatField;
    frxRep_Sors_CF: TfrxDBDataset;
    pc: TPageControl;
    tsTab: TTabSheet;
    p1: TPanel;
    sg1: TStringGrid;
    Splitter1: TSplitter;
    dsDet: TDataSource;
    cbObj: TCheckBox;
    qDet: TIBQuery;
    qDetDEC_NO: TIBStringField;
    qDetNM: TIBStringField;
    qDetNAME_ORD: TIBStringField;
    qDetN_ORDER: TIBStringField;
    qDetSTEP: TIntegerField;
    qDetNAME_OPER: TIBStringField;
    qDetNAME_POST: TIBStringField;
    qDetFIO: TIBStringField;
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
    Panel1: TPanel;
    SpeedButton20: TSpeedButton;
    tsTab_List: TTabSheet;
    qTab_List: TIBQuery;
    qTab_ListFIO: TIBStringField;
    qTab_ListKF: TIBStringField;
    qTab_ListTOTAL: TFloatField;
    qTab_ListD1: TFloatField;
    qTab_ListD2: TFloatField;
    qTab_ListD3: TFloatField;
    qTab_ListD4: TFloatField;
    qTab_ListD5: TFloatField;
    qTab_ListD6: TFloatField;
    qTab_ListD7: TFloatField;
    qTab_ListD8: TFloatField;
    qTab_ListD9: TFloatField;
    qTab_ListD10: TFloatField;
    qTab_ListD11: TFloatField;
    qTab_ListD12: TFloatField;
    qTab_ListD13: TFloatField;
    qTab_ListD14: TFloatField;
    qTab_ListD15: TFloatField;
    qTab_ListD16: TFloatField;
    qTab_ListD17: TFloatField;
    qTab_ListD18: TFloatField;
    qTab_ListD19: TFloatField;
    qTab_ListD20: TFloatField;
    qTab_ListD21: TFloatField;
    qTab_ListD22: TFloatField;
    qTab_ListD23: TFloatField;
    qTab_ListD24: TFloatField;
    qTab_ListD25: TFloatField;
    qTab_ListD26: TFloatField;
    qTab_ListD27: TFloatField;
    qTab_ListD28: TFloatField;
    qTab_ListD29: TFloatField;
    qTab_ListD30: TFloatField;
    qTab_ListD31: TFloatField;
    dsTab_List: TDataSource;
    tbExcel: TToolButton;
    qDetNAME_SHIFT: TIBStringField;
    qDetID_EQUIPMENT: TIntegerField;
    ts_Sum_Tab_List: TTabSheet;
    qSum_Tab_List: TIBQuery;
    qSum_Tab_ListNAME_AREA: TIBStringField;
    qSum_Tab_ListID_P_AREA: TIntegerField;
    qSum_Tab_ListNOM: TIntegerField;
    qSum_Tab_ListFIO: TIBStringField;
    dsSum_Tab_List: TDataSource;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    qIns: TIBQuery;
    tsGraf: TTabSheet;
    pcGraf: TPageControl;
    tsGraf_Fio: TTabSheet;
    tsGraf_Det: TTabSheet;
    ts_FIO_Pers: TTabSheet;
    qRep_Plan_Day: TIBQuery;
    qRep_Plan_DayFIO: TIBStringField;
    qRep_Plan_DayDIN: TDateTimeField;
    qRep_Plan_DayDTO: TDateTimeField;
    qRep_Plan_DayNM: TIBStringField;
    qRep_Plan_DayNAME_ORD: TIBStringField;
    qRep_Plan_DayN_ORDER: TIBStringField;
    qRep_Plan_DaySTEP: TIntegerField;
    qRep_Plan_DayNAME_OPER: TIBStringField;
    qRep_Plan_DayNAME_POST: TIBStringField;
    qRep_Plan_DayID_EQUIPMENT: TIntegerField;
    qRep_Plan_DaySHOTNAME: TIBStringField;
    qRep_Plan_DayID_PROD_PLAN_P: TIntegerField;
    qRep_Plan_DayID_P: TIntegerField;
    qRep_Plan_DayAMOUNT_P: TFloatField;
    qRep_Plan_DayREM_P: TBlobField;
    qRep_Plan_DayF_AMOUNT: TFloatField;
    qRep_Plan_DayD_OUT: TDateField;
    qRep_Plan_DayF_TIME_P: TFloatField;
    qRep_Plan_DayDTO_: TDateTimeField;
    qRep_Plan_DayTM_: TFloatField;
    qRep_Plan_DayTM: TFloatField;
    qRep_Plan_DayF_TIME: TFloatField;
    qRep_Plan_DayP_TIME_P: TFloatField;
    qRep_Plan_DayID_VERSION: TIntegerField;
    qRep_Plan_DayID_PROJECT: TIntegerField;
    qRep_Plan_DayID_ORDER: TIntegerField;
    qRep_Plan_DayID_OBJECT: TIntegerField;
    qRep_Plan_DayID_PROD_OPER: TIntegerField;
    qRep_Plan_DayOBJ_TYPE: TIntegerField;
    qRep_Plan_DayID_OPERATION: TIntegerField;
    qRep_Plan_DayID_PROD_PLAN: TIntegerField;
    qRep_Plan_DayNAME_SHIFT: TIBStringField;
    qRep_Plan_Dayid_nom: TIntegerField;
    qRep_Plan_Daynom_det: TIntegerField;
    frxXLSExport1: TfrxXLSExport;
    Panel3: TPanel;
    Splitter2: TSplitter;
    dbg15: TDBGridEh;
    dsRep_Plan_Day: TDataSource;
    qRepDay_Det: TIBQuery;
    qRepDay_DetID_OBJECT: TIntegerField;
    qRepDay_Detnom: TIntegerField;
    qRepDay_Pers: TIBQuery;
    qRepDay_PersFIO: TIBStringField;
    qRepDay_PersID_P: TIntegerField;
    qRepDay_Persnom: TIntegerField;
    DBChart1: TDBChart;
    Series1: TGanttSeries;
    DBChart2: TDBChart;
    Series2: TGanttSeries;
    qFio_Det: TIBQuery;
    qFio_DetFIO: TIBStringField;
    qFio_DetDIN: TDateTimeField;
    qFio_DetDTO: TDateTimeField;
    qFio_DetNM: TIBStringField;
    qFio_DetF_TIME_P: TFloatField;
    qFio_DetID_OBJECT: TIntegerField;
    qFio_Detnom_det: TIntegerField;
    DBChart3: TDBChart;
    GanttSeries1: TGanttSeries;
    qFio_Det_Nom: TIBQuery;
    qFio_Det_NomID_OBJECT: TIntegerField;
    qFio_Det_Nomnom: TIntegerField;
    dsFio_Det: TDataSource;
    dbg16: TDBGridEh;
    Splitter3: TSplitter;
    qPers: TIBQuery;
    dsPers: TDataSource;
    qPersFIO: TIBStringField;
    qPersNAME: TIBStringField;
    qPersID_P: TIntegerField;
    qPersIS_WORKER: TIntegerField;
    dsRepDay_Pers: TDataSource;
    ts_Order: TTabSheet;
    qRepDay_Order: TIBQuery;
    qRepDay_OrderPL: TIBStringField;
    qRepDay_OrderFIO: TIBStringField;
    qRepDay_OrderD_OUT: TDateField;
    qRepDay_OrderNAME_ORD: TIBStringField;
    qRepDay_OrderN_ORDER: TIBStringField;
    qRepDay_OrderID_ORDER: TIntegerField;
    qRepDay_OrderID_P: TIntegerField;
    qRepDay_OrderF_TIME: TFloatField;
    dbg17: TDBGridEh;
    Panel4: TPanel;
    dsRepDay_Order: TDataSource;
    Splitter4: TSplitter;
    qRep_Order: TIBQuery;
    qRep_OrderPL: TIBStringField;
    qRep_OrderFIO: TIBStringField;
    qRep_OrderNAME_ORD: TIBStringField;
    qRep_OrderN_ORDER: TIBStringField;
    qRep_OrderID_ORDER: TIntegerField;
    qRep_OrderID_P: TIntegerField;
    qRep_OrderF_TIME: TFloatField;
    dsRep_Order: TDataSource;
    dbg18: TDBGridEh;
    SpeedButton3: TSpeedButton;
    tsOrd: TTabSheet;
    qRep_Ord: TIBQuery;
    qRep_OrdDT: TIBStringField;
    qRep_OrdNAME_ORD: TIBStringField;
    qRep_OrdN_ORDER: TIBStringField;
    qRep_OrdID_ORDER: TIntegerField;
    Panel5: TPanel;
    SpeedButton4: TSpeedButton;
    dsRep_Ord: TDataSource;
    qOrder: TIBQuery;
    qOrderID_ORDER: TIntegerField;
    qOrdernom: TIntegerField;
    qRep_Ordid_nom: TIntegerField;
    qRep_OrdF_TIME1: TFloatField;
    qRep_OrdF_TIME2: TFloatField;
    qRep_OrdF_TIME3: TFloatField;
    qRep_OrdNAME_PTYPE: TIBStringField;
    qRepDay_OrderNAME_PTYPE: TIBStringField;
    qRep_OrderNAME_PTYPE: TIBStringField;
    qRep_Plan_DayNAME_PTYPE: TIBStringField;
    pcTabel: TPageControl;
    tsSum_Tabel: TTabSheet;
    tsSum_Order: TTabSheet;
    dbg3: TDBGridEh;
    qRep_Order_Sum: TIBQuery;
    dsRep_Order_Sum: TDataSource;
    qRep_Order_SumFIO: TIBStringField;
    qRep_Order_SumNAME_ORD: TIBStringField;
    qRep_Order_SumN_ORDER: TIBStringField;
    qRep_Order_SumNAME_PTYPE: TIBStringField;
    qRep_Order_SumID_ORDER: TIntegerField;
    qRep_Order_SumID_P: TIntegerField;
    qRep_Order_SumF_TIME: TFloatField;
    dbg19: TDBGridEh;
    GroupBox1: TGroupBox;
    Splitter6: TSplitter;
    Label5: TLabel;
    lcbNorm: TDBLookupComboboxEh;
    qWork_Norm: TIBQuery;
    qWork_NormID_NORM: TIntegerField;
    qWork_NormWORK_SHIFT: TSmallintField;
    qWork_NormC_YEAR: TIntegerField;
    qWork_NormC_MONTH: TIntegerField;
    qWork_NormHOURS: TFloatField;
    qWork_NormNAME: TIBStringField;
    dsWork_Norm: TDataSource;
    dbtNorm: TDBText;
    qWork_Normdate: TStringField;
    qWork_NormBEGIN_DAYS: TSmallintField;
    qWork_NormnomDate: TStringField;
    GroupBox2: TGroupBox;
    Splitter7: TSplitter;
    dbg_Norm: TDBGridEh;
    qTab_Norm: TIBQuery;
    qTab_NormID_TAB_NORM: TIntegerField;
    qTab_NormID_TAB: TIntegerField;
    qTab_NormID_P: TIntegerField;
    qTab_NormID_NORM: TIntegerField;
    qTab_NormC_DATE: TDateField;
    dsTab_Norm: TDataSource;
    qTab_NormHOURS: TFloatField;
    qTab_NormNAME: TIBStringField;
    qT_Norm: TIBQuery;
    qT_NormHOURS: TIntegerField;
    UpTab_Norm: TIBUpdateSQL;
    GroupBox3: TGroupBox;
    dbg_Obj: TDBGridEh;
    qTab_Pos: TIBQuery;
    qTab_PosTAB_DAY: TDateField;
    qTab_PosVAL: TIBBCDField;
    qTab_PosNAME: TIBStringField;
    qTab_PosSHORTNAME: TIBStringField;
    qTab_PosCOMMENT: TIBStringField;
    qTab_PosID_P: TIntegerField;
    qTab_PosD_FIX: TDateTimeField;
    GroupBox4: TGroupBox;
    Splitter8: TSplitter;
    dsTab_Pos: TDataSource;
    dbg_Tab: TDBGridEh;
    qTab_Ext: TIBQuery;
    dsTab_Ext: TDataSource;
    qExt: TIBQuery;
    dsExt: TDataSource;
    qExtID_TYPEEXRAFEE: TIntegerField;
    qExtNAME: TIBStringField;
    qExtID_C: TIntegerField;
    qTab_ExtnID_TEPEEXT: TStringField;
    qTab_ExtID_TAB_EXRAFEE: TIntegerField;
    qTab_ExtID_TAB: TIntegerField;
    qTab_ExtID_P: TIntegerField;
    qTab_ExtC_DATE: TDateField;
    qTab_ExtTATAL_SUM: TFloatField;
    qTab_ExtID_ORDER: TIntegerField;
    qTab_ExtREM: TBlobField;
    qTab_ExtID_TYPEEXRAFEE: TIntegerField;
    dbg_Ext: TDBGridEh;
    qTab_ExtID_CURRENCY: TIntegerField;
    qTab_ExtNAME: TIBStringField;
    qTab_ExtN_ORDER: TIBStringField;
    qTab_ExtnID_CUR: TStringField;
    UpTab_Ext: TIBUpdateSQL;
    cbExt: TCheckBox;
    lcbPost: TDBLookupComboboxEh;
    qPost: TIBQuery;
    qPostIDPOST: TIntegerField;
    qPostNAME: TIBStringField;
    dsPost: TDataSource;
    qTab_ListNM: TIBStringField;
    qWork: TIBQuery;
    lcbWork: TDBLookupComboboxEh;
    qWorkWORK_SHIFT: TSmallintField;
    qWorkNAME: TIBStringField;
    dsTab_Work: TDataSource;
    Panel6: TPanel;
    DBNavigator1: TDBNavigator;
    sbOrder: TSpeedButton;
    lcbContr: TDBLookupComboboxEh;
    SpeedButton5: TSpeedButton;
    qSum_Tab_ListTOTAL: TFloatField;
    qSum_Tab_ListTOTAL1: TFloatField;
    qSum_Tab_ListTOTAL2: TFloatField;
    qSum_Tab_ListTOTAL3: TFloatField;
    qSum_Tab_ListTOTAL4: TFloatField;
    qSum_Tab_ListTOTAL5: TFloatField;
    qSum_Tab_ListTOTAL6: TFloatField;
    qSum_Tab_ListTOTAL7: TFloatField;
    qSum_Tab_ListTOTAL8: TFloatField;
    qSum_Tab_ListTOTAL9: TFloatField;
    qSum_Tab_ListTOTAL10: TFloatField;
    qSum_Tab_ListTOTAL11: TFloatField;
    qSum_Tab_ListTOTAL12: TFloatField;
    pcGraf_Order: TPageControl;
    tsOrd_tp: TTabSheet;
    tsOrd_Sum: TTabSheet;
    dbg20: TDBGridEh;
    DBChart4: TDBChart;
    Series4: TBarSeries;
    Series3: TBarSeries;
    Series5: TBarSeries;
    Splitter5: TSplitter;
    qRep_Ord_Sum: TIBQuery;
    qRep_Ord_SumN_ORDER: TIBStringField;
    qRep_Ord_SumNAME_ORD: TIBStringField;
    qRep_Ord_SumID_ORDER: TIntegerField;
    qRep_Ord_SumNAME_PTYPE: TIBStringField;
    qRep_Ord_SumSF1: TFloatField;
    qRep_Ord_SumSF2: TFloatField;
    dsRep_Ord_Sum: TDataSource;
    dbg21: TDBGridEh;
    qRep_Ord_SumnSF1_SF2: TFloatField;
    qRep_Ord_SumID_ESTIMATE: TIntegerField;
    qRep_Ord_SumID_ESTIMATE_KD: TIntegerField;
    qRep_Ord_SumTOTAL_OPER_PEO: TFloatField;
    qRep_Ord_SumTOTAL_OPER_KD: TFloatField;
    qRep_Ord_SumSF3: TFloatField;
    qRep_Ord_SumSF4: TFloatField;
    qRep_Ord_SumPR: TFloatField;
    qRep_Ord_SumSF3_: TFloatField;
    qRep_Ord_SumSF4_: TFloatField;
    qRep_Ord_SumPR_: TFloatField;
    IBQuery1: TIBQuery;
    pcTab: TPageControl;
    ts_Tabel: TTabSheet;
    ts_Fact: TTabSheet;
    dbg2: TDBGridEh;
    qTab_ListTP: TIntegerField;
    Panel8: TPanel;
    rg_TP: TRadioGroup;
    SpeedButton6: TSpeedButton;
    qTab_ListF: TIntegerField;
    qTab_ListID_P: TIntegerField;
    cbSum: TCheckBox;
    mmTab_List_Sum: TMemo;
    Panel7: TPanel;
    SpeedButton7: TSpeedButton;
    rg_TP_P: TRadioGroup;
    cbSum_P: TCheckBox;
    qTab_List_Plan: TIBQuery;
    dbg4: TDBGridEh;
    dsTab_List_Plan: TDataSource;
    qTab_List_PlanTP: TIntegerField;
    qTab_List_PlanID_P: TIntegerField;
    qTab_List_PlanFIO: TIBStringField;
    qTab_List_PlanTOTAL_F: TFloatField;
    qTab_List_PlanD1: TFloatField;
    qTab_List_PlanD2: TFloatField;
    qTab_List_PlanD3: TFloatField;
    qTab_List_PlanD4: TFloatField;
    qTab_List_PlanD5: TFloatField;
    qTab_List_PlanD6: TFloatField;
    qTab_List_PlanD7: TFloatField;
    qTab_List_PlanD8: TFloatField;
    qTab_List_PlanD9: TFloatField;
    qTab_List_PlanD10: TFloatField;
    qTab_List_PlanD11: TFloatField;
    qTab_List_PlanD12: TFloatField;
    qTab_List_PlanD13: TFloatField;
    qTab_List_PlanD14: TFloatField;
    qTab_List_PlanD15: TFloatField;
    qTab_List_PlanD16: TFloatField;
    qTab_List_PlanD17: TFloatField;
    qTab_List_PlanD18: TFloatField;
    qTab_List_PlanD19: TFloatField;
    qTab_List_PlanD20: TFloatField;
    qTab_List_PlanD21: TFloatField;
    qTab_List_PlanD22: TFloatField;
    qTab_List_PlanD23: TFloatField;
    qTab_List_PlanD24: TFloatField;
    qTab_List_PlanD25: TFloatField;
    qTab_List_PlanD26: TFloatField;
    qTab_List_PlanD27: TFloatField;
    qTab_List_PlanD28: TFloatField;
    qTab_List_PlanD29: TFloatField;
    qTab_List_PlanD30: TFloatField;
    qTab_List_PlanD31: TFloatField;
    tsTabPers: TTabSheet;
    dbgTabPers: TDBGridEh;
    qDay_TabList: TIBQuery;
    qDay_TabListNAME_AREA: TIBStringField;
    qDay_TabListID_P_AREA: TIntegerField;
    qDay_TabListNOM: TIntegerField;
    qDay_TabListFIO: TIBStringField;
    qDay_TabListTOTAL: TFloatField;
    dsDay_TabList: TDataSource;
    qDay_TabListD1: TFloatField;
    qDay_TabListD2: TFloatField;
    qDay_TabListD3: TFloatField;
    qDay_TabListD4: TFloatField;
    qDay_TabListD5: TFloatField;
    qDay_TabListD6: TFloatField;
    qDay_TabListD7: TFloatField;
    qDay_TabListD8: TFloatField;
    qDay_TabListD9: TFloatField;
    qDay_TabListD10: TFloatField;
    qDay_TabListD11: TFloatField;
    qDay_TabListD12: TFloatField;
    qDay_TabListD13: TFloatField;
    qDay_TabListD14: TFloatField;
    qDay_TabListD15: TFloatField;
    qDay_TabListD16: TFloatField;
    qDay_TabListD17: TFloatField;
    qDay_TabListD18: TFloatField;
    qDay_TabListD19: TFloatField;
    qDay_TabListD20: TFloatField;
    qDay_TabListD21: TFloatField;
    qDay_TabListD22: TFloatField;
    qDay_TabListD23: TFloatField;
    qDay_TabListD24: TFloatField;
    qDay_TabListD25: TFloatField;
    qDay_TabListD26: TFloatField;
    qDay_TabListD27: TFloatField;
    qDay_TabListD28: TFloatField;
    qDay_TabListD29: TFloatField;
    qDay_TabListD30: TFloatField;
    qDay_TabListD31: TFloatField;
    qDay_TabListID_P: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cb1CloseUp(Sender: TObject);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure sg1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sg1SetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sg1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sg1DblClick(Sender: TObject);
    procedure sg1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tb2Click(Sender: TObject);
    procedure tb1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ed2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dt1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbg_ObjSortMarkingChanged(Sender: TObject);
    procedure cbObjClick(Sender: TObject);
    procedure pcChange(Sender: TObject);
    procedure dbg2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure tbExcelClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbg3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure qRepDay_DetCalcFields(DataSet: TDataSet);
    procedure qRepDay_PersCalcFields(DataSet: TDataSet);
    procedure qFio_Det_NomCalcFields(DataSet: TDataSet);
    procedure qPersAfterScroll(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure pcGrafChange(Sender: TObject);
    procedure qOrderCalcFields(DataSet: TDataSet);
    procedure qWork_NormCalcFields(DataSet: TDataSet);
    procedure qTab_NormBeforeOpen(DataSet: TDataSet);
    procedure qTab_PosBeforeOpen(DataSet: TDataSet);
    procedure qTab_ExtBeforeOpen(DataSet: TDataSet);
    procedure cbExtClick(Sender: TObject);
    procedure dbg_ExtSortMarkingChanged(Sender: TObject);
    procedure qTab_ExtNewRecord(DataSet: TDataSet);
    procedure dbg_ExtColumns4UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbg_ExtColumns4EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure lcbPostCloseUp(Sender: TObject; Accept: Boolean);
    procedure qTab_NormAfterDelete(DataSet: TDataSet);
    procedure lcbWorkCloseUp(Sender: TObject; Accept: Boolean);
    procedure lcbContrCloseUp(Sender: TObject; Accept: Boolean);
    procedure sbOrderClick(Sender: TObject);
    procedure qTab_ExtAfterPost(DataSet: TDataSet);
    procedure qTab_ExtPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qTab_ExtBeforePost(DataSet: TDataSet);
    procedure SpeedButton5Click(Sender: TObject);
    procedure qRep_Ord_SumCalcFields(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
    procedure qTab_ListBeforeOpen(DataSet: TDataSet);
    procedure qTab_List_PlanBeforeOpen(DataSet: TDataSet);
    procedure SpeedButton7Click(Sender: TObject);
    procedure dbgTabPersGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure SpeedButton20Click(Sender: TObject);
    procedure ed2KeyPress(Sender: TObject; var Key: Char);
  private
    Y, M, D: word;
    Fix, Mdf: Boolean;
    DEF_VAL, qDet_Text, qTabList: string;
    D_END, d_in, d_out: TDate;
    TN: Integer;
    procedure Refreshed;
    procedure IniGreed;
    procedure Tab_Plan_Day_FIO;
    { Private declarations }
  public
    C_TAB: integer;
    D1, D2: TDate;
    { Public declarations }
  end;

var
  fmTABEL: TfmTABEL;
  MyExcel: OleVariant; //Определяет установлен ли на ПК Exel

const
  ExcelApp = 'Excel.Application.12'; // Установлен ли Exel на компьютер пользователя
   //проверка
  function CaheckExcelInstall:boolean; //Установка ли Exel
  function CheckExcelRun: boolean;     //Запущен ли Exel

implementation
uses unMain, unIS, unTAB_S, UnListTZ, DateUtils;

const
  id_Form = 17;
 
{$R *.dfm}

procedure TfmTABEL.Refreshed;
var
  GR: TGridRect;
  //  ARow, ACol: Integer;
begin
  Screen.Cursor := crHourGlass;
  IniGreed;
  GR := sg1.Selection;
  if sg1.RowCount > 1 then
  begin
    sg1.Row := 1;
    sg1.Col := 1;
    TN := StrToInt(sg1.Cells[1, 1])
  end
  else
    TN := 0;
  qTab_Norm.Close;
  qTab_Norm.Open;
  qTab_Pos.Close;
  qTab_Pos.Open;
  fmTABEL.cbExtClick(fmTABEL.cbExt);
  fmTABEL.cbObjClick(fmTABEL.cbObj);
  Screen.Cursor := crDefault;
end;

// Проверка, установлен ли Exel на ПК пользователя
{function CaheckExelInstall:boolean;
var
  ClassID:TCLSID;
  ReZ:HRESULT;
begin
  ReZ := CLSIDFromProgID(PWideChar(WideString(ExelApp)), ClassID);
  if ReZ = S_OK then
    Result := true
  else
    Result := false;
end;      }

procedure TfmTABEL.Tab_Plan_Day_FIO;
var
  s: string;
begin
  qRepDay_Pers.Close;
  qRepDay_Det.Close;
  qRep_Plan_Day.Close;
  qOrder.Close;
  qRep_Ord.Close;
  qRep_Ord_Sum.Close;
  //qFio_Det.Close;
  //сотрудники
  s := 'select distinct coalesce(per.fio,''' + 'Резерв' + ''') fio,' +
    ' coalesce(per.id_p,1) id_p' +
    ' from product_plans l' +
    ' join product_plans_p l1 on l1.id_prod_plan = l.id_prod_plan' +
    ' and l.d_out >= :d_in and l.d_out <= :d_out' +
    ' join product_traff f on  l.id_prod_traf = f.id_prod_traff and f.id_area = :id_area' +
    ' left join personnel per on l1.id_p = per.id_p' +
    '  union' +
    ' select distinct coalesce(per.fio,''' + 'Резерв' + ''') fio,' +
    'coalesce(per.id_p,1) id_p' +
    ' from product_plans_stop l' +
    ' join product_plans_p l1 on l1.id_prod_plan_stop = l.id_prod_plan_stop ' +
    ' and l.d_out >= :d_in and l.d_out <= :d_out and l.id_area = :id_area' +
    ' left join personnel per on l1.id_p = per.id_p';
  qRepDay_Pers.Close;
  qRepDay_Pers.SQL.Clear;
  qRepDay_Pers.SQL.Add(s);

  qRepDay_Pers.ParamByName('id_area').AsInteger := fmMain.C_PA;
  qRepDay_Pers.ParamByName('d_in').AsDate := d_in;
  qRepDay_Pers.ParamByName('d_out').AsDate := d_out;
  qRepDay_Pers.Open;
  if qRepDay_Pers.IsEmpty then
  begin
    // ShowMessage('Отчёт пустой...');
    Exit;
  end;
  //детали
  s := ' select distinct o.id_object ' +
    ' from product_objects o  join product_oper r on r.id_object = o.id_object' +
    ' join product_traff f on f.id_prod_oper = r.id_prod_oper and f.id_area = :id_area' +
    ' join product_plans l on l.d_out >= :d_in and l.d_out <= :d_out' +
    ' and  l.id_prod_traf = f.id_prod_traff' +
    ' join product_plans_p l1 on l1.id_prod_plan = l.id_prod_plan' +
    ' left join items i on i.id_item = o.id_item' +
    ' left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT' +
    //' left join personnel per on l1.id_p = per.id_p'+
  ' union ' +
    ' select distinct coalesce(l.id_dutytype,1) id_object' +
    ' from product_plans_stop l' +
    ' join product_plans_p l1 on  l.id_area = :id_area' +
    ' and l.d_out >= :d_in and l.d_out <= :d_out' +
    ' and l1.id_prod_plan_stop = l.id_prod_plan_stop' +
    ' left join dutytypes d on d.id_dutytype = l.id_dutytype' +
    ' left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT';
  // ' left join personnel per on l1.id_p = per.id_p';
  qRepDay_Det.Close;
  qRepDay_Det.SQL.Clear;
  qRepDay_Det.SQL.Add(s);
  qRepDay_Det.ParamByName('id_area').AsInteger := fmMain.C_PA;
  qRepDay_Det.ParamByName('d_in').AsDate := d_in;
  qRepDay_Det.ParamByName('d_out').AsDate := d_out;
  qRepDay_Det.Open;

  s := 'select coalesce(per.fio,''' + 'Резерв' +
    ''') fio,l1.din+l1.tin din , l1.dto+l1.tto dto,' +
    'coalesce(o.obj_name,i.name)||coalesce(o.dec_no,''' + '' + ''') nm,' +
    'p.name name_ord,pt.name name_ptype,p.n_order,r.step, s.name  name_oper, ps.name  name_post, l.id_equipment,' +
    'case when (e.id_equipment = 0 or e.id_equipment is null)  then ''' + '' +
    ''' else e.shotname end shotname,' +
    'l1.id_prod_plan_p,coalesce(l1.id_p,1) id_p,l1.amount ,l1.rem,l1.f_amount,l.d_out,l.f_time f_time_p,' +
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
    ' join product_plans l on l.d_out >= :d_in and l.d_out <= :d_out and l.amount > 0' +
    ' and l.id_prod_traf = f.id_prod_traff' +
    ' join product_plans_p l1 on l1.id_prod_plan = l.id_prod_plan' +
    ' left join items i on i.id_item = o.id_item' +
    ' left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT' +
    ' left join personnel per on l1.id_p = per.id_p' +
    ' left join post ps on per.idpost = ps.idpost' +
    ' left join shifts h on h.id_shift = l.id_shift' +
    ' left join ptypes pt on pt.id_ptype = p.id_cptype';
  s := s + ' union ' +
    ' select coalesce(per.fio,''' + 'Резерв' +
    ''') fio, coalesce(l1.din+l1.tin, cast(l.d_out as timestamp)) din ,' +
    'coalesce(l1.dto+l1.tto, cast(l.d_out as timestamp) +' +
    '( (floor(l.f_time) + (l.f_time - floor(l.f_time))) )/24) dto,' +
    'cast(coalesce(d.name,''' + 'Без типа' + ''') as varchar(160))  nm,' +
    'cast(coalesce(o.name,''' + 'Без типа' + ''') as varchar(64)) name_ord,' +
    'cast(coalesce(pt.name,''' + 'Без типа' + ''') as varchar(32)) name_ptype,'
    +
    'coalesce(o.n_order,cast(''' + 'Без заказа' + ''' as varchar(16))) n_order,'
    +
    // 'cast('''+'Без заказа'+''' as varchar(16)) n_order,'+
  'cast(0 as integer) step,cast(''' + '*' + ''' as varchar(30)) name_oper,' +
    'ps.name  name_post, l.id_equipment,' +
    'case when (l.id_equipment = 0 or l.id_equipment is null)  then ''' + '' +
    ''' else e.shotname end shotname,' +
    'l1.id_prod_plan_p,coalesce(l1.id_p,1) id_p,l1.amount ,' +
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
    ' join product_plans_p l1 on  l.id_area = :id_area ' +
    ' and l.d_out >= :d_in and l.d_out <= :d_out and l1.id_prod_plan_stop = l.id_prod_plan_stop' +
    ' left join dutytypes d on d.id_dutytype = l.id_dutytype' +
    ' left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT' +
    ' left join personnel per on l1.id_p = per.id_p' +
    ' left join post ps on per.idpost = ps.idpost' +
    ' left join shifts h on h.id_shift = l.id_shift' +
    ' left join project_ords o on o.id_order = l.id_order' +
    ' left join ptypes pt on pt.id_ptype = o.id_cptype';
  qRep_Plan_Day.Close;
  qRep_Plan_Day.SQL.Clear;
  qRep_Plan_Day.SQL.Add(s);
  qRep_Plan_Day.SQL.Add(OrdBy(dbg15));

  qRep_Plan_Day.ParamByName('id_area').AsInteger := fmMain.C_PA;
  qRep_Plan_Day.ParamByName('d_in').AsDate := d_in;
  qRep_Plan_Day.ParamByName('d_out').AsDate := d_out;
  //qRep_Plan_Day.AfterScroll := nil;
  qRep_Plan_Day.Open;
  {qRep_Plan_Day.First;
  qRep_Plan_Day.AfterScroll := qRep_Plan_DayAfterScroll;
  qRep_Plan_DayAfterScroll(qRep_Plan_Day);}
  //заказы
  with qOrder, qOrder.SQL do
  begin
    Close;
    ParamByName('id_area').AsInteger := fmMain.C_PA;
    ParamByName('d_in').AsDate := d_in;
    ParamByName('d_out').AsDate := d_out;
    Open;
  end;
  with qRep_Ord, qRep_Ord.SQL do
  begin
    Close;
    ParamByName('id_area').AsInteger := fmMain.C_PA;
    ParamByName('d_in').AsDate := d_in;
    ParamByName('d_out').AsDate := d_out;
    Open;
  end;
  with qRep_Ord_Sum, qRep_Ord_Sum.SQL do
  begin
    Close;
    ParamByName('id_area').AsInteger := fmMain.C_PA;
    ParamByName('d_in').AsDate := d_in;
    ParamByName('d_out').AsDate := d_out;
    Open;
  end;
  if qRep_Plan_Day.IsEmpty then
  begin
    ShowMessage('Отчёт пустой...');
    Exit;
  end;
end;

procedure TfmTABEL.IniGreed;
var
  i, k: integer;
begin
  Screen.Cursor := crHourGlass;
  //If Mdf Then bt1.Click;  //запись изменений
  D1 := EncodeDate(Y, M, 1);
  dtp1.Date := D1;
  if M < 12 then
    D2 := EncodeDate(Y, M + 1, 1) - 1
  else
    D2 := EncodeDate(Y, M, 31);

  with qWork_Norm do
  begin
    Close;
    ParamByName('c_year').AsInteger := y;
    ParamByName('c_month').AsInteger := m;
    Open;
    First;
    lcbNorm.KeyValue := qWork_NormID_NORM.AsInteger;
  end;
  //графики
  with qWork do
  begin
    Close;
    ParamByName('id_area').AsInteger := fmMain.C_PA;
    ParamByName('d_begin').AsDate := d1; //dtp1.Date;
    ParamByName('d_end').AsDate := d2;
    Open;
    FetchAll;
    if IsEmpty then
      MsgInformation('Данные о персонале данного подразделения отсутствуют',
        'Нет данных');
  end;

  //должности
  with qPost do
  begin
    Close;
    ParamByName('id_area').AsInteger := fmMain.C_PA;
    ParamByName('d_begin').AsDate := d1; //dtp1.Date;
    ParamByName('d_end').AsDate := d2;
    Open;
    FetchAll;
    if IsEmpty then
      MsgInformation('Данные о персонале данного подразделения отсутствуют',
        'Нет данных');
  end;
  with dmIS.qPers, dmIS.qPers.SQL do
  begin
    Close;
    Clear;
    Add('select * from  GET_WORKERS_AREA(:ID_AREA,:D_BEGIN,:D_END)');
    Add('where 1=1');
    if not VarIsNull(lcbPost.KeyValue) then
      Add('and idpost = :idpost ');
    if not VarIsNull(lcbWork.KeyValue) then
      Add('and work_shift = :work_shift');
    if not VarIsNull(lcbContr.KeyValue) then
      Add('and contract_type = :contract_type');
    Add('order by FIO');
    ParamByName('id_area').AsInteger := fmMain.C_PA;
    ParamByName('d_begin').AsDate := d1; //dtp1.Date;
    ParamByName('d_end').AsDate := d2;
    if not VarIsNull(lcbPost.KeyValue) then
      ParamByName('idpost').AsInteger := lcbPost.KeyValue;
    if not VarIsNull(lcbWork.KeyValue) then
      ParamByName('work_shift').AsInteger := lcbWork.KeyValue;
    if not VarIsNull(lcbContr.KeyValue) then
      ParamByName('contract_type').AsInteger := lcbContr.KeyValue;
    Open;
    Last;
    First;
    if IsEmpty then
      MsgInformation('Данные о персонале данного подразделения отсутствуют',
        'Нет данных');
  end;
  lbNomTab.Caption := '';
  C_TAB := -1;
  Fix := False;
  Mdf := False;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT ID_TAB, D_FIX, D_END FROM TABS WHERE ID_P_AREA = :ar1 ');
    Add('AND ID_YEAR = :y1 AND ID_MONTH = :m1');
    ParamByName('ar1').AsInteger := fmMain.C_PA;
    ParamByName('y1').AsInteger := Y;
    ParamByName('m1').AsInteger := M;
    Open;
    if not IsEmpty then
    begin
      C_TAB := FieldByName('ID_TAB').AsInteger;
      //  Fix :=  not FieldByName('D_FIX').IsNull;
      D_END := FieldByName('D_END').AsDateTime; //дата утв. табеля
      lbNomTab.Caption := '№ ' + FieldByName('ID_TAB').AsString;
    end;

    if (D_END <= D2 + 1) and (chb1.Enabled = True) then
      dbg_Ext.ReadOnly := False
    else
      dbg_Ext.ReadOnly := True;

    { else
     C_TAB := null;
     D_END := dtp1.Date;
   }
  end;

  if (C_TAB = -1) then
    stb1.Panels[0].Text := 'Новый'
  else
    stb1.Panels[0].Text := IntToStr(C_TAB);
  if Fix then
    stb1.Panels[1].Text := 'Табель утвержден'
  else
    stb1.Panels[1].Text := 'Табель не утвержден';
  if fmMain.UF24 and not Fix then
    stb1.Panels[2].Text := 'Табель может редактироваться'
  else
    stb1.Panels[2].Text := '';
  with sg1 do
  begin
    // ColCount := Trunc(D2 - D1 + 1) + 3;
    ColCount := Trunc(D2 - D1 + 1) + 9; // + 4;
    RowCount := dmIS.qPers.RecordCount + 1;
    Cells[0, 0] := 'Ф. И. О.';
    ColWidths[0] := 220;
    RowHeights[0] := 28;
    Cells[1, 0] := 'Код';
    ColWidths[1] := 40;
    Cells[2, 0] := 'Должность';
    ColWidths[2] := 120;
    Cells[3, 0] := 'График';
    ColWidths[3] := 45;

    Cells[4, 0] := 'Контракт';
    ColWidths[4] := 50;

    Cells[5, 0] := 'Разность';
    ColWidths[5] := 35;
    Cells[6, 0] := 'Часов';
    ColWidths[6] := 35;
    Cells[7, 0] := 'Норма';
    ColWidths[7] := 35;

    Cells[8, 0] := 'Дата увольнения';
    ColWidths[8] := 100;

    i := 1;
    repeat
      //  ColWidths[i+3] := 32;
      //  Cells[i+3,0] := IntToStr(i);
      ColWidths[i + 8] := 32;
      Cells[i + 8, 0] := IntToStr(i); //дата
      i := i + 1;
    until
      //  i = ColCount - 3;
    i = ColCount - 8;
    dmIS.qPers.First;
    i := 1;
    while not dmIS.qPers.Eof do
    begin
      if dmIS.qPersIS_WORKER.AsInteger = 1 then
        Cells[0, i] := '* ' + dmIS.qPersFIO.AsString
      else
        Cells[0, i] := dmIS.qPersFIO.AsString;
      Cells[1, i] := dmIS.qPersID_P.AsString;
      Cells[2, i] := dmIS.qPersNAME.AsString;
      Cells[3, i] := dmIS.qPersWORK_SHIFT_NAME_SHORT.AsString;
      Cells[4, i] := dmIS.qPersCONTRACT_TYPE_NAME.AsString;

      qSum_T.Close;
      qSum_T.ParamByName('tb1').AsInteger := C_TAB;
      qSum_T.ParamByName('p1').AsInteger := dmIS.qPersID_P.AsInteger;
      qSum_T.Open;
      //  Cells[3,i] := '  ' + qSum_TSUM.AsString;
      Cells[6, i] := '  ' + qSum_TSUM.AsString;

      qT_Norm.Close;
      qT_Norm.ParamByName('id_tab').AsInteger := C_TAB;
      qT_Norm.ParamByName('id_p').AsInteger := dmIS.qPersID_P.AsInteger;
      qT_Norm.Open;
      qT_Norm.First;
      Cells[5, i] := FloatToStr(qT_NormHOURS.AsFloat - qSum_TSUM.AsFloat);
      //if qT_Norm.IsEmpty Then
      Cells[7, i] := '';
      while not qT_Norm.Eof do
      begin
        if Cells[7, i] = '' then
          Cells[7, i] := qT_NormHOURS.AsString + ' '
        else
          Cells[7, i] := Cells[7, i] + ' ' + qT_NormHOURS.AsString;
        qT_Norm.Next;
      end;
      RowHeights[i] := 28;

      if not dmIS.qPersD_DISMISS.IsNull then
      begin
        if (MonthOf(dmIS.qPersD_DISMISS.AsDateTime) = M)
          and (YearOf(dmIS.qPersD_DISMISS.AsDateTime) = strtoint(ed1.Text)) then
          cells[8, i] := dmIS.qPersD_DISMISS.AsString
      end
      else
        cells[8, i] := '';
      i := i + 1;
      dmIS.qPers.Next;
    end;

    // For i := 4 To sg1.ColCount - 1 do
    for i := 9 to sg1.ColCount - 1 do
      for k := 1 to sg1.RowCount - 1 do
        sg1.Cells[i, k] := '';

    Screen.Cursor := crHourGlass;
    for i := 1 to RowCount - 1 do
    begin
      dmIS.qTAB.Close;
      dmIS.qTAB.ParamByName('tb1').AsInteger := C_TAB;
      dmIS.qTAB.ParamByName('p1').AsInteger := StrToInt(Cells[1, i]);
      dmIS.qTAB.Open;
      dmIS.qTAB.First;
      while not dmIS.qTAB.Eof do
      begin
        {   Cells[dmIS.qTABID_DAY.AsInteger + 3,i] := Cells[dmIS.qTABID_DAY.AsInteger + 3,i] +
           '; ' + dmIS.qTABnS.AsString +  '-' + dmIS.qTABVAL.AsString;}
        Cells[dmIS.qTABID_DAY.AsInteger + 8, i] :=
          Cells[dmIS.qTABID_DAY.AsInteger + 8, i] +
          '; ' + dmIS.qTABnS.AsString + '-' + dmIS.qTABVAL.AsString;

        dmIS.qTAB.Next;
      end;
    end;

    Screen.Cursor := crDefault;

  end;
  sg1.Refresh;
  Screen.Cursor := crDefault;

end;

procedure TfmTABEL.FormCreate(Sender: TObject);

begin
  Screen.Cursor := crHourGlass;
  DecodeDate(Date, Y, M, D);
  ud1.Position := Y;
  cb1.ItemIndex := M - 1;
  qDet_Text := qDet.SQL.Text;
  qTabList := qTab_List.SQL.Text;
  pc.ActivePage := tsTab;
  pcGraf.ActivePage := tsOrd;
  pcTabel.ActivePage := tsSum_Tabel;
  pcTab.ActivePage := ts_Tabel;
  p1.Align := alTop;
  pnRep.Hide;
  pnRep.Left := 250;
  pnRep.Top := 100;
  tb1.Enabled := fmMain.UF24;
  chb1.Enabled := fmMain.UF24;
  tb2.Enabled := fmMain.UF75;

  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read('DEF_VAL', DEF_VAL);
    Read(dbg_Obj, iniGridEh);
    Read(dbg_Tab, iniGridEh);
    Read(dbg_Ext, iniGridEh);
    Read(dbg2, iniGridEh);
    Read(dbg3, iniGridEh);
    Read(dbg15, iniGridEh);
    Read(dbg16, iniGridEh);
    Read(dbg17, iniGridEh);
    Read(dbg18, iniGridEh);
    Read(dbg19, iniGridEh);
    Read(dbg20, iniGridEh);
    Read(dbg21, iniGridEh);
    read(dbgTabPers, iniGridEh);
  finally
    Free;
  end;
  ed2.Text := DEF_VAL;
  try
    if ed2.Text <> '' then
      dt1.DateTime := Int(now) + (StrToFloat(ed2.Text)) / 24;
  except
  end;
end;

procedure TfmTABEL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DEF_VAL := ed2.Text;
  dmIS.qPers.Close;
  dmIS.qT_COEF.Close;
  dmIS.qTAB.Close;
  qTab_Norm.Close;
  qTab_Pos.Close;
  qTab_Ext.Close;
  qDet.Close;

  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write('DEF_VAL', DEF_VAL);
    Write(dbg_Obj, iniGridEh);
    Write(dbg_Tab, iniGridEh);
    Write(dbg_Ext, iniGridEh);
    Write(dbg2, iniGridEh);
    Write(dbg3, iniGridEh);
    Write(dbg15, iniGridEh);
    Write(dbg16, iniGridEh);
    Write(dbg17, iniGridEh);
    Write(dbg18, iniGridEh);
    Write(dbg19, iniGridEh);
    Write(dbg20, iniGridEh);
    Write(dbg21, iniGridEh);
    Write(dbgTabPers, iniGridEh);
  finally
    Free;
  end;
end;

procedure TfmTABEL.cb1CloseUp(Sender: TObject);
var
  GR: TGridRect;
begin
  Screen.Cursor := crHourGlass;
  cbExtClick(Sender);
  M := cb1.ItemIndex + 1;
  pc.ActivePage := tsTab;
  IniGreed;
  GR := sg1.Selection;
  TN := StrToInt(sg1.Cells[1, GR.Top]);

  qTab_Norm.Close;
  qTab_Norm.Open;
  qTab_Pos.Close;
  qTab_Pos.Open;
  cbExtClick(Sender);
  cbObjClick(Sender);
  Screen.Cursor := crDefault;
end;

procedure TfmTABEL.ed1KeyUp(Sender: TObject; var Key: Word;
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
    pc.ActivePage := tsTab;
    IniGreed;
  end;
end;

procedure TfmTABEL.ud1Click(Sender: TObject; Button: TUDBtnType);
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
  IniGreed;
end;

procedure TfmTABEL.sg1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  s1, s2: string;
  cl: TColor;
  fs: TFontStyles;

begin
  s1 := '';
  s2 := '';

  //If (DayOfWeek(D1 + ACol - 6) in [1,7]) and (ACol > 5)  Then
  if (DayOfWeek(D1 + ACol - 9) in [1, 7]) and (ACol > 8) then
    with sg1.Canvas do
    begin
      if ARow = 0 then
        Brush.Color := rgb(255, 74, 74)
      else
        Font.Color := clRed;
      FillRect(Rect);
      if ARow = 0 then
        TextOut(Rect.Left + 2, rect.Top + 2, sg1.Cells[ACol, ARow]);
      //4
// If (DayOfWeek(D1 + ACol - 6)=1) and (ARow = 0) Then
      if (DayOfWeek(D1 + ACol - 9) = 1) and (ARow = 0) then
        TextOut(rect.Left + 2, Rect.Top + 15, 'Вс');
      //4
// If (DayOfWeek(D1 + ACol - 6)=1) and (ARow = 0) Then
      if (DayOfWeek(D1 + ACol - 9) = 7) and (ARow = 0) then
        TextOut(rect.Left + 2, Rect.Top + 15, 'Сб');
    end;
  //4
//If ((D1 + ACol - 6) = date) and (ARow >0) Then
  if ((D1 + ACol - 9) = date) and (ARow > 0) then
    with sg1.Canvas do
    begin
      Brush.Color := clSkyBlue;
      Font.Style := [fsBold];
      // FillRect(Rect);
      // TextOut(Rect.Left + 2,rect.Top + 2,sg1.Cells[ACol,ARow]);
    end; //4
  if ((D1 + ACol - 9) <= D_END) and (ARow > 0) then
    sg1.Canvas.Brush.Color := clMoneyGreen;

  {If ((ACol > 3) and  (ACol < 8)) and (ARow >0) Then
  with sg1.Canvas do Brush.Color := clSkyBlue; }

           //3

           //3
  if (ACol > 8) and (ARow > 0) then
  begin
    s1 := sg1.Cells[ACol, ARow];
    delete(s1, 1, 1);
    s2 := s1;
    delete(s1, Pos(';', s1), (length(s1) - Pos(';', s1) + 1));
    delete(s2, 1, Pos(';', s2));
    with sg1.Canvas do
    begin
      FillRect(Rect);
      cl := Font.Color;
      fs := Font.Style;
      if Pos(';', s2) > 0 then
      begin
        Font.Color := clBlue;
        Font.Style := [fsBold];
      end;
      delete(s2, Pos(';', s2), (length(s2) - Pos(';', s2) + 1));
      TextOut(Rect.Left, Rect.Top + 2, s1);
      Font.Color := cl;
      Font.Style := fs;
      if s2 <> s1 then
        TextOut(Rect.Left, Rect.Top + 15, s2);
    end;
  end;
  //норма
  if (ACol = 8) and (ARow > 0) then
    with sg1.Canvas do
    begin
      Brush.Color := clInfoBk;
      Font.Color := clBlack;
      FillRect(Rect);
      TextOut(Rect.Left + 2, rect.Top + 2, sg1.Cells[ACol, ARow]);
    end;
  //часы
  if (ACol = 6) and (ARow > 0) then
    with sg1.Canvas do
    begin
      Brush.Color := clWhite;
      Font.Color := clBlack;
      FillRect(Rect);
      TextOut(Rect.Left + 2, rect.Top + 2, sg1.Cells[ACol, ARow]);
    end;
  //разность
  if (ACol = 5) and (ARow > 0) then
    with sg1.Canvas do
    begin
      Brush.Color := clWhite;
      Font.Color := clPurple;
      Font.Style := [fsBold];
      FillRect(Rect);
      TextOut(Rect.Left + 2, rect.Top + 2, sg1.Cells[ACol, ARow]);
    end;
  //заголовок первая строка в таблице
  if (ACol < 8) and (ARow = 0) then
    with sg1.Canvas do
    begin
      Brush.Color := clBtnFace;
      Font.Color := clBlack;
      FillRect(Rect);
      TextOut(Rect.Left + 2, rect.Top + 2, sg1.Cells[ACol, ARow]);
    end;
  //дата увольнения
  if (ACol = 8) and (ARow <> 0) and (length(sg1.Cells[ACol, ARow]) <> 0) then
    with sg1.Canvas do
    begin
      Brush.Color := clRed;
      Font.Color := clBlack;
      FillRect(Rect);
      TextOut(Rect.Left + 2, rect.Top + 2, sg1.Cells[ACol, ARow]);
    end;

end;

procedure TfmTABEL.sg1SetEditText(Sender: TObject; ACol, ARow: Integer;
  const Value: string);
begin
  Mdf := True;
end;

procedure TfmTABEL.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  //If Mdf Then bt1.Click;
  //fmTABEL.Close;
end;

procedure TfmTABEL.sg1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  ACol, ARow: integer;
  //    Rect : TRect;
begin
  Screen.Cursor := crHourGlass;
  sg1.MouseToCell(X, Y, ACol, ARow);
  // Rect := sg1.CellRect(1,ARow);

  if ARow > 0 then
  begin
    TN := StrToInt(sg1.Cells[1, ARow]);
    { with sg1.Canvas do begin
      Brush.Color := clSkyBlue;
      FillRect(Rect);
      TextOut(Rect.Left + 2,rect.Top + 2,sg1.Cells[ACol,ARow]);
     end;
    }

    qTab_Norm.Close;
    qTab_Norm.Open;
    qTab_Pos.Close;
    qTab_Pos.Open;
    cbExtClick(Sender);
    cbObjClick(Sender);
  end;
  //поставить нормы
  if (ACol = 7) and (ARow > 0) and (Button = mbRight) then
  begin
    sg1.Cells[ACol, ARow] := qWork_NormHOURS.AsString;
    //шапка табеля
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      if C_TAB = -1 then
      begin
        Close;
        Clear;
        Add('SELECT OBJ_ID FROM GET_OBJ_ID');
        try
          Open;
          C_TAB := FieldByName('OBJ_ID').AsInteger;
          Close;
          Clear;
          Add('INSERT INTO TABS (ID_TAB,ID_P_AREA,ID_YEAR,ID_MONTH,D_EDIT,ID_EDIT)');
          Add('VALUES (:idt, :pa1, :y1, :m1, CURRENT_TIMESTAMP, :p1)');
          ParamByName('idt').AsInteger := C_TAB;
          ParamByName('pa1').AsInteger := fmMain.C_PA;
          ParamByName('y1').AsInteger := fmTabel.Y;
          ParamByName('m1').AsInteger := fmTabel.M;
          ParamByName('p1').AsInteger := SysVars.RegTN;
          ExecSQL;
          stb1.Panels[0].Text := IntToStr(C_TAB);
        except;
          MsgError('Ошибка записи заголовка табеля', 'Ошибка записи');
          if dmIS.mT.InTransaction then
            dmIS.mT.RollbackRetaining;
          Screen.Cursor := crDefault;
        end;
      end; //if C_TAB = -1
      //норма часов по Таб.№
      if qTab_Norm.Locate('id_tab;id_p;id_norm;c_date',
        VarArrayOf([C_TAB, sg1.Cells[1, ARow], lcbNorm.KeyValue,
        Int(dtp1.DateTime)]), []) then
      begin
        Close;
        Clear;
        Add('update tab_norms set id_norm = :id_norm');
        Add('where id_tab_norm = :id_tab_norm');
        ParamByName('id_norm').AsInteger := lcbNorm.KeyValue;
        ParamByName('id_tab_norm').AsInteger := qTab_NormID_TAB_NORM.AsInteger;
      end
      else
      begin
        Close;
        Clear;
        Add('insert into tab_norms (id_tab_norm, id_tab, id_p, id_norm, c_date)');
        Add('VALUES (gen_id(obj_id,1), :id_tab, :id_p, :id_norm, :c_date)');
        ParamByName('id_tab').AsInteger := C_TAB;
        ParamByName('id_p').AsString := sg1.Cells[1, ARow];
        ParamByName('id_norm').AsInteger := lcbNorm.KeyValue;
        ParamByName('c_date').AsDate := Int(dtp1.DateTime);
      end;
      try
        ExecSQL;
        dmIS.mT.CommitRetaining;
        qT_Norm.Close;
        qT_Norm.ParamByName('id_tab').AsInteger := C_TAB;
        qT_Norm.ParamByName('id_p').AsString := sg1.Cells[1, ARow];
        qT_Norm.Open;

        sg1.Cells[7, ARow] := '';
        while not qT_Norm.Eof do
        begin
          if sg1.Cells[7, ARow] = '' then
            sg1.Cells[7, ARow] := qT_NormHOURS.AsString + ' '
          else
            sg1.Cells[7, ARow] := sg1.Cells[7, ARow] + ' ' +
              qT_NormHOURS.AsString;
          qT_Norm.Next;
        end;
        qTab_Norm.Close;
        qTab_Norm.Open;
        //посчитать время и разность
        qSum_T.Close;
        qSum_T.ParamByName('tb1').AsInteger := C_TAB;
        qSum_T.ParamByName('p1').AsString := sg1.Cells[1, ARow];
        qSum_T.Open;
        sg1.Cells[6, ARow] := '  ' + qSum_TSUM.AsString;
        //  if sg1.Cells[7,ARow] = '' then sg1.Cells[7,ARow] := '0';
        try
          sg1.Cells[5, ARow] := FloatToStr(StrToFloat(sg1.Cells[7, ARow]) -
            qSum_TSUM.AsFloat);
        except;
        end;

      except;
        MsgError('Ошибка записи нормы времени в табель', 'Ошибка записи');
        if dmIS.mT.InTransaction then
          dmIS.mT.RollbackRetaining;
        Screen.Cursor := crDefault;
      end;
    end; //with dmIS.qIN
  end;
  //поставить часы               //4
  if ((D1 + ACol - 9) <= D_END) and (ARow > 0) then
  begin
    Screen.Cursor := crDefault;
    exit;
  end; //3
  if chb1.Checked and (ed2.Text <> '') and (ACol > 8) and (ARow > 0)
    and (Button = mbRight) then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      //проверка даты если сотрудник уволен в данном периоде
      if length(sg1.Cells[8, ARow]) > 0 then
        if (D1 + ACol - 9) > strtodate(sg1.Cells[8, ARow]) then
        begin
          MsgError('Данный сотрудник уволен ' + sg1.Cells[8, ARow], 'Проверка');
          Screen.Cursor := crDefault;
          exit;
        end;

      if C_TAB = -1 then
      begin
        Close;
        Clear;
        Add('SELECT OBJ_ID FROM GET_OBJ_ID');
        try
          Open;
          C_TAB := FieldByName('OBJ_ID').AsInteger;
          Close;
          Clear;
          Add('INSERT INTO TABS (ID_TAB,ID_P_AREA,ID_YEAR,ID_MONTH,D_EDIT,ID_EDIT)');
          Add('VALUES (:idt, :pa1, :y1, :m1, CURRENT_TIMESTAMP, :p1)');
          ParamByName('idt').AsInteger := C_TAB;
          ParamByName('pa1').AsInteger := fmMain.C_PA;
          ParamByName('y1').AsInteger := fmTabel.Y;
          ParamByName('m1').AsInteger := fmTabel.M;
          ParamByName('p1').AsInteger := SysVars.RegTN;
          ExecSQL;
          stb1.Panels[0].Text := IntToStr(C_TAB);
        except;
          MsgError('Ошибка записи заголовка табеля', 'Ошибка записи');
          if dmIS.mT.InTransaction then
            dmIS.mT.RollbackRetaining;
          Screen.Cursor := crDefault;
        end;
      end;
      Close;
      Clear;
      Add('EXECUTE PROCEDURE WRITE_TAB_POSN(:tab1,:p1,:tday,:idtc,:coef1,:val1,:pf)');
      ParamByName('tab1').AsInteger := C_TAB;
      ParamByName('p1').AsString := sg1.Cells[1, ARow];
      //4
      ParamByName('tday').AsDate := D1 + ACol - 9;
      ParamByName('idtc').AsInteger := lcb1.KeyValue;
      ParamByName('coef1').AsFloat := dmIS.qT_COEFVAL.AsFloat;
      // ParamByName('val1').AsString := ed2.Text;
      ParamByName('val1').AsFloat := StrToFloat(ed2.Text);
      ParamByName('pf').AsInteger := SysVars.RegTN;
      try
        ExecSQL;
        dmIS.mT.CommitRetaining;
        // перерисовать клетку
        qIns.Close;
        qIns.SQL.Clear;
        qIns.SQL.Add('select EXTRACT(DAY FROM s.TAB_DAY) AS ID_DAY,');
        qIns.SQL.Add('s.id_p,s.ID_TAB_COEFF, s.COEFF, s.val, t.shortname');
        qIns.SQL.Add('from TAB_POS s join  tab_coeffs t on  s.id_tab_coeff = t.id_tab_coeff');
        qIns.SQL.Add('where s.ID_TAB = :id_tab and s.ID_P = :id_p and s.TAB_DAY = :tab_day');
        qIns.SQL.Add('order by s.id_p,1, s.ID_TAB_COEFF');
        qIns.ParamByName('id_tab').AsInteger := C_TAB;
        qIns.ParamByName('id_p').AsString := sg1.Cells[1, ARow];
        qIns.ParamByName('tab_day').AsDate := D1 + ACol - 9;
        //  StrToDate(sg1.Cells[1,ARow] + '.' + IntToStr(m) +'.'+ IntToStr(y));
        qIns.Open;
        qIns.First;
        sg1.Cells[ACol, ARow] := '';
        while not qIns.Eof do
        begin
          sg1.Cells[ACol, ARow] := sg1.Cells[ACol, ARow] +
            ';' + qIns.FieldByName('shortname').AsString + '-' +
            qIns.FieldByName('val').AsString;
          qIns.Next;
        end;
        qTab_Pos.Close;
        qTab_Pos.Open;
        //посчитать время и разность
        qSum_T.Close;
        qSum_T.ParamByName('tb1').AsInteger := C_TAB;
        qSum_T.ParamByName('p1').AsString := sg1.Cells[1, ARow];
        qSum_T.Open;
        sg1.Cells[6, ARow] := '  ' + qSum_TSUM.AsString;
        if sg1.Cells[7, ARow] = '' then
          sg1.Cells[7, ARow] := '0';
        try
          sg1.Cells[5, ARow] := FloatToStr(StrToFloat(sg1.Cells[7, ARow]) -
            qSum_TSUM.AsFloat);
        except;
        end;
        //  IniGreed;
      except;
        Screen.Cursor := crDefault;
      end;
    end;
  Screen.Cursor := crDefault;
end;

procedure TfmTABEL.sg1DblClick(Sender: TObject);
begin //4
  if fmMain.UF24 and ((D1 + sg1.Col - 9) > D_END) then
  begin
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      if C_TAB = -1 then
      begin
        Close;
        Clear;
        Add('SELECT OBJ_ID FROM GET_OBJ_ID');
        try
          Open;
          C_TAB := FieldByName('OBJ_ID').AsInteger;
          Close;
          Clear;
          Add('INSERT INTO TABS (ID_TAB,ID_P_AREA,ID_YEAR,ID_MONTH,D_EDIT,ID_EDIT)');
          Add('VALUES (:idt, :pa1, :y1, :m1, CURRENT_TIMESTAMP, :p1)');
          ParamByName('idt').AsInteger := C_TAB;
          ParamByName('pa1').AsInteger := fmMain.C_PA;
          ParamByName('y1').AsInteger := Y;
          ParamByName('m1').AsInteger := M;
          ParamByName('p1').AsInteger := SysVars.RegTN;
          ExecSQL;
          stb1.Panels[0].Text := IntToStr(C_TAB);
        except;
          MsgError('Ошибка записи заголовка табеля', 'Ошибка записи');
          if dmIS.mT.InTransaction then
            dmIS.mT.RollbackRetaining;
        end;
      end;
    end;
  end;

  with dmIS.qTAB_S, dmIS.qTAB_S.SQL do
  begin
    Close;
    // If fmMain.UF24 and not Fix Then UpdateObject := dmIS.upTAB_S
                                       //4
    if fmMain.UF24 and ((D1 + sg1.Col - 9) > D_END) then
      UpdateObject := dmIS.upTAB_S
    else
      UpdateObject := nil;
    Clear;
    Add('SELECT * FROM TAB_POS WHERE ID_TAB = :tab1 AND ID_P = :p1');
    Add('AND TAB_DAY = :d1 ORDER BY ID_TAB_COEFF');
    dmIS.qTAB_S.ParamByName('tab1').AsInteger := C_TAB;
    dmIS.qTAB_S.ParamByName('p1').AsString := sg1.Cells[1, sg1.Row];
    //4
    dmIS.qTAB_S.ParamByName('d1').AsDate := D1 + sg1.Col - 9;
    Open;
  end;
  if not Assigned(fmTAB_S) then
    Application.CreateForm(TfmTAB_S, fmTAB_S);
  //4
  fmTAB_S.Caption := DateToStr(D1 + sg1.Col - 9) + ' - ' + sg1.Cells[0,
    sg1.Row];
  fmTAB_S.ShowModal;
  IniGreed;

end;

procedure TfmTABEL.sg1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i, k: integer;
  GR: TGridRect;
  //журналирование
  pre_fix: integer; //id предыдущего редактировавшего
begin
  Screen.Cursor := crHourGlass;
  GR := sg1.Selection;
  //for k:= GR.Top To GR.Bottom do TN := StrToInt(sg1.Cells[1,k]);
  TN := StrToInt(sg1.Cells[1, GR.Top]);
  qTab_Norm.Close;
  qTab_Norm.Open;
  qTab_Pos.Close;
  qTab_Pos.Open;
  cbExtClick(Sender);
  cbObjClick(Sender);

  if not fmMain.UF24 then
    exit;
  //удалить нормы
  if (Key = VK_DELETE) and (sg1.Col = 7) then
    for i := GR.Left to GR.Right do
      for k := GR.Top to GR.Bottom do
        with dmIS.qIN, dmIS.qIN.SQL do
        begin
          Close;
          Clear;
          Add('delete from tab_norms t where t.id_tab = :id_tab and t.id_p = :id_p');
          ParamByName('id_tab').AsInteger := C_TAB;
          ParamByName('id_p').AsString := sg1.Cells[1, k];
          try
            ExecSQL;
            if dmIS.mT.InTransaction then
              dmIS.mT.CommitRetaining;
            qT_Norm.Close;
            qT_Norm.ParamByName('id_tab').AsInteger := C_TAB;
            qT_Norm.ParamByName('id_p').AsString := sg1.Cells[1, k];
            qT_Norm.Open;
            sg1.Cells[7, k] := '';
            qTab_Norm.Close;
            qTab_Norm.Open;
          except;
            Screen.Cursor := crDefault;
          end;
        end;

  if (Key = VK_DELETE) and ((D1 + GR.Left - 9) <= D_END) then
  begin
    Screen.Cursor := crDefault;
    exit;
  end;
  //удалить часы по датам

  if (Key = VK_DELETE) and (sg1.Col > 7) then
    for i := GR.Left to GR.Right do
      for k := GR.Top to GR.Bottom do
        with dmIS.qIN, dmIS.qIN.SQL do
        begin
          /////////////////////////////
          //журналирование удаления, только для принта
          if ansipos('МПК', SysVars.Host) = 0 then
          begin
            Close;
            Clear;
            Add('select id_fix from TAB_POS');
            Add('WHERE ID_TAB = :tb1 AND ID_P = :p1 AND TAB_DAY = :d1');
            ParamByName('tb1').AsInteger := C_TAB;
            ParamByName('p1').AsString := sg1.Cells[1, k];
            ParamByName('d1').AsDate := D1 + i - 9;
            Open;
            pre_fix := FieldByName('id_fix').AsInteger;
            Close;
            Clear;
            Add('INSERT INTO TP_JOURNAL(ID_TAB, ID_P, TAB_DAY, ID_TAB_COEFF,');
            Add('COEFF, VAL, D_FIX, ID_FIX, ACTION_, ID_EDIT)');
            Add('VALUES (:tab1, :p1, :tday, :idtc,');
            Add(':coef1, :val1, current_timestamp, :pre_fix, 0, :pf)');

            ParamByName('tab1').AsInteger := C_TAB;
            ParamByName('p1').AsString := sg1.Cells[1, k];
            ParamByName('tday').AsDate := D1 + i - 9;
            ParamByName('idtc').AsInteger := lcb1.KeyValue;
            ParamByName('coef1').AsFloat := dmIS.qT_COEFVAL.AsFloat;
            ParamByName('val1').AsFloat := StrToFloat(ed2.Text);
            ParamByName('pre_fix').AsInteger := pre_fix;
            ParamByName('pf').AsInteger := SysVars.RegTN;
            ExecSQL;
            dmIS.mT.CommitRetaining;
          end;
          /////////////////////////////
          Close;
          Clear;
          Add('DELETE FROM TAB_POS');
          Add('WHERE ID_TAB = :tb1 AND ID_P = :p1 AND TAB_DAY = :d1');
          ParamByName('tb1').AsInteger := C_TAB;
          ParamByName('p1').AsString := sg1.Cells[1, k];
          //4
          ParamByName('d1').AsDate := D1 + i - 9;
          try
            ExecSQL;
            sg1.Cells[i, k] := '';
            if dmIS.mT.InTransaction then
              dmIS.mT.CommitRetaining;
            //     IniGreed;
            qTab_Pos.Close;
            qTab_Pos.Open;
          except;
            Screen.Cursor := crDefault;
          end;
        end;
  Screen.Cursor := crDefault;
  //   If dmIS.mT.InTransaction Then dmIS.mT.CommitRetaining;
  //   IniGreed;
end;

procedure TfmTABEL.tb2Click(Sender: TObject);
begin
  cbExtClick(Sender);
  if dmIS.mT.InTransaction then
    dmIS.mT.CommitRetaining;

  if (dtp1.Date >= D_END) and (dtp1.Date <= date) then
  begin
    if (MsgQuestion('Табель будет утвержден до даты: ' + DateToStr(dtp1.Date) +
      '.  ' + SysVars.NReg +
      ', Вы хотите утвердить данные табеля?',
      'Утверждение табеля') = id_yes)
      and (C_TAB > -1) then
      with dmIS.qIN, dmIS.qIN.SQL do
      begin
        Screen.Cursor := crHourGlass;
        Close;
        Clear;
        Add('UPDATE TABS SET D_END = :de1,D_FIX = CURRENT_TIMESTAMP, ID_FIX = :p1'
          +
          ' WHERE ID_TAB = :tb1');
        ParamByName('de1').AsDate := dtp1.Date;
        ParamByName('tb1').AsInteger := C_TAB;
        ParamByName('p1').AsInteger := SysVars.RegTN;
        try
          ExecSQL;
          IniGreed;
          Screen.Cursor := crDefault;
          if dmIS.mT.InTransaction then
            dmIS.mT.CommitRetaining;
        except;
          Screen.Cursor := crDefault;
          if dmIS.mT.InTransaction then
            dmIS.mT.RollbackRetaining;
        end;
      end;
  end
  else
  begin
    MsgInformation('Дата утверждения не соответствует условиям.',
      'Проверка даты');
    Exit;
  end;

  {//If Fix Then exit;
  If Fix Then begin
  If (MsgQuestion('Табель утвержден. ' + SysVars.NReg +
  ', Вы хотите снять утверждение с данного табеля?',
   'Снятие утверждения') = id_yes)
   and (C_TAB > -1) Then with dmIS.qIN, dmIS.qIN.SQL do begin
    Close;
    Clear;
    Add('UPDATE TABS SET D_FIX = NULL, ID_FIX = NULL WHERE ID_TAB = :tb1');
    ParamByName('tb1').AsInteger := C_TAB;
    Try
     ExecSQL;
     IniGreed;
     If dmIS.mT.InTransaction Then dmIS.mT.CommitRetaining;
    except;
    end;
   end;
   end
  else
  If (MsgQuestion('После утверждения редактирование табеля будет невозможно. ' +
   SysVars.NReg + ', Вы действительно хотите утвердить данный табель?',
   'Утверждение табеля') = id_yes)
   and (C_TAB > -1) Then with dmIS.qIN, dmIS.qIN.SQL do begin
    Close;
    Clear;
    Add('UPDATE TABS SET D_FIX = CURRENT_TIMESTAMP, ID_FIX = :p1 WHERE ID_TAB = :tb1');
    ParamByName('p1').AsInteger := SysVars.RegTN;
    ParamByName('tb1').AsInteger := C_TAB;
    Try
     ExecSQL;
     IniGreed;
     If dmIS.mT.InTransaction Then dmIS.mT.CommitRetaining;
    except;
    end;
   end;
  }
end;

procedure TfmTABEL.tb1Click(Sender: TObject);
var
  i, k: integer;
begin
  if D_END < date then
  begin
    MsgInformation('Утвержденный табель удалять нельзя', 'Проверка удаления');
    exit;
  end;
  if MsgQuestion('Все данные этого табеля будут удалены. ' + SysVars.NReg +
    ', Вы действительно хотите удалить этот табель?', 'Удаление данных') = id_yes
      then
  begin
    //4
    for i := 8 to sg1.ColCount - 1 do
      for k := 1 to sg1.RowCount - 1 do
        sg1.Cells[i, k] := '';
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM TABS WHERE ID_TAB = :tb1');
      ParamByName('tb1').AsInteger := C_TAB;
      try
        ExecSQL;
      except;
      end;
    end;
  end;

end;

procedure TfmTABEL.FormShow(Sender: TObject);
var
  GR: TGridRect;
begin
  pc.ActivePage := tsTab;
  with dmIS.qContr do
  begin
    Close;
    Open;
    FetchAll;
  end;
  with dmIS.qT_COEF do
  begin
    Close;
    ParamByName('pa1').AsInteger := fmMain.C_PA;
    Open;
    First;
    while not Eof do
    begin
      clb.Items.Add(dmIs.qT_COEFNAME.AsString);
      Next;
    end;
    First;
  end;
  lcb1.KeyValue := dmIS.qT_COEFID_TAB_COEFF.Value;
  cb1.SetFocus;
  IniGreed;
  GR := sg1.Selection;
  TN := StrToInt(sg1.Cells[1, GR.Top]);
  qTab_Norm.Close;
  qTab_Norm.Open;
  qTab_Pos.Close;
  qTab_Pos.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmTABEL.ed2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i: Extended;
begin

  //if (key = 13) and (ed2.Text <> '') then
  try
    if (ed2.Text <> '') then
    begin
      i := Int(now) + (StrToFloat(ed2.Text)) / 24;
      dt1.DateTime := i;
    end;
    if StrToFloat(ed2.Text) = 0 then
      dt1.Time := 0;
  except;
  end;
end;

procedure TfmTABEL.dt1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //if (key = 13) then
  try
    ed2.Text := FormatFloat('#.##', (Frac(dt1.DateTime) * 24));
  except
  end;

end;

procedure TfmTABEL.N1Click(Sender: TObject);
var
  d_in, d_out: TDate;
begin
  //M := cb1.ItemIndex + 1;
  d_in := EncodeDate(StrToInt(ed1.Text), m, 1);
  if M < 12 then
    d_out := EncodeDate(StrToInt(ed1.Text), m + 1, 1) - 1
  else
    D_out := EncodeDate(StrToInt(ed1.Text) + 1, 1, 1) - 1;

  qRep_Tab.Close;
  qRep_Tab.SQL.Clear;
  qRep_Tab.SQL.Add('select * from rep_tab(:ID_TAB_)');
  qRep_Tab.ParamByName('ID_TAB_').AsInteger := C_TAB;
  qRep_Tab.Open;
  if not qRep_Tab.IsEmpty then
  begin
    qRep_Sors_CF.Close;
    qRep_Sors_CF.SQL.Clear;
    qRep_Sors_CF.SQL.Add('select * from REP_TAB_COEFF(:ID_TAB)');
    qRep_Sors_CF.ParamByName('ID_TAB').AsInteger := C_TAB;
    qRep_Sors_CF.Open;

    qRep_Sors.Close;
    qRep_Sors.SQL.Clear;
    qRep_Sors.SQL.Add('select * from REP_SORS(:ID_P_AREA,:d_in,:d_out)');
    qRep_Sors.ParamByName('ID_P_AREA').AsInteger := fmMain.C_PA;
    qRep_Sors.ParamByName('d_in').AsDateTime := d_in;
    qRep_Sors.ParamByName('d_out').AsDateTime := d_out;
    qRep_Sors.Open;
    frxRepTab.ShowReport(True);
  end
  else
    ShowMessage('Табель пустой...');
end;

procedure TfmTABEL.N2Click(Sender: TObject);
begin
  pnRep.Show;

end;

procedure TfmTABEL.BitBtn2Click(Sender: TObject);
begin
  pnRep.Hide;
end;

procedure TfmTABEL.BitBtn3Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 1 to clb.Count - 1 do
  begin
    if clb.Checked[i] then
      clb.Checked[i] := False;
  end;

end;

procedure TfmTABEL.BitBtn1Click(Sender: TObject);
var
  nm, s: string;
  i, coeff: Integer;
begin
  nm := '';
  for i := 1 to clb.Count - 1 do
  begin
    if clb.Checked[i] = True then
    begin
      coeff := dmIs.qT_COEF.Lookup('NAME', clb.Items[i], 'ID_TAB_COEFF');
      if i <> clb.Count - 1 then
        nm := nm + ',' + IntToStr(coeff)
    end;
  end;
  if nm <> '' then
    nm := copy(nm, 2, length(nm) - 1);
  qTab_Coeff.Close;
  s := 'select b.id_tab,b.id_month ,b.id_year,a.name name_prod,' +
    's.*,p.fio,t.name namedol, p1.fio fio_utv,c.shortname, c.name name_coeff' +
    ' from tabs b join tab_pos s on b.id_tab = s.id_tab and s.id_tab = :id_tab';
  if nm <> '' then
    s := s + ' and s.id_tab_coeff in (' + nm + ')';
  s := s + ' left join personnel p on p.id_p = s.id_p' +
    ' left join post t on T.IDPOST = P.IDPOST' +
    ' left join personnel p1 on p1.id_p = s.id_fix' +
    ' left join tab_coeffs c on c.id_tab_coeff = s.id_tab_coeff' +
    ' left join prod_areas a on a.id_p_area = b.id_p_area' +
    ' order by P.FIO,s.tab_day,c.name';
  qTab_Coeff.SQL.Clear;
  qTab_Coeff.SQL.Add(s);
  qTab_Coeff.ParamByName('ID_TAB').AsInteger := C_TAB;
  qTab_Coeff.Open;
  if qTab_Coeff.IsEmpty then
  begin
    ShowMessage('Выборка не имеет данных... ');
    Exit;
  end;
  frxRep_Tab_Coeff.ShowReport(True);

end;

procedure TfmTABEL.dbg_ObjSortMarkingChanged(Sender: TObject);
begin
  qDet.Close;
  qDet.SQL.Clear;
  qDet.SQL.Add(qDet_Text);
  qDet.SQL.Add(OrdBy(dbg_Obj));
  qDet.ParamByName('id_area').AsInteger := fmMain.C_PA;
  qDet.ParamByName('d1').AsDate := d1;
  qDet.ParamByName('d2').AsDate := d2 + 1;
  qDet.ParamByName('id_p').AsInteger := TN;
  qDet.Open;
  {With qObject, qObject.SQL do
  begin
   Close;
   Clear;
   Add(' select o.dec_no,coalesce(o.obj_name,i.name)  nm,'+
   'p.name name_ord,p.n_order, r.step,s.name  name_oper, ps.name  name_post,'+
   'per.fio, e.shotname,l1.id_prod_plan_p,l1.id_p,l1.amount ,'+
   'l1.AMOUNT*f.T_PERSONNEL  T_PERS,l1.rem,l1.f_amount ,l.d_out, l.f_time f_time_p,'+
   'coalesce(l1.din+l1.tin, cast(l.d_out as timestamp)) din ,');

   Add('coalesce(l1.dto+l1.tto,'+
   '  cast(l.d_out as timestamp) + '+
   '  ( (floor(l.f_time) + (l.f_time - floor(l.f_time))) )/24) dto,'+

   'l1.dto+l1.tto dto_,');

   Add(' cast(l.d_out as timestamp) + ( (floor(l.f_time) + (l.f_time - floor(l.f_time))) )/24) dto,');

   Add(' floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+ '+
   '( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24  '+
   '- floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 tm_, ');

   Add('coalesce( floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+   '+
   '( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24  '+
   '- floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 ,  '+
   ' (floor(l.f_time) + (l.f_time - floor(l.f_time)) *60/100)  ) tm ,  ');

   Add('l1.f_time,l1.p_time,'+
   ' p.id_version,p.id_project, p.id_order, o.id_object,r.id_prod_oper, o.obj_type'+
   ' from (((((project_ords p join product_objects o on o.id_version = p.id_version)'+
   ' join product_oper r on r.id_object = o.id_object) '+
   ' join product_traff f on f.id_prod_oper = r.id_prod_oper and f.id_area = :id_area)'+
   ' join operations s on s.id_area = f.id_area and s.id_operation = f.id_operation)'+
   ' join product_plans l on l.d_out >= :d1 and l.d_out < :d2 '+
   '    and l.f_time is not null  and  l.id_prod_traf = f.id_prod_traff)'+
   ' join product_plans_p l1 on l1.id_prod_plan = l.id_prod_plan'+
   ' left join items i on i.id_item = o.id_item'+
   ' left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT '+
   ' left join personnel per on l1.id_p = per.id_p and per.id_p = :id_p '+
   ' left join post ps on per.idpost = ps.idpost '+
  }
  // Add(OrdBy(dbg1)) ;
  // ShowMessage(text);
  {  ParamByName('id_area').AsInteger := fmMain.C_PA;
   ParamByName('d1').AsDate := d1;
   ParamByName('d2').AsDate := d2;
   ParamByName('id_p').AsInteger := C_TAB;
  Open;
   end;}
end;

procedure TfmTABEL.cbObjClick(Sender: TObject);
begin
  if cbObj.Checked then
    dbg_ObjSortMarkingChanged(Sender)
  else
    qDet.Close;
end;


procedure TfmTABEL.pcChange(Sender: TObject);
begin
  d_in := EncodeDate(StrToInt(ed1.Text), m, 1);
  if M < 12 then
    d_out := EncodeDate(StrToInt(ed1.Text), m + 1, 1) - 1
  else
    D_out := EncodeDate(StrToInt(ed1.Text) + 1, 1, 1) - 1;

  if pc.ActivePage = tsTab_List then
  begin
    if pcTab.ActivePage = ts_Tabel then
    begin
      qTab_List.Close;
      qTab_List.Open;
    end;
    if pcTab.ActivePage = ts_Fact then
    begin
      qTab_List_Plan.Close;
      qTab_List_Plan.Open;
    end;
  end;

  if pc.ActivePage = tsGraf then
  begin
    Tab_Plan_Day_FIO;
    with qPers do
    begin
      Close;
      ParamByName('id_area').AsInteger := fmMain.C_PA;
      ParamByName('d_begin').AsDate := d_in; //dtp1.Date;
      ParamByName('d_end').AsDate := d_out;
      Open;
    end;

  end;
end;

procedure TfmTABEL.dbg2GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if qTab_ListF.AsInteger = 2 then //итого по табелю
    Background := clSkyBlue;
  //  AFont.Color := clSkyBlue;
  if (qTab_ListF.AsInteger = 3) and
    (StrPos(PChar(qTab_ListFIO.AsString), PChar('[]')) <> nil) then
    Background := clMoneyGreen;
  if (qTab_ListF.AsInteger = 4) and
    (StrPos(PChar(qTab_ListFIO.AsString), PChar('Ресурс времени')) <> nil) then
    Background := clSilver;

  if (qTab_ListF.AsInteger = 4) and
    (StrPos(PChar(qTab_ListFIO.AsString), PChar('Фактическое время Итого')) <>
    nil) then
    Background := clInfoBk;

end;

procedure TfmTABEL.tbExcelClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if pc.ActivePage = tsTab_List then
  begin
    if pcTab.ActivePage = ts_Tabel then
      GridToExcel(dbg2);
    if pcTab.ActivePage = ts_Fact then
      GridToExcel(dbg4);
  end;
  if (pc.ActivePage = tsGraf) and dbg16.Focused then
    GridToExcel(dbg16);
  if (pc.ActivePage = tsGraf) and dbg15.Focused then
    GridToExcel(dbg15);
  Screen.Cursor := crDefault;

end;

procedure TfmTABEL.SpeedButton1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if pcTabel.ActivePage = tsSum_Tabel then
    GridToExcel(dbg3);
  if pcTabel.ActivePage = tsSum_Order then
    GridToExcel(dbg19);
  if pcTabel.ActivePage = tsTabPers then
    GridToExcel(dbgTabPers);
  Screen.Cursor := crDefault;

end;

procedure TfmTABEL.dbg3GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if qSum_Tab_ListNOM.AsInteger = 2 then //итого по табелю
    Background := clSkyBlue;
  //  AFont.Color := clSkyBlue;
  if (qSum_Tab_ListNOM.AsInteger = 3) and
    (StrPos(PChar(qSum_Tab_ListFIO.AsString), PChar('[]')) <> nil) then
    Background := clMoneyGreen;
  if (qSum_Tab_ListNOM.AsInteger = 4) and
    (StrPos(PChar(qSum_Tab_ListFIO.AsString), PChar('Ресурс времени')) <> nil)
      then
    Background := clSilver;
  if (qSum_Tab_ListNOM.AsInteger = 4) and
    (StrPos(PChar(qSum_Tab_ListFIO.AsString), PChar('Фактическое время Итого'))
    <> nil) then
    Background := clInfoBk;

end;

procedure TfmTABEL.SpeedButton2Click(Sender: TObject);
begin
  if pcTabel.ActivePage = tsSum_Tabel then
  begin
    with qSum_Tab_List, qSum_Tab_List.SQL do
    begin
      Close; //:ID_AR,:M_IN,:M_OUT ,:YE
      Clear;
      Add('select NAME_AREA,ID_P_AREA,NOM,FIO,');
      Add('SUM(TOTAL) TOTAL,');
      Add('SUM(TOTAL1) TOTAL1,SUM(TOTAL2) TOTAL2,SUM(TOTAL3) TOTAL3,SUM(TOTAL4) TOTAL4,');
      Add('SUM(TOTAL5) TOTAL5,SUM(TOTAL6) TOTAL6,SUM(TOTAL7) TOTAL7,SUM(TOTAL8) TOTAL8,');
      Add('SUM(TOTAL9) TOTAL9,SUM(TOTAL10) TOTAL10,SUM(TOTAL11) TOTAL11,SUM(TOTAL12) TOTAL12 ');
      Add('from REP_TAB_SUM_YEAR(:ID_AR,:M_IN,:M_OUT ,:YE)');
      Add('group by NAME_AREA,ID_P_AREA,NOM,FIO');
      ParamByName('ID_AR').AsInteger := fmMain.C_PA;
      ParamByName('M_IN').AsInteger := 1;
      ParamByName('M_OUT').AsInteger := m;
      ParamByName('YE').AsInteger := y;
      Screen.Cursor := crHourGlass;
      Open;
      Screen.Cursor := crDefault;
    end;
  end;

  if pcTabel.ActivePage = tsTabPers then
  begin
    with qDay_TabList, qDay_TabList.SQL do
    begin
      Close; //:ID_AR,:M_IN,:M_OUT ,:YE
      Clear;
      add('select NAME_AREA,ID_P_AREA,NOM,FIO , TOTAL,');
      add('d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12,');
      add('d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26,');
      add('d27, d28, d29, d30, d31, id_p');
      add('from REP_TAB_SUM_YEAR_PERS(:ID_AR,:YE, :M)');
      ParamByName('ID_AR').AsInteger := fmMain.C_PA;
      //  ParamByName('M_IN').AsInteger  := 1;
      ParamByName('M').AsInteger := m;
      ParamByName('YE').AsInteger := y;
      Screen.Cursor := crHourGlass;
      Open;
      Screen.Cursor := crDefault;
    end;
  end;
  if pcTabel.ActivePage = tsSum_Order then
  begin
    with qRep_Order_Sum, qRep_Order_Sum.SQL do
    begin
      Close;
      ParamByName('id_area').AsInteger := fmMain.C_PA;
      ParamByName('d_in').AsDate := d_in;
      ParamByName('d_out').AsDate := d_out;
      Screen.Cursor := crHourGlass;
      Open;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfmTABEL.qRepDay_DetCalcFields(DataSet: TDataSet);
begin
  qRepDay_Detnom.AsInteger := qRepDay_Det.RecNo;
end;

procedure TfmTABEL.qRepDay_PersCalcFields(DataSet: TDataSet);
begin
  qRepDay_Persnom.AsInteger := qRepDay_Pers.RecNo;
end;

procedure TfmTABEL.qFio_Det_NomCalcFields(DataSet: TDataSet);
begin
  qFio_Det_Nomnom.AsInteger := qFio_Det_Nom.RecNo;
end;

procedure TfmTABEL.qPersAfterScroll(DataSet: TDataSet);
var
  s: string;
begin
  if not qRep_Plan_Day.IsEmpty then
    qRep_Plan_Day.Locate('id_p', qPersID_P.AsInteger, []);
  if pcGraf.ActivePage = ts_Order then
  begin
    with qRepDay_Order, qRepDay_Order.SQL do
    begin
      Close;
      ParamByName('id_area').AsInteger := fmMain.C_PA;
      ParamByName('d_in').AsDate := d_in;
      ParamByName('d_out').AsDate := d_out;
      ParamByName('id_p').AsInteger := qPersID_P.AsInteger;
      //qRep_Plan_DayID_P.AsInteger;
      Open;
    end;
    with qRep_Order, qRep_Order.SQL do
    begin
      Close;
      ParamByName('id_area').AsInteger := fmMain.C_PA;
      ParamByName('d_in').AsDate := d_in;
      ParamByName('d_out').AsDate := d_out;
      ParamByName('id_p').AsInteger := qPersID_P.AsInteger;
      //qRep_Plan_DayID_P.AsInteger;
      Open;
    end;

  end;
  if pcGraf.ActivePage = ts_FIO_Pers then
  begin
    //детали
    s := ' select distinct o.id_object ' +
      ' from product_objects o  join product_oper r on r.id_object = o.id_object' +
      ' join product_traff f on f.id_prod_oper = r.id_prod_oper and f.id_area = :id_area' +
      ' join product_plans l on l.d_out >= :d_in and l.d_out <= :d_out' +
      '  and  l.id_prod_traf = f.id_prod_traff' +
      ' join product_plans_p l1 on l1.id_p = :id_p and l1.id_prod_plan = l.id_prod_plan' +
      ' left join items i on i.id_item = o.id_item' +
      ' left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT' +
      //' left join personnel per on l1.id_p = per.id_p'+
    ' union ' +
      ' select distinct coalesce(l.id_dutytype,1) id_object' +
      ' from product_plans_stop l' +
      ' join product_plans_p l1 on  l.id_area = :id_area' +
      ' and l.d_out >= :d_in and l.d_out <= :d_out and l1.id_p = :id_p' +
      ' and l1.id_prod_plan_stop = l.id_prod_plan_stop' +
      ' left join dutytypes d on d.id_dutytype = l.id_dutytype' +
      ' left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT';
    // ' left join personnel per on l1.id_p = per.id_p';
    qFio_Det_Nom.Close;
    qFio_Det_Nom.SQL.Clear;
    qFio_Det_Nom.SQL.Add(s);
    qFio_Det_Nom.ParamByName('id_area').AsInteger := fmMain.C_PA;
    qFio_Det_Nom.ParamByName('d_in').AsDate := d_in;
    qFio_Det_Nom.ParamByName('d_out').AsDate := d_out;
    qFio_Det_Nom.ParamByName('id_p').AsInteger := qPersID_P.AsInteger;
    //qRep_Plan_DayID_P.AsInteger;
    qFio_Det_Nom.Open;

    s := 'select coalesce(per.fio,''' + 'Резерв''' +
      ') fio,l1.din+l1.tin din , l1.dto+l1.tto dto,' +
      'coalesce(o.obj_name,i.name)||coalesce(o.dec_no,''' + '' + ''') nm,' +
      'l.f_time f_time_p, o.id_object' +
      ' from project_ords p join product_objects o on o.id_version = p.id_version' +
      ' join product_oper r on r.id_object = o.id_object' +
      ' join product_traff f on f.id_prod_oper = r.id_prod_oper and f.id_area = :id_area' +
      ' join operations s on s.id_area = f.id_area and s.id_operation = f.id_operation' +
      ' join product_plans l on l.d_out >= :d_in and l.d_out <= :d_out and l.amount > 0' +
      ' and l.id_prod_traf = f.id_prod_traff' +
      ' join product_plans_p l1 on l1.id_p = :id_p and l1.id_prod_plan = l.id_prod_plan' +
      ' left join items i on i.id_item = o.id_item' +
      ' left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT' +
      ' left join personnel per on l1.id_p = per.id_p' +
      ' left join post ps on per.idpost = ps.idpost' +
      ' left join shifts h on h.id_shift = l.id_shift';
    s := s + ' union ' +
      'select coalesce(per.fio,''' + 'Резерв''' +
      ') fio, coalesce(l1.din+l1.tin, cast(l.d_out as timestamp)) din ,' +
      'coalesce(l1.dto+l1.tto, cast(l.d_out as timestamp) +' +
      '( (floor(l.f_time) + (l.f_time - floor(l.f_time))) )/24) dto,' +
      'cast(coalesce(d.name,''' + 'Без типа' + ''') as varchar(160))  nm,' +
      'l.f_time f_time_p, coalesce(l.id_dutytype,1) id_object' +
      ' from product_plans_stop l' +
      ' join product_plans_p l1 on  l.id_area = :id_area ' +
      '   and l.d_out >= :d_in and l.d_out <= :d_out and l1.id_p = :id_p' +
      ' and l1.id_prod_plan_stop = l.id_prod_plan_stop' +
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
    qFIO_DET.ParamByName('d_in').AsDate := d_in;
    qFIO_DET.ParamByName('d_out').AsDate := d_out;
    qFIO_DET.ParamByName('id_p').AsInteger := qPersID_P.AsInteger;
    //qRep_Plan_DayID_P.Value;
    qFIO_DET.Open;
  end;

end;

procedure TfmTABEL.SpeedButton3Click(Sender: TObject);
begin
  if (dbg17.Focused = False) and (dbg18.Focused = False) and
    (dbg20.Focused = False) and (dbg21.Focused = False) then
  begin
    ShowMessage('Необходимо выделить сетку...');
    Exit;
  end;
  Screen.Cursor := crHourGlass;
  if dbg17.Focused then
    GridToExcel(dbg17);
  if dbg18.Focused then
    GridToExcel(dbg18);
  if dbg20.Focused then
    GridToExcel(dbg20);
  if dbg21.Focused then
    GridToExcel(dbg21);
  Screen.Cursor := crDefault;

end;

procedure TfmTABEL.pcGrafChange(Sender: TObject);
begin
  qPersAfterScroll(qPers);
end;

procedure TfmTABEL.qOrderCalcFields(DataSet: TDataSet);
begin
  qOrdernom.AsInteger := qOrder.RecNo;
end;

procedure TfmTABEL.qWork_NormCalcFields(DataSet: TDataSet);
var
  dt: TDateTime;
  days: array[1..7] of string;
begin
  try
    //dmIS.qWork_Normms.AsString := NameMonth(dmIS.qWork_NormC_MONTH.AsInteger);
    dt := StrToDate('1.' + qWork_NormC_MONTH.AsString + '.' +
      qWork_NormC_YEAR.AsString);
    qWork_Normdate.AsDateTime := qWork_NormBEGIN_DAYS.AsInteger + dt;
  except
  end;
  days[1] := 'Воскресенье';
  days[2] := 'Понедельник';
  days[3] := 'Вторник';
  days[4] := 'Среда';
  days[5] := 'Четверг';
  days[6] := 'Пятница';
  days[7] := 'Суббота';
  qWork_NormnomDate.AsString := days[DayOfWeek(qWork_Normdate.AsDateTime)];

end;

procedure TfmTABEL.qTab_NormBeforeOpen(DataSet: TDataSet);
begin
  with qTab_Norm, qTab_Norm.SQL do
  begin
    Close;
    Clear;
    Add('select t.id_tab_norm, t.id_tab, t.id_p, t.id_norm, t.c_date, w.hours,s.name');
    Add('from tab_norms t join work_norms w on w.id_norm = t.id_norm');
    Add('join work_shifts s on s.work_shift = w.work_shift');
    Add('where t.id_tab = :id_tab and t.id_p = :id_p');
    Add('order by  t.c_date');
    ParamByName('id_tab').AsInteger := C_TAB;
    ParamByName('id_p').AsInteger := TN;
  end;

end;

procedure TfmTABEL.qTab_PosBeforeOpen(DataSet: TDataSet);
begin
  with qTab_Pos, qTab_Pos.SQL do
  begin
    Close;
    Clear;
    Add('select t.tab_day,t.val, c.name,c.shortname, t.comment, t.id_tab_pos,');
    Add(' t.id_tab_coeff,t.id_tab, id_p,  t.coeff, t.d_fix, t.id_fix');
    Add('from tab_pos t join tab_coeffs c on c.id_tab_coeff = t.id_tab_coeff');
    Add('where id_tab = :id_tab and t.id_p = :id_p');
    Add('order by t.tab_day , t.id_tab_coeff');
    ParamByName('id_tab').AsInteger := C_TAB;
    ParamByName('id_p').AsInteger := TN;
  end;

end;

procedure TfmTABEL.qTab_ExtBeforeOpen(DataSet: TDataSet);
begin
  with qTab_Ext, qTab_Ext.SQL do
  begin
    Close;
    Clear;
    Add('select t.id_tab_exrafee, t.id_tab, t.id_p, t.c_date, t.tatal_sum,');
    Add('t.id_currency,t.id_order, t.rem, t.id_typeexrafee, o.name,o.n_order');
    Add('from tab_exrafees t left join project_ords o on o.id_order = t.id_order ');
    Add('where t.id_tab = :id_tab and t.id_p = :id_p ');
    Add(OrdBy(dbg_Ext));
    ParamByName('id_tab').AsInteger := C_TAB;
    ParamByName('id_p').AsInteger := TN;
  end;

end;

procedure TfmTABEL.cbExtClick(Sender: TObject);
begin
  if (qTab_Ext.State in [dsInsert, dsEdit]) then
    qTab_Ext.Post;
  if cbExt.Checked then
    dbg_ExtSortMarkingChanged(Sender)
  else
    qTab_Ext.Close;

end;

procedure TfmTABEL.dbg_ExtSortMarkingChanged(Sender: TObject);
begin
  qTab_Ext.Close;
  qTab_Ext.Open;
end;

procedure TfmTABEL.qTab_ExtNewRecord(DataSet: TDataSet);
var
  GR: TGridRect;
begin
  GR := sg1.Selection;
  TN := StrToInt(sg1.Cells[1, GR.Top]);
  qTab_ExtID_TAB.AsInteger := C_TAB;
  qTab_ExtID_P.AsInteger := TN;
  qTab_ExtID_CURRENCY.AsInteger := 1;

end;

procedure TfmTABEL.dbg_ExtColumns4UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  try
    qIns.Close;
    qIns.sql.Clear;
    qIns.SQL.Add('select p.*');
    qIns.SQL.Add(' from PROJECT_ORDS p');
    qIns.SQL.Add(' where upper(p.N_ORDER) like upper(' + '''%' +
      AnsiUpperCase(text) + '%''' + ')');
    //qIns.SQL.Add('and p.n_order = :n_order');
    //qIns.ParamByName('n_order').AsString := text;
    //showMessage(qIns.Text);
    qIns.Open;
    qIns.FetchAll;
    if qIns.IsEmpty then
    begin
      ShowMessage('Не найден Заказ с таким вхождением.. ');
      exit;
    end;
    if qIns.RecordCount > 1 then
    begin
      ShowMessage('Найдено несколько заказов.. ');
      if not Assigned(fmListTZ) then
        Application.CreateForm(TfmListTZ, fmListTZ);
      if dbg16.FieldColumns['DIN'].Color = clSkyBlue then
      begin
        qTab_Ext.Edit;
        fmListTZ.Ins_Order := 1;
      end;
      fmListTZ.edFind.Text := text;
      fmListTZ.Show;
    end;
    text := qIns.FieldByName('N_ORDER').Value;
    qTab_Ext.Edit;
    qTab_ExtN_ORDER.Value := text;
    qTab_ExtNAME.Value := qIns.FieldByName('NAME').Value;
    qTab_ExtID_ORDER.Value := qIns.FieldByName('ID_ORDER').Value;
    qTab_Ext.Post;
    qTab_Ext.Edit;
  except
    qTab_Ext.Edit;
    qTab_ExtN_ORDER.Clear;
    qTab_ExtNAME.Clear;
    qTab_ExtID_ORDER.Clear;
    qTab_Ext.Post;
    qTab_Ext.Edit;
  end;

end;

procedure TfmTABEL.dbg_ExtColumns4EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if not Assigned(fmListTZ) then
    Application.CreateForm(TfmListTZ, fmListTZ);
  if dbg_Ext.ReadOnly = False then
    fmListTZ.Ins_Order := 1;
  fmListTZ.edFind.Text := qTab_ExtN_ORDER.AsString;
  fmListTZ.Show;

end;

procedure TfmTABEL.lcbPostCloseUp(Sender: TObject; Accept: Boolean);
{var
  GR: TGridRect;}
begin
  Refreshed;
end;

procedure TfmTABEL.qTab_NormAfterDelete(DataSet: TDataSet);
var
  ARow: Integer;
  GR: TGridRect;
begin
  Screen.Cursor := crHourGlass;
  GR := sg1.Selection;
  ARow := sg1.Row;
  dmIS.mT.CommitRetaining;
  qT_Norm.Close;
  qT_Norm.ParamByName('id_tab').AsInteger := C_TAB;
  qT_Norm.ParamByName('id_p').AsString := sg1.Cells[1, ARow];
  qT_Norm.Open;

  sg1.Cells[7, ARow] := '';
  while not qT_Norm.Eof do
  begin
    if sg1.Cells[7, ARow] = '' then
      sg1.Cells[7, ARow] := qT_NormHOURS.AsString + ' '
    else
      sg1.Cells[7, ARow] := sg1.Cells[7, ARow] + ' ' + qT_NormHOURS.AsString;
    qT_Norm.Next;
  end;
  qTab_Norm.Close;
  qTab_Norm.Open;
  Screen.Cursor := crDefault;
end;

procedure TfmTABEL.lcbWorkCloseUp(Sender: TObject; Accept: Boolean);
begin
  Refreshed;
end;

procedure TfmTABEL.lcbContrCloseUp(Sender: TObject; Accept: Boolean);
begin
  Refreshed;
end;

procedure TfmTABEL.sbOrderClick(Sender: TObject);
begin
  ShowMessage('В разработке....');
end;

procedure TfmTABEL.qTab_ExtAfterPost(DataSet: TDataSet);
begin
  if qTab_Ext.Transaction.Active then
    qTab_Ext.Transaction.CommitRetaining;
end;

procedure TfmTABEL.qTab_ExtPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  if qTab_Ext.Transaction.Active then
    qTab_Ext.Transaction.RollbackRetaining;
end;

procedure TfmTABEL.qTab_ExtBeforePost(DataSet: TDataSet);
begin
  if MonthOf(qTab_ExtC_DATE.AsDateTime) <> m then
  begin
    MsgInformation('Дата не соответствует периоду...', 'Проверка даты');
    qTab_Ext.Cancel;
    Abort;
  end;

end;

procedure TfmTABEL.SpeedButton5Click(Sender: TObject);
begin
  if pcTabel.ActivePage = tsSum_Tabel then
  begin
    with qSum_Tab_List, qSum_Tab_List.SQL do
    begin
      Close; //:ID_AR,:M_IN,:M_OUT ,:YE
      Clear;
      Add('select NAME_AREA,ID_P_AREA,NOM,FIO,');
      Add('SUM(TOTAL) TOTAL,');
      Add('SUM(TOTAL1) TOTAL1,SUM(TOTAL2) TOTAL2,SUM(TOTAL3) TOTAL3,SUM(TOTAL4) TOTAL4,');
      Add('SUM(TOTAL5) TOTAL5,SUM(TOTAL6) TOTAL6,SUM(TOTAL7) TOTAL7,SUM(TOTAL8) TOTAL8,');
      Add('SUM(TOTAL9) TOTAL9,SUM(TOTAL10) TOTAL10,SUM(TOTAL11) TOTAL11,SUM(TOTAL12) TOTAL12 ');
      Add('from REP_TAB_ALLPRODAREA_SUM_YEAR(:M_IN,:M_OUT ,:YE)');
      Add('group by NAME_AREA,ID_P_AREA,NOM,FIO');
      ParamByName('M_IN').AsInteger := 1;
      ParamByName('M_OUT').AsInteger := m;
      ParamByName('YE').AsInteger := y;
      Screen.Cursor := crHourGlass;
      Open;
      Screen.Cursor := crDefault;
    end;
  end;

  if pcTabel.ActivePage = tsTabPers then
  begin
    with qDay_TabList, qDay_TabList.SQL do
    begin
      Close; //:ID_AR,:M_IN,:M_OUT ,:YE
      Clear;
      Add('select NAME_AREA,ID_P_AREA,NOM,FIO,');
      Add('TOTAL,');
      add('d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12,');
      add('d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26,');
      add('d27, d28, d29, d30, d31, id_p');
      Add('from REP_TAB_ALLPRODAREA_SUM_PERS(:YE, :M)');
      { Add('group by NAME_AREA,ID_P_AREA,NOM,FIO, TOTAL,');
       add('d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12,');
       add('d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26,');
       add('d27, d28, d29, d30, d31, id_p');}
     //  ParamByName('M_IN').AsInteger  := 1;
      ParamByName('M').AsInteger := m;
      ParamByName('YE').AsInteger := y;
      Screen.Cursor := crHourGlass;
      Open;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfmTABEL.qRep_Ord_SumCalcFields(DataSet: TDataSet);
begin
  qRep_Ord_SumnSF1_SF2.AsFloat := qRep_Ord_SumSF1.AsFloat +
    qRep_Ord_SumSF2.AsFloat;
end;

procedure TfmTABEL.SpeedButton6Click(Sender: TObject);
begin
  pcChange(Sender);
end;

procedure TfmTABEL.qTab_ListBeforeOpen(DataSet: TDataSet);
begin
  with qTab_List, qTab_List.SQL do
  begin
    Close;
    Clear;
    if cbSum.Checked then
      Add(mmTab_List_Sum.Text)
    else
      Add(qTabList);
    case rg_TP.ItemIndex of
      1: Add('where (a.tp = 1 or a.tp = -2) ');
      2: Add('where a.tp = 0');
    end;
    // ShowMessage(text);
    ParamByName('ID_TAB').AsInteger := C_TAB;
    ParamByName('ID_P_AREA').AsInteger := fmMain.C_PA;
    ParamByName('d_in').AsDateTime := d_in;
    ParamByName('d_out').AsDateTime := d_out;
  end;

end;

procedure TfmTABEL.qTab_List_PlanBeforeOpen(DataSet: TDataSet);
begin
  with qTab_List_Plan, qTab_List_Plan.SQL do
  begin
    Close;
    Clear;
    Add('select 1 f, cast(FIO || ''' + '[''' + ' || NAME ||''' + ']''' +
      ' as VARCHAR(110)) fio,');
    if cbSum_P.Checked then
      Add('0 tp, id_p,Sum(TOTAL_F) total_f ,')
    else
      Add('tp, id_p,Sum(TOTAL_F) total_f ,');
    Add('Sum(D1) d1,Sum(D2) d2,Sum(D3) d3,Sum(D4) d4,Sum(D5) d5,Sum(D6) d6,Sum(D7) d7,Sum(D8) d8,Sum(D9) d9,');
    Add('Sum(D10) d10,Sum(D11) d11,Sum(D12) d12,Sum(D13) d13,Sum(D14) d14,Sum(D15) d15,Sum(D16) d16,Sum(D17) d17,');
    Add('Sum(D18) d18,Sum(D19) d19,Sum(D20) d20,Sum(D21) d21,Sum(D22) d22,Sum(D23) d23,Sum(D24) d24,Sum(D25) d25,');
    Add('Sum(D26) d26,Sum(D27) d27,Sum(D28) d28,Sum(D29) d29,Sum(D30) d30,Sum(D31) d31');
    Add('from (select * from REP_SORS_ID_P(:ID_TAB_,:ID_P_AREA,:D_IN,:D_OUT))');
    case rg_TP_P.ItemIndex of
      1: Add('where (tp = 1 or tp = 4) ');
      2: Add('where (tp = 0 or tp = 4)');
    end;
    Add('group by 1,2,3,4');
    // ShowMessage(text);
    ParamByName('ID_TAB_').AsInteger := C_TAB;
    ParamByName('ID_P_AREA').AsInteger := fmMain.C_PA;
    ParamByName('d_in').AsDateTime := d_in;
    ParamByName('d_out').AsDateTime := d_out;
  end;
end;

procedure TfmTABEL.SpeedButton7Click(Sender: TObject);
begin
  pcChange(Sender);
end;

procedure TfmTABEL.dbgTabPersGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qDay_TabListNOM.AsInteger = 2 then //итого по табелю
    Background := clSkyBlue;
    AFont.Color := clSkyBlue;
  if (qDay_TabListNOM.AsInteger = 3) and
    (StrPos(PChar(qDay_TabListFIO.AsString), PChar('[]')) <> nil) then
    Background := clMoneyGreen;
  if (qDay_TabListNOM.AsInteger = 4) and
    (StrPos(PChar(qDay_TabListFIO.AsString), PChar('Ресурс времени')) <> nil)
      then
    Background := clSilver;
  if (qDay_TabListNOM.AsInteger = 4) and
    (StrPos(PChar(qDay_TabListFIO.AsString), PChar('Фактическое время Итого'))
    <> nil) then
    Background := clInfoBk;
end;

 // Проверка, установлен ли Exel на ПК пользователя
function CaheckExcelInstall:boolean;
var
  ClassID:TCLSID;
  ReZ:HRESULT;
 
begin
  ReZ := CLSIDFromProgID(PWideChar(WideString(ExcelApp)), ClassID);
  if ReZ = S_OK then
    Result := true
  else
    Result := false;
end;


  //Определяем запущен ли Exel
function CheckExcelRun: boolean;

begin
  try
  //  MyExcel := GetActiveOleObject('Excel.Application');
    Result := True;

  except
    Result := False;
end;
end;


procedure TfmTABEL.SpeedButton20Click(Sender: TObject);
begin
  if  CaheckExcelInstall = false then
         begin
            showmessage('Установите Эксель');
         exit;
         end
     else


    if  CheckExcelRun = false  then
         begin
             showmessage('Эксель запущен');
           exit;
         end
     else


  if (dbg_Norm.Focused = False) and (dbg_Tab.Focused = False) and
     (dbg_Ext.Focused = False) and (dbg_Obj.Focused = False)
   then
  begin
    if qTab_Norm.State in [dsedit, dsInsert] then qTab_Norm.Post;
    ShowMessage('Необходимо выделить сетку...');
    dbg_norm.SetFocus;
    Exit;
  end;
  Screen.Cursor := crHourGlass;
  if dbg_Norm.Focused then
    GridToExcel(dbg_Norm);
  if dbg_Tab.Focused then
    GridToExcel(dbg_Tab);
  if dbg_Ext.Focused then
    GridToExcel(dbg_Ext);
  if dbg_Obj.Focused then
    GridToExcel(dbg_Obj);

  Screen.Cursor := crDefault;
end;

procedure TfmTABEL.ed2KeyPress(Sender: TObject; var Key: Char);
begin
case key of
   #8, 'А'..'я': ;
    '.',#13:
   else
     showmessage('Некорректный ввод');
     key :=chr(0);
   end;
end;

end.

