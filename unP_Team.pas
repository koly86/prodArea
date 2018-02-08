unit unP_Team;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, Grids, DBGrids, DBCtrls, StdCtrls, ExtCtrls, Buttons;

type
  TfmP_Team = class(TForm)
    p2: TPanel;
    p4: TPanel;
    Label1: TLabel;
    lcb1: TDBLookupComboBox;
    ed2: TEdit;
    dbn2: TDBNavigator;
    dbg2: TDBGrid;
    Splitter1: TSplitter;
    p1: TPanel;
    p3: TPanel;
    sb1: TSpeedButton;
    sb2: TSpeedButton;
    sb4: TSpeedButton;
    sb3: TSpeedButton;
    Panel1: TPanel;
    Label2: TLabel;
    lb1: TLabel;
    ed1: TEdit;
    p5: TPanel;
    dbn1: TDBNavigator;
    dbg1: TDBGrid;
    lb2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure lcb1Click(Sender: TObject);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ed2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sb1Click(Sender: TObject);
    procedure sb2Click(Sender: TObject);
    procedure sb3Click(Sender: TObject);
    procedure sb4Click(Sender: TObject);
    procedure ed1KeyPress(Sender: TObject; var Key: Char);
  private
    C_FP, C_TP: integer;
    procedure OpenP_Team;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmP_Team: TfmP_Team;

implementation
uses unMain, unIS, unPers;

const
  id_Form = 6;

{$R *.dfm}

procedure TfmP_Team.OpenP_Team;
begin
  if dmIS.qTeamsID_HEAD.IsNull then
    lb2.Caption := ''
  else
  begin
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('SELECT FIO FROM PERSONNEL WHERE ID_P = ' +
        dmIS.qTeamsID_HEAD.AsString);
      try
        Open;
      except;
      end;
      lb2.Caption := 'Бригадир: ' + FieldByName('FIO').AsString;
    end;
  end;
  with dmIS.qF_Pers do
  begin
    Close;
    ParamByName('a1').AsInteger := fmMain.C_PA;
    Open;
  end;
  with dmIS.qT_Pers do
  begin
    Close;
    ParamByName('a1').AsInteger := fmMain.C_PA;
    ParamByName('t1').AsInteger := lcb1.KeyValue;
    Open;
  end;
end;

procedure TfmP_Team.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmP_Team.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qPosts.Close;
  dmIS.qTeams.Close;
  dmIS.qF_Pers.Close;
  dmIS.qT_Pers.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmP_Team.FormActivate(Sender: TObject);
begin
  dmIS.qPosts.Close;
  dmIS.qPosts.Open;
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
      lcb1.KeyValue := dmIS.qTeamsID_TEAM.Value;
    except
      MsgError('Ошибка при открытии справочника бригад', 'Ошибка');
    end;
  end;
  fmP_Team.OpenP_Team;
end;

procedure TfmP_Team.lcb1Click(Sender: TObject);
begin
  fmP_Team.OpenP_Team;
end;

procedure TfmP_Team.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 



 if dmIS.qF_Pers.IsEmpty then
    exit;
  if Key = 13 then
  try
    Screen.Cursor := crHourGlass;
    if ed1.Text = '' then
    begin
      ShowMessage('Заполните образец поиска');
      Screen.Cursor := crDefault;
      exit;
    end;
    C_FP := dmIS.qF_PersID_P.Value;
    dmIS.qF_Pers.DisableControls;
    repeat
      if dmIS.qF_Pers.Eof then
        dmIS.qF_Pers.First
      else
        dmIS.qF_Pers.Next;
    until (Pos(ansiuppercase(ed1.Text),
      ansiuppercase(dbg1.SelectedField.AsString)) > 0)
      or (C_FP = dmIS.qF_PersID_P.Value);
    dmIS.qF_Pers.EnableControls;
    Screen.Cursor := crDefault;
  except
  end;
end;

procedure TfmP_Team.ed2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if dmIS.qT_Pers.IsEmpty then
    exit;
  if Key = 13 then
  try
    Screen.Cursor := crHourGlass;
    if ed2.Text = '' then
    begin
      ShowMessage('Заполните образец поиска');
      Screen.Cursor := crDefault;
      exit;
    end;
    C_TP := dmIS.qT_PersID_P.Value;
    dmIS.qT_Pers.DisableControls;
    repeat
      if dmIS.qT_Pers.Eof then
        dmIS.qT_Pers.First
      else
        dmIS.qT_Pers.Next;
    until (Pos(ansiuppercase(ed1.Text),
      ansiuppercase(dbg1.SelectedField.AsString)) > 0)
      or (C_TP = dmIS.qT_PersID_P.Value);
    dmIS.qT_Pers.EnableControls;
    Screen.Cursor := crDefault;
  except
  end;
end;

procedure TfmP_Team.sb1Click(Sender: TObject);
var
  i: integer;
