unit UnBillKPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ToolWin, ComCtrls, DB, IBCustomDataSet, IBQuery,
  StdCtrls, Buttons, Mask, DBCtrlsEh, unMainForm, Grids, DBGridEh, ShrFunc,
  IBUpdateSQL;

type
  TfmBillKPP = class(TMainForm)
    ToolBar1: TToolBar;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    sbVib: TSpeedButton;
    dtp_in: TDBDateTimeEditEh;
    dtp_out: TDBDateTimeEditEh;
    edNaklv: TEdit;
    BitBtn1: TBitBtn;
    qIns: TIBQuery;
    qBill: TIBQuery;
    qBill_S: TIBQuery;
    dsBill: TDataSource;
    dsBill_S: TDataSource;
    qBillID_PA_BILL: TIntegerField;
    qBillID_P_AREA: TIntegerField;
    qBillNAME_AREA: TIBStringField;
    qBillID_DESTINATION: TIntegerField;
    qBillNAME_DIST: TIBStringField;
    qBillPA_BILL_TYPE: TSmallintField;
    qBillD_BILL: TDateField;
    qBillNUMBER: TIBStringField;
    qBillD_FIX: TDateTimeField;
    qBillID_FIX: TIntegerField;
    qBillFIO_FIX: TIBStringField;
    qBillD_GET: TDateTimeField;
    qBillID_GET: TIntegerField;
    qBillFIO_DET: TIBStringField;
    qBillREM: TMemoField;
    qBillNUMBER_BILL: TIBStringField;
    Panel2: TPanel;
    dbg1: TDBGridEh;
    dbg3: TDBGridEh;
    qBillNAME: TIBStringField;
    qBill_SID_PA_BILL_POS: TIntegerField;
    qBill_SID_OBJECT: TIntegerField;
    qBill_SNAME: TIBStringField;
    qBill_SUNIT1: TIBStringField;
    qBill_SUNIT2: TIBStringField;
    qBill_SID_BATCH: TIntegerField;
    qBill_SNAME_DETAL: TIBStringField;
    qBill_SNAME_O: TIBStringField;
    qBill_SID_STEP: TIntegerField;
    qBill_SAMOUNT: TIBBCDField;
    qBill_SAMOUNT2: TIBBCDField;
    qBill_SOBJ_TYPE: TIntegerField;
    qBill_SN_ORDER: TIBStringField;
    qBill_SORD_NAME: TIBStringField;
    qBill_SREM: TMemoField;
    qJ_Move: TIBQuery;
    dsJ_Move: TDataSource;
    qJ_MoveID_J_MOVE: TIntegerField;
    qJ_MoveID_AREA: TIntegerField;
    qJ_MoveNAME: TIBStringField;
    qJ_MoveDIRECTION: TIntegerField;
    qJ_MoveID_FIX: TIntegerField;
    qJ_MoveFIO_FIX: TIBStringField;
    qJ_MoveD_FIX: TDateTimeField;
    qJ_MoveID_DOC_NUMBER: TIntegerField;
    qJ_MovePREFIX: TIBStringField;
    qJ_MoveID_DOC: TIntegerField;
    qJ_MoveID_P: TIntegerField;
    qJ_MoveFIO_P: TIBStringField;
    ToolButton1: TToolButton;
    Panel3: TPanel;
    dbg2: TDBGridEh;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    UpJ_Move: TIBUpdateSQL;
    qBillID_CONFIRM: TIntegerField;
    qBillFIO_CONF: TIBStringField;
    qBillD_CONFIRM: TDateTimeField;
    procedure BitBtn1Click(Sender: TObject);
    procedure sbVibClick(Sender: TObject);
    procedure qBillAfterScroll(DataSet: TDataSet);
    procedure dbg1SortMarkingChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qJ_MoveNewRecord(DataSet: TDataSet);
    procedure dbg1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    id_doc_nom: integer;
    prefix: string;
    procedure Pref(id_bill: integer); //префикс
    procedure OpenBill;
    procedure Bill(id_bill: integer);

  public
    { Public declarations }
  end;

var
  fmBillKPP: TfmBillKPP;

implementation
uses unMain, unIS;

const
  id_Form = 32;

{$R *.dfm}

procedure TfmBillKPP.Pref(id_bill: integer);
var
//  i: integer;
  s1: string;
