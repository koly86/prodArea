unit UnMmRem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Buttons, Db, unMainForm;

type
  TfmMmRem = class(TMainForm)
    Panel1: TPanel;
    bbPost: TBitBtn;
    mmRem: TMemo;
    lbEdit: TLabel;
    procedure bbPostClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    edRem: word;
    { Public declarations }
  end;

var
  fmMmRem: TfmMmRem;

implementation
uses unDistrJob, unIS;
{$R *.dfm}

const
  id_Form = 30;

procedure TfmMmRem.bbPostClick(Sender: TObject);
begin
  case edRem of
    0:
      begin
        if dmIS.qD_JOB.State in [dsEdit] then
        begin
          dmIS.qD_JOBREM.Value := fmMmRem.mmRem.Text;
          // dmIS.qPlan_P.Post;
          dmIs.qD_JOB.Refresh;
        end;
      end;
    1:
      begin
        if dmIS.qPlan_P.State in [dsEdit] then
        begin
          dmIS.qPlan_PREM.Value := fmMmRem.mmRem.Text;
          // dmIS.qPlan_P.Post;
          dmIs.qPlan_P.Refresh;
        end;
      end;
    2:
      begin
        if dmIS.qPlan_P_Fio.State in [dsEdit] then
        begin
          dmIS.qPlan_P_FioREM.Value := fmMmRem.mmRem.Text;
          // dmIS.qPlan_P.Post;
          dmIs.qPlan_P_Fio.Refresh;
        end;
      end;
  end; //Case
  fmMmRem.mmRem.ReadOnly := True;
  fmMmRem.Visible := False;
  fmMmRem.Close;
end;

procedure TfmMmRem.FormActivate(Sender: TObject);
begin
  fmMmRem.mmRem.SetFocus;
end;

end.
