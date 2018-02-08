unit UnKPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons, Mask,
  DBCtrlsEh, ExtCtrls, ToolWin, ComCtrls, Grids, DBGridEh, DBLookupEh,
  unMainForm, ShrFunc;

type
  TfmKPP = class(TMainForm)
    ToolBar1: TToolBar;
    Panel1: TPanel;
    sbVib: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dtp_in: TDBDateTimeEditEh;
    dtp_out: TDBDateTimeEditEh;
    IBQuery1: TIBQuery;
    qJ_Move: TIBQuery;
    dsJ_Move: TDataSource;
    qJ_MoveID_J_MOVE: TIntegerField;
    qJ_MoveID_AREA: TIntegerField;
    qJ_MoveDIRECTION: TIntegerField;
    qJ_MoveID_FIX: TIntegerField;
    qJ_MoveFIO_FIX: TIBStringField;
    qJ_MoveD_FIX: TDateTimeField;
    qJ_MoveID_DOC_NUMBER: TIntegerField;
    qJ_MovePREFIX: TIBStringField;
    qJ_MoveID_DOC: TIntegerField;
    qJ_MoveID_P: TIntegerField;
    qJ_MoveFIO_P: TIBStringField;
    dbg1: TDBGridEh;
    qJ_MoveNAME: TIBStringField;
    edNom: TEdit;
    lcbDoc: TDBLookupComboboxEh;
    qDoc: TIBQuery;
    qDocID_DOCTYPE: TIntegerField;
    qDocNAME: TIBStringField;
    qDocPREFIX: TIBStringField;
    qDocGEN_NAME: TIBStringField;
    qDocNAME_PREFIX: TIBStringField;
    dsDoc: TDataSource;
    SpeedButton1: TSpeedButton;
    ToolButton1: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure qJ_MoveBeforeOpen(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbVibClick(Sender: TObject);
    procedure dbg1SortMarkingChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmKPP: TfmKPP;

implementation
uses unMain, unIS, UnBillKPP;
{$R *.dfm}

procedure TfmKPP.FormCreate(Sender: TObject);
begin
  qDoc.Close;
  qDoc.Open
end;

procedure TfmKPP.qJ_MoveBeforeOpen(DataSet: TDataSet);
begin
  with qJ_Move, qJ_Move.SQL do
  begin
  
    Clear;
    Add('select  j.id_j_move, j.id_area,a.name, j.direction,' +
      'j.id_fix,p.fio fio_fix, j.d_fix,' +
      'j.id_doc_number, d.prefix ,j.id_doc, j.id_p, pp.fio fio_p' +
      ' from j_moves j join prod_areas a on a.id_p_area = j.id_area' +
      ' join personnel p on p.id_p = j.id_fix' +
      ' join doc_numbers d on d.id_doctype = j.id_doc_number' +
      ' join personnel pp on pp.id_p = j.id_p');
    Add('where j.id_area = :id_area');
    if not VarIsNull(dtp_in.Value) then
      Add(' and j.D_FIX >= :d_in');
    if not VarIsNull(dtp_out.Value) then
      Add(' and j.D_FIX >= :d_out');
    if edNom.Text <> '' then
      Add(' and upper (j.id_doc) CONTAINING(UPPER(:id_doc))');
    Add(OrdBy(dbg1));
    ParamByName('id_area').AsInteger := fmMain.C_PA;
    if not VarIsNull(dtp_in.Value) then
      ParamByName('d_in').AsDate := dtp_in.Value;
    if not VarIsNull(dtp_out.Value) then
      ParamByName('d_out').AsDate := dtp_out.Value + 1;
    if edNom.Text <> '' then
      ParamByName('id_doc').AsString := edNom.Text;
    
  end;

end;

procedure TfmKPP.SpeedButton1Click(Sender: TObject);
begin
  if not Assigned(fmBillKPP) then
  Application.CreateForm(TfmBillKPP, fmBillKPP);
  fmBillKPP.edNaklv.Text := edNom.Text;
  fmBillKPP.Show;
end;

procedure TfmKPP.sbVibClick(Sender: TObject);
begin
  qJ_Move.Close;
  qJ_Move.Open;
end;

procedure TfmKPP.dbg1SortMarkingChanged(Sender: TObject);
begin
 { qJ_Move.Close;
  qJ_Move.Open;   }
qJ_Move.Refresh;








end;

end.

