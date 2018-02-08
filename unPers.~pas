unit unPers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, shrFunc, ToolWin, ComCtrls, Grids, DBGrids, DBCtrls, ExtCtrls,
  DBGridEh, StdCtrls, DB;

type
  TfmPers = class(TForm)
    tlb1: TToolBar;
    p1: TPanel;
    dbn1: TDBNavigator;
    dbg1: TDBGridEh;
    ToolButton2: TToolButton;
    Label2: TLabel;
    ed1: TEdit;
    cb1: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    edY: TEdit;
    ud1: TUpDown;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cb1CloseUp(Sender: TObject);
    procedure edYKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ed1Click(Sender: TObject);
  private
    C_PID: integer;
    Y, M, D: word;
    { Private declarations }
  public
    D1, D2: TDate;
    { Public declarations }
  end;

var
  fmPers: TfmPers;

implementation
uses unMain, unIS, unP_Team, unTeams;

const
  id_Form = 4;

{$R *.dfm}

procedure TfmPers.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
  DecodeDate(Date, Y, M, D);
  ud1.Position := Y;
  cb1.Text := cb1.Items.Strings[M - 1];
  D1 := EncodeDate(Y, M, 1);
  if M < 12 then
    D2 := EncodeDate(Y, M + 1, 1) - 1
  else
    D2 := EncodeDate(Y, M, 31);

  FormShow(Sender);
  fmPers.Caption := dmIS.qPA.FieldByName('NAME').AsString + '- Персонал';
end;

procedure TfmPers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qPers.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmPers.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if dmIS.qPers.IsEmpty then
    exit;
  if Key = 13 then
  try
    Screen.Cursor := crHourGlass;
    if ed1.Text = '' then
    begin
      ShowMessage('Заполните образец поиска ');
      Screen.Cursor := crDefault;
      exit;
    end;
    C_PID := dmIS.qPersID_P.Value;
    dmIS.qPers.DisableControls;
    repeat
      if dmIS.qPers.Eof then
        dmIS.qPers.First
      else
        dmIS.qPers.Next;
    until (Pos(ansiuppercase(ed1.Text),
      ansiuppercase(dbg1.SelectedField.AsString)) > 0)
      or (C_PID = dmIS.qPersID_P.Value);
    dmIS.qPers.EnableControls;
    Screen.Cursor := crDefault;
  except
  end;
end;

procedure TfmPers.cb1CloseUp(Sender: TObject);
begin
  M := cb1.ItemIndex + 1;
  D1 := EncodeDate(Y, M, 1);
  if M < 12 then
    D2 := EncodeDate(Y, M + 1, 1) - 1
  else
    D2 := EncodeDate(Y, M, 31);
  FormShow(Sender);
end;

procedure TfmPers.edYKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  y0: integer;
begin
  if Key = 13 then
  begin
    if not TryStrToInt(edY.Text, y0) then
    begin
      MsgError('Ошибка величины года', 'Ошибка');
      Exit;
    end
    else
      Y := y0;
    cb1CloseUp(Sender);
  end;
end;

procedure TfmPers.FormShow(Sender: TObject);
begin
  with dmIS.qPers do
  begin
    if Active then
      C_PID := dmIS.qPersID_P.AsInteger;
    Close;
    ParamByName('id_area').AsInteger := fmMain.C_PA;
    ParamByName('d_begin').AsDate := d1; //dtp1.Date;
    ParamByName('d_end').AsDate := d2;
    Open;
    Locate('ID_P', C_PID, []);
  end;

end;

procedure TfmPers.ed1Click(Sender: TObject);
begin
ed1.Text:='';
ed1.Font.Color:=clBlack;
end;

end.