begin
  if dmIS.qF_Pers.IsEmpty then
    exit;
  if dbg1.SelectedRows.Count < 1 then
  begin
    MsgInformation('Нужно выбрать сотрудников для добавления в бригаду',
      'Выбор сотрудников');
    exit;
  end;
  if MsgQuestion('Все выбранные сотрудники войдут в бригаду - ' +
    dmIS.qTeamsNAME.AsString + '. ' + SysVars.NReg +
    ', Выполнить перемещение? ',
    'Пополнение бригады') = id_yes then
  begin
    for i := 0 to dbg1.SelectedRows.Count - 1 do
    begin
      dmIS.qF_Pers.GotoBookmark(pointer(dbg1.SelectedRows.Items[i]));
      with dmIS.qIN, dmIS.qIN.SQL do
      begin
        Close;
        Clear;
        Add('INSERT INTO TEAMS_P (ID_P_AREA, ID_TEAM, ID_P)');
        Add('VALUES (' + IntToStr(fmMain.C_PA) + ',' +
          IntToStr(lcb1.KeyValue) + ',' + dmIS.qF_PersID_P.AsString + ')');
        try
          ExecSQL;
        except
          MsgError('Ошибка при записии сотрудника - ' +
            dmIS.qF_PersFIO.Value, 'Ошибка записи');
        end;
      end;
    end;
    if dmIS.mT.InTransaction then
      dmIS.mT.CommitRetaining;
    fmP_Team.OpenP_Team;
  end;
end;

procedure TfmP_Team.sb2Click(Sender: TObject);
var
  i: integer;
begin
  if dmIS.qT_Pers.IsEmpty then
    exit;
  if dbg2.SelectedRows.Count < 1 then
  begin
    MsgInformation('Нужно выбрать сотрудников для удаления из бригады',
      'Выбор сотрудников');
    exit;
  end;
  if MsgQuestion('Все выбранные сотрудники будут исключены из бригады - ' +
    dmIS.qTeamsNAME.AsString + '. ' + SysVars.NReg +
    ', Выполнить перемещение? ',
    'Удаление из бригады') = id_yes then
  begin
    for i := 0 to dbg2.SelectedRows.Count - 1 do
    begin
      dmIS.qT_Pers.GotoBookmark(pointer(dbg2.SelectedRows.Items[i]));
      with dmIS.qIN, dmIS.qIN.SQL do
      begin
        Close;
        Clear;
        Add('DELETE FROM TEAMS_P WHERE ID_P_AREA = ' + IntToStr(fmMain.C_PA) +
          ' AND ID_TEAM = ' + IntToStr(lcb1.KeyValue) + ' AND ID_P = ' +
          dmIS.qT_PersID_P.AsString);
        try
          ExecSQL;
        except
          MsgError('Ошибка при удалении сотрудника - ' +
            dmIS.qF_PersFIO.Value, 'Ошибка удаления');
        end;
      end;
    end;
    if dmIS.mT.InTransaction then
      dmIS.mT.CommitRetaining;
    fmP_Team.OpenP_Team;
  end;
end;

procedure TfmP_Team.sb3Click(Sender: TObject);
begin
  if dmIS.qF_Pers.IsEmpty then
    exit;
  if MsgQuestion('Все свободные сотрудники войдут в бригаду - ' +
    dmIS.qTeamsNAME.AsString + '. ' + SysVars.NReg +
    ', Выполнить перемещение? ',
    'Пополнение бригады') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('INSERT INTO TEAMS_P SELECT ' + IntToStr(fmMain.C_PA) + ',' +
        IntToStr(lcb1.KeyValue) + ', ID_P FROM PERSONNEL WHERE IDPRODAREA = ' +
        IntToStr(fmMain.C_PA));
      Add('AND ID_P NOT IN (SELECT ID_P FROM TEAMS_P WHERE ID_P_AREA = ' +
        IntToStr(fmMain.C_PA) + ')');
      try
        ExecSQL;
        if dmIS.mT.InTransaction then
          dmIS.mT.CommitRetaining;
      except
        MsgError('Ошибка при записии сотрудников ', 'Ошибка записи');
        if dmIS.mT.InTransaction then
          dmIS.mT.RollbackRetaining;
      end;
    end;
  fmP_Team.OpenP_Team;
end;

procedure TfmP_Team.sb4Click(Sender: TObject);
begin
  if dmIS.qT_Pers.IsEmpty then
    exit;
  if MsgQuestion('Все сотрудники бригады - ' + dmIS.qTeamsNAME.AsString +
    ' будут удалены из бригады. ' + SysVars.NReg + ', Выполнить перемещение? ',
    'Опустошение бригады') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM TEAMS_P WHERE ID_P_AREA = ' + IntToStr(fmMain.C_PA) +
        'AND ID_TEAM = ' + IntToStr(lcb1.KeyValue));
      try
        ExecSQL;
        if dmIS.mT.InTransaction then
          dmIS.mT.CommitRetaining;
      except
        MsgError('Ошибка при удалении сотрудников ', 'Ошибка удаления');
        if dmIS.mT.InTransaction then
          dmIS.mT.RollbackRetaining;
      end;
    end;
  fmP_Team.OpenP_Team;
end;


 // проверка на правильный ввод
procedure TfmP_Team.ed1KeyPress(Sender: TObject; var Key: Char);
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
