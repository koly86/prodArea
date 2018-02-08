unit unW_SHIFT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, ShrFunc;

type
  TfmWORK_SHIFTS = class(TForm)
    Panel1: TPanel;
    dbg2: TDBGrid;
    Label1: TLabel;
    Splitter1: TSplitter;
    p1: TPanel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmWORK_SHIFTS: TfmWORK_SHIFTS;

implementation
uses unMain, unIS;

const
  id_Form = 7;

{$R *.dfm}

procedure TfmWORK_SHIFTS.FormActivate(Sender: TObject);
begin
  dmIS.qW_SHIFT.Close;
  dmIS.qW_SHIFT.Open;
  dmIS.qCONTR_TYPE.Close;
  dmIS.qCONTR_TYPE.Open;
end;

procedure TfmWORK_SHIFTS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmIS.qW_SHIFT.Close;
  dmIS.qCONTR_TYPE.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmWORK_SHIFTS.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

end.
