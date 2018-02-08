unit unTabPlan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, ToolWin, ComCtrls, Grids, ExtCtrls, StdCtrls, unMainForm;

type
  TfmTabPlan = class(TMainForm)
    p1: TPanel;
    sg1: TStringGrid;
    tlb1: TToolBar;
    Label1: TLabel;
    ed1: TEdit;
    ud1: TUpDown;
    ToolButton1: TToolButton;
    Label2: TLabel;
    cb1: TComboBox;
    ToolButton2: TToolButton;
    chb1: TCheckBox;
    ed2: TEdit;
    edDay: TEdit;
    Label3: TLabel;
    ToolButton3: TToolButton;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cb1CloseUp(Sender: TObject);
    procedure sg1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sg1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sg1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sg1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sg1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure edDayKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    Y, M, D: word;
    DEF_T: string;
    D1, D2: TDate;
    procedure IniGrid;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTabPlan: TfmTabPlan;

implementation
uses unMain, unIS, IBQuery;

const
  id_Form = 25;

{$R *.dfm}

procedure TfmTabPlan.IniGrid;
var
  i, k: integer;
begin
  D1 := EncodeDate(Y, M, 1);
  if M < 12 then
    D2 := EncodeDate(Y, M + 1, 1) - 1
  else
    D2 := EncodeDate(Y, M, 31);
  fmMain.pb.StepBy(5);
  with dmIS.qPers do
  begin
    Close;
    ParamByName('id_area').AsInteger := fmMain.C_PA;
    ParamByName('d_begin').AsDate := d1;
    ParamByName('d_end').AsDate := d2;
    Open;
    fmMain.pb.StepBy(5);
    Last;
    First;
    if IsEmpty then
      MsgInformation('Данные о персонале данного подразделения отсутствуют',
        'Нет данных');
  end;

  with dmIS.qTabPlan do
  begin
    Close;
    ParamByName('pa1').AsInteger := fmMain.C_PA;
    ParamByName('d1').AsDate := D1;
    ParamByName('d2').AsDate := D2;
    ParamByName('p1').Clear;
    Prepare;
  end;
  with sg1 do
  begin
    ColCount := Trunc(D2 - D1 + 1) + 3;
    RowCount := dmIS.qPers.RecordCount + 1;
    Cells[0, 0] := 'Ф. И. О.';
    ColWidths[0] := 220;
    RowHeights[0] := 28;
    Cells[1, 0] := 'Код';
    ColWidths[1] := 40;
    Cells[2, 0] := 'Должность';
    ColWidths[2] := 120;
    i := 1;
    repeat
      ColWidths[i + 2] := 20;
      Cells[i + 2, 0] := IntToStr(i);
      i := i + 1;
    until
      i = ColCount - 2;
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
      RowHeights[i] := 18;
      i := i + 1;
      dmIS.qPers.Next;
    end;

    for i := 3 to sg1.ColCount - 1 do
      for k := 1 to sg1.RowCount - 1 do
        sg1.Cells[i, k] := '';

    Screen.Cursor := crHourGlass;
    for i := 1 to RowCount - 1 do
    begin
      dmIS.qTabPlan.Close;
      dmIS.qTabPlan.ParamByName('p1').AsInteger := StrToInt(Cells[1, i]);
      dmIS.qTabPlan.Open;
      dmIS.qTabPlan.First;
      while not dmIS.qTabPlan.Eof do
      begin
        Cells[dmIS.qTabPlanID_DAY.AsInteger + 2, i] :=
          dmIS.qTabPlanT_WORK.AsString;
        dmIS.qTabPlan.Next;
      end;
    end;
    Screen.Cursor := crDefault;

  end;
  fmMain.pb.StepBy(5);
  dmIS.qTabPlan.Close;
  if dmIS.mmT.InTransaction then
    dmIS.mmT.Commit;
  sg1.Refresh;
  fmMain.pb.StepBy(5);
end;

procedure TfmTabPlan.FormCreate(Sender: TObject);
begin
  DecodeDate(Date, Y, M, D);
  ud1.Position := Y;
  cb1.Text := cb1.Items.Strings[M - 1];
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read('DEF_T', DEF_T);
  finally
    Free;
  end;
  ed2.Text := DEF_T;
end;

procedure TfmTabPlan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qPers.Close;
  DEF_T := ed2.Text;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write('DEF_T', DEF_T);
  finally
    Free;
  end;
end;

procedure TfmTabPlan.ud1Click(Sender: TObject; Button: TUDBtnType);
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
  IniGrid;
end;

