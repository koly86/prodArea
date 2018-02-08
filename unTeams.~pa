unit unTeams;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, ComCtrls,
  ToolWin, ShrFunc, DB, Mask, DBCtrlsEh;

type
  TfmTeams = class(TForm)
    pc1: TPageControl;
    ts1: TTabSheet;
    tlb1: TToolBar;
    tb1: TToolButton;
    tb2: TToolButton;
    ToolButton1: TToolButton;
    tb4: TToolButton;
    ToolButton3: TToolButton;
    cb1: TCheckBox;
    dbn1: TDBNavigator;
    dbg1: TDBGrid;
    ts2: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    lb1: TLabel;
    Label6: TLabel;
    p3: TPanel;
    bb1: TBitBtn;
    bb2: TBitBtn;
    ed1: TEdit;
    lcb1: TDBLookupComboBox;
    Label1: TLabel;
    dtp1: TDBDateTimeEditEh;
    Label4: TLabel;
    lcb2: TDBLookupComboBox;
    Label5: TLabel;
    lcb3: TDBLookupComboBox;
    Label7: TLabel;
    m1: TMemo;
    Bevel1: TBevel;
    Label8: TLabel;
    dtp2: TDBDateTimeEditEh;
    ts3: TTabSheet;
    dbn2: TDBNavigator;
    dbg2: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cb1Click(Sender: TObject);
    procedure tb1Click(Sender: TObject);
    procedure pc1Change(Sender: TObject);
    procedure tb2Click(Sender: TObject);
    procedure bb2Click(Sender: TObject);
    procedure bb1Click(Sender: TObject);
    procedure tb4Click(Sender: TObject);
  private
    Kop: word;
    C_Team: integer;
    procedure EditCard(R_Edit: Boolean);
    procedure WriteCard;
    procedure OpenTeams;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTeams: TfmTeams;

implementation
uses unMain, unIS;

const
  id_Form = 5;

{$R *.dfm}

procedure TfmTeams.EditCard(R_Edit: Boolean);
begin
  ed1.ReadOnly := not R_Edit;
  m1.ReadOnly := not R_Edit;
  lcb1.ReadOnly := not R_Edit;
  lcb2.ReadOnly := not R_Edit;
  lcb3.ReadOnly := not R_Edit;
  dtp1.ReadOnly := not R_Edit;
  dtp2.ReadOnly := not R_Edit;
end;

procedure TfmTeams.WriteCard;
begin
  case Kop of
    0:
      begin
        lb1.Caption := dmIS.qTeamsID_TEAM.AsString;
        ed1.Text := dmIS.qTeamsNAME.Value;
        m1.Text := dmIS.qTeamsCOMMENT.Value;
        if dmIS.qTeamsID_HEAD.IsNull then
          lcb1.KeyValue := Null
        else
        begin
          dmIS.qPers.Locate('ID_P', dmIS.qTeamsID_HEAD.Value, []);
          lcb1.KeyValue := dmIS.qPersID_P.Value;
        end;
        if dmIS.qTeamsWORK_SHIFT.IsNull then
          lcb2.KeyValue := Null
        else
        begin
          dmIS.qW_SHIFT.Locate('WORK_SHIFT', dmIS.qTeamsWORK_SHIFT.Value, []);
          lcb2.KeyValue := dmIS.qW_SHIFTWORK_SHIFT.Value;
        end;
        if dmIS.qTeamsCONTRACT_TYPE.IsNull then
          lcb3.KeyValue := Null
        else
        begin
          dmIS.qCONTR_TYPE.Locate('CONTRACT_TYPE',
            dmIS.qTeamsCONTRACT_TYPE.Value, []);
          lcb3.KeyValue := dmIS.qCONTR_TYPECONTRACT_TYPE.Value;
        end;
        if dmIS.qTeamsD_OPEN.IsNull then
          dtp1.Clear
        else
          dtp1.Text := dmIS.qTeamsD_OPEN.AsString;
        if dmIS.qTeamsD_CLOSE.IsNull then
          dtp2.Clear
        else
          dtp2.Text := dmIS.qTeamsD_CLOSE.AsString;
        p3.Visible := False;
      end;
    1:
      begin
        lb1.Caption := '';
        ed1.Text := '';
        m1.Text := '';
        lcb1.KeyValue := NULL;
        lcb2.KeyValue := dmIS.qW_SHIFTWORK_SHIFT.Value;
        lcb3.KeyValue := dmIS.qCONTR_TYPECONTRACT_TYPE.Value;
        dtp1.Clear;
        dtp2.Clear;
        p3.Visible := True;
      end;
    2:
      begin
        lb1.Caption := dmIS.qTeamsID_TEAM.AsString;
        ed1.Text := dmIS.qTeamsNAME.Value;
        m1.Text := dmIS.qTeamsCOMMENT.Value;
        if dmIS.qTeamsID_HEAD.IsNull then
          lcb1.KeyValue := Null
        else
        begin
          dmIS.qPers.Locate('ID_P', dmIS.qTeamsID_HEAD.Value, []);
          lcb1.KeyValue := dmIS.qPersID_P.Value;
        end;
        if dmIS.qTeamsWORK_SHIFT.IsNull then
          lcb2.KeyValue := Null
        else
        begin
          dmIS.qW_SHIFT.Locate('WORK_SHIFT', dmIS.qTeamsWORK_SHIFT.Value, []);
          lcb2.KeyValue := dmIS.qW_SHIFTWORK_SHIFT.Value;
        end;
        if dmIS.qTeamsCONTRACT_TYPE.IsNull then
          lcb3.KeyValue := Null
        else
        begin
          dmIS.qCONTR_TYPE.Locate('CONTRACT_TYPE',
            dmIS.qTeamsCONTRACT_TYPE.Value, []);
          lcb3.KeyValue := dmIS.qCONTR_TYPECONTRACT_TYPE.Value;
        end;
        if dmIS.qTeamsD_OPEN.IsNull then
          dtp1.Clear
        else
          dtp1.Text := dmIS.qTeamsD_OPEN.AsString;
        if dmIS.qTeamsD_CLOSE.IsNull then
          dtp2.Clear
        else
          dtp2.Text := dmIS.qTeamsD_CLOSE.AsString;
        p3.Visible := True;
      end;
  end;
