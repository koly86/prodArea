unit UnD_JOB_P;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unMainForm, ExtCtrls, Grids, DBGridEh;

type
  TfmD_JOB_P = class(TMainForm)
    Panel1: TPanel;
    dbg1: TDBGridEh;
    dbg2: TDBGridEh;
    Splitter1: TSplitter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmD_JOB_P: TfmD_JOB_P;

implementation
uses unMain, unIS;
{$R *.dfm}

end.