begin
  s1 := qBillNUMBER.AsString;
  delete(s1, Pos('-', s1), (length(s1) - Pos('-', s1) + 1));
  qIns.Close;
  qIns.SQL.Clear;
  qIns.SQL.Add('select id_doctype, name, prefix, gen_name');
  qIns.SQL.Add('from doc_numbers where  prefix = :prefix');
  try
    qIns.ParamByName('prefix').AsString := s1;
    qIns.Open;
  except
  end;
  prefix := s1;
  id_doc_nom := qIns.FieldByName('id_doctype').AsInteger;
end;

procedure TfmBillKPP.Bill(id_bill: integer);
var
//  i: integer;
  s1: string;
begin
  Pref(id_bill);
  s1 := qBillNUMBER.AsString;
  delete(s1, Pos('-', s1), (length(s1) - Pos('-', s1) + 1));
  qIns.Close;
  qIns.SQL.Clear;
  qIns.SQL.Add('select id_doctype, name, prefix, gen_name');
  qIns.SQL.Add('from doc_numbers where  prefix = :prefix');
  try
    qIns.ParamByName('prefix').AsString := s1;
    qIns.Open;
  except
  end;
  prefix := s1;
  id_doc_nom := qIns.FieldByName('id_doctype').AsInteger;
  //id_doc := qBillID_PA_BILL.AsInteger;
  if not qBill.IsEmpty then
  begin
    with qBill_S, qBill_S.SQL do
    begin
      Close;
      Clear;
      Add('select * from GET_BILL_POS(:ID_PA_BILL)');
      Add(OrderBy(dbg2));
      ParamByName('ID_PA_BILL').AsInteger := id_bill;
      Open;
    end;

    qJ_Move.Close;
    qJ_Move.ParamByName('id_doc_number').AsInteger := id_doc_nom;
    qJ_Move.ParamByName('id_doc').AsInteger := id_bill;
    qJ_Move.Open;
  end
  else
  begin
    qBill_S.Close;
    qJ_Move.Close;
  end;

end;

procedure TfmBillKPP.OpenBill;
var
  nom: integer;
begin
  qBill.AfterScroll := nil;
  nom := qBillID_PA_BILL.AsInteger;
  //dmIS.N_TYPE := fmZBills_R.N_TYPE;
  with qBill, qBill.SQL do
  begin
    Close;
    Clear;
    Add('select p.id_pa_bill, p.id_p_area,a.name name_area,');
    Add('coalesce( p.id_destination,p.id_agent) id_destination,');
    Add('cast(coalesce(aa.name,i.name) as varchar(128)) name_dist,');
    Add('p.pa_bill_type,t.name,p.d_bill, p.number,');
    Add('p.ID_CONFIRM,rrr.fio fio_conf, p.D_CONFIRM,');
    Add('p.d_fix, p.id_fix, r.fio fio_fix, ');
    Add('p.d_get, p.id_get,rr.fio fio_det, p.rem, p.number_bill');
    Add('from p_area_bills p  ');
    Add('join prod_areas a on a.id_p_area = p.id_p_area');
    Add('join pa_bill_types t on t.id_pa_bill_type = p.pa_bill_type ');
    Add('left join prod_areas aa on aa.id_p_area = p.id_destination ');
    Add('left join items i on i.id_item = p.id_agent');
    Add('left join personnel r on r.id_p = p.id_fix');
    Add('left join personnel rr on rr.id_p = p.id_get');
    Add('left join personnel rrr on rrr.id_p = p.id_confirm');
    Add('where 1=1');
    if not VarIsNull(dtp_in.Value) then
      Add('and D_CONFIRM >= :d_in');
    if not VarIsNull(dtp_out.Value) then
      Add('and D_CONFIRM >= :d_out');
    if edNaklv.Text <> '' then
      Add('and upper (p.NUMBER) CONTAINING(UPPER(:NUMBER))');
    Add(OrdBy(dbg1));
    // Add('ORDER BY ID_PA_BILL');
    if not VarIsNull(dtp_in.Value) then
      ParamByName('d_in').AsDate := dtp_in.Value;
    if not VarIsNull(dtp_out.Value) then
      ParamByName('d_out').AsDate := dtp_out.Value + 1;
    if edNaklv.Text <> '' then
      ParamByName('NUMBER').AsString := edNaklv.Text;
    try
      qBill.Open;
    except;
    end;
  end;

  qBill.Locate('id_pa_bill', nom, []);
  {with qBill_S, qBill_S.SQL do begin
   Close;
   Clear;
   Add('select * from GET_BILL_POS(:ID_PA_BILL)');
   Add(OrderBy(dbg2));
   ParamByName('ID_PA_BILL').AsInteger :=nom;
   Open;
  end;}
  if nom = 0 then
    nom := qBillID_PA_BILL.AsInteger;
  Bill(qBillID_PA_BILL.AsInteger);

  qBill.AfterScroll := qBillAfterScroll;