end;

procedure TfmTeams.OpenTeams;
begin
  with dmIS.qTeams, dmIS.qTeams.SQL do
  begin
    if Active then
      C_Team := dmIS.qTeamsID_TEAM.AsInteger;
    Close;
    Clear;
    Add('SELECT * FROM TEAMS WHERE ID_P_AREA = ' + IntToStr(fmMain.C_PA));
    if cb1.Checked then
      Add('AND D_CLOSE IS NULL');
    Add('ORDER BY ID_TEAM');
    try
      Open;
      Locate('ID_TEAM', C_Team, []);
      ts2.TabVisible := not dmIS.qTeams.IsEmpty;
    except
      MsgError('Ошибка при открытии справочника бригад', 'Ошибка');
    end;
  end;
end;

procedure TfmTeams.FormActivate(Sender: TObject);
begin
  tb1.Enabled := fmMain.UF10;
  tb2.Enabled := fmMain.UF10;
  tb4.Enabled := fmMain.UF10;
  if fmMain.UF22 and fmMain.UF_DOC then
    dmIS.qT_Pers.UpdateObject := dmIS.upT_PERS
  else
    dmIS.qT_Pers.UpdateObject := nil;
  with dmIS.qW_SHIFT do
  begin
    Close;
    Open;
    Last;
    First;
  end;
  with dmIS.qCONTR_TYPE do
  begin
    Close;
    Open;
    Last;
    First;
  end;
  with dmIS.qPers do
  begin
    Close;
    ParamByName('id_area').AsInteger := fmMain.C_PA;
    // ParamByName('d_begin').AsDate := d1;//dtp1.Date;
    // ParamByName('d_end').AsDate := d2;
    Open;
    Last;
    First;
  end;
  fmTeams.OpenTeams;
  Kop := 0;
end;

procedure TfmTeams.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qTeams.Close;
  dmIS.qCONTR_TYPE.Close;
  dmIS.qPers.Close;
  dmIS.qW_SHIFT.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmTeams.FormCreate(Sender: TObject);
begin
  Kop := 0;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmTeams.cb1Click(Sender: TObject);
begin
  fmTeams.OpenTeams;
end;

procedure TfmTeams.tb1Click(Sender: TObject);
begin
  Kop := 1;
  pc1.ActivePage := ts2;
  fmTeams.WriteCard;
  fmTeams.EditCard(True);
end;

procedure TfmTeams.pc1Change(Sender: TObject);
begin
  fmTeams.WriteCard;
  if Kop = 0 then
    fmTeams.EditCard(false);
  if pc1.ActivePage = ts3 then
    with dmIS.qT_Pers do
    begin
      Close;
      ParamByName('a1').AsInteger := fmMain.C_PA;
      ParamByName('t1').AsInteger := dmIS.qTeamsID_TEAM.AsInteger;
      Open;
    end;
end;

procedure TfmTeams.tb2Click(Sender: TObject);
begin
  if dmIS.qTeams.IsEmpty then
    exit;
  Kop := 2;
  pc1.ActivePage := ts2;
  fmTeams.WriteCard;
  fmTeams.EditCard(True);
