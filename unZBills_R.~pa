unit unZBills_R;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, ExtCtrls, ComCtrls, Grids, DBGrids, DBCtrls, ToolWin,
  StdCtrls, Buttons, DB, Mask, DBCtrlsEh, DBGridEh, DBLookupEh,
  //  FR_DSet, FR_DBSet, FR_Class,
  IBQuery, unMainForm, IBCustomDataSet;

type
  TfmZBills_R = class(TMainForm)
    stb1: TStatusBar;
    p1: TPanel;
    p2: TPanel;
    dbg2: TDBGrid;
    Splitter1: TSplitter;
    tlb2: TToolBar;
    tb23: TToolButton;
    p3: TPanel;
    Panel1: TPanel;
    Label7: TLabel;
    ed2: TEdit;
    DBNavigator1: TDBNavigator;
    dbg3: TDBGrid;
    tlb1: TToolBar;
    tb2: TToolButton;
    ToolButton3: TToolButton;
    tb3: TToolButton;
    ToolButton5: TToolButton;
    tb5: TToolButton;
    ToolButton4: TToolButton;
    tb6: TToolButton;
    dbn1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    ToolButton1: TToolButton;
    dbg1: TDBGridEh;
    qValN: TIBQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure tb2Click(Sender: TObject);
    procedure tb3Click(Sender: TObject);
    procedure tb5Click(Sender: TObject);
    procedure tb6Click(Sender: TObject);
    procedure tb23Click(Sender: TObject);
    procedure dbg2DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ed2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbg1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbg1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Kop: word;
    procedure OpenZBill;
    procedure OpenState;
    { Private declarations }
  public
    N_OP: Integer;
    N_TYPE: Integer;
    { Public declarations }
  end;

var
  fmZBills_R: TfmZBills_R;

implementation
uses unMain, unIS, unSpec, unObject, unD_JOB;

const
  id_Form = 8;

{$R *.dfm}

procedure TfmZBills_R.OpenZBill;
var
  nom: integer;
begin
  nom := dmIS.qZBillID_PA_BILL.AsInteger;
  dmIS.N_TYPE := fmZBills_R.N_TYPE;
  with dmIS.qZBill, dmIS.qZBill.SQL do
  begin
    Close;
    if fmMain.UF21 then
      UpdateObject := dmIS.upZBILL
    else
      UpdateObject := nil;
    Clear;
    Add('SELECT * FROM P_AREA_BILLS');
    Add('WHERE ID_P_AREA = :cpa AND PA_BILL_TYPE = :tb AND D_GET IS NULL');
    Add('ORDER BY ID_PA_BILL');
    ParamByName('cpa').AsInteger := fmMain.C_PA;
    ParamByName('tb').AsInteger := N_TYPE;
    case N_TYPE of
      51: dmIS.qZBillnDES.LookupDataSet := dmIS.qDES_PA;
      53: dmIS.qZBillnDES.LookupDataSet := dmIS.qStores;
    end;
    try
      Open;
    except;
    end;
  end;

  dmIS.qZBill.AfterScroll := nil;
  dmIS.qZBill.Locate('id_pa_bill', nom, []);
  with dmIS.qZBill_S do
  begin
    Close;
    ParamByName('cpa').AsInteger := dmIS.qZBillID_PA_BILL.AsInteger;
    Open;
  end;
  dmIS.qZBill.AfterScroll := dmIS.qZBillAfterScroll;
end;

procedure TfmZBills_R.OpenState;
begin
  with dmIS.qRZ do
  begin
    Close;
    ParamByName('pa1').AsInteger := fmMain.C_PA;
    Open;
  end;
  with dmIS.qBState do
  begin
    Close;
    ParamByName('pa1').AsInteger := fmMain.C_PA;
    Open;
  end;
end;

procedure TfmZBills_R.FormCreate(Sender: TObject);
begin
  Kop := 0;
  p1.BringToFront;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read(p2, iniRect);
  finally
    Free;
  end;
end;

procedure TfmZBills_R.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qZBill_S.Close;
  dmIS.qZBill.Close;
  //dmIS.qStores.Close;
  dmIS.qTeams.Close;
  dmIS.qDES_PA.Close;
  dmIS.qNOper.Close;
  dmIS.qRZ.Close;
  dmIS.qBState.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write(p2, iniRect);
  finally
    Free;
  end;
