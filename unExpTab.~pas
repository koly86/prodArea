{*******************************************************}
{                                                       }
{                Форма  "Выгрузка табеля"               }
{              разработан  Абаккумовым О.И.             }
{          Модифицирован Ливанским Н.Ю. 11.2012         }
{                                                       }
{              Copyright (c) 11.2012 by PVG             }
{                                                       }
{*******************************************************}

unit unExpTab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unIs, DB, IBCustomDataSet, IBQuery, Grids, DBGridEh, StdCtrls,
  Buttons, ExtCtrls, IBUpdateSQL, shrfunc, xlcClasses, xlEngine, xlReport,
  ComCtrls, Mask, DBCtrlsEh, DBLookupEh, Spin, dateutils;

type
  TfmExpTabel = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    bbExport: TBitBtn;
    dbg1: TDBGridEh;
    qP_Area: TIBQuery;
    dsP_area: TDataSource;
    qExp: TIBQuery;
    qP_AreaCHK: TIntegerField;
    qP_AreaID_P_AREA: TIntegerField;
    qP_AreaSHORTNAME: TIBStringField;
    qP_AreaNAME: TIBStringField;
    upP_AREA: TIBUpdateSQL;
    sbChekAll: TSpeedButton;
    sbUnchek: TSpeedButton;
    sbInvertChek: TSpeedButton;
    qTab_List: TIBQuery;
    qTab_ListF: TIntegerField;
    qTab_ListFIO: TIBStringField;
    qTab_ListNM: TIBStringField;
    qTab_ListKF: TIBStringField;
    qTab_ListTP: TIntegerField;
    qTab_ListID_P: TIntegerField;
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
    rg_TP: TRadioGroup;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    ed1: TEdit;
    Label2: TLabel;
    cb1: TComboBox;
    qIns: TIBQuery;
    Panel7: TPanel;
    cbClosed: TCheckBox;
    qAr: TIBQuery;
    qArID_P_AREA: TIntegerField;
    qArID_TAB: TIntegerField;
    qPers: TIBQuery;
    dsAr: TDataSource;
    dsPers: TDataSource;
    dsTabs: TDataSource;
    qTabs: TIBQuery;
    qTabsNAME_AREA: TIBStringField;
    qTabsNOM: TIntegerField;
    qTabsID_TAB: TIntegerField;
    qTabsID_P_AREA: TIntegerField;
    qTabsID_YEAR: TSmallintField;
    qTabsID_MONTH: TSmallintField;
    qTabsTAB_DAY: TDateField;
    qTabsNOM_DAY: TSmallintField;
    qTabsID_P: TIntegerField;
    qTabsID_TAB_COEFF: TIntegerField;
    qTabsCOEFF: TFloatField;
    qTabsVAL: TFloatField;
    qTabsSHORTNAME_COEFF: TIBStringField;
    qTabsTP: TIntegerField;
    qTabsFIO: TIBStringField;
    qTabsNAME: TIBStringField;
    qTabsTOTAL: TFloatField;
    qTabsTOTAL_ALL: TFloatField;
    qTabsNORM_TIME: TFloatField;
    qTabsD1: TFloatField;
    qTabsD2: TFloatField;
    qTabsD3: TFloatField;
    qTabsD4: TFloatField;
    qTabsD5: TFloatField;
    qTabsD6: TFloatField;
    qTabsD7: TFloatField;
    qTabsD8: TFloatField;
    qTabsD9: TFloatField;
    qTabsD10: TFloatField;
    qTabsD11: TFloatField;
    qTabsD12: TFloatField;
    qTabsD13: TFloatField;
    qTabsD14: TFloatField;
    qTabsD15: TFloatField;
    qTabsD16: TFloatField;
    qTabsD17: TFloatField;
    qTabsD18: TFloatField;
    qTabsD19: TFloatField;
    qTabsD20: TFloatField;
    qTabsD21: TFloatField;
    qTabsD22: TFloatField;
    qTabsD23: TFloatField;
    qTabsD24: TFloatField;
    qTabsD25: TFloatField;
    qTabsD26: TFloatField;
    qTabsD27: TFloatField;
    qTabsD28: TFloatField;
    qTabsD29: TFloatField;
    qTabsD30: TFloatField;
    qTabsD31: TFloatField;
    xlTab: TxlReport;
    qArNAME_AREA: TIBStringField;
    qPersID_TAB: TIntegerField;
    qPersID_P_AREA: TIntegerField;
    qPersID_YEAR: TSmallintField;
    qPersID_MONTH: TSmallintField;
    qPersID_P: TIntegerField;
    qPersFIO: TIBStringField;
    qPersNAME: TIBStringField;
    qPersNAME1: TIBStringField;
    qPersIS_WORKER: TIntegerField;
    qSumTab: TIBQuery;
    qSumTabFREE: TFloatField;
    dsSumTab: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbg2: TDBGridEh;
    Panel4: TPanel;
    dsExp: TDataSource;
    qExpNAME_PROD: TIBStringField;
    qExpNAME_AREA: TIBStringField;
    qExpTOTAL_ALL: TFloatField;
    qExpTOTAL_BOLNICH: TFloatField;
    qExpTOTAL_PERE: TFloatField;
    qExpTOTAL_OTPUSK: TFloatField;
    qExpTOTAL_PROGUL: TFloatField;
    qExpTOTAL_SVOY: TFloatField;
    Label3: TLabel;
    ed2: TEdit;
    cb2: TComboBox;
    Label4: TLabel;
    xlrSvod: TxlReport;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    DBGridEh1: TDBGridEh;
    qProd: TIBQuery;
    dsProd: TDataSource;
    qProdCHK: TIntegerField;
    qProdNAME: TIBStringField;
    qProdID_P_AREA: TIntegerField;
    upProd: TIBUpdateSQL;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGridEh2: TDBGridEh;
    qP: TIBQuery;
    dsP: TDataSource;
    qPCHK: TIntegerField;
    upP: TIBUpdateSQL;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    qPNAME: TIBStringField;
    qPID_PATYPE: TSmallintField;
    Panel8: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    tsUpr: TTabSheet;
    dbg3: TDBGridEh;
    qTab_List_upr: TIBQuery;
    qTab_List_uprFIO: TIBStringField;
    qTab_List_uprNM: TIBStringField;
    qTab_List_uprKF: TIBStringField;
    qTab_List_uprTP: TIntegerField;
    qTab_List_uprID_P: TIntegerField;
    qTab_List_uprTOTAL: TFloatField;
    qTab_List_uprD1: TFloatField;
    qTab_List_uprD2: TFloatField;
    qTab_List_uprD3: TFloatField;
    qTab_List_uprD4: TFloatField;
    qTab_List_uprD5: TFloatField;
    qTab_List_uprD6: TFloatField;
    qTab_List_uprD7: TFloatField;
    qTab_List_uprD8: TFloatField;
    qTab_List_uprD9: TFloatField;
    qTab_List_uprD10: TFloatField;
    qTab_List_uprD11: TFloatField;
    qTab_List_uprD12: TFloatField;
    qTab_List_uprD13: TFloatField;
    qTab_List_uprD14: TFloatField;
    qTab_List_uprD15: TFloatField;
    qTab_List_uprD16: TFloatField;
    qTab_List_uprD17: TFloatField;
    qTab_List_uprD18: TFloatField;
    qTab_List_uprD19: TFloatField;
    qTab_List_uprD20: TFloatField;
    qTab_List_uprD21: TFloatField;
    qTab_List_uprD22: TFloatField;
    qTab_List_uprD23: TFloatField;
    qTab_List_uprD24: TFloatField;
    qTab_List_uprD25: TFloatField;
    qTab_List_uprD26: TFloatField;
    qTab_List_uprD27: TFloatField;
    qTab_List_uprD28: TFloatField;
    qTab_List_uprD29: TFloatField;
    qTab_List_uprD30: TFloatField;
    qTab_List_uprD31: TFloatField;
    dsTab_List_upr: TDataSource;
    Panel9: TPanel;
    Panel10: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    ed3: TEdit;
    cb3: TComboBox;
    tbRfr: TSpeedButton;
    tbExc: TSpeedButton;
    qTab_List_uprNAME_AREA: TIBStringField;
    qTab_List_uprCOEFF: TFloatField;
    GroupBox4: TGroupBox;
    dbgKoeff: TDBGridEh;
    qKOeff: TIBQuery;
    dsKOeff: TDataSource;
    Panel11: TPanel;
    tbKAll: TSpeedButton;
    tbKUnchek: TSpeedButton;
    tbKInvert: TSpeedButton;
    qKOeffCHK: TIntegerField;
    qKOeffID_TAB_COEFF: TIntegerField;
    qKOeffSHORTNAME: TIBStringField;
    upKoeff: TIBUpdateSQL;
    cbSumm: TCheckBox;
    Label7: TLabel;
    lcb4: TDBLookupComboboxEh;
    cb4: TCheckBox;
    Label8: TLabel;
    qWorkDays: TIBQuery;
    GroupBox5: TGroupBox;
    cb5: TCheckBox;
    Label9: TLabel;
    Label10: TLabel;
    qWorkDaysID_P: TIntegerField;
    ed4: TSpinEdit;
    ed5: TSpinEdit;
    ed6: TSpinEdit;
    cbAll: TCheckBox;
    qWork1: TIBQuery;
    qWork1NM: TIBStringField;
    qWork1KF: TIBStringField;
    qWork1TP: TIntegerField;
    qWork1ID_P: TIntegerField;
    qWork1TOTAL: TFloatField;
    qWork1D1: TFloatField;
    qWork1D2: TFloatField;
    qWork1D3: TFloatField;
    qWork1D4: TFloatField;
    qWork1D5: TFloatField;
    qWork1D6: TFloatField;
    qWork1D7: TFloatField;
    qWork1D8: TFloatField;
    qWork1D9: TFloatField;
    qWork1D10: TFloatField;
    qWork1D11: TFloatField;
    qWork1D12: TFloatField;
    qWork1D13: TFloatField;
    qWork1D14: TFloatField;
    qWork1D15: TFloatField;
    qWork1D16: TFloatField;
    qWork1D17: TFloatField;
    qWork1D18: TFloatField;
    qWork1D19: TFloatField;
    qWork1D20: TFloatField;
    qWork1D21: TFloatField;
    qWork1D22: TFloatField;
    qWork1D23: TFloatField;
    qWork1D24: TFloatField;
    qWork1D25: TFloatField;
    qWork1D26: TFloatField;
    qWork1D27: TFloatField;
    qWork1D28: TFloatField;
    qWork1D29: TFloatField;
    qWork1D30: TFloatField;
    qWork1D31: TFloatField;
    qWork1FIO: TIBStringField;
    qWork1AREAN: TIBStringField;
    qWork1PR: TIBStringField;
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
    qRep_Plan_DayID_ORDER: TIntegerField;
    qRep_Plan_DayID_OBJECT: TIntegerField;
    qRep_Plan_DayOBJ_TYPE: TIntegerField;
    qRep_Plan_DayID_OPERATION: TIntegerField;
    qRep_Plan_DayID_PROD_PLAN: TIntegerField;
    qRep_Plan_DayNAME_SHIFT: TIBStringField;
    qRep_Plan_DayNAME_PTYPE: TIBStringField;
    dsRep_Plan_Day: TDataSource;
    sbOrd: TSpeedButton;
    qRep_Plan_DayARNAME: TIBStringField;
    qRepDay_Pers: TIBQuery;
    qRepDay_PersFIO: TIBStringField;
    qRepDay_PersID_P: TIntegerField;
    qRepDay_Persnom: TIntegerField;
    dsRepDay_Pers: TDataSource;
    qRepDay_Det: TIBQuery;
    qRepDay_DetID_OBJECT: TIntegerField;
    qRepDay_Detnom: TIntegerField;
    procedure sbChekAllClick(Sender: TObject);
    procedure sbUnchekClick(Sender: TObject);
    procedure sbInvertChekClick(Sender: TObject);
    procedure DBGridEh1Columns0UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure bbExportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cb1CloseUp(Sender: TObject);
    procedure qP_AreaBeforeOpen(DataSet: TDataSet);
    procedure cbClosedClick(Sender: TObject);
    procedure qP_AreaAfterEdit(DataSet: TDataSet);
    procedure qP_AreaBeforePost(DataSet: TDataSet);
    procedure dbg1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure tbRfrClick(Sender: TObject);
    procedure tbExcClick(Sender: TObject);
    procedure tbKAllClick(Sender: TObject);
    procedure tbKInvertClick(Sender: TObject);
    procedure tbKUnchekClick(Sender: TObject);
    procedure cbSummClick(Sender: TObject);
    procedure ed1KeyPress(Sender: TObject; var Key: Char);
    procedure cb4Click(Sender: TObject);
    procedure cb5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbOrdClick(Sender: TObject);

  private
    s, q: string;
