unit unMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Registry, Syncobjs, DdeMan, StrUtils, Menus, ImgList,
  ToolWin, ExtCtrls, shrFunc, ShellApi, DBCtrls, StdCtrls, IBQuery, DB,
  unMainForm, DBGridEh, Mask, DBCtrlsEh, DBLookupEh;

type
  TfmMain = class(TMainForm)
    stb1: TStatusBar;
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    MainMenu1: TMainMenu;
    N5: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    il1: TImageList;
    N1: TMenuItem;
    N2: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N25: TMenuItem;
    N24: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N30: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    N31: TMenuItem;
    N32: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    ToolButton4: TToolButton;
    tb5: TToolButton;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N15: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    tb6: TToolButton;
    tb7: TToolButton;
    N33: TMenuItem;
    lcb1: TDBLookupComboboxEh;
    N34: TMenuItem;
    pb: TProgressBar;
    tbExpTab: TToolButton;
    cbClsd: TCheckBox;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    tbTabel: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure lcb11Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure lcb1CloseUp(Sender: TObject; Accept: Boolean);
    procedure N34Click(Sender: TObject);
    procedure tbExpTabClick(Sender: TObject);
    procedure cbClsdClick(Sender: TObject);
    procedure tbTabelClick(Sender: TObject);
  private
    procedure PA_INI;
    procedure ShowZBills_R(Nop: integer);
    procedure DoRestore(Sender: TObject);
    { Private declarations }
  public
    C_PA, C_PA_PROD, CP_VER, S39, S40: Integer;
    FN: string;
    Is_Teams, Tree_Det, UF_DOC, UF10, UF21, UF22, UF23, UF24,
      UF28, UF39, UF75: Boolean;
    DTReg: TDateTime;
    procedure StoreDoc(Kop: integer; DOC_ID: integer; FName: string); //документы
    procedure StoreDoc_Sh(Kop: integer; DOC_ID: integer; FName: string; pr:
      integer); //шаблоны
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation
uses unIS, unPAreas, unOper, unPers, unW_SHIFT, unTeams, unP_Team, unZBills_R,
  unSpec, unZBills_P, unZStore, unState, unJState, unBill_P, unBill_R,
  unTabel, unZJob, unJob, unBAD, unSD, unProjects, unD_JOB, unTabPlan,
  unPlan, unZD_JOB, UnEqp, UnBillKPP, UnKPP, unExpTab;

const
  id_Form = 1;

{$R *.dfm}

procedure TfmMain.DoRestore(Sender: TObject);
begin
  ShowWindow(Application.Handle, SW_HIDE); //скрыть
end;

procedure TfmMain.ShowZBills_R(Nop: integer);
begin
  if not Assigned(fmZBills_R) then
    Application.CreateForm(TfmZBills_R, fmZBills_R);
  fmZBills_R.N_OP := Nop;
  fmZBills_R.p1.BringToFront;
  fmZBills_R.Show;
end;

procedure TfmMain.StoreDoc_Sh(Kop: integer; DOC_ID: integer; FName: string; pr:
  integer);
begin
  if not dmIS.dbDOC.Connected then
    exit;
  case Kop of
    //Kop = 0 - чтение
    0:
      begin
        with dmIS.qR_Boby_Sh do
        try
          Close;
          ParamByName('d1').Value := DOC_ID;
          Open;
          if IsEmpty then
          begin
            MsgInformation('Документ отсутствует', 'Чтение документа');  //Сообщение пользователю
            exit;    //выход
          end;
          FN := SysVars.IsDir + '\Tmp\' + dmIS.qR_Boby_ShFILENAME.Value;
          ReadBlob(dmIS.qR_Boby_ShBODY, FN);
          if pr = 0 then
            ShellExecute(Application.MainForm.Handle, nil, PChar(FN), '', '',
              SW_MAXIMIZE);
        except;
          MsgError('Ошибка при чтении файла', 'Ошибка чтения');
        end;
      end;
    //Kop = 2 - редактирование
    2:
      begin
        with dmIS.upBODY do
        try
          ParamByName('d1').Value := DOC_ID;
          ParamByName('f1').Value := ExtractFileName(FName);
          if not WriteBlob(ParamByname('b1'), FName) then
            exit;
          ExecSQL;
          if dmIS.dT.InTransaction then
            dmIS.dT.CommitRetaining;
        except;
          if dmIS.dT.InTransaction then
            dmIS.dT.RollbackRetaining;
          MsgError('Ошибка при записи файла', 'Ошибка записи');
        end;
      end;
  end;
end;

procedure TfmMain.StoreDoc(Kop: integer; DOC_ID: integer; FName: string);
var
  FN: string;
