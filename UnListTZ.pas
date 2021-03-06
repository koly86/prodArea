unit UnListTZ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Buttons, StdCtrls, Grids,
  DBGridEh, DBCtrls, ExtCtrls, ComCtrls, DateUtils, unMainForm,
  Mask, DBCtrlsEh, shrFunc, DBLookupEh;

type
  TfmListTZ = class(TMainForm)
    qListTZ: TIBQuery;
    dsListTZ: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    sb: TSpeedButton;
    qListTZID_PROJECT: TIntegerField;
    qListTZID_ORDER: TIntegerField;
    qListTZAMOUNT: TIBBCDField;
    qListTZSHIPPED: TIBBCDField;
    qListTZID_PRODUCT: TIntegerField;
    qListTZD_CONSTR: TDateField;
    qListTZID_CONSTR: TIntegerField;
    qListTZID_PA_OUT: TIntegerField;
    qListTZSD_SUMMA: TIBBCDField;
    qListTZD_READY: TDateField;
    qListTZN_ORDER: TIBStringField;
    qListTZID_C: TIntegerField;
    qListTZSTATUS: TIntegerField;
    qListTZD_OPEN: TDateTimeField;
    qListTZID_OPEN: TIntegerField;
    qListTZD_CLOSE: TDateTimeField;
    qListTZID_CLOSE: TIntegerField;
    qListTZD_FIX: TDateTimeField;
    qListTZID_FIX: TIntegerField;
    qListTZID_DOC: TIntegerField;
    qListTZD_INPROD: TDateTimeField;
    qListTZID_INPROD: TIntegerField;
    qListTZD_REJECT: TDateTimeField;
    qListTZID_REJECTOR: TIntegerField;
    qListTZPRICE: TIBBCDField;
    qListTZPRICEA: TIBBCDField;
    qListTZID_CURRENCY: TIntegerField;
    qListTZID_CPTYPE: TIntegerField;
    qListTZID_CPROD: TIntegerField;
    qListTZID_AGENT: TIntegerField;
    qListTZD_MAT: TDateField;
    qListTZAGENT: TIBStringField;
    qListTZNAME: TIBStringField;
    qListTZNAMECUR: TIBStringField;
    qListTZD_FACT: TDateTimeField;
    Label3: TLabel;
    Label4: TLabel;
    edFind: TEdit;
    edFind1: TEdit;
    dtp_in: TDBDateTimeEditEh;
    dtp_out: TDBDateTimeEditEh;
    qIns: TIBQuery;
    qListTZID_VERSION: TIntegerField;
    qListTZID_ESTIMATE: TIntegerField;
    qListTZID_EST_PR: TIntegerField;
    qListTZPR: TIBStringField;
    qListTZPRODUSED: TFloatField;
    Label5: TLabel;
    lcbStatus: TDBLookupComboboxEh;
    qStatus: TIBQuery;
    dsStatus: TDataSource;
    qStatusID_ORD_EVENT: TIntegerField;
    qStatusNAME: TIBStringField;
    qStatusSTATUS: TSmallintField;
    qStatusNAME_STATUS: TIBStringField;
    dbg1: TDBGridEh;
    qOrd_Ev: TIBQuery;
    qOrd_EvID_ORD_EVENT: TIntegerField;
    qOrd_EvNAME_EVENT: TIBStringField;
    qOrd_EvD_PLAN: TDateTimeField;
    qOrd_EvID_PLAN: TIntegerField;
    qOrd_EvFIO_PLAN: TIBStringField;
    qOrd_EvD_FACT: TDateTimeField;
    qOrd_EvID_FACT: TIntegerField;
    qOrd_EvFIO_FACT: TIBStringField;
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    dsOrd_Ev: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure qListTZBeforeOpen(DataSet: TDataSet);
    procedure sbClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbg1DblClick(Sender: TObject);
    procedure dbg1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbg1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg1SortMarkingChanged(Sender: TObject);
  private
    { Private declarations }
  public
    nomTZ, ysl_vib, Ins_Order: Integer;
    { Public declarations }
  end;

var
  fmListTZ: TfmListTZ;

implementation
uses unIS, unD_JOB, unTabel, unMain;
{$R *.dfm}
const
  id_Form = 31;

procedure TfmListTZ.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read(Panel1, iniRect);
    Read(dbg1, iniGridEh);
  finally
    Free;
  end;
  qStatus.Close;
  qStatus.Open;
  if VarISNULL(lcbStatus.KeyValue) then
    lcbStatus.KeyValue := 80;
  dtp_out.Value := now;
  qOrd_Ev.Close;
  qOrd_Ev.Open;
  //dtp_in.Value := now-30;
end;

procedure TfmListTZ.qListTZBeforeOpen(DataSet: TDataSet);
var
  s: string;