end;

procedure TfmTeams.bb2Click(Sender: TObject);
begin
  Kop := 0;
  fmTeams.pc1.ActivePage := ts1;
  fmTeams.WriteCard;
  fmTeams.EditCard(False);
end;

procedure TfmTeams.bb1Click(Sender: TObject);
begin
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    case Kop of
      1:
        begin
          if ed1.Text = '' then
          begin
            MsgInformation('Нужно ввести название бригады',
              'Наименование бригады');
            exit;
          end;
          Add('INSERT INTO TEAMS (ID_P_AREA, ID_TEAM, NAME, ID_HEAD, CONTRACT_TYPE');
          Add(', WORK_SHIFT, D_OPEN, D_CLOSE, COMMENT)');
          Add('VALUES ( ' + IntToStr(fmMain.C_PA) + ', GEN_ID(OBJ_ID,1), :nt');
          if lcb1.KeyValue = NULL then
            Add(',NULL')
          else
            Add(',' +
              IntToStr(lcb1.KeyValue));
          if lcb3.KeyValue = NULL then
            Add(',NULL')
          else
            Add(',' +
              IntToStr(lcb2.KeyValue));
          if lcb3.KeyValue = NULL then
            Add(',NULL')
          else
            Add(',' +
              IntToStr(lcb3.KeyValue));
          Add(', :do, :dc, :cmt)');
        end;
      2:
        begin
          Add('UPDATE TEAMS SET NAME = :nt');
          if lcb1.KeyValue = NULL then
            Add(', ID_HEAD = NULL')
          else
            Add(', ID_HEAD = ' +
              IntToStr(lcb1.KeyValue));
          if lcb3.KeyValue = NULL then
            Add(', CONTRACT_TYPE = NULL')
          else
            Add(', CONTRACT_TYPE = ' + IntToStr(lcb3.KeyValue));
          if lcb2.KeyValue = NULL then
            Add(', WORK_SHIFT = NULL')
          else
            Add(', WORK_SHIFT = ' + IntToStr(lcb2.KeyValue));
          Add(', D_OPEN = :do, D_CLOSE = :dc, COMMENT = :cmt');
          Add('WHERE ID_P_AREA = ' + IntToStr(fmMain.C_PA) + 'AND ID_TEAM = ' +
            dmIS.qTeamsID_TEAM.AsString);
        end;
    end;
    ParamByName('nt').AsString := ed1.Text;
    try
      ParamByName('do').AsDateTime := StrToDateTime(dtp1.Text);
    except
      ParamByName('do').Clear;
    end;
    try
      ParamByName('dc').AsDateTime := StrToDateTime(dtp2.Text);
    except
      ParamByName('dc').Clear;
    end;
    ParamByName('cmt').AsString := m1.Text;
    // ShowMessage(Text);
    try
      ExecSQL;
      if dmIS.mT.InTransaction then
        dmIS.mT.CommitRetaining;
    except;
      MsgError('Ошибка записи данных бригады', 'Ошибка записи');
      if dmIS.mT.InTransaction then
        dmIS.mT.RollbackRetaining;
    end;
  end;
  Kop := 0;
  fmTeams.pc1.ActivePage := ts1;
  fmTeams.OpenTeams;
  fmTeams.WriteCard;
  fmTeams.EditCard(False);
end;

procedure TfmTeams.tb4Click(Sender: TObject);
begin
  if dmIS.qTeams.IsEmpty then
    exit;
  if MsgQuestion(SysVars.NReg + ' , Вы действительно хотите удалить бригаду - '
    +
    dmIS.qTeamsNAME.AsString + '?', 'Удаление записи') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      {
        Close;
        Clear;
        Add('SELECT ID_OPERATION FROM PRODUCT_OPER WHERE ID_AREA = ' +
         IntToStr(lcb1.KeyValue) + 'AND ID_OPERATION = ' + dmIS.qOperID_OPERATION.AsString);
        Open;
        If not IsEmpty Then begin
         MsgInformation('Данная запись используется. Ее удаление невозможно','');
         exit;
        end;
      }
      Close;
      Clear;
      Add('DELETE FROM TEAMS WHERE ID_P_AREA = ' + IntToStr(fmMain.C_PA));
      Add('AND ID_TEAM = ' + dmIS.qTeamsID_TEAM.AsString);
      try
        ExecSQL;
        if dmIS.mT.InTransaction then
          dmIS.mT.CommitRetaining;
      except
        MsgInformation('Ошибка при удалении записи', 'Ошибка');
        if dmIS.mT.InTransaction then
          dmIS.mT.RollbackRetaining;
      end;
      fmTeams.OpenTeams;
    end;
end;

end.
