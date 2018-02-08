program ProdArea;

uses
  Forms,
  unMain in 'unMain.pas' {fmMain},
  unIS in 'unIS.pas' {dmIS: TDataModule},
  shrFunc in '..\SharedFunction\shrFunc.pas',
  unPAreas in 'unPAreas.pas' {fmPAreas},
  unOper in 'unOper.pas' {fmOper},
  unPers in 'unPers.pas' {fmPers},
  unP_Team in 'unP_Team.pas' {fmP_Team},
  unTeams in 'unTeams.pas' {fmTeams},
  unW_SHIFT in 'unW_SHIFT.pas' {fmWORK_SHIFTS},
  unZBills_R in 'unZBills_R.pas' {fmZBills_R},
  unSpec in 'unSpec.pas' {fmSpec},
  unOBJECT in 'unOBJECT.pas' {fmOBJECT},
  unZBills_P in 'unZBills_P.pas' {fmZBills_P},
  unZStore in 'unZStore.pas' {fmZStore},
  unState in 'unState.pas' {fmSTATE},
  unJState in 'unJState.pas' {fmJState},
  unBill_P in 'unBill_P.pas' {fmBill_P},
  unBill_R in 'unBill_R.pas' {fmBill_R},
  unTabel in 'unTabel.pas' {fmTABEL},
  unTAB_S in 'unTAB_S.pas' {fmTAB_S},
  unZJob in 'unZJob.pas' {fmZJob},
  unJob in 'unJob.pas' {fmJob},
  unBAD in 'unBAD.pas' {fmBAD},
  unSD in 'unSD.pas' {fmSD},
  unProjects in 'unProjects.pas' {fmPROJECTS},
  unD_JOB in 'unD_JOB.pas' {fmD_JOB},
  unTabPlan in 'unTabPlan.pas' {fmTabPlan},
  unPlan in 'unPlan.pas' {fmPlan},
  unDistrJob in 'unDistrJob.pas' {fmDistrJob},
  BCPort in '..\SharedFunction\BCPort.pas',
  unZD_JOB in 'unZD_JOB.pas' {fmZD_JOB},
  unMainForm in 'unMainForm.pas',
  UnD_JOB_P in 'UnD_JOB_P.pas' {fmD_JOB_P},
  UnWork_V in 'UnWork_V.pas' {fmWork_V},
  UnEqp in 'UnEqp.pas' {fmEqp},
  UnMmRem in 'UnMmRem.pas' {fmMmRem},
  UnListTZ in 'UnListTZ.pas' {fmListTZ},
  UnPBar in 'UnPBar.pas' {fmOpen},
  UnBillKPP in 'UnBillKPP.pas' {fmBillKPP},
  UnKPP in 'UnKPP.pas' {fmKPP},
  unExpTab in 'unExpTab.pas' {fmExpTabel};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.