begin
  if not dmIS.dbDOC.Connected then
    exit;
  case Kop of
    //Kop = 0 - чтение
    0:
      begin
        with dmIS.qR_BODY do
        try
          Close;
          ParamByName('d1').Value := DOC_ID;
          Open;
          if IsEmpty then
          begin
            MsgInformation('Документ отсутствует', 'Чтение документа');
            exit;
          end;
          FN := SysVars.IsDir + '\Tmp\' + dmIS.qR_BODYFILENAME.Value;
          ReadBlob(dmIS.qR_BODYBODY, FN);
          ShellExecute(Application.MainForm.Handle, nil, PChar(FN), '', '',
            SW_MAXIMIZE);
        except;
          MsgError('Ошибка при чтении файла', 'Ошибка чтения');
        end;
      end;
    //Kop = 2 - редактирование
    2:
      begin
        with dmIS.upBODY do
        try
          ParamByName('d1').Value := DOC_ID;
          ParamByName('f1').Value := ExtractFileName(FName);
          if not WriteBlob(ParamByname('b1'), FName) then
            exit;
          ExecSQL;
          if dmIS.dT.InTransaction then
            dmIS.dT.CommitRetaining;
        except;
          if dmIS.dT.InTransaction then
            dmIS.dT.RollbackRetaining;
          MsgError('Ошибка при записи файла', 'Ошибка записи');
        end;
      end;
  end;
end;

procedure TfmMain.PA_INI;
begin
  if lcb1.KeyValue <> NULL then
  begin
    // fmMain.Caption := lcb1.Text;
    C_PA := lcb1.KeyValue;
    C_PA_PROD := dmIs.qPAID_PROD.AsInteger;
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('SELECT ID_P FROM P_AREA_FILING WHERE ID_P_AREA = ' + IntToStr(C_PA));
      Add('AND ID_P = ' + IntToStr(SysVars.RegTN));
      Open;
      UF_DOC := (not IsEmpty) or (SysVars.RegAccess = 0);
      Close;
      Clear;
      Add('DELETE FROM P_AREA_STATES WHERE ID_P_AREA = :pa1 AND AMOUNT < 0.0001');
      ParamByName('pa1').AsInteger := C_PA;
      try
        ExecSQL;
      except
      end;
    end;
  end;
  with dmIS.qTeams, dmIS.qTeams.SQL do
  begin
    Close;
    Clear;
    Add('SELECT * FROM TEAMS WHERE ID_P_AREA = :ar1 AND D_CLOSE IS NULL');
    Add(' ORDER BY ID_TEAM');
    ParamByName('ar1').AsInteger := fmMain.C_PA;
    Open;
    Is_Teams := not IsEmpty;
    Close;
  end;
  with dmIs.qEqp do
  begin
    Close;
    ParamByName('id_area').AsInteger := C_PA;
    Open;
  end;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  try
    RegLogin;
  except
    Application.Terminate;
  end;
  Application.CreateForm(TdmIS, dmIS);
  fmMain.Caption := SysVars.ApName;
  DTReg := Now;
  stb1.Panels[1].Text := DateTimeToStr(DTReg);
  stb1.Panels[2].Text := 'Версия: ' + FormatFloat('#0.00', SysVars.NVer);
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read('C_PA', C_PA);
  finally
    Free;
  end;
end;

procedure TfmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write('C_PA', C_PA);
  finally
    Free;
  end;
end;

procedure TfmMain.FormActivate(Sender: TObject);
begin
  S39 := ReadSysIntParam(dmIS.qIM, 39);
  S40 := ReadSysIntParam(dmIS.qIM, 40);
  tbExpTab.Enabled := UF28;
  with dmIS.qPA do
  begin
    Close;
    if cbClsd.Checked then
      dmIS.qPa.ParamByName('cls').AsInteger := 1;

    Open;
    Last;
    First;
    Locate('ID_P_AREA', C_PA, []);
    lcb1.KeyValue := FieldByName('ID_P_AREA').AsInteger;
  end;
  fmMain.PA_INI;
  N37.Visible := UF10;
  fmMain.Tree_Det := False;
end;

procedure TfmMain.lcb11Click(Sender: TObject);
begin
  fmMain.PA_INI;
end;

procedure TfmMain.N23Click(Sender: TObject);
begin
  if not Assigned(fmPAreas) then
    Application.CreateForm(TfmPAreas, fmPAreas);
  fmPAreas.Show;
end;

procedure TfmMain.N2Click(Sender: TObject);
begin
  if not Assigned(fmOper) then
    Application.CreateForm(TfmOper, fmOper);
  fmOper.Show;