end;

procedure TfmBillKPP.BitBtn1Click(Sender: TObject);
var
  s: string;
begin
  qIns.Close;
  qIns.SQL.Clear;
  qIns.SQL.Add('select a.name name_s,t.name name_t, p.* from P_AREA_BILLS p' +
    ' left join prod_areas a on a.id_p_area = p.id_p_area' +
    ' left join pa_bill_types t on t.id_pa_bill_type = p.pa_bill_type' +
    ' where ID_PA_BILL = :id');
  try
    qIns.ParamByName('id').AsInteger := StrToInt(edNaklv.text);
    qIns.Open;
    if qIns.IsEmpty then
      ShowMessage('Накладная не найдена....')
    else if qIns.FieldByname('D_FIX').IsNull then
      s := ''
    else
      s := FormatDateTime('dd.mm.yyyy', qIns.FieldByname('D_FIX').AsDateTime);
    ShowMessage('№ накладной: ' + qIns.FieldByname('NUMBER').AsString + #13 +
      'Д/подшивки1: ' + s + #13 +
      'Склад: "' + qIns.FieldByname('name_s').AsString + '"' + #13 +
      'Тип накладной: "' + qIns.FieldByname('name_t').AsString + '"');
  except
  end;
end;

procedure TfmBillKPP.sbVibClick(Sender: TObject);
begin
  OpenBill;
end;

procedure TfmBillKPP.qBillAfterScroll(DataSet: TDataSet);
begin
  Bill(qBillID_PA_BILL.AsInteger);
end;

procedure TfmBillKPP.dbg1SortMarkingChanged(Sender: TObject);
begin
  sbVibClick(Sender);
end;

procedure TfmBillKPP.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read(Panel2, iniRect);
    Read(Panel3, iniRect);
    //  Read(dbg1,iniGridEh);
  finally
    Free;
  end;
end;

procedure TfmBillKPP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write(Panel2, iniRect);
    Write(Panel3, iniRect);
    //   Write(dbg1,iniGridEh);
  finally
    Free;
  end;

end;

procedure TfmBillKPP.qJ_MoveNewRecord(DataSet: TDataSet);
begin
  Pref(qBillID_PA_BILL.AsInteger);
  qJ_MoveID_AREA.AsInteger := fmMain.C_PA;
  qJ_MoveDIRECTION.AsInteger := 0;
  qJ_MoveID_AREA.AsInteger := fmMain.C_PA;
  qJ_MovePREFIX.AsString := prefix;
  qJ_MoveID_DOC_NUMBER.AsInteger := id_doc_nom;
  qJ_MoveID_DOC.AsInteger := qBillID_PA_BILL.AsInteger;
  qJ_MoveID_P.AsInteger := qBillID_CONFIRM.AsInteger;
  qJ_MoveFIO_P.AsString := qBillFIO_CONF.AsString;

end;

procedure TfmBillKPP.dbg1DblClick(Sender: TObject);
begin
  qJ_Move.Append;
end;

procedure TfmBillKPP.SpeedButton1Click(Sender: TObject);
begin
  qIns.Close;
  qIns.SQL.Clear;
  qIns.SQL.Add('select current_timestamp tm from access_levels where access_key = 0');
  qIns.Open;

  qJ_MoveID_FIX.AsInteger := SysVars.RegTN;
  qJ_MoveFIO_FIX.AsString := SysVars.FReg;
  qJ_MoveD_FIX.AsDateTime := qIns.FieldByName('tm').AsDateTime;
  if dsJ_Move.State in [dsEdit, dsInsert] then
    qJ_Move.Post;
  if dmIs.mT.InTransaction then
    dmIs.mT.CommitRetaining;

end;

end.