end;

procedure TfmZBills_R.FormActivate(Sender: TObject);
const
  s0 = 'Формирование накладных';
var
  s: string;
begin
  tb2.Enabled := fmMain.UF21;
  tb3.Enabled := fmMain.UF21;
  tb5.Enabled := fmMain.UF_DOC;
  tb23.Enabled := fmMain.UF21;
  s := s0;
  N_TYPE := N_OP;
  case N_OP of
    53: s := s0 + ' - Отгрузка на склад';
    510:
      begin
        s := s0 + ' - Отгрузка на другой участок';
        N_TYPE := 51;
      end;
  end;
  fmZBills_R.Caption := s + ' "' + fmMain.lcb1.Text + '"';

  with dmIS.qTeams, dmIS.qTeams.SQL do
  begin
    Close;
    Clear;
    Add('SELECT * FROM TEAMS WHERE ID_P_AREA = ' + IntToStr(fmMain.C_PA));
    Add('AND D_CLOSE IS NULL ORDER BY ID_TEAM');
    try
      Open;
      Last;
      First;
    except
    end;
  end;
  with dmIS.qNOper do
  begin
    Close;
    Open;
  end;
  with dmIS.qStores do
  begin
    Close;
    Open;
    Last;
    First;
  end;
  with dmIS.qDES_PA do
  begin
    Close;
    ParamByName('cpa').AsInteger := fmMain.C_PA;
    Open;
    Last;
    First;
  end;
  fmZBills_R.OpenZBill;
end;

procedure TfmZBills_R.tb2Click(Sender: TObject);
begin
  if dmIS.qZBill.IsEmpty then
    exit;
  if dmIS.qZBill.State in [dsInsert, dsEdit] then
    dmIS.qZBill.Post;
  if not dmIS.qZBillD_FIX.IsNull then
  begin
    MsgInformation('Редактирование утвержденной накладной запрещено',
      'Запрет редактирования');
    exit;
  end;
  Kop := 2;
  p3.BringToFront;
  fmZBills_R.OpenState;
end;

procedure TfmZBills_R.tb3Click(Sender: TObject);
begin
  if dmIS.qZBill.IsEmpty then
    exit;
  if not dmIS.qZBillD_FIX.IsNull then
  begin
    MsgInformation('Удаление утвержденной накладной запрещено',
      'Запрет удаления');
    exit;
  end;
  if MsgQuestion(SysVars.NReg + ' , Вы действительно хотите удалить данную ' +
    'накладную?', 'Удаление записи') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM P_AREA_BILLS WHERE ID_PA_BILL = ' +
        dmIS.qZBillID_PA_BILL.AsString);
      try
        ExecSQL;
        if dmIS.mT.InTransaction then
          dmIS.mT.CommitRetaining;
      except
        MsgInformation('Ошибка при удалении записи', 'Ошибка');
        if dmIS.mT.InTransaction then
          dmIS.mT.RollbackRetaining;
      end;
      fmZBills_R.OpenZBill;
    end;
end;