//    d_in, d_out: TDate;
    m: byte;
    { Private declarations }
  public
    { Public declarations }
    procedure InitTabs;
  end;

var
  fmExpTabel: TfmExpTabel;

implementation

uses StrUtils;

{$R *.dfm}

procedure TfmExpTabel.InitTabs;
var
  s_p, s_p2: string;
begin
  s_p := '';
  qProd.First;
  DBGridEh1.DataSource.DataSet.DisableControls;
  repeat
    //  qProd.Edit;
    if qProdCHK.AsInteger = 1 then
      s_p := s_p + qProdID_P_AREA.AsString + ',';

    qProd.Next;
  until qProd.Eof;
  if s_p[length(s_p)] = ',' then
    s_p := copy(s_P, 0, length(s_p) - 1);
  if s_p = '' then
  begin
    MsgError('Выберите хотя бы  1 производство!', 'Проверка данных');

    exit;
  end;
  DBGridEh1.DataSource.DataSet.EnableControls;

  s_p2 := '';
  qP.First;
  DBGridEh2.DataSource.DataSet.DisableControls;
  repeat
    //  qProd.Edit;
    if qPCHK.AsInteger = 1 then
      s_p2 := s_p2 + qPID_PATYPE.AsString + ',';

    qP.Next;
  until qP.Eof;
  if s_p2[length(s_p2)] = ',' then
    s_p2 := copy(s_P2, 0, length(s_p2) - 1);
  if s_p2 = '' then
  begin
    MsgError('Выберите хотя бы  1 участок!', 'Проверка данных');

    exit;
  end;
  DBGridEh2.DataSource.DataSet.EnableControls;

  with qExp, qExp.sql do
  begin
    close;
    clear;
    add('select z.name_prod, z.name_area, z.id_prod, -10,');
    add(' z.total_all, z.total_bolnich, z.total_pere, z.total_otpusk,');
    add('z.total_progul, z.total_svoy');
    add('from get_tab_prod(:id,:m_in,:m_out,:ye) z');
    add('where z.id_prod in (' + s_p + ')');
    add('and z.id_patype in (' + s_p2 + ')');
    add('union');
    add('select ''' + 'Итого' + ''', ''' + 'Итого по всем участкам' +
      ''', -1, 0,');
    add('sum(z.total_all), sum(z.total_bolnich), sum(z.total_pere), ');
    add('sum(z.total_otpusk),sum(z.total_progul), sum(z.total_svoy)');
    add('from get_tab_prod(:id,:m_in,:m_out,:ye) z');
    add('where z.id_prod in (' + s_p + ')');
    add('and z.id_patype in (' + s_p2 + ')');
    add('union');
    add('select ''' + 'Итого' + ''', ''' + 'Итого по ' + ''' ||z.name_prod,'
      + 'z.id_prod, 10,');
    add('sum(z.total_all), sum(z.total_bolnich), sum(z.total_pere),');
    add(' sum(z.total_otpusk),sum(z.total_progul), sum(z.total_svoy)');
    add('from get_tab_prod(:id,:m_in,:m_out,:ye) z');
    add('where z.id_prod in (' + s_p + ')');
    add('and z.id_patype in (' + s_p2 + ')');
    add('group by 2,3');
    add('order by 4, 1 ');
  end;
end;

procedure TfmExpTabel.sbChekAllClick(Sender: TObject);
begin
  qP_Area.close;
  qP_area.ParamByName('pr').AsInteger := 1;
  if cbClosed.Checked then
    qP_area.ParamByName('cls').AsInteger := 1
  else
    qP_area.ParamByName('cls').clear;
  qP_area.Open;
end;

procedure TfmExpTabel.sbUnchekClick(Sender: TObject);
begin
  qP_area.close;
  qP_area.ParamByName('pr').AsInteger := 0;
  qP_area.Open;
end;

procedure TfmExpTabel.sbInvertChekClick(Sender: TObject);
var
  id: integer;
begin
  id := qP_AreaID_P_AREA.AsInteger;
  qP_Area.First;

  dbg1.DataSource.DataSet.DisableControls;
  repeat
    qP_Area.Edit;
    if qP_areaCHK.AsInteger = 1 then
      qP_AreaCHK.AsInteger := 0
    else
      qp_areaCHK.AsInteger := 1;
    qP_area.Post;
    qp_area.Next;
  until qP_area.Eof;
  qP_area.Locate('id_p_area', id, []);
  dbg1.DataSource.DataSet.EnableControls;
end;

procedure TfmExpTabel.DBGridEh1Columns0UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin

  // showmessage('!');
    {qP_Area.Edit;
    qP_AreaCHK.AsInteger := value;
    qP_Area.Post;}
   // showmessage(inttostr(qP_AreaCHK.AsInteger));
end;

procedure TfmExpTabel.bbExportClick(Sender: TObject);
var
  s_param: string;
  id: integer;
  qq: string;
  i, j: integer;
  param_list: string;
  d_beg, d_end :Tdate;
begin
  // //if dbg1.Columns.Items[0].CheckboxState = cbChecked then showmessage('!');
  //GridToExcel(dbg2);

  id := qP_AreaID_P_AREA.AsInteger;
  qP_Area.First;
  s_param := '';
  dbg1.DataSource.DataSet.DisableControls;
  repeat
    qP_Area.Edit;
    if qP_AreaCHK.AsInteger = 1 then
      s_param := s_param + qP_AreaID_P_AREA.AsString + ',';
    qP_Area.Next;
  until qP_area.Eof;
  if s_param = '' then
  begin
    MsgError('Выберите хотя бы  1 участок!', 'Проверка данных');
    dbg1.DataSource.DataSet.EnableControls;
    exit;
  end;

  qP_area.Locate('id_p_area', id, []);
  dbg1.DataSource.DataSet.EnableControls;

 if cbAll.Checked then
 begin

  d_beg := EncodeDate(StrToInt(ed1.text),cb1.ItemIndex + 1,1);
  d_end := EncodeDate(StrToInt(ed1.text),cb1.ItemIndex +
   1, DaysinMonth(EncodeDate(StrToInt(ed1.text),cb1.ItemIndex + 1,1)));

  with qWork1, qWork1.SQL do
  begin
   Close;
   Clear;
   Add('select * from rep_sors_all_short(:id_p_area_s, :d_in, :d_out, :y1, :m1, :sm)');
   ParamByName('id_p_area_s').AsString := s_param;
   ParamByName('d_in').AsDate := d_beg;
   ParamByName('d_out').AsDate := d_end;
   ParamByname('y1').AsInteger := strtoint(ed1.text);
   ParamByname('m1').AsInteger := cb1.ItemIndex + 1;
   ParamByName('sm').AsInteger := 1;
   open;
   DSToExcel(qWork1);
  end;
 end
 else
 begin
  if shrfunc.GetTemplate(43, qIns, xlTab) = false then
  begin
    MsgError('Не найден шаблон', 'Загрузка шаблона');
    exit;
  end;
  qTabs.Close;
  qTabs.SQL.Clear;
  qTabs.sql.add(q);
  case rg_TP.ItemIndex of
    1: qTabs.sql.Add('AND (zxx.tp = 1 or zxx.tp = -2)');
    2: qTabs.sql.Add('AND zxx.tp = 0');
  end;

  if lcb4.KeyValue <> null then
  begin
    qTabs.SQL.add('and zxx.sortofwork=' + chr(39) + lcb4.KeyValue + chr(39));
    qPers.SQL.add('and p.sortofwork=' + chr(39) + lcb4.KeyValue + chr(39));
  end;

  qpers.open;
  qTabs.Open;
  qTabs.FetchAll;

  qq :=
    'select sum(zxx.total) -  coalesce((select zxx1.total  from rep_tab(:id_tab) zxx1';
  qq := qq + ' where zxx1.id_p = :id_p';
  if lcb4.KeyValue <> null then
    qq := qq + ' and zxx1.sortofwork=' + chr(39) + lcb4.KeyValue + chr(39);
  qq := qq + '  and zxx1.id_tab_coeff = 4),0) free';
  qq := qq + '  from rep_tab(:id_tab) zxx where zxx.id_p = :id_p';
  if lcb4.KeyValue <> null then
    qq := qq + ' and zxx.sortofwork=' + chr(39) + lcb4.KeyValue + chr(39);

  qSumTab.Close;
  qSumTab.SQL.Text := qq;
  qSumTab.Open;
  qPers.Close;
  qPers.Open;
  qAr.close;
  qAr.ParamByName('id_p_area_s').AsString := s_param;
  qAr.ParamByname('m1').AsInteger := cb1.ItemIndex + 1;
  qAr.ParamByname('y1').AsInteger := strtoint(ed1.text);
  qAr.Open;
  qAr.FetchAll;

  if cb4.Checked then
  begin
    param_list := '';
    qAr.First;
    for i := 0 to qAr.RecordCount - 1 do
    begin
      if not qArID_TAB.IsNull then
      begin
        param_list := param_list + qArID_TAB.AsString;
        if i <> qAr.RecordCount - 1 then
          param_list := param_list + ',';
      end;
      qAr.Next;
    end;



 //    qTabs.First;
    with qWorkDays, qWorkDays.SQL do
    begin
      if Active then
        Close;
      Clear;
      Add('select distinct t1.ID_P from TAB_POS t1');
      Add('where t1.ID_TAB in (' + param_list + ')');
      if cb5.Checked then
        Add('and EXTRACT(DAY FROM t1.TAB_DAY) between ' + ed5.Text + ' and ' +
          ed6.Text);
      Add('and ((select max(EXTRACT(DAY FROM TAB_DAY))-min(EXTRACT(DAY FROM TAB_DAY))-1');
      Add('  from TAB_POS tt');
      Add('  where tt.ID_TAB =t1.ID_TAB and tt.ID_P = t1.ID_P and (EXTRACT(DAY FROM tt.TAB_DAY)>=');
      Add('    (select first 1 EXTRACT(DAY FROM ttt.TAB_DAY)');
      Add('    from TAB_POS ttt');
      Add('    where ttt.ID_TAB =t1.ID_TAB and ttt.ID_P = t1.ID_P');
      Add('    and EXTRACT(DAY FROM ttt.TAB_DAY)<EXTRACT(DAY FROM t1.TAB_DAY)');
      Add('    order by 1 desc)');
      Add('  and EXTRACT(DAY FROM tt.TAB_DAY)<=EXTRACT(DAY FROM t1.TAB_DAY)))');
      Add('>=' + ed4.Text);
      Add('or (select first 1');
      if not cb5.Checked then
        Add('EXTRACT(DAY FROM(t2.TAB_DAY - EXTRACT(DAY FROM t2.TAB_DAY) + 32 ' +
          '- EXTRACT(DAY FROM t2.TAB_DAY - EXTRACT(DAY FROM t2.TAB_DAY) + 32)))')
      else
        add(ed6.Text);
      Add('-EXTRACT(DAY FROM t2.TAB_DAY)');
      Add('from TAB_POS t2 where t2.id_tab=t1.ID_TAB and t2.ID_P = t1.ID_P');
      if cb5.Checked then
        Add('and EXTRACT(DAY FROM t2.TAB_DAY) between ' + ed5.Text + ' and ' +
          ed6.Text);
      Add('order by t2.TAB_DAY desc)>=' + ed4.Text);
      Add('or (select first 1 EXTRACT(DAY FROM t3.TAB_DAY)-');
      if cb5.Checked then
        add(ed5.text)
      else
        add('1');
      Add('from TAB_POS t3 where t3.id_tab=t1.ID_TAB and t3.ID_P = t1.ID_P');
      Add('order by t3.TAB_DAY)>=' + ed4.Text + ')');

      Open;
      FetchAll;
      param_list := '';
      if not IsEmpty then
      begin
        First;
        for i := 0 to RecordCount - 1 do
        begin
          param_list := param_list + qWorkDaysID_P.AsString;
          param_list := param_list + ',';
          Next;
        end;
      end;
      qAr.First;
      for j := 0 to qAr.RecordCount - 1 do
      begin
        qPers.Close;
        qPers.Open;
        qPers.FetchAll;
        qPers.First;
        for i := 0 to qPers.RecordCount - 1 do
        begin
          if qPersID_TAB.AsInteger = 0 then
          begin
            param_list := param_list + qPersID_P.AsString;
            //        if i<>RecordCount-1 then
            param_list := param_list + ',';
          end;
          qPers.Next;
        end;
        qAr.Next;
      end;
      if AnsiRightStr(param_list, 1) = ',' then
        SetLength(param_list, length(param_list) - 1);
      qPers.Close;
      Close;
    end;
  end;

  if (cb4.Checked) and (param_list <> '') then
    qPers.SQL.add('and p.id_p in (' + param_list + ')');
  qPers.SQL.add('order by p.fio');

  xlTab.Report;

  if lcb4.KeyValue <> null then
  begin
    qPers.SQL.Delete(qPers.SQL.Count - 1);
    qTabs.SQL.Delete(qTabs.SQL.Count - 1);
  end;
  qPers.SQL.Delete(qPers.SQL.Count - 1);
  if (cb4.Checked) and (param_list <> '') then
    qPers.SQL.Delete(qPers.SQL.Count - 1);
 end;
end;

procedure TfmExpTabel.FormCreate(Sender: TObject);
var
  y1, m1, d1: word;
begin
  s := qTab_List.SQL.Text;
  DecodeDate(Server_now(qINs), y1, m1, d1);
  ed1.Text := IntToStr(y1);
  ed2.Text := IntToStr(y1);
  ed3.Text := IntToStr(y1);
  cb1.ItemIndex := m1 - 1;
  cb2.ItemIndex := m1 - 1;
  cb3.ItemIndex := m1 - 1;
  M := m1;
  q := qTabS.sql.Text;
  qProd.close;
  qProd.ParamByName('pr').AsInteger := 1;
  qProd.open;
  qP.close;
  qP.ParamByName('pr').AsInteger := 1;
  qP.open;

  qKOeff.close;
  qKOeff.ParamByName('pr').AsInteger := 1;
  qKOeff.open;

  if dmis.qWorkType.Active then
    dmis.qWorkType.Close;
  dmis.qWorkType.Open;
  dmis.qWorkType.FetchAll;
end;

procedure TfmExpTabel.cb1CloseUp(Sender: TObject);
begin
  M := cb1.ItemIndex + 1;
  //tbRfrClick(Sender
end;

procedure TfmExpTabel.qP_AreaBeforeOpen(DataSet: TDataSet);
begin
  if cbClosed.Checked then
    qP_area.ParamByName('cls').AsInteger := 1
  else
    qP_area.ParamByName('cls').clear;
end;

procedure TfmExpTabel.cbClosedClick(Sender: TObject);
begin
  qP_area.Close;
  qP_area.Open;
end;

procedure TfmExpTabel.qP_AreaAfterEdit(DataSet: TDataSet);
begin
  //if qP_area.State in [dsEdit] then qP_area.Post;
  //if qP_area.Transaction.Active then qP_area.Transaction.CommitRetaining;
end;

procedure TfmExpTabel.qP_AreaBeforePost(DataSet: TDataSet);
begin
  try
    if dmIS.mT.Active then
      dmIS.mT.CommitRetaining;
  except
    if dmIS.mT.Active then
      dmIS.mT.RollbackRetaining;
  end;
end;

procedure TfmExpTabel.dbg1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    if qP_Area.State in [dsEdit, dsInsert] then
      qP_Area.Post;
end;

procedure TfmExpTabel.BitBtn1Click(Sender: TObject);
begin
  if shrfunc.GetTemplate(44, qIns, xlrSvod) = false then
  begin
    MsgError('Не найден шаблон', 'Загрузка шаблона');
    exit;
  end;
  InitTabs;
  qExp.close;
  qExp.ParamByName('id').AsInteger := 2;
  qExp.ParamByName('m_in').AsInteger := cb2.ItemIndex + 1;
  qExp.ParamByName('m_out').AsInteger := cb2.ItemIndex + 1;
  qExp.ParamByName('ye').AsInteger := strtoint(ed2.text);
  qExp.Open;
  xlrSvod.ParamByName['dt'].AsString := cb2.Items[cb2.ItemIndex] + ' ' +
    ed2.text;
  xlrSvod.Report;

end;

procedure TfmExpTabel.SpeedButton1Click(Sender: TObject);

begin
  InitTabs;
  qExp.close;
  qExp.ParamByName('id').AsInteger := 2;
  qExp.ParamByName('m_in').AsInteger := cb2.ItemIndex + 1;
  qExp.ParamByName('m_out').AsInteger := cb2.ItemIndex + 1;
  qExp.ParamByName('ye').AsInteger := strtoint(ed2.text);
  qExp.Open;

end;

procedure TfmExpTabel.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    if qProd.State in [dsEdit, dsInsert] then
      qProd.Post;
end;

procedure TfmExpTabel.SpeedButton2Click(Sender: TObject);
begin
  qP.close;
  qP.ParamByName('pr').AsInteger := 1;
  qP.Open;
end;


procedure TfmExpTabel.SpeedButton3Click(Sender: TObject);
begin
  qP.close;
  qP.ParamByName('pr').AsInteger := 0;
  qP.Open;
end;

procedure TfmExpTabel.SpeedButton4Click(Sender: TObject);
var
  id: integer;
begin
  id := qPID_PATYPE.AsInteger;
  qP.First;

  DBGridEh2.DataSource.DataSet.DisableControls;
  repeat
    qP.Edit;
    if qPCHK.AsInteger = 1 then
      qPCHK.AsInteger := 0
    else
      qPCHK.AsInteger := 1;
    qP.Post;
    qP.Next;
  until qP.Eof;
  qP.Locate('id_patype', id, []);
  DBGridEh2.DataSource.DataSet.EnableControls;
end;

procedure TfmExpTabel.tbRfrClick(Sender: TObject);
var
  s_p2: string;
begin

  s_p2 := '';
  qKOeff.First;
  DBG3.DataSource.DataSet.DisableControls;
  repeat
    //  qProd.Edit;
    if qKOeffCHK.AsInteger = 1 then
      s_p2 := s_p2 + qKOeffID_TAB_COEFF.AsString + ',';

    qKoeff.Next;
  until qKoeff.Eof;
  if s_p2[length(s_p2)] = ',' then
    s_p2 := copy(s_P2, 0, length(s_p2) - 1);
  if s_p2 = '' then
  begin
    MsgError('Выберите хотя бы  1 участок!', 'Проверка данных');

    exit;
  end;
  DBG3.DataSource.DataSet.EnableControls;

  with qTab_List_upr, qTab_List_upr.sql do
  begin
    close;
    parambyname('y1').AsInteger := strtoint(ed3.text);
    parambyname('m1').asInteger := cb3.ItemIndex + 1;
    parambyname('koeff').asString := s_p2;
    if cbSumm.Checked then
      parambyname('vid').AsInteger := 1
    else
      parambyname('vid').AsInteger := 2;
    open;
  end;
end;

procedure TfmExpTabel.tbExcClick(Sender: TObject);
begin
  GridToExcel(dbg3);
end;

procedure TfmExpTabel.tbKAllClick(Sender: TObject);
begin
  qKOeff.close;
  qKoeff.ParamByName('pr').AsInteger := 1;
  qKoeff.Open;
end;

procedure TfmExpTabel.tbKInvertClick(Sender: TObject);
var
  id: integer;
begin
  id := qKOeffID_TAB_COEFF.AsInteger;
  qKoeff.First;

  dbgKoeff.DataSource.DataSet.DisableControls;
  repeat
    qKOeff.Edit;
    if qKoeffCHK.AsInteger = 1 then
      qkoeffCHK.AsInteger := 0
    else
      qKoeffCHK.AsInteger := 1;
    qKoeff.Post;
    qkoeff.Next;
  until qKoeff.Eof;
  qKoeff.Locate('id_tab_coeff', id, []);
  dbgKOeff.DataSource.DataSet.EnableControls;
end;

procedure TfmExpTabel.tbKUnchekClick(Sender: TObject);
begin
  qKoeff.close;
  qKoeff.ParamByName('pr').AsInteger := 0;
  qKoeff.Open;
end;

procedure TfmExpTabel.cbSummClick(Sender: TObject);
begin
  tbRfrClick(Sender);
end;

procedure TfmExpTabel.ed1KeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in ['0'..'9']) then key:=#0;
end;

procedure TfmExpTabel.cb4Click(Sender: TObject);
begin
  if cb4.Checked then
  begin
    ed4.Enabled := true;
    cb5.Enabled := true;
  end
  else
  begin
    ed4.Enabled := false;
    cb5.Checked := false;
    cb5.Enabled := false;
  end;
end;

procedure TfmExpTabel.cb5Click(Sender: TObject);
begin
  if cb5.Checked then
  begin
    ed5.Enabled := true;
    ed6.Enabled := true;
  end
  else
  begin
    ed5.Enabled := false;
    ed6.Enabled := false;
  end;
end;

procedure TfmExpTabel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fmExpTabel := nil;
end;

procedure TfmExpTabel.sbOrdClick(Sender: TObject);
var
  s_param: string;
  id: integer;
  qq: string;
  i, j: integer;
  param_list: string;
  d_beg, d_end :Tdate;
begin
  screen.Cursor := crHourGlass;
  id := qP_AreaID_P_AREA.AsInteger;
  qP_Area.First;
  s_param := '';
  dbg1.DataSource.DataSet.DisableControls;
  repeat
    qP_Area.Edit;
    if qP_AreaCHK.AsInteger = 1 then
      s_param := s_param + qP_AreaID_P_AREA.AsString + ',';
    qP_Area.Next;
  until qP_area.Eof;
  if s_param = '' then
  begin
    MsgError('Выберите хотя бы  1 участок!', 'Проверка данных');
    dbg1.DataSource.DataSet.EnableControls;
    exit;
    screen.Cursor := crDefault;
  end;

  qP_area.Locate('id_p_area', id, []);
  dbg1.DataSource.DataSet.EnableControls;
  d_beg := EncodeDate(StrToInt(ed1.text),cb1.ItemIndex + 1,1);
  d_end := EncodeDate(StrToInt(ed1.text),cb1.ItemIndex +
   1, DaysinMonth(EncodeDate(StrToInt(ed1.text),cb1.ItemIndex + 1,1)));
  with qRep_Plan_Day do
  begin

    close;
    ParamByName('id_p_area_s').AsString := s_param;
   ParamByName('d_in').AsDate := d_beg;
   ParamByName('d_out').AsDate := d_end;
   open;
  end;
  DSToExcel(qRep_Plan_Day);
  screen.Cursor := crDefault;
end;

end.