end;

procedure TfmMain.N1Click(Sender: TObject);
begin
  if not Assigned(fmPers) then
    Application.CreateForm(TfmPers, fmPers);
  fmPers.ShowModal;
end;

procedure TfmMain.N25Click(Sender: TObject);
begin
  if not Assigned(fmWORK_SHIFTS) then
    Application.CreateForm(TfmWORK_SHIFTS, fmWORK_SHIFTS);
  fmWORK_SHIFTS.ShowModal;
end;

procedure TfmMain.N35Click(Sender: TObject);
begin
  if not Assigned(fmTeams) then
    Application.CreateForm(TfmTeams, fmTeams);
  fmTeams.pc1.ActivePage := fmTeams.ts1;
  fmTeams.ShowModal;
end;

procedure TfmMain.N37Click(Sender: TObject);
begin
  if not Assigned(fmP_Team) then
    Application.CreateForm(TfmP_Team, fmP_Team);
  fmP_Team.ShowModal;
end;

procedure TfmMain.N20Click(Sender: TObject);
begin
  if not Assigned(fmZBills_P) then
    Application.CreateForm(TfmZBills_P, fmZBills_P);
  fmZBills_P.N_TYPE := 51;
  fmZBills_P.ShowModal;
  // Приход с другого участка
end;

procedure TfmMain.N16Click(Sender: TObject);
begin
  if not Assigned(fmZStore) then
    Application.CreateForm(TfmZStore, fmZStore);
  fmZStore.N_TYPE := 52;
  fmZStore.ShowModal;
  // Получение со склада
end;

procedure TfmMain.N17Click(Sender: TObject);
begin
  ShowZBills_R(510); // Отгрузка на другой участок
end;

procedure TfmMain.N18Click(Sender: TObject);
begin
  ShowZBills_R(53); // Отгрузка на склад
end;

procedure TfmMain.N8Click(Sender: TObject);
begin
  fmMain.pb.StepBy(5);
  if not Assigned(fmSTATE) then
    Application.CreateForm(TfmSTATE, fmSTATE);
  fmState.Caption := 'Состояние участка - ' + dmIS.qPANAME.AsString;
  fmSTATE.Panel_Amount.Hide;
  fmSTATE.Show;
  fmMain.pb.Position := 0;
end;

procedure TfmMain.N9Click(Sender: TObject);
begin
  fmMain.pb.StepBy(5);
  if not Assigned(fmJState) then
    Application.CreateForm(TfmJState, fmJState);
  fmJState.Caption := 'Журнал - ' + dmIS.qPANAME.AsString;
  fmJState.Show;
  fmMain.pb.Position := 0;
end;

procedure TfmMain.N11Click(Sender: TObject);
begin
  if not Assigned(fmBill_P) then
    Application.CreateForm(TfmBill_P, fmBill_P);
  fmBill_P.ShowModal;
end;

procedure TfmMain.N21Click(Sender: TObject);
begin
  if not Assigned(fmBill_R) then
    Application.CreateForm(TfmBill_R, fmBill_R);
  fmBill_R.ShowModal;
end;

procedure TfmMain.N26Click(Sender: TObject);
begin
  if not Assigned(fmTABEL) then
    Application.CreateForm(TfmTABEL, fmTABEL);
  fmTabel.Caption := 'Учет рабочего времени - ' + dmIS.qPANAME.AsString;
  fmTABEL.Show;
end;

procedure TfmMain.N38Click(Sender: TObject);
begin
  if not Assigned(fmZJob) then
    Application.CreateForm(TfmZJob, fmZJob);
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT ID_PA_BILL, D_BILL FROM P_AREA_BILLS WHERE ID_P_AREA = :ar1');
    Add('AND PA_BILL_TYPE = 70 AND D_FIX IS NULL');
    ParamByName('ar1').AsInteger := fmMain.C_PA;
    Open;
    if not IsEmpty then
    begin
      fmZJob.C_B := FieldByName('ID_PA_BILL').AsInteger;
      fmZJob.C_D := FieldByName('D_BILL').AsString;
    end
    else
    begin
      Close;
      Clear;
      Add('INSERT INTO P_AREA_BILLS (ID_PA_BILL, ID_P_AREA, PA_BILL_TYPE');
      Add(',D_BILL, D_EDIT, ID_EDIT) VALUES (GEN_ID(BILL_ID,1), :ar1, 70, ');
      Add('CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,:p1)');
      ParamByName('ar1').AsInteger := fmMain.C_PA;
      ParamByName('p1').AsInteger := SysVars.RegTN;
      try
        ExecSQL;
      except;
        MsgError('Ошибка записи нового документа', 'Ошибка записи');
      end;
      Close;
      Clear;
      Add('SELECT ID_PA_BILL, D_BILL FROM P_AREA_BILLS WHERE ID_P_AREA = :ar1');
      Add('AND PA_BILL_TYPE = 70 AND D_FIX IS NULL');
      ParamByName('ar1').AsInteger := fmMain.C_PA;
      Open;
      if not IsEmpty then
      begin
        fmZJob.C_B := FieldByName('ID_PA_BILL').AsInteger;
        fmZJob.C_D := FieldByName('D_BILL').AsString;
      end
      else
        exit;
    end;
  end;
  fmZJob.ShowModal;