procedure TfmTabPlan.ed1KeyUp(Sender: TObject; var Key: Word;
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
    IniGrid;
  end;
end;

procedure TfmTabPlan.cb1CloseUp(Sender: TObject);
begin
  M := cb1.ItemIndex + 1;
  IniGrid;
end;

procedure TfmTabPlan.sg1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  // выходные
  if (DayOfWeek(D1 + ACol - 3) in [1, 7]) and (ACol > 2) then
    with sg1.Canvas do
    begin
      if ARow = 0 then
        Brush.Color := rgb(255, 74, 74)
      else
        Font.Color := clRed;
      FillRect(Rect);
      if ARow = 0 then
        TextOut(Rect.Left + 2, rect.Top + 2, sg1.Cells[ACol, ARow]);
      if (DayOfWeek(D1 + ACol - 3) = 1) and (ARow = 0) then
        TextOut(rect.Left + 2, Rect.Top + 15, 'Вс');
      if (DayOfWeek(D1 + ACol - 3) = 7) and (ARow = 0) then
        TextOut(rect.Left + 2, Rect.Top + 15, 'Сб');
    end;
  //прошедшее
  //If ((D1 + ACol - 3) < Date - 2) and (ARow > 0) and (ACol > 2) Then
  if ((D1 + ACol - 3) < Date - StrToInt(edDay.Text)) and (ARow > 0) and (ACol >
    2) then

    //If ((D1 + ACol - 3) < Date - 4) and (ARow > 0) and (ACol > 2) Then
    with sg1.Canvas do
      Brush.Color := clMoneyGreen;
  // Текущие строка и столбец
  if (ACol > 2) and (ARow > 0) then
  begin
    if ((sg1.Row = ARow) or (sg1.Col = ACol)) then
      sg1.Canvas.Brush.Color := clSkyBlue
    else
    begin
      //  If ((D1 + ACol - 3) < Date-2) Then sg1.Canvas.Brush.Color := clMoneyGreen
      //  If ((D1 + ACol - 3) < Date - 4) Then sg1.Canvas.Brush.Color := clMoneyGreen
      if ((D1 + ACol - 3) < Date - StrToInt(edDay.Text)) then
        sg1.Canvas.Brush.Color := clMoneyGreen
      else
        sg1.Canvas.Brush.Color := clWhite;
    end;
  end;

  //все рабочие ячейки
  if (ACol > 2) and (ARow > 0) then
    with sg1.Canvas do
    begin
      Font.Style := [fsBold];
      FillRect(Rect);
      TextOut(Rect.Left + 2, rect.Top + 2, sg1.Cells[ACol, ARow]);
    end;
end;

procedure TfmTabPlan.sg1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  ACol, ARow: integer;
begin
  if not fmMain.UF24 then
    exit;
  sg1.MouseToCell(X, Y, ACol, ARow);
  if chb1.Checked and (ed2.Text <> '') and (ACol > 2) and (ARow > 0)
    // and (Button = mbRight) and ((D1 + ACol - 3) > Date - 2)
// and (Button = mbRight) and ((D1 + ACol - 3) > Date - 5) //  сколько дней можно редактировать
  and (Button = mbRight) and ((D1 + ACol - 3) > Date - (StrToInt(edDay.Text) +
    1)) {//  сколько дней можно редактировать} then
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('EXECUTE PROCEDURE WRITE_TAB_PLAN(:pa1,:p1,:dwork,:val1)');
      ParamByName('pa1').AsInteger := fmMain.C_PA;
      ParamByName('p1').AsString := sg1.Cells[1, ARow];
      ParamByName('dwork').AsDate := D1 + ACol - 3;
      ParamByName('val1').AsString := ed2.Text;
      try
        ExecSQL;
        IniGrid;
      except;
        if dmIS.mmT.InTransaction then
          dmIS.mmT.Rollback;
      end;
    end;
end;

procedure TfmTabPlan.sg1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i, k: integer;
  GR: TGridRect;
begin
  if not fmMain.UF24 then
    exit;
  GR := sg1.Selection;
  if Key = VK_DELETE then
    for i := GR.Left to GR.Right do
      for k := GR.Top to GR.Bottom do
        with dmIS.qIM, dmIS.qIM.SQL do
        begin
          Close;
          Clear;
          Add('DELETE FROM TAB_PA_PLAN');
          Add('WHERE ID_P_AREA = :pa1 AND ID_P = :p1 AND D_WORK = :d1');
          ParamByName('pa1').AsInteger := fmMain.C_PA;
          ParamByName('p1').AsString := sg1.Cells[1, k];
          ParamByName('d1').AsDate := D1 + i - 3;
          try
            //     If ((D1 + i - 3) >= Date - 2) Then ExecSQL ;   //сколько дней можно редактировать
            //     If ((D1 + i - 3) >= Date - 4) Then ExecSQL ;
            if ((D1 + i - 3) >= Date - (StrToInt(edDay.Text) + 1)) then
              ExecSQL;

          except;
            if dmIS.mmT.InTransaction then
              dmIS.mmT.Rollback;
          end;
        end;
  IniGrid;
end;

procedure TfmTabPlan.sg1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  sg1.Refresh;
end;

procedure TfmTabPlan.sg1MouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  sg1.Refresh;
end;

procedure TfmTabPlan.edDayKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    IniGrid;
end;

procedure TfmTabPlan.FormShow(Sender: TObject);
begin
  IniGrid;
end;

end.
