unit UnWork_V;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ShrFunc, DBGridEh, Mask, DBCtrlsEh, DBLookupEh;

type
  TfmWork_V = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edHour: TEdit;
    Label4: TLabel;
    edAmount: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    lbDet: TLabel;
    lbOper: TLabel;
    Label5: TLabel;
    lcbEqp: TDBLookupComboboxEh;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edHourKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edAmountKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edAmountMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmWork_V: TfmWork_V;

implementation

uses unDistrJob, unIS, unMain;

{$R *.dfm}

procedure TfmWork_V.BitBtn2Click(Sender: TObject);
begin
  fmWork_V.Close;
end;

procedure TfmWork_V.BitBtn1Click(Sender: TObject);
begin
  try
    fmDistrJob.cr := StrToFloat(edHour.text);
  except
    MsgInformation('Неверное количество часов', 'Проверка величины');
    exit;
  end;
  {  If (fmDistrJob.cr - fmDistrJob.cr0) > 0.0001 Then begin
     MsgInformation('Для такого количества не хватает ресурсов. Распределение невозможно',
      'Проверка величины');
  //   exit;
    end;
  }
  Screen.Cursor := crHourGlass;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('EXECUTE PROCEDURE WRITE_PROD_PLAN_P(:pp1, :p1, :t1,:id_eq, :am1)');
    ParamByName('pp1').AsInteger := dmIS.qD_JOBID_PROD_PLAN.AsInteger;
    case fmDistrJob.Kdistr of
      1:
        begin
          ParamByName('t1').Clear;
          if lcbEqp.Text <> '' then
            ParamByName('id_eq').AsInteger := lcbEqp.KeyValue
          else
            ParamByName('id_eq').Clear;
          ParamByName('p1').AsInteger := dmIS.qLoad_PID_P.AsInteger;
        end;
      2:
        begin
          ParamByName('p1').Clear;
          ParamByName('id_eq').Clear;
          ParamByName('t1').AsInteger := dmIS.qLoad_PID_TEAM.AsInteger;
        end;
    end; //case
    try
      {    if dmIS.qD_JOBT_PERSONNEL.AsFloat > 0 then
           ParamByName('am1').AsFloat := fmDistrJob.cr/dmIS.qD_JOBT_PERSONNEL.AsFloat
          else
      }
      //      if (edAmount.Text <>'') and (StrToInt(edAmount.Text) >0) then
      if edAmount.Text <> '' then
        ParamByName('am1').AsFloat := StrToFloat(edAmount.Text)
      else
      begin
        ShowMessage('Введите количество....');
        Exit;
      end;
      ExecSQL;
      if dmIS.mT.InTransaction then
        dmIS.mT.CommitRetaining;
    except
      MsgInformation('Ошибка записи распределения работ', 'Ошибка записи');
      if dmIS.mT.InTransaction then
        dmIS.mT.RollbackRetaining;
    end; //try
  end;
  fmDistrJob.OpenDistr;
  dmIs.qLoad_P.Locate('ID_P', dmIs.nom, []);
  dmIs.qPlan_P.Locate('ID_P', dmIs.nom, []);
  fmWork_V.Close;
  Screen.Cursor := crDefault;

end;

procedure TfmWork_V.FormActivate(Sender: TObject);
begin
  case fmDistrJob.Kdistr of
    1:
      begin
        dmIs.qEqp.Close;
        dmIs.qEqp.ParamByName('id_area').AsInteger := fmMain.C_PA;
        dmIs.qEqp.Open;

      end; //1
  end; //Case
end;

procedure TfmWork_V.edHourKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try
    if (key = 13) and (dmIS.qD_JOBT_PERSONNEL.AsFloat > 0) then
      edAmount.Text := FormatFloat('##0.0', StrToFloat(edHour.Text) /
        dmIS.qD_JOBT_PERSONNEL.AsFloat);
  except;
  end;

end;

procedure TfmWork_V.edAmountKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try
    if (key = 13) and (dmIS.qD_JOBT_PERSONNEL.AsFloat > 0) then
      edHour.Text := FormatFloat('##0.0', StrToFloat(edAmount.Text) *
        dmIS.qD_JOBT_PERSONNEL.AsFloat);
  except;
  end;

end;

procedure TfmWork_V.edAmountMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if dmIS.qD_JOBT_PERSONNEL.AsFloat > 0 then
    edHour.Text := FormatFloat('##0.0', StrToFloat(edAmount.Text) *
      dmIS.qD_JOBT_PERSONNEL.AsFloat);
end;

end.