procedure TfmZBills_R.tb5Click(Sender: TObject);
begin
  if dmIS.qZBill.IsEmpty then
    exit;
  if dmIS.qZBill_S.IsEmpty then
    exit;
  if dmIS.qZBillnDES.IsNull then
  begin
    ShowMessage('Нет получателя (Контрагента)...');
    exit;
  end;
  if (not dmIS.qZBillD_FIX.IsNull and dmIs.qZBillD_GET.IsNull) then
  begin
    if (MsgQuestion('Выбранная накладная уже ' +
      'утверждена. ' + SysVars.NReg + ', Вы хотите снять утверждение?',
      'Снятие утверждения') = id_yes) then
      with dmIS.qIN, dmIS.qIN.SQL do
      begin
        Close;
        Clear;
        Add('UPDATE P_AREA_BILLS SET D_FIX = NULL, ID_FIX = NULL');
        Add('WHERE ID_PA_BILL = ' + dmIS.qZBillID_PA_BILL.AsString);
        try
          ExecSQL;
          if dmIS.mT.InTransaction then
            dmIS.mT.CommitRetaining;
        except
          MsgInformation('Ошибка при снятии утверждения с накладной', 'Ошибка');
          if dmIS.mT.InTransaction then
            dmIS.mT.RollbackRetaining;
        end;
        fmZBills_R.OpenZBill;
      end
    else
      exit;
  end
  else if (MsgQuestion(SysVars.NReg +
    ' , Вы действительно хотите утвердить данную ' +
    'накладную?', 'Утверждение накладной') = id_yes) then
  begin
    //Проверка на наличие ТМЦ на складе

    dmIs.qValN.Active := False;
    dmIs.qValN.ParamByName('id_p_area').Value := fmMain.C_PA;
    dmIs.qValN.ParamByName('id_pa_bill').Value := dmIs.qZBillID_PA_BILL.Value;
    dmIs.qValN.Active := True;
    if dmIs.qValN.RecordCount <> 0 then
    begin
      ShowMessage('Ошибка в количестве товара ' + dmIs.qValNID_OBJECT.AsString +
        ' - ' + UpperCase(dmIs.qValNNAME.AsString) +
        ', партия № ' + dmIs.qValNID_BATCH.AsString +
        ', на складе ' + dmIs.qValNSK.AsString +
        ', остаток = ' + dmIs.qValNOST.AsString);
      Screen.Cursor := crDefault;
      Exit;
    end;

    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE P_AREA_BILLS SET D_FIX = CURRENT_TIMESTAMP, ID_FIX = ' +
        IntToStr(SysVars.RegTN));
      Add('WHERE ID_PA_BILL = ' + dmIS.qZBillID_PA_BILL.AsString);
      try
        ExecSQL;
        if dmIS.mT.InTransaction then
          dmIS.mT.CommitRetaining;
      except
        MsgInformation('Ошибка при утверждении накладной', 'Ошибка');
        if dmIS.mT.InTransaction then
          dmIS.mT.RollbackRetaining;
      end;
      fmZBills_R.OpenZBill;
    end;

  end;
end;

procedure TfmZBills_R.tb6Click(Sender: TObject);
var
  s: string;
  i: Integer;
begin
  // If not dmIS.qZBill.IsEmpty Then frReport1.ShowReport;
  if not Assigned(fmD_JOB) then
    Application.CreateForm(TfmD_JOB, fmD_JOB);

  s := 'select * from REP_NAKL(:ID ,:PA_BILL_TYPE_,:PA_BILL_TYPE_1,' +
    ':PA_BILL_TYPE_2,:PA_BILL_TYPE_3,' +
    ' :D_IN, :D_OUT, :IS_NAKL, :IS_ALL, :NUMBER_,:NUMBER_BILL, :ID_AGENT_,' +
    ':TIP,:YSL,:rec_uragent)' +
    'order by id_pa_bill,name, id_object,id_batch';
  with fmD_JOB.qBill_s do
  begin
    Close;
    SQL.Clear;
    SQL.Clear;
    SQL.Add(s);
    ParamByName('ID').Value := fmMain.C_PA;
    ParamByName('PA_BILL_TYPE_').Value := dmIS.qZBillPA_BILL_TYPE.AsInteger;
    ParamByName('PA_BILL_TYPE_1').Value := dmIS.qZBillPA_BILL_TYPE.AsInteger;
    ParamByName('PA_BILL_TYPE_2').Value := dmIS.qZBillPA_BILL_TYPE.AsInteger;
    ParamByName('PA_BILL_TYPE_3').Value := dmIS.qZBillPA_BILL_TYPE.AsInteger;
    ParamByName('D_IN').Value := null;
    ParamByName('D_OUT').Value := null;
    if fmD_JOB.qBill_sD_FIX.IsNull then
      ParamByName('IS_NAKL').Value := 0
    else
      ParamByName('IS_NAKL').Value := 1;
    ParamByName('IS_ALL').Value := 0; //0-подшивка отправителя
    ParamByName('NUMBER_').Value := dmIS.qZBillNUMBER.AsString; //внутр. номер
    ParamByName('NUMBER_BILL').Value := null; //номер контрагента
    ParamByName('ID_AGENT_').Value := null;
    ParamByName('TIP').Value := 1;
    ParamByName('YSL').Value := 1;
    ParamByName('rec_uragent').Value := null; // реквизиты агента
    Open;
  end; //with qBill_s
  i := 1;
  fmD_JOB.frxRepBills_s.Pages[i];
  fmD_JOB.frxRepBills_s.Pages[i].Visible := True;
  fmD_JOB.frxRepBills_s.Pages[i - 1].Visible := False;

  fmD_JOB.frxRepBills_s.ShowReport;