end;

procedure TfmMain.N24Click(Sender: TObject);
begin
  if not Assigned(fmJob) then
    Application.CreateForm(TfmJob, fmJob);
  fmJob.ShowModal;
end;

procedure TfmMain.N39Click(Sender: TObject);
begin
  if not Assigned(fmSD) then
    Application.CreateForm(TfmSD, fmSD);
  fmSD.ShowModal;
end;

procedure TfmMain.N19Click(Sender: TObject);
begin
  if not Assigned(fmBAD) then
    Application.CreateForm(TfmBAD, fmBAD);
  fmBAD.ShowModal;
end;

procedure TfmMain.N40Click(Sender: TObject);
begin
  if not Assigned(fmPROJECTS) then
    Application.CreateForm(TfmPROJECTS, fmPROJECTS);
  fmPROJECTS.Show;
end;

procedure TfmMain.N30Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  fmMain.pb.StepBy(5);
  if not Assigned(fmD_JOB) then
    Application.CreateForm(TfmD_JOB, fmD_JOB);
  fmD_JOB.Show;
  fmMain.pb.Position := 0;
end;

procedure TfmMain.N28Click(Sender: TObject);
begin
  fmMain.pb.StepBy(5);
  if not Assigned(fmTabPlan) then
    Application.CreateForm(TfmTabPlan, fmTabPlan);
  fmTabPlan.Caption := 'План-табель - ' + dmIS.qPANAME.AsString;
  fmTabPlan.Show;
  fmMain.pb.Position := 0;
end;

procedure TfmMain.N29Click(Sender: TObject);
begin
  fmMain.pb.StepBy(5);
  if not Assigned(fmPlan) then
    Application.CreateForm(TfmPlan, fmPlan);
  fmPlan.Caption := 'План - ' + dmIS.qPANAME.AsString;
  if fmPlan.qPa.Active = False then
    fmPlan.qPa.Open;
  fmPlan.lcbPa.KeyValue := C_PA;
  fmPlan.Show;
  fmMain.pb.Position := 0;
end;

procedure TfmMain.N33Click(Sender: TObject);
begin
  if not Assigned(fmZD_JOB) then
    Application.CreateForm(TfmZD_JOB, fmZD_JOB);
  fmZD_JOB.Caption := dmIS.qPANAME.AsString + '. Выполнение суточного задания';
  fmZD_JOB.ShowModal;
end;

procedure TfmMain.FormShow(Sender: TObject);
begin
  Application.OnRestore := DoRestore;
  ShowWindow(Application.Handle, SW_HIDE);

end;

procedure TfmMain.N6Click(Sender: TObject);
begin
  if not Assigned(fmEqp) then
    Application.CreateForm(TfmEqp, fmEqp);

  fmEqp.ShowModal;

end;

procedure TfmMain.lcb1CloseUp(Sender: TObject; Accept: Boolean);
begin
  fmMain.PA_INI;
end;

procedure TfmMain.N34Click(Sender: TObject);
begin
  if not Assigned(fmKPP) then
    Application.CreateForm(TfmKPP, fmKPP);
  fmKPP.Caption := 'Перемещение через КПП - ' + dmIS.qPANAME.AsString;
  fmKPP.Show;
end;

procedure TfmMain.tbExpTabClick(Sender: TObject);
begin
  if not Assigned(fmExpTabel) then
    Application.CreateForm(TfmExpTabel, fmExpTabel);
  fmExpTabel.qP_Area.close;
  fmExpTabel.qP_Area.open;
  fmExpTabel.Show;

end;

procedure TfmMain.cbClsdClick(Sender: TObject);
begin
  dmIS.qPa.close;
  if cbClsd.Checked then
    dmIS.qPa.ParamByName('cls').AsInteger := 1
  else
    dmIS.qPa.ParamByName('cls').clear;
  dmIS.qPA.Open;
end;

procedure TfmMain.tbTabelClick(Sender: TObject);
begin
  N26Click(Sender);
end;

end.

