unit unPAreas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, DBTrees, ShrFunc, ImgList;

type
  TfmPAreas = class(TForm)
    p2: TPanel;
    dbt1: TDB_TreeView;
    iml: TImageList;
    stb1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure dbt1BuildNode(Sender: TObject; StateFieldValue: Variant;
      var StateImage: Integer);
    procedure dbt1Change(Sender: TObject; Node: TTreeNode);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPAreas: TfmPAreas;

implementation
uses unMain, unIS;

const
  id_form = 2;

{$R *.dfm}

procedure TfmPAreas.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmPAreas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmPAreas.FormActivate(Sender: TObject);
var
  i: integer;
begin
  dbt1.Items.BeginUpdate;
  dbt1.BuildTree;
  dbt1.FullExpand;
  for i := 0 to dbt1.Items.Count - 1 do
    if fmMain.C_PA = Integer(dbt1.Items[i].Data) then
    begin
      dbt1.Selected := dbt1.Items[i];
      break;
    end;

  dbt1.Items.EndUpdate;
end;

procedure TfmPAreas.dbt1BuildNode(Sender: TObject;
  StateFieldValue: Variant; var StateImage: Integer);
begin
  StateImage := StateFieldValue;
end;

procedure TfmPAreas.dbt1Change(Sender: TObject; Node: TTreeNode);
begin
  stb1.SimpleText := 'Код: ' + IntToStr(dbt1.GetId);
end;

end.