end;

procedure TfmZBills_R.tb23Click(Sender: TObject);
begin
  if dmIS.qZBill_S.IsEmpty then
    exit;
  if Kop <> 2 then
    exit;
  if not dmIS.qZBillD_FIX.IsNull then
  begin
    MsgInformation('Изменение утвержденной накладной запрещено',
      'Запрет удаления');
    exit;
  end;
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
        ParamByName('cpa').AsInteger := dmIS.qZBillID_PA_BILL.AsInteger;
        Open;
      end;
    end;
end;

procedure TfmZBills_R.dbg2DblClick(Sender: TObject);
begin
  if not Assigned(fmOBJECT) then
    Application.CreateForm(TfmObject, fmObject);
  fmOBJECT.C_OBJ := dmIS.qZBill_SID_OBJECT.Value;
  fmOBJECT.ShowModal;
end;

procedure TfmZBills_R.SpeedButton1Click(Sender: TObject);
begin
  p1.BringToFront;
  Kop := 0;
end;

procedure TfmZBills_R.ed2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  KLV: extended;
begin
  if Key <> 13 then
    exit;
  if ed2.Text = '' then
  begin
    MsgInformation('Нужно ввести количество', 'Ввод данных');
    exit;
  end;
  try
    KLV := StrToFloat(ed2.Text);
  except
    MsgError('Ошибка при вводе количества', 'Ошибка ввода');
  end;
  if KLV > dmIS.qBStatefAMOUNT.AsFloat then
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
    Add('ID_PROD_OPER,ID_STEP,AMOUNT, OBJ_TYPE) VALUES (GEN_ID(OBJ_ID,1), :idb, ');
    Add(':ido, :idbh, :idpo, :ids, :amo, :otyp)');
    ParamByName('idb').AsInteger := dmIS.qZBillID_PA_BILL.AsInteger;
    ParamByName('ido').AsInteger := dmIS.qBStateID_OBJECT.AsInteger;
    ParamByName('idbh').AsInteger := dmIS.qBStateID_BATCH.AsInteger;
    ParamByName('idpo').AsInteger := dmIS.qBStateID_PROD_OPER.AsInteger;
    ParamByName('ids').AsInteger := dmIS.qBStateID_STEP.AsInteger;
    ParamByName('otyp').AsInteger := dmIS.qBStateID_OBJECT_TYPE.AsInteger;
    try
      ParamByName('amo').AsString := ed2.Text;
    except
      MsgError('Ошибка при вводе количества', 'Ошибка ввода');
    end;
    // showmessage(Text);
    try
      ExecSQL;
    except
      MsgError('Ошибка записи в спецификацию накладной', 'Ошибка записи');
    end;
  end;
  fmZBills_R.OpenState;
  with dmIS.qZBill_S do
  begin
    Close;
    ParamByName('cpa').AsInteger := dmIS.qZBillID_PA_BILL.AsInteger;
    Open;
  end;

end;

procedure TfmZBills_R.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if dmIS.mT.InTransaction then
    dmIS.mT.CommitRetaining;
end;

procedure TfmZBills_R.dbg1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (not dmIS.qZBillD_CONFIRM.IsNull) then
    AFont.Color := clBlue;

  if (not dmIS.qZBillD_FIX.IsNull) and (dmIS.qZBillD_GET.IsNull) and
    (dmIS.qZBillPA_BILL_TYPE.AsInteger in [50, 51, 52, 53]) then
    AFont.Color := clRed;

end;

procedure TfmZBills_R.dbg1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_SPACE) and (dmIS.qZBill.State in [dsInsert, dsEdit]) then
  begin
    if dbg1.SelectedField.FieldName = 'D_BILL' then
      dmIS.qZBillD_BILL.AsDateTime := date;
    Key := 0;
  end;

end;

end.
