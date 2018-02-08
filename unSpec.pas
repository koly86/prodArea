unit unSpec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, DBCtrls, ExtCtrls, ComCtrls, DBTrees, Grids, DBGrids,
  StdCtrls, Buttons, DB, ToolWin;

type
  TfmSpec = class(TForm)
    p2: TPanel;
    p1: TPanel;
    Label2: TLabel;
    ed2: TEdit;
    bb2: TBitBtn;
    DBNavigator1: TDBNavigator;
    dbg3: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure bb2Click(Sender: TObject);
    procedure ed2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    D_PA, C_B: integer;
    { Public declarations }
  end;

var
  fmSpec: TfmSpec;

implementation
uses unMain, unIS, IBQuery, unOBJECT;

const
  id_Form = 9;

{$R *.dfm}

procedure TfmSpec.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmSpec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qBrands.Close;
  dmIS.qP_POS.Close;
  dmIS.qPOS_OPER.Close;
  dmIS.qBState.Close;
  dmIS.qRZ.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmSpec.FormActivate(Sender: TObject);
begin
  with dmIS.qUnits do
  begin
    Close;
    Open;
  end;
  with dmIS.qBrands do
  begin
    Close;
    Open;
  end;
  with dmIS.qRZ do
  begin
    Close;
    ParamByName('pa1').AsInteger := D_PA;
    Open;
  end;
  with dmIS.qBState do
  begin
    Close;
    ParamByName('pa1').AsInteger := D_PA;
    Open;
  end;
end;

procedure TfmSpec.bb2Click(Sender: TObject);
var
  KLV: extended;
begin
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
    ParamByName('idb').AsInteger := C_B;
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
  with dmIS.qRZ do
  begin
    Close;
    ParamByName('pa1').AsInteger := D_PA;
    Open;
  end;
  with dmIS.qBState do
  begin
    Close;
    ParamByName('pa1').AsInteger := D_PA;
    Open;
  end;
  with dmIS.qZBill_S do
  begin
    Close;
    ParamByName('cpa').AsInteger := dmIS.qZBillID_PA_BILL.AsInteger;
    Open;
  end;
end;

procedure TfmSpec.ed2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    bb2.Click;
end;

end.