begin

  s := 'select e.id_estimate id_est_pr, i.name as agent ,p.*, c.name as namecur,s.d_fact,'
    +
    ' case when p.d_close is not null then ''' + '�' + '''' +
    ' when p.d_reject is not null then ''' + '�' + '''' +
    ' else ''' + '�' + ''' end pr' +
    ' from PROJECT_ORDS p join items i on p.id_agent = i.id_item' +
    ' join currency c on p.id_currency = c.id_currency' +
    ' left join product_estimate_title e on p.id_version = e.id_version' +
    ' join project_ords_state s  on p.id_order = s.id_order';
  if not VarISNULL(lcbStatus.KeyValue) then
    s := s + ' and  s.id_ord_event = ' + IntToStr(lcbStatus.KeyValue);
  {     if (fmZakypki <> nil) and (fmZakypki.Ins_Exp = 1) then
         s := s + ' and  s.id_ord_event =20'
       else  s := s + ' and s.id_ord_event =60; //80';}
  //     ' join project_ords_state s  on p.id_order = s.id_order and s.id_ord_event =60'+

  s := s + ' where p.id_order = p.id_order ';

  if not VarIsNull(dtp_in.Value) then
    s := s + ' and s.d_fact >=''' + FormatDateTime('dd.mm.yyyy',
      TDateTime(dtp_in.Value)) + '''';

  if not VarIsNull(dtp_out.Value) then
    s := s + ' and s.d_fact < ''' + FormatDateTime('dd.mm.yyyy',
      IncDay(TDateTime(dtp_out.Value), 1)) + '''';

  {    Add('SELECT * FROM items WHERE UPPER(name) LIKE '+'''%'+ s + '%'''+
             ' OR UPPER(shortname) LIKE '+'''%'+ s + '%)''');
   }
  if (fmListTZ.edFind.Text <> '') then
    s := s + ' and upper(p.N_ORDER) like upper(' + '''%' +
      AnsiUpperCase(edFind.text) + '%''' + ')';
  if (edFind1.Text <> '') then
    s := s + ' and upper(p.NAME) like upper(' + '''%' +
      AnsiUpperCase(edFind1.Text) + '%''' + ')';
  with qListTZ, qListTZ.SQL do
  begin
    Close;
    Clear;
    SQL.Add(s);
    qListTZ.SQL.Add(OrderBy(dbg1));
  end;
  // ShowMessage(dmIs.qZBill_S.SQL.Text) ;
end;

procedure TfmListTZ.sbClick(Sender: TObject);
begin
  dbg1SortMarkingChanged(Sender);
end;

procedure TfmListTZ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write(Panel1, iniRect);
    Write(dbg1, iniGridEh);
  finally
    Free;
  end;

end;

procedure TfmListTZ.dbg1DblClick(Sender: TObject);
{var
  i: integer;}
begin
  if (not qListTZD_REJECT.IsNull) then
  begin
    ShowMessage('����� ���������....');
    Exit;
  end;
  //nomTZ := qListTZID_ORDER.Value;
  try
    if fmD_JOB <> nil then
    begin
      if qListTZAMOUNT.Value = qListTZPRODUSED.Value then
      begin
        //�������� �� ���� �����������
        with dmIS.qIM, dmIS.qIM.SQL do
        begin
          Close;
          Clear;
          Add('select current_date dt, o.id_order,cast(o.d_fact as date) d_fact,');
          Add('case when o.d_fact is not null then current_date - cast(o.d_fact as date) else 0 end d1');
          Add('from project_ords_state o where o.id_order = :id_order and o.id_ord_event = 200');
          ParamByName('id_order').AsInteger := qListTZID_ORDER.AsInteger;
          Open;
          if (fmMain.S39 = 1) and (dmIS.qIM.FieldByName('d1').Value > fmMain.S40)
            then
          begin
            MsgInformation('���� ������������ ������ ��������� ����������. ' +
              '����������� ���������', '�������� ���� ������������');
            dmIS.qIM.Close;
            Exit;
          end;
        end;
      end;
      if fmD_JOB.Ins_Ord = 1 then
      begin
        if fmD_JOB.dbg16.FieldColumns['N_ORDER'].Color = clSkyBlue then
          fmD_JOB.qProd_Plan_Stop.Edit;
        if fmD_JOB.qProd_Plan_Stop.State in [dsEdit, dsInsert] then
        begin
          fmD_JOB.qProd_Plan_StopN_ORDER.Value := qListTZN_ORDER.Value;
          fmD_JOB.qProd_Plan_StopNAME_ORD.Value := qListTZNAME.Value;
          fmD_JOB.qProd_Plan_StopID_ORDER.Value := qListTZID_ORDER.Value;
          fmD_JOB.Ins_Ord := 0;
        end;
      end;
    end;
  except
  end;

  try
    if fmTABEL <> nil then
    begin
      if Ins_Order = 1 then
      begin
        if fmTABEL.chb1.Enabled = True then
          fmTABEL.qTab_Ext.Edit;
        if fmTABEL.qTab_Ext.State in [dsEdit, dsInsert] then
        begin
          fmTABEL.qTab_ExtN_ORDER.Value := qListTZN_ORDER.Value;
          fmTABEL.qTab_ExtNAME.Value := qListTZNAME.Value;
          fmTABEL.qTab_ExtID_ORDER.Value := qListTZID_ORDER.Value;
          Ins_Order := 0;
        end;
      end;
    end;
  except
  end;

  fmListTZ.Close;

end;

procedure TfmListTZ.dbg1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (not qListTZD_CLOSE.IsNull) then
    Background := clMoneyGreen;
  ;
  if (not qListTZD_REJECT.IsNull) then
    AFont.Style := AFont.Style + [fsStrikeOut];

end;

procedure TfmListTZ.dbg1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) then
    fmListTZ.dbg1DblClick(Sender);
end;

procedure TfmListTZ.dbg1SortMarkingChanged(Sender: TObject);
begin
  qListTZ.Close;
  qListTZ.Open;
end;

end.
