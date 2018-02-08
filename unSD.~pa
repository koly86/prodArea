unit unSD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, DBCtrls;

type
  TfmSD = class(TForm)
    tlb1: TToolBar;
    tb1: TToolButton;
    p1: TPanel;
    p2: TPanel;
    Splitter1: TSplitter;
    dbn1: TDBNavigator;
    dbg1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSD: TfmSD;

implementation
uses unMain, unIS;

const
  id_Form = 22;

{$R *.dfm}

procedure TfmSD.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmSD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

end.
