unit unIS;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBQuery, IBDatabase, shrFunc,
  IBUpdateSQL, DBGridEh, Dialogs;

type
  TdmIS = class(TDataModule)
    mT: TIBTransaction;
    dbIS: TIBDatabase;
    qIN: TIBQuery;
    dbDOC: TIBDatabase;
    dT: TIBTransaction;
    qD_IN: TIBQuery;
    qR_BODY: TIBQuery;
    qR_BODYID_DOC: TIntegerField;
    qR_BODYFILENAME: TIBStringField;
    qR_BODYBODY: TBlobField;
    upBODY: TIBQuery;
    cT: TIBTransaction;
    C_db: TIBDatabase;
    qC_IN: TIBQuery;
    qPA: TIBQuery;
    dsPA: TDataSource;
    qPAreas: TIBQuery;
    qPAreasID_P_AREA: TIntegerField;
    qPAreasSHORTNAME: TIBStringField;
    qPAreasNAME: TIBStringField;
    qPAreasID_PATYPE: TSmallintField;
    qPAreasID_PARENT: TIntegerField;
    qPAreasID_HEAD: TIntegerField;
    qPAreasD_OPEN: TDateField;
    qPAreasD_CLOSE: TDateField;
    qPAreasID_DIV: TIntegerField;
    qUnits: TIBQuery;
    qUnitsID_UNIT: TIntegerField;
    qUnitsNAME: TIBStringField;
    qOper: TIBQuery;
    qOperID_AREA: TIntegerField;
    qOperID_OPERATION: TIntegerField;
    qOperNAME: TIBStringField;
    qOperSHORTNAME: TIBStringField;
    qOperID_EQUIPMENT: TIntegerField;
    qOperCOST: TIBBCDField;
    qOperEX_RATE: TIBBCDField;
    qOperID_CURRENCY: TSmallintField;
    qOperID_UNIT: TIntegerField;
    qOperARCH: TIBStringField;
    qOpernUNIT: TStringField;
    dsOper: TDataSource;
    qPers: TIBQuery;
    dsPers: TDataSource;
    qPersID_P: TIntegerField;
    qPersFIO: TIBStringField;
    qPersIDPOST: TIntegerField;
    qPersNAME: TIBStringField;
    qTeams: TIBQuery;
    dsTeams: TDataSource;
    qTeamsID_P_AREA: TIntegerField;
    qTeamsID_TEAM: TIntegerField;
    qTeamsNAME: TIBStringField;
    qTeamsID_HEAD: TIntegerField;
    qTeamsCONTRACT_TYPE: TSmallintField;
    qTeamsWORK_SHIFT: TSmallintField;
    qTeamsD_OPEN: TDateTimeField;
    qTeamsD_CLOSE: TDateTimeField;
    qTeamsCOMMENT: TIBStringField;
    qW_SHIFT: TIBQuery;
    qCONTR_TYPE: TIBQuery;
    qW_SHIFTWORK_SHIFT: TSmallintField;
    qW_SHIFTNAME: TIBStringField;
    qW_SHIFTTIME_BEGIN: TTimeField;
    qW_SHIFTTIME_END: TTimeField;
    qW_SHIFTWORK_DAYS: TSmallintField;
    qW_SHIFTREST_DAYS: TSmallintField;
    qW_SHIFTCOMMENT: TIBStringField;
    qCONTR_TYPECONTRACT_TYPE: TSmallintField;
    qCONTR_TYPENAME: TIBStringField;
    qCONTR_TYPECOMMENT: TIBStringField;
    qTeamsnCONTR_TYPE: TStringField;
    qTeamsrFIO: TStringField;
    dsWSHIFT: TDataSource;
    dsCONTYPE: TDataSource;
    qTeamsnWSHIFT: TStringField;
    qF_Pers: TIBQuery;
    qT_Pers: TIBQuery;
    dsF_Pers: TDataSource;
    dsT_Pers: TDataSource;
    qT_PersID_P: TIntegerField;
    qT_PersFIO: TIBStringField;
    qT_PersIDPOST: TIntegerField;
    qPosts: TIBQuery;
    qT_PersnPost: TStringField;
    qF_PersID_P: TIntegerField;
    qF_PersFIO: TIBStringField;
    qF_PersIDPOST: TIntegerField;
    qF_PersnPost: TStringField;
    qZBill: TIBQuery;
    dsZBill: TDataSource;
    qZBillID_PA_BILL: TIntegerField;
    qZBillID_P_AREA: TIntegerField;
    qZBillPA_BILL_TYPE: TSmallintField;
    qZBillID_DESTINATION: TIntegerField;
    qZBillNUMBER: TIBStringField;
    qZBillD_EDIT: TDateTimeField;
    qZBillID_EDIT: TIntegerField;
    qZBillD_CONFIRM: TDateTimeField;
    qZBillID_CONFIRM: TIntegerField;
    qZBillD_FIX: TDateTimeField;
    qZBillID_FIX: TIntegerField;
    qZBillD_GET: TDateTimeField;
    qZBillID_GET: TIntegerField;
    qZBill_S: TIBQuery;
    dsZBill_S: TDataSource;
    qStores: TIBQuery;
    qStoresID_P_AREA: TIntegerField;
    qStoresNAME: TIBStringField;
    qDES_PA: TIBQuery;
    qZBillnDES: TStringField;
    qDES_PAID_P_AREA: TIntegerField;
    qDES_PANAME: TIBStringField;
    dsStores: TDataSource;
    dsDES_PA: TDataSource;
    qP_POS: TIBQuery;
    dsP_POS: TDataSource;
    qP_POSID_OBJECT: TIntegerField;
    qP_POSNAME: TIBStringField;
    qP_POSOBJ_NAME: TIBStringField;
    qP_POSID_PROJECT: TIntegerField;
    qP_POSID_PRODUCT: TIntegerField;
    qP_POSID_BRAND: TIntegerField;
    qP_POSN_ORDER: TIBStringField;
    qP_POSPROJ_NAME: TIBStringField;
    qBrands: TIBQuery;
    qBrandsID_BRAND: TIntegerField;
    qBrandsNAME: TIBStringField;
    qBrandsID_C: TIntegerField;
    qP_POSbRAND: TStringField;
    qZBillD_BILL: TDateField;
    qP_POSAMOUNT: TIBBCDField;
    qOBJ: TIBQuery;
    dsOBJ: TDataSource;
    qOBJID_OBJECT: TIntegerField;
    qOBJOBJ_TYPE: TIntegerField;
    qOBJAMOUNT: TIBBCDField;
    qOBJ_OPER: TIBQuery;
    dsOBJ_OPER: TDataSource;
    qOBJ_OPERID_PROD_OPER: TIntegerField;
    qOBJ_OPERID_AREA: TIntegerField;
    qOBJ_OPERID_OPERATION: TIntegerField;
    qOBJ_OPERSTEP: TIntegerField;
    qOBJ_OPERNAME: TIBStringField;
    qOBJ_OPERANAME: TIBStringField;
    qP_POSP_AMOUNT: TIBBCDField;
    qOPER_MAT: TIBQuery;
    dsOPER_MAT: TDataSource;
    qOPER_MATID_PROD_OPER: TIntegerField;
    qOPER_MATID_ITEM: TIntegerField;
    qOPER_MATAMOUNT: TFloatField;
    qOPER_MATWASTE: TIBBCDField;
    qOPER_MATDEFECT: TIBBCDField;
    qOPER_MATLENG: TFloatField;
    qOPER_MATWIDTH: TFloatField;
    qOPER_MATHEIGHT: TFloatField;
    qOPER_MATREM: TBlobField;
    qOPER_MATNAME: TIBStringField;
    qOBJREM: TMemoField;
    qOBJ_OPERREM: TMemoField;
    qOBJ_DOCS: TIBQuery;
    dsOBJ_DOCS: TDataSource;
    qOBJ_DOCSID_PROD_DOC: TIntegerField;
    qOBJ_DOCSID_PRODUCT: TIntegerField;
    qOBJ_DOCSID_OBJECT: TIntegerField;
    qOBJ_DOCSDOC_TYPE: TIntegerField;
    qOBJ_DOCSD_CONFIRM: TDateTimeField;
    qOBJ_DOCSID_CONFIRM: TIntegerField;
    qOBJ_DOCSID_DOC: TIntegerField;
    qOBJ_DOCSNAME: TIBStringField;
    qPOS_OPER: TIBQuery;
    dsPOS_OPER: TDataSource;
    qPOS_OPERID_PROD_OPER: TIntegerField;
    qPOS_OPERID_OPERATION: TIntegerField;
    qPOS_OPERNAME: TIBStringField;
    qPOS_OPERSTEP: TIntegerField;
    qZBillID_TEAM: TIntegerField;
    qZBillnPA: TStringField;
    qP_POSOBJ_TYPE: TIntegerField;
    qOBJNAME: TIBStringField;
    qState: TIBQuery;
    dsState: TDataSource;
    qStateID_OBJECT: TIntegerField;
    qStateID_PROD_OPER: TIntegerField;
    qStateSUM: TIBBCDField;
    qStateNAME: TIBStringField;
    qBState: TIBQuery;
    dsBState: TDataSource;
    qJHead: TIBQuery;
    qJState: TIBQuery;
    dsJHead: TDataSource;
    dsJState: TDataSource;
    qJHeadID_PROD_AREA: TIntegerField;
    qJHeadID_OBJECT: TIntegerField;
    qJHeadNAME: TIBStringField;
    qJStateID_J_PROD_AREA: TIntegerField;
    qJStateID_PROD_OPER: TIntegerField;
    qJStateID_BATCH: TIntegerField;
    qJStateDFIX: TDateTimeField;
    qJStateREC: TIBBCDField;
    qJStateEXP: TIBBCDField;
    qJStateREST: TIBBCDField;
    qJStatePA_BILL_TYPE: TSmallintField;
    qJStateID_PA_BILL: TIntegerField;
    qNOper: TIBQuery;
    qNOperID_PROD_OPER: TIntegerField;
    qNOperNAME: TIBStringField;
    qJStatenOPER: TStringField;
    qStatenOPER: TStringField;
    qBStateID_PA_STATE: TIntegerField;
    qBStateID_OBJECT: TIntegerField;
    qBStateNAME: TIBStringField;
    qBStateUNIT1: TIBStringField;
    qBStateUNIT2: TIBStringField;
    qBStateID_BATCH: TIntegerField;
    qBStateID_PROD_OPER: TIntegerField;
    qBStateID_STEP: TIntegerField;
    qBStateID_OBJECT_TYPE: TIntegerField;
    qBStateID_PA_BILL: TIntegerField;
    qBStateFACTOR: TIntegerField;
    qBStateAMOUNT: TIBBCDField;
    qBStateID_ITEM: TIntegerField;
    qBStatenOPER: TStringField;
    qZBill_SID_PA_BILL_POS: TIntegerField;
    qZBill_SID_OBJECT: TIntegerField;
    qZBill_SNAME: TIBStringField;
    qZBill_SUNIT1: TIBStringField;
    qZBill_SUNIT2: TIBStringField;
    qZBill_SID_UNIT: TIntegerField;
    qZBill_SID_BATCH: TIntegerField;
    qZBill_SID_PROD_OPER: TIntegerField;
    qZBill_SID_STEP: TIntegerField;
    qZBill_SAMOUNT: TIBBCDField;
    qZBill_SOBJ_TYPE: TIntegerField;
    qZBill_SID_ITEM: TIntegerField;
    qZBill_SN_ORDER: TIBStringField;
    qT_PersRATING: TIBBCDField;
    upT_PERS: TIBUpdateSQL;
    qRZ: TIBQuery;
    qRZID_OBJECT: TIntegerField;
    qRZID_PROD_OPER: TIntegerField;
    qRZID_BATCH: TIntegerField;
    qRZSUM: TIBBCDField;
    qBStaterAMOUNT: TFloatField;
    qBStatefAMOUNT: TFloatField;
    qR: TIBQuery;
    qRID_OBJECT: TIntegerField;
    qRID_PROD_OPER: TIntegerField;
    qRSUM: TIBBCDField;
    qStaterAMOUNT: TFloatField;
    qStatefAMOUNT: TFloatField;
    qTAB: TIBQuery;
    qPAID_P_AREA: TIntegerField;
    qPANAME: TIBStringField;
    qTABID_TAB_COEFF: TIntegerField;
    qTABCOEFF: TIBBCDField;
    qTABVAL: TIBBCDField;
    qTABID_DAY: TSmallintField;
    qTAB_S: TIBQuery;
    dsTAB_S: TDataSource;
    qTAB_SID_P: TIntegerField;
    qTAB_STAB_DAY: TDateField;
    qTAB_SID_TAB_COEFF: TIntegerField;
    qTAB_SCOEFF: TIBBCDField;
    qTAB_SVAL: TIBBCDField;
    qTAB_SCOMMENT: TIBStringField;
    qT_COEF: TIBQuery;
    qT_COEFID_P_AREA: TIntegerField;
    qT_COEFID_TAB_COEFF: TIntegerField;
    qT_COEFVAL: TIBBCDField;
    qT_COEFNAME: TIBStringField;
    qT_COEFSHORTNAME: TIBStringField;
    qT_COEFDEF_VAL: TIBBCDField;
    upTAB_S: TIBUpdateSQL;
    qTAB_SsN: TStringField;
    qTAB_SnCOEFF: TStringField;
    qTAB_SID_TAB_POS: TIntegerField;
    qTAB_SID_TAB: TIntegerField;
    qTABnS: TStringField;
    qTAB_SdCOEF: TFloatField;
    dsT_COEF: TDataSource;
    qBStateN_ORDER: TIBStringField;
    qStateN_ORDER: TIBStringField;
    qNew_Oper: TIBQuery;
    dsNew_Oper: TDataSource;
    qNew_OperID_PROD_OPER: TIntegerField;
    qNew_OperID_OPERATION: TIntegerField;
    qNew_OperNAME: TIBStringField;
    qNew_OperSTEP: TIntegerField;
    qC_Oper: TIBQuery;
    dsC_Oper: TDataSource;
    qC_OperID_OBJECT: TIntegerField;
    qC_OperID_PROD_OPER: TIntegerField;
    qC_OperN_ORDER: TIBStringField;
    qC_OperID_OPERATION: TIntegerField;
    qC_OperNAME: TIBStringField;
    qC_OperPNAME: TIBStringField;
    qC_OperOBJ_TYPE: TIntegerField;
    qZBill_SOLD_PROD_OPER: TIntegerField;
    qZBill_SoldOPER: TStringField;
    qC_PROJECT: TIBQuery;
    dsC_PROJECT: TDataSource;
    qC_PROJECTN_ORDER: TIBStringField;
    qC_PROJECTNAME: TIBStringField;
    qSBill_s: TIBQuery;
    dsSBill_s: TDataSource;
    qSBill_sID_OBJECT: TIntegerField;
    qSBill_sNAME: TIBStringField;
    qSBill_sID_PROD_OPER: TIntegerField;
    qSBill_sOLD_PROD_OPER: TIntegerField;
    qSBill_sID_STEP: TIntegerField;
    qSBill_sSUM: TIBBCDField;
    qSBill_snOper: TStringField;
    qSBill_soldOper: TStringField;
    qZBill_SID_P: TIntegerField;
    qZBill_SID_TEAM: TIntegerField;
    qJHeadN_ORDER: TIBStringField;
    qJHeadP_NAME: TIBStringField;
    qZBAD: TIBQuery;
    qZB_S: TIBQuery;
    dsZBAD: TDataSource;
    dsZB_S: TDataSource;
    qZBADID_PA_BILL: TIntegerField;
    qZBADID_P_AREA: TIntegerField;
    qZBADPA_BILL_TYPE: TSmallintField;
    qZBADID_DESTINATION: TIntegerField;
    qZBADID_TEAM: TIntegerField;
    qZBADID_C: TIntegerField;
    qZBADD_BILL: TDateField;
    qZBADNUMBER: TIBStringField;
    qZBADD_EDIT: TDateTimeField;
    qZBADID_EDIT: TIntegerField;
    qZBADD_CONFIRM: TDateTimeField;
    qZBADID_CONFIRM: TIntegerField;
    qZBADD_FIX: TDateTimeField;
    qZBADID_FIX: TIntegerField;
    qZBADD_GET: TDateTimeField;
    qZBADID_GET: TIntegerField;
    upBAD: TIBUpdateSQL;
    qZB_SID_PA_BILL_POS: TIntegerField;
    qZB_SID_OBJECT: TIntegerField;
    qZB_SNAME: TIBStringField;
    qZB_SUNIT1: TIBStringField;
    qZB_SUNIT2: TIBStringField;
    qZB_SID_UNIT: TIntegerField;
    qZB_SID_BATCH: TIntegerField;
    qZB_SID_PROD_OPER: TIntegerField;
    qZB_SID_STEP: TIntegerField;
    qZB_SAMOUNT: TIBBCDField;
    qZB_SOBJ_TYPE: TIntegerField;
    qZB_SID_ITEM: TIntegerField;
    qZB_SID_PROJECT: TIntegerField;
    qZB_SN_ORDER: TIBStringField;
    qZB_SOLD_PROD_OPER: TIntegerField;
    qZB_SPR_NAME: TIBStringField;
    qZB_SnOper: TStringField;
    qJR: TIBQuery;
    IntegerField1: TIntegerField;
    IntegerField3: TIntegerField;
    IBBCDField1: TIBBCDField;
    qJROLD_PROD_OPER: TIntegerField;
    qBStatejAMOUNT: TFloatField;
    qBStatejfAmount: TFloatField;
    qP_PR: TIBQuery;
    dsP_PR: TDataSource;
    qP_PRN_ORDER: TIBStringField;
    qP_PRNAME: TIBStringField;
    qC_OperID_VERSION: TIntegerField;
    qSBill_sN_ORDER: TIBStringField;
    upZBILL: TIBUpdateSQL;
    qBARG: TIBQuery;
    qBARGID_BARGAIN: TIntegerField;
    qBARGNAME: TIBStringField;
    qBARGID_AREA: TIntegerField;
    qBARGD_BASIC: TDateField;
    qBARGD_CONFIRM: TDateTimeField;
    qBARGID_CONFIRM: TIntegerField;
    qBARGD_FIX: TDateTimeField;
    qBARGID_FIX: TIntegerField;
    dsBARG: TDataSource;
    qBARGnAREA: TStringField;
    upBARG: TIBUpdateSQL;
    qZBill_SFACTOR: TIBBCDField;
    qZBill_SAMOUNT2: TIBBCDField;
    qZBill_SSUMMA: TIBBCDField;
    qZBill_SSUMMA_EXP: TIBBCDField;
    qZBill_SCENA: TIBBCDField;
    qZBill_SCENA1: TIBBCDField;
    qZB_SFACTOR: TIBBCDField;
    qZB_SAMOUNT2: TIBBCDField;
    qZB_SID_P: TIntegerField;
    qZB_SID_TEAM: TIntegerField;
    qZB_SSUMMA: TIBBCDField;
    qZB_SSUMMA_EXP: TIBBCDField;
    qZB_SCENA: TIBBCDField;
    qZB_SCENA1: TIBBCDField;
    qP_OBJ: TIBQuery;
    dsP_OBJ: TDataSource;
    qP_OBJID_OBJECT: TIntegerField;
    qP_OBJOBJ_NAME: TIBStringField;
    qP_OBJID_OPERATION: TIntegerField;
    qP_OBJNAME: TIBStringField;
    qP_OBJID_PROD_TRAFF: TIntegerField;
    qPLAN: TIBQuery;
    dsPLAN: TDataSource;
    qPLANID_PROD_PLAN: TIntegerField;
    qPLANID_PROD_TRAF: TIntegerField;
    qPLAND_OUT: TDateField;
    qPLANAMOUNT: TFloatField;
    qPLANF_AMOUNT: TFloatField;
    qD_JOB: TIBQuery;
    dsD_JOB: TDataSource;
    qD_JOBNAME: TIBStringField;
    qD_JOBID_OBJECT: TIntegerField;
    qD_JOBOBJ_NAME: TIBStringField;
    qD_JOBID_OPERATION: TIntegerField;
    qD_JOBAMOUNT: TFloatField;
    qD_JOBONAME: TIBStringField;
    qTraf: TIBQuery;
    dsTraf: TDataSource;
    qTrafID_PROD_TRAFF: TIntegerField;
    qTrafID_PROD_OPER: TIntegerField;
    qTrafID_AREA: TIntegerField;
    qTrafID_OPERATION: TIntegerField;
    qTrafANAME: TIBStringField;
    qTrafONAME: TIBStringField;
    qZBill_SID_SUBOPER: TIntegerField;
    qNew_OperSUBOPER: TIntegerField;
    qC_OperSUBOPER: TIntegerField;
    qP_OBJSTEP: TIntegerField;
    qTabPlan: TIBQuery;
    qTabPlanT_WORK: TFloatField;
    qTabPlanID_DAY: TSmallintField;
    mmT: TIBTransaction;
    qIM: TIBQuery;
    qPA_WORK: TIBQuery;
    qPA_WORKID_DAY: TSmallintField;
    qPA_WORKT_NECESSARY: TFloatField;
    qPA_WORKT_WORK: TFloatField;
    qPA_WORKpROC: TFloatField;
    qPL_Proj: TIBQuery;
    qD_PL: TIBQuery;
    qPL_ProjN_ORDER: TIBStringField;
    qD_PLT_WORK: TFloatField;
    qD_PLID_DAY: TSmallintField;
    qD_JOBINAME: TIBStringField;
    qD_JOBT_PERSONNEL: TFloatField;
    qPlan_P: TIBQuery;
    qD_JOBID_PROD_PLAN: TIntegerField;
    qPlan_PID_PROD_PLAN_P: TIntegerField;
    qPlan_PID_PROD_PLAN: TIntegerField;
    qPlan_PID_P: TIntegerField;
    qPlan_PID_TEAM: TIntegerField;
    qPlan_PAMOUNT: TFloatField;
    qPlan_PfIO: TStringField;
    qPlan_PnTeam: TStringField;
    dsPlan_P: TDataSource;
    qPlan_PT_PERS: TFloatField;
    qLoad_P: TIBQuery;
    dsLoad_P: TDataSource;
    qLoad_PID_TEAM: TIntegerField;
    qLoad_PID_P: TIntegerField;
    qLoad_PLOAD_TIME: TFloatField;
    qLoad_PWORK_TIME: TFloatField;
    qSUM_P: TIBQuery;
    qSUM_PA_SUM: TFloatField;
    dsSum_P: TDataSource;
    qD_JOBSUM_PERS: TFloatField;
    qZBill_SID_ORDER: TIntegerField;
    qZBill_SORD_NAME: TIBStringField;
    qBStateID_ORDER: TIntegerField;
    qBStateORD_NAME: TIBStringField;
    qC_PROJECTID_ORDER: TIntegerField;
    qSBill_sID_ORDER: TIntegerField;
    qP_POSID_ORDER: TIntegerField;
    qP_PRID_ORDER: TIntegerField;
    qZD_JOB: TIBQuery;
    dsZD_JOB: TDataSource;
    qZD_JOBID_TEAM: TIntegerField;
    qZD_JOBID_P: TIntegerField;
    qZD_JOBNAME: TIBStringField;
    qZD_JOBID_ORDER: TIntegerField;
    qZD_JOBORD_NAME: TIBStringField;
    qZD_JOBID_OBJECT: TIntegerField;
    qZD_JOBOBJ_NAME: TIBStringField;
    qZD_JOBID_PROD_OPER: TIntegerField;
    qZD_JOBID_OPER: TIntegerField;
    qZD_JOBONAME: TIBStringField;
    qZD_JOBN_ORDER: TIBStringField;
    qZD_JOBP_AMOUNT: TFloatField;
    qZD_JOBF_AMOUNT: TFloatField;
    qZD_JOBP_WORK_TIME: TFloatField;
    upZD_JOB: TIBUpdateSQL;
    qZD_JOBID_PROD_PLAN_P: TIntegerField;
    qZD_JOBF_TIME: TFloatField;
    qP_OBJINAME: TIBStringField;
    qP_OBJnOBJ: TStringField;
    qLoad_PNAME: TIBStringField;
    qD_JOBF_AMOUNT: TFloatField;
    qD_JOBP_AMOUNT: TFloatField;
    UpD_OBJ: TIBUpdateSQL;
    qD_JOBID_PROD_TRAFF: TIntegerField;
    qD_JOBN_ORDER: TIBStringField;
    qD_JOBOBJ_TYPE: TIntegerField;
    qD_JOBOST: TFloatField;
    qD_JOBID_AREA: TIntegerField;
    qD_JOBNM: TIBStringField;
    qD_JOBSTEP: TIntegerField;
    qD_JOBPOSIT: TIntegerField;
    qD_JOBID_VERSION: TIntegerField;
    qD_JOBF_TIME: TFloatField;
    qPLANP_AMOUNT: TFloatField;
    qPLAND_FIX: TDateTimeField;
    qPLANID_FIX: TIntegerField;
    qPLANREM: TMemoField;
    qPLANF_TIME: TFloatField;
    qPLANPOSIT: TIntegerField;
    qPlans_P: TIBQuery;
    qPlans_PID_PROD_PLAN_P: TIntegerField;
    qPlans_PID_PROD_PLAN: TIntegerField;
    qPlans_PID_P: TIntegerField;
    qPlans_PID_TEAM: TIntegerField;
    qPlans_PAMOUNT: TFloatField;
    qPlans_PF_AMOUNT: TFloatField;
    qPlans_PF_TIME: TFloatField;
    dsPlans_P: TDataSource;
    qD_JOBP_TIME: TFloatField;
    qD_JOBID_PROD_OPER: TIntegerField;
    qD_JOBDESCRIPT: TIBStringField;
    qD_JOBF_TM: TFloatField;
    qD_JOBID_ORDER: TIntegerField;
    qD_JOBFIO: TIBStringField;
    qP_PRFIO: TIBStringField;
    qPlan_PF_AMOUNT: TFloatField;
    qPlan_PF_TIME: TFloatField;
    qPlan_PID_EQUIPMENT: TIntegerField;
    qPlan_PP_AMOUNT: TFloatField;
    qPlan_PP_TIME: TFloatField;
    qPlan_PREM: TBlobField;
    qLoad_PID_POST: TIntegerField;
    qLoad_PNAME_POST: TIBStringField;
    UpPlan_P: TIBUpdateSQL;
    qEqp: TIBQuery;
    qEqpID_EQUIPMENT: TIntegerField;
    qEqpSHOTNAME: TIBStringField;
    dsEqp: TDataSource;
    qEqpNAME: TIBStringField;
    qPlan_PSHOTNAME: TIBStringField;
    qSUM_PAMOUNT_SUM: TFloatField;
    qD_JOBNMAT: TIBStringField;
    qEqpID_AREA: TIntegerField;
    qEqpREG_NUMBER: TIBStringField;
    qEqpPROD_NUMBER: TIBStringField;
    qEqpD_PROD: TDateField;
    qEqpD_IN: TDateField;
    qEqpD_OUT: TDateField;
    qEqpPRICE: TFloatField;
    qEqpID_CURRENCY: TIntegerField;
    qEqpID_BILL: TIntegerField;
    qEqpID_ITEM: TIntegerField;
    qEqpID_PARENT: TIntegerField;
    qEqpPOSIT: TIntegerField;
    qEqpINV_NUMBER: TIBStringField;
    qTABID_P: TIntegerField;
    qTABSHORTNAME: TIBStringField;
    qShifts: TIBQuery;
    dsShifts: TDataSource;
    qShiftsID_SHIFT: TIntegerField;
    qShiftsNAME: TIBStringField;
    qShiftsTIME_BEGIN: TTimeField;
    qShiftsTIME_WORK: TTimeField;
    qD_JOBID_SHIFT: TIntegerField;
    qPlan_P_Fio: TIBQuery;
    dsPlan_P_Fio: TDataSource;
    UpPlan_P_Fio: TIBUpdateSQL;
    qPlan_P_FioONAME: TIBStringField;
    qPlan_P_FioNM: TIBStringField;
    qPlan_P_FioID_OBJECT: TIntegerField;
    qPlan_P_FioID_VERSION: TIntegerField;
    qPlan_P_FioNAME_ORD: TIBStringField;
    qPlan_P_FioN_ORDER: TIBStringField;
    qPlan_P_FioFIO: TIBStringField;
    qPlan_P_FioIDPOST: TIntegerField;
    qPlan_P_FioNAME_DOL: TIBStringField;
    qPlan_P_FioSHOTNAME: TIBStringField;
    qPlan_P_FioID_PROD_PLAN_P: TIntegerField;
    qPlan_P_FioID_PROD_PLAN: TIntegerField;
    qPlan_P_FioID_P: TIntegerField;
    qPlan_P_FioID_TEAM: TIntegerField;
    qPlan_P_FioAMOUNT: TFloatField;
    qPlan_P_FioF_AMOUNT: TFloatField;
    qPlan_P_FioF_TIME: TFloatField;
    qPlan_P_FioID_EQUIPMENT: TIntegerField;
    qPlan_P_FioP_AMOUNT: TFloatField;
    qPlan_P_FioP_TIME: TFloatField;
    qPlan_P_FioREM: TBlobField;
    qR_Boby_Sh: TIBQuery;
    qR_Boby_ShID_DOC: TIntegerField;
    qR_Boby_ShFILENAME: TIBStringField;
    qR_Boby_ShBODY: TBlobField;
    qD_JOBAMOUNT_ORD: TIBBCDField;
    qSum_P_All: TIBQuery;
    qSum_P_AllID_PROD_PLAN: TIntegerField;
    qSum_P_AllAMOUNT_SUM: TFloatField;
    qSum_P_AllA_SUM: TFloatField;
    qD_JOBAMOUNT_SUM_ALL: TFloatField;
    dsSum_P_All: TDataSource;
    qD_JOBKOL_H: TFloatField;
    UpLoad_P: TIBUpdateSQL;
    qPlan_P_FioSTEP: TIntegerField;
    qD_JOBID_ITEM: TIntegerField;
    qD_JOBDEC_NO: TIBStringField;
    qPlan_P_FioDEC_NO: TIBStringField;
    qPlan_PPOSIT: TIntegerField;
    qPlan_P_FioPOSIT: TIntegerField;
    qD_JOBID_PA_TO: TIntegerField;
    qD_JOBNAME_AREAIN: TIBStringField;
    qPlans_PID_EQUIPMENT: TIntegerField;
    qPlans_PP_AMOUNT: TFloatField;
    qPlans_PP_TIME: TFloatField;
    qPlans_PREM: TBlobField;
    qPlans_PSHOTNAME: TIBStringField;
    qPlans_PT_PERS: TFloatField;
    qPlans_PPOSIT: TIntegerField;
    qD_JOBFULL_AMOUNT: TFloatField;
    qD_JOBPRODUCED: TFloatField;
    qD_JOBOST_ORD: TFloatField;
    qD_JOBCOMMENT: TIBStringField;
    qD_JOBID_EQUIPMENT: TIntegerField;
    qD_JOBPL_NAME: TIBStringField;
    qEqpPL_NAME: TIBStringField;
    qD_PLF_TIME: TFloatField;
    qP_WORK: TIBQuery;
    qP_WORKID_DAY: TSmallintField;
    qP_WORKF_TIME: TFloatField;
    qP_WORKT_WORK: TFloatField;
    dsP_WORK: TDataSource;
    qHolid: TIBQuery;
    qHolidHDAY: TDateField;
    qBState_P_Det: TIBQuery;
    dsBState_P_Det: TDataSource;
    qBState_P_DetID_PA_STATE: TIntegerField;
    qBState_P_DetID_OBJECT: TIntegerField;
    qBState_P_DetNAME: TIBStringField;
    qBState_P_DetUNIT1: TIBStringField;
    qBState_P_DetUNIT2: TIBStringField;
    qBState_P_DetID_BATCH: TIntegerField;
    qBState_P_DetID_STEP: TIntegerField;
    qBState_P_DetID_OBJECT_TYPE: TIntegerField;
    qBState_P_DetID_PA_BILL: TIntegerField;
    qBState_P_DetFACTOR: TFloatField;
    qBState_P_DetAMOUNT: TIBBCDField;
    qBState_P_DetAMOUNT_SUM: TIBBCDField;
    qBState_P_DetAMOUNT2: TIBBCDField;
    qBState_P_DetSUM_R: TIBBCDField;
    qBState_P_DetOST: TIBBCDField;
    qBState_P_DetOST_SUM: TIBBCDField;
    qBState_P_DetSUM_R2: TIBBCDField;
    qBState_P_DetOST2: TIBBCDField;
    qBState_P_DetCENA: TFloatField;
    qBState_P_DetCENA2: TFloatField;
    qBState_P_DetSUMMA: TFloatField;
    qBState_P_DetNDS: TFloatField;
    qBState_P_DetSUMMA_NDS: TFloatField;
    qBState_P_DetID_ITEM: TIntegerField;
    qBState_P_DetID_PROJECT: TIntegerField;
    qBState_P_DetID_ORDER: TIntegerField;
    qBState_P_DetN_ORDER: TIBStringField;
    qBState_P_DetPR_NAME: TIBStringField;
    qBState_P_DetN_ID_AREA: TIBStringField;
    qBState_P_DetN_ID_OPERATION: TIBStringField;
    qBState_P_DetN_ID_CURRENCY: TIBStringField;
    qBState_P_DetID_PARENT1: TIntegerField;
    qBState_P_DetN_ID_PARENT: TIBStringField;
    qBState_P_DetN_ID_PA_TO: TIBStringField;
    qBState_P_DetN_ID_PA_FROM: TIBStringField;
    qBState_P_DetID_PA_TO: TIntegerField;
    qBState_P_DetID_PA_FROM: TIntegerField;
    qBState_P_DetID_PROD_TRAFF: TIntegerField;
    qBState_P_DetLIMIT: TFloatField;
    qBState_P_DetID_PROD_OPER: TIntegerField;
    qBill_s: TIBQuery;
    qBill_sID_PROD_TRAFF: TIntegerField;
    qBill_sID_PA_BILL_POS: TIntegerField;
    qBill_sID_PA_BILL_: TIntegerField;
    qBill_sID_OBJECT: TIntegerField;
    qBill_sNAME: TIBStringField;
    qBill_sUNIT1: TIBStringField;
    qBill_sUNIT2: TIBStringField;
    qBill_sID_UNIT: TIntegerField;
    qBill_sID_BATCH: TIntegerField;
    qBill_sID_PROD_OPER: TIntegerField;
    qBill_sNAME_O: TIBStringField;
    qBill_sID_STEP: TIntegerField;
    qBill_sFACTOR: TIBBCDField;
    qBill_sAMOUNT: TIBBCDField;
    qBill_sAMOUNT2: TIBBCDField;
    qBill_sOBJ_TYPE: TIntegerField;
    qBill_sID_ITEM: TIntegerField;
    qBill_sID_ORDER: TIntegerField;
    qBill_sN_ORDER: TIBStringField;
    qBill_sOLD_PROD_OPER: TIntegerField;
    qBill_sORD_NAME: TIBStringField;
    qBill_sID_P: TIntegerField;
    qBill_sID_TEAM: TIntegerField;
    qBill_sSUMMA: TIBBCDField;
    qBill_sSUMMA_EXP: TIBBCDField;
    qBill_sCENA: TIBBCDField;
    qBill_sCENA1: TIBBCDField;
    qBill_sID_SUBOPER: TIntegerField;
    qBill_sID_C: TIntegerField;
    qBill_sLID: TIntegerField;
    qBill_sREM: TMemoField;
    qBill_sAMOUNT_ORD: TIntegerField;
    qBill_sQCD: TIntegerField;
    qBill_sNDS: TFloatField;
    qBill_sSUMMA_NDS: TFloatField;
    qZBill_SID_PROD_TRAFF: TIntegerField;
    qZBill_SID_PA_BILL_: TIntegerField;
    qZBill_SNAME_O: TIBStringField;
    qZBill_SID_C: TIntegerField;
    qZBill_SLID: TIntegerField;
    qZBill_SREM: TMemoField;
    qZBill_SAMOUNT_ORD: TIntegerField;
    qZBill_SQCD: TIntegerField;
    qZBill_SNDS: TFloatField;
    qZBill_SSUMMA_NDS: TFloatField;
    qZBill_SFIO: TIBStringField;
    qZBill_SNTEAM: TIBStringField;
    qIState: TIBQuery;
    qIStateID_PA_STATE: TIntegerField;
    qIStateID_OBJECT: TIntegerField;
    qIStateNAME: TIBStringField;
    qIStateUNIT1: TIBStringField;
    qIStateUNIT2: TIBStringField;
    qIStateID_BATCH: TIntegerField;
    qIStateID_PROD_OPER: TIntegerField;
    qIStateID_STEP: TIntegerField;
    qIStateID_OBJECT_TYPE: TIntegerField;
    qIStateID_PA_BILL: TIntegerField;
    qIStateFACTOR: TFloatField;
    qIStateAMOUNT: TIBBCDField;
    qIStateAMOUNT_P: TIBBCDField;
    qIStateID_ITEM: TIntegerField;
    qIStateID_ORDER: TIntegerField;
    qIStateN_ORDER: TIBStringField;
    qIStateORD_NAME: TIBStringField;
    dsIState: TDataSource;
    qD_JOBD_CLOSE: TDateTimeField;
    qIStateID_PROD_TRAFF: TIntegerField;
    qIStateNDS: TFloatField;
    qIStateSUM_R: TIBBCDField;
    qIStateOST: TIBBCDField;
    qIStateCENA: TFloatField;
    qIStateSUM_R2: TIBBCDField;
    qIStateOST2: TIBBCDField;
    qIStateCENA2: TFloatField;
    qValN: TIBQuery;
    qValNID_OBJECT: TIntegerField;
    qValNNAME: TIBStringField;
    qValNID_BATCH: TIntegerField;
    qPAU_TYPE: TIntegerField;
    qPA_Oper: TIBQuery;
    qPA_OperID_ORDER: TIntegerField;
    qPA_OperID_OBJECT: TIntegerField;
    qPA_OperORDNAME: TIBStringField;
    qPA_OperOBJ_NAME: TIBStringField;
    qPA_OperSTEP: TIntegerField;
    qPA_OperID_OPERATION: TIntegerField;
    qPA_OperONAME: TIBStringField;
    qPA_OperID_PROD_OPER: TIntegerField;
    qPA_OperID_PROD_TRAFF: TIntegerField;
    qPA_OperAMOUNT: TIBBCDField;
    qPA_OperPRODUCED: TFloatField;
    qPA_OperIS_UNIT: TIntegerField;
    qPA_OperFULL_AMOUNT: TFloatField;
    qPA_OperPROD_AMOUNT: TFloatField;
    qPA_OperT_PERSONNEL: TFloatField;
    qPA_OperWASTE: TFloatField;
    qPA_OperNMAT: TIBStringField;
    qPA_OperDEC_NO: TIBStringField;
    qPA_OperTONAME: TIBStringField;
    qPA_OperN_ORDER: TIBStringField;
    qPA_OperrEST: TFloatField;
    qPA_OperpRoc: TFloatField;
    dsPA_Oper: TDataSource;
    mTW: TIBTransaction;
    qLoad_PP_TIME: TFloatField;
    qLoad_PP_AMOUNT: TFloatField;
    qPersIS_WORKER: TIntegerField;
    qDutyType: TIBQuery;
    dsDutyType: TDataSource;
    qDutyTypeID_DUTYTYPE: TIntegerField;
    qDutyTypeNAME: TIBStringField;
    qPlan_PID_PROD_PLAN_STOP: TIntegerField;
    qSub_Oper: TIBQuery;
    qSub_OperID_SUB_OPER: TIntegerField;
    qSub_OperID_PROD_OPER: TIntegerField;
    qSub_OperPOS: TIntegerField;
    qSub_OperID_OPERATION: TIntegerField;
    qSub_OperPRICE: TFloatField;
    qSub_OperAMOUNT: TFloatField;
    qSub_OperAMOUNT_TIME: TFloatField;
    qSub_OperREM: TBlobField;
    qSub_OperNAME_OPER: TIBStringField;
    dsSub_Oper: TDataSource;
    qInsW: TIBQuery;
    qPA_OperID_BATCH: TIntegerField;
    qD_JOBID_BATCH: TIntegerField;
    qPAID_PROD: TIntegerField;
    qD_JOBCOST: TIBBCDField;
    qD_JOBTOTAL: TFloatField;
    qBill_ss: TIBQuery;
    dsBill_ss: TDataSource;
    qBill_ssID_PROD_TRAFF: TIntegerField;
    qBill_ssID_PA_BILL_POS: TIntegerField;
    qBill_ssID_PA_BILL_: TIntegerField;
    qBill_ssID_OBJECT: TIntegerField;
    qBill_ssNAME: TIBStringField;
    qBill_ssUNIT1: TIBStringField;
    qBill_ssUNIT2: TIBStringField;
    qBill_ssID_UNIT: TIntegerField;
    qBill_ssID_BATCH: TIntegerField;
    qBill_ssID_PROD_OPER: TIntegerField;
    qBill_ssNAME_O: TIBStringField;
    qBill_ssID_STEP: TIntegerField;
    qBill_ssFACTOR: TIBBCDField;
    qBill_ssAMOUNT: TIBBCDField;
    qBill_ssAMOUNT2: TIBBCDField;
    qBill_ssOBJ_TYPE: TIntegerField;
    qBill_ssID_ITEM: TIntegerField;
    qBill_ssID_ORDER: TIntegerField;
    qBill_ssN_ORDER: TIBStringField;
    qBill_ssOLD_PROD_OPER: TIntegerField;
    qBill_ssORD_NAME: TIBStringField;
    qBill_ssID_P: TIntegerField;
    qBill_ssFIO: TIBStringField;
    qBill_ssID_TEAM: TIntegerField;
    qBill_ssNTEAM: TIBStringField;
    qBill_ssSUMMA: TIBBCDField;
    qBill_ssSUMMA_EXP: TIBBCDField;
    qBill_ssCENA: TIBBCDField;
    qBill_ssCENA1: TIBBCDField;
    qBill_ssID_SUBOPER: TIntegerField;
    qBill_ssID_C: TIntegerField;
    qBill_ssLID: TIntegerField;
    qBill_ssREM: TMemoField;
    qBill_ssAMOUNT_ORD: TIntegerField;
    qBill_ssQCD: TIntegerField;
    qBill_ssNDS: TFloatField;
    qBill_ssSUMMA_NDS: TFloatField;
    qBill_ssPA_BILL_TYPE: TIntegerField;
    qBill: TIBQuery;
    qBillNAME: TIBStringField;
    qBillID_PA_BILL: TIntegerField;
    qBillID_P_AREA: TIntegerField;
    qBillPA_BILL_TYPE: TSmallintField;
    qBillD_BILL: TDateField;
    qBillNUMBER: TIBStringField;
    qBillD_EDIT: TDateTimeField;
    qBillID_EDIT: TIntegerField;
    qBillD_FIX: TDateTimeField;
    qBillID_FIX: TIntegerField;
    qBillREM: TMemoField;
    qBillFIO_FIX: TIBStringField;
    qBillFIO_EDIT: TIBStringField;
    dsBill: TDataSource;
    qBill_ssNAME_TRAFF_MAT: TIBStringField;
    UpBill_ss: TIBUpdateSQL;
    UpBill: TIBUpdateSQL;
    qBill_ssNAME_DETAL: TIBStringField;
    qBill_ssAMOUNT_W: TIBBCDField;
    qBill_ssAMOUNT2_W: TIBBCDField;
    qBill_ssAM: TIBBCDField;
    qBill_ssAM2: TIBBCDField;
    qValNSK: TFloatField;
    qValNOST: TFloatField;
    qPersWORK_SHIFT: TIntegerField;
    qPersWORK_SHIFT_NAME: TIBStringField;
    qCurrency: TIBQuery;
    qCurrencyID_CURRENCY: TSmallintField;
    qCurrencyNAME: TIBStringField;
    qCurrencyNAME_FULL: TIBStringField;
    qCurrencyNAME1: TIBStringField;
    qCurrencyNAME2: TIBStringField;
    qCurrencyNAME3: TIBStringField;
    qCurrencyNAME4: TIBStringField;
    qCurrencyNAME5: TIBStringField;
    qCurrencyOTN: TSmallintField;
    qCurrencyKOLZN: TSmallintField;
    qCurrencyMARK: TIBStringField;
    dsCurrency: TDataSource;
    qW_SHIFTWORK_TIME: TIntegerField;
    qW_SHIFTSHORTNAME: TIBStringField;
    qPersWORK_SHIFT_NAME_SHORT: TIBStringField;
    qPersCONTRACT_TYPE: TIntegerField;
    qPersCONTRACT_TYPE_NAME: TIBStringField;
    qContr: TIBQuery;
    dsContr: TDataSource;
    qP_OBJID_VERSION: TIntegerField;
    qD_JOBID_PROJECT: TIntegerField;
    qD_JOBPARENT_NAME: TIBStringField;
    qPA_OperPARENT_NAME: TIBStringField;
    qD_JOBEQ_NAME: TIBStringField;
    qD_JOBREM: TIBStringField;
    qD_JOBREM_OPER: TIBStringField;
    dsWorkType: TDataSource;
    qWorkType: TIBQuery;
    qPersD_DISMISS: TDateField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qZBillAfterScroll(DataSet: TDataSet);
    procedure qOBJ_OPERAfterScroll(DataSet: TDataSet);
    procedure qP_POSAfterScroll(DataSet: TDataSet);
    procedure qJHeadAfterScroll(DataSet: TDataSet);
    procedure qT_PersNewRecord(DataSet: TDataSet);
    procedure qT_PersDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qBStateCalcFields(DataSet: TDataSet);
    procedure qStateCalcFields(DataSet: TDataSet);
    procedure qTAB_SNewRecord(DataSet: TDataSet);
    procedure qBStateAfterScroll(DataSet: TDataSet);
    procedure qC_PROJECTAfterScroll(DataSet: TDataSet);
    procedure qZBADNewRecord(DataSet: TDataSet);
    procedure qZBillNewRecord(DataSet: TDataSet);
    procedure qZBillAfterPost(DataSet: TDataSet);
    procedure qZBillAfterEdit(DataSet: TDataSet);
    procedure qPA_WORKCalcFields(DataSet: TDataSet);
    procedure qZD_JOBNewRecord(DataSet: TDataSet);
    procedure qZD_JOBBeforeDelete(DataSet: TDataSet);
    procedure qP_OBJCalcFields(DataSet: TDataSet);
    procedure qD_JOBBeforeOpen(DataSet: TDataSet);
    procedure qD_JOBAfterScroll(DataSet: TDataSet);
    procedure qD_JOBBeforeInsert(DataSet: TDataSet);
    procedure qD_JOBBeforeDelete(DataSet: TDataSet);
    procedure qPlan_PAfterDelete(DataSet: TDataSet);
    procedure qSUM_PAfterOpen(DataSet: TDataSet);
    procedure qPlan_PAfterScroll(DataSet: TDataSet);
    procedure qEqpBeforeOpen(DataSet: TDataSet);
    procedure qPlan_PBeforeDelete(DataSet: TDataSet);
    procedure qPlan_P_FioBeforeDelete(DataSet: TDataSet);
    procedure qD_JOBAfterPost(DataSet: TDataSet);
    procedure qPA_OperCalcFields(DataSet: TDataSet);
    procedure qLoad_PBeforePost(DataSet: TDataSet);
    procedure qLoad_PBeforeInsert(DataSet: TDataSet);
    procedure qLoad_PBeforeDelete(DataSet: TDataSet);
    procedure qBill_ssNewRecord(DataSet: TDataSet);
    procedure qBillAfterScroll(DataSet: TDataSet);
    procedure qBill_ssAMOUNTChange(Sender: TField);
    procedure qBill_ssAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    N_TYPE, nom: integer;
    { Public declarations }
  end;

var
  dmIS: TdmIS;
function id_str(g: TDBGridEh; ID: string): string;
function OrderBy1(g: TDBGridEh): string;

implementation
uses unMain, unTabel, unZBills_R, unZStore, unD_JOB, unDistrJob, UnEqp;

{$R *.dfm}

function id_str(g: TDBGridEh; ID: string): string;
var
  i: integer;
  f: TField;
begin
  result := '';
  f := g.DataSource.DataSet.FieldByName(ID);
  f.DataSet.DisableControls;
  g.SaveBookmark;
  try
    for i := 0 to g.SelectedRows.Count - 1 do
    begin
      f.DataSet.GotoBookmark(pointer(g.SelectedRows[i]));
      if i <> g.SelectedRows.Count - 1 then
        result := result + f.AsString + ','
      else
        result := result + f.AsString;
    end
  finally
    g.RestoreBookmark;
    f.DataSet.EnableControls;
  end;
end;

function OrderBy1(g: TDBGridEh): string;
var
  i: integer;
  col: TColumnEh;
begin
  result := '';
  if g.SortMarkedColumns.Count > 0 then
    for i := 0 to g.SortMarkedColumns.Count - 1 do
    begin
      col := g.SortMarkedColumns[i];
      if col.Field.Origin <> '' then
      begin
        if (col.Title.SortMarker = smUpEh) then
          result := result + ',' + col.Field.Origin + ' desc'
        else
          result := result + ',' + col.Field.Origin;
      end;
    end
  else
    for i := 0 to g.Columns.Count - 1 do
    begin
      col := g.Columns[i];
      if (col.Field.Origin <> '') and (col.Title.SortMarker <> smNoneEh) then
      begin
        if (col.Title.SortMarker = smUpEh) then
          result := result + ',' + col.Field.Origin + ' desc'
        else
          result := result + ',' + col.Field.Origin;
      end;
    end;
  if result <> '' then
    result := 'order by ' + copy(result, 2, length(result) - 1);
end;

procedure TdmIS.DataModuleCreate(Sender: TObject);
var
  CPW: string;
begin
  N_TYPE := 0;

  dmIS.dbDOC.Connected := False;
  if SysVars.DBDoc <> '' then
    dmIS.dbDOC.DatabaseName := SysVars.DBDoc;

  dmIS.dbIS.Connected := False;
  if SysVars.DBServ <> '' then
    dmIS.dbIS.DatabaseName := SysVars.DBServ;
  dmIS.dbIS.Connected := True;
  dmIS.qIN.Active := False;
  dmIS.qIN.SQL.Clear;
  dmIS.qIN.SQL.Add('SELECT ID_P, FIO, IDPOST, ACCESS_KEY ');
  dmIS.qIN.SQL.Add('FROM PERSONNEL');
  dmIS.qIN.SQL.Add('WHERE ID_P = ' + IntToStr(SysVars.RegTN));
  try
    dmIS.qIN.Active := True;
  except;
    exit;
  end;
  SysVars.RegPost := dmIS.qIN.FieldByName('IDPOST').AsInteger;
  //NRegDol := qIN.FieldByName('UNDOL').AsString ;
  SysVars.FReg := qIN.FieldByName('FIO').AsString;
  SysVars.RegAccess := qIN.FieldByName('ACCESS_KEY').AsInteger;
  fmMain.stb1.Panels[0].Text := SysVars.FReg;
  qIN.Active := False;
  SysVars.NReg := SysVars.FReg;
  Delete(SysVars.NReg, 1, Pos(' ', SysVars.FReg));
  with qIN, qIN.SQL do
  begin
    Clear;
    Add('SELECT * FROM P_F WHERE IDPOST = ' + IntToStr(SysVars.RegPost));
    try
      Open;
    except;
    end;
    fmMain.UF10 := Locate('IDF', 10, []) or (SysVars.RegAccess = 0);
    fmMain.UF21 := Locate('IDF', 21, []) or (SysVars.RegAccess = 0);
    fmMain.UF22 := Locate('IDF', 22, []) or (SysVars.RegAccess = 0);
    fmMain.UF23 := Locate('IDF', 23, []) or (SysVars.RegAccess = 0);
    fmMain.UF24 := Locate('IDF', 24, []) or (SysVars.RegAccess = 0);
    fmMain.UF28 := Locate('IDF', 28, []) or (SysVars.RegAccess = 0);
    fmMain.UF39 := Locate('IDF', 39, []) or (SysVars.RegAccess = 0);
    fmMain.UF75 := Locate('IDF', 75, []) or (SysVars.RegAccess = 0);
    //Утверждение табеля
    Close;
  end;

  dmIS.C_db.Connected := False;
  CPW := TParamValue(ReadParam(dmIS.qIN, 200, 18)).BigVal;
  dmIS.C_db.Params.Add('password=' + CPW);
  if SysVars.CDBSrv <> '' then
    dmIS.C_db.DatabaseName := SysVars.CDBSrv;

end;

procedure TdmIS.qZBillAfterScroll(DataSet: TDataSet);
begin
  with dmIS.qZBill_S do
  begin
    Close;
    ParamByName('cpa').AsInteger := dmIS.qZBillID_PA_BILL.AsInteger;
    Open;
  end;
end;

procedure TdmIS.qOBJ_OPERAfterScroll(DataSet: TDataSet);
begin
  with dmIS.qOPER_MAT do
  begin
    Close;
    ParamByName('op1').AsInteger := dmIS.qOBJ_OPERID_PROD_OPER.AsInteger;
    Open;
  end;
  with dmIS.qSub_Oper do
  begin
    Close;
    ParamByName('id_prod_oper').AsInteger :=
      dmIS.qOBJ_OPERID_PROD_OPER.AsInteger;
    Open;
  end;

end;

procedure TdmIS.qP_POSAfterScroll(DataSet: TDataSet);
begin
  with dmIS.qPOS_OPER do
  begin
    Close;
    ParamByName('obj1').AsInteger := dmIS.qP_POSID_OBJECT.AsInteger;
    ParamByName('ar1').AsInteger := fmMain.C_PA;
    Open;
  end;
end;

procedure TdmIS.qJHeadAfterScroll(DataSet: TDataSet);
begin
  with dmIS.qJState do
  begin
    Close;
    ParamByName('pa1').AsInteger := dmIS.qJHeadID_PROD_AREA.AsInteger;
    ParamByName('obj1').AsInteger := dmIS.qJHeadID_OBJECT.AsInteger;
    Open;
  end;
end;

procedure TdmIS.qT_PersNewRecord(DataSet: TDataSet);
begin
  dmIS.qT_Pers.Cancel;
end;

procedure TdmIS.qT_PersDeleteError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  E.Message := 'Удаление записи запрещено';
  dmIS.qT_Pers.Cancel;
end;

procedure TdmIS.qBStateCalcFields(DataSet: TDataSet);
begin
  dmIS.qBStatefAMOUNT.AsFloat := dmIS.qBStateAMOUNT.AsFloat -
    dmIS.qBStaterAMOUNT.AsFloat;
  dmIS.qBStatejfAMOUNT.AsFloat := dmIS.qBStateAMOUNT.AsFloat -
    dmIS.qBStatejAMOUNT.AsFloat;
end;

procedure TdmIS.qStateCalcFields(DataSet: TDataSet);
begin
  dmIS.qStatefAMOUNT.AsFloat := dmIS.qStateSUM.AsFloat -
    dmIS.qStaterAMOUNT.AsFloat;
end;

procedure TdmIS.qTAB_SNewRecord(DataSet: TDataSet);
begin
  with fmTabel do
  begin
    qTAB_SID_TAB.AsInteger := C_TAB;
    qTAB_SID_P.AsString := sg1.Cells[1, sg1.Row];
    qTAB_STAB_DAY.AsDateTime := D1 + sg1.Col - 8;
    qTAB_SCOEFF.AsFloat := 1;
  end;
end;

procedure TdmIS.qBStateAfterScroll(DataSet: TDataSet);
begin
  with dmIS.qNew_Oper do
  begin
    Close;
    ParamByName('obj1').AsInteger := dmIS.qBStateID_OBJECT.AsInteger;
    ParamByName('ar1').AsInteger := fmMain.C_PA;
    ParamByName('st1').AsInteger := dmIS.qBStateID_STEP.AsInteger;
    Open;
  end;
end;

procedure TdmIS.qC_PROJECTAfterScroll(DataSet: TDataSet);
begin
  with dmIS.qC_Oper do
  begin
    Close;
    ParamByName('ar1').AsInteger := fmMain.C_PA;
    ParamByName('pr1').AsInteger := dmIS.qC_PROJECTID_ORDER.AsInteger;
    Open;
  end;
end;

procedure TdmIS.qZBADNewRecord(DataSet: TDataSet);
begin
  qZBADID_P_AREA.AsInteger := fmMain.C_PA;
  qZBADPA_BILL_TYPE.AsInteger := 110;
  qZBADD_BILL.AsDateTime := date;
  qZBADD_EDIT.AsDateTime := now;
  qZBADID_EDIT.AsInteger := SysVars.RegTN;
end;

procedure TdmIS.qZBillNewRecord(DataSet: TDataSet);
begin
  qZBillID_EDIT.AsInteger := SysVars.RegTN;
  case dmIS.N_TYPE of
    51, 53:
      begin
        qZBillID_P_AREA.AsInteger := fmMain.C_PA;
        qZBillPA_BILL_TYPE.AsInteger := fmZBills_R.N_TYPE;
      end;
    52:
      begin
        qZBillID_P_AREA.AsInteger := fmZStore.lcb1.KeyValue;
        qZBillID_DESTINATION.AsInteger := fmMain.C_PA;
        qZBillPA_BILL_TYPE.AsInteger := dmIS.N_TYPE;
      end;
  end;
end;

procedure TdmIS.qZBillAfterPost(DataSet: TDataSet);
begin
  with dmIS.qZBill_S do
  begin
    Close;
    ParamByName('cpa').AsInteger := dmIS.qZBillID_PA_BILL.AsInteger;
    Open;
  end;
end;

procedure TdmIS.qZBillAfterEdit(DataSet: TDataSet);
begin
  qZBillID_EDIT.AsInteger := SysVars.RegTN;
end;

procedure TdmIS.qPA_WORKCalcFields(DataSet: TDataSet);
begin
  if dmIS.qPA_WORKT_WORK.IsNull then
    dmIS.qPA_WORKpROC.AsFloat := -1
  else
  begin
    if qPA_WORKT_NECESSARY.IsNull then
      qPA_WORKpROC.AsFloat := 0
    else
    try
      qPA_WORKpROC.AsFloat := 100 * qPA_WORKT_NECESSARY.AsFloat /
        qPA_WORKT_WORK.AsFloat;
    except
    end;
  end;
end;

procedure TdmIS.qZD_JOBNewRecord(DataSet: TDataSet);
begin
  qZD_JOB.Cancel;
end;

procedure TdmIS.qZD_JOBBeforeDelete(DataSet: TDataSet);
begin
  qZD_JOB.Cancel;
end;

procedure TdmIS.qP_OBJCalcFields(DataSet: TDataSet);
begin
  if dmIS.qP_OBJOBJ_NAME.IsNull then
    dmIS.qP_OBJnOBJ.AsString := dmIS.qP_OBJINAME.AsString
  else
    dmIS.qP_OBJnOBJ.AsString := dmIS.qP_OBJOBJ_NAME.AsString;
end;

procedure TdmIS.qD_JOBBeforeOpen(DataSet: TDataSet);
{var
  i, y: integer;
  s: string;}
begin
  {Case SysVars.ServType of
  0 : dmIs.qSState.SQL.Add(OrderBy(fmSState.dbg1));
  1 : dmIs.qSState.SQL.Add(OrderByFields(fmSState.dbg1));
  end;}

  if fmD_JOB.Vibor = 0 then
    dmIS.qD_JOB.SQL.Add(OrderBy(fmD_JOB.dbg1));
  if fmD_JOB.Vibor = 1 then
    dmIS.qD_JOB.SQL.Add(OrderBy(fmDistrJob.dbg1));

  // ShowMessage(dmIS.qD_JOB.SQL.Text);
end;

procedure TdmIS.qD_JOBAfterScroll(DataSet: TDataSet);
begin
  if fmD_JOB <> nil then
    fmD_JOB.OpenStore_Det;

end;

procedure TdmIS.qD_JOBBeforeInsert(DataSet: TDataSet);
begin
  abort;
end;

procedure TdmIS.qD_JOBBeforeDelete(DataSet: TDataSet);
begin
  abort;
end;

procedure TdmIS.qPlan_PAfterDelete(DataSet: TDataSet);
begin
  if fmDistrJob <> nil then
    fmDistrJob.OpenDistr;
end;

procedure TdmIS.qSUM_PAfterOpen(DataSet: TDataSet);
begin
  try
    fmDistrJob.lb1.Caption := FormatFloat('### ### ### ##0.0',
      dmIS.qD_JOBSUM_PERS.AsFloat - dmIS.qSUM_PA_SUM.AsFloat);
    fmDistrJob.lb2.Caption := FormatFloat('### ### ### ##0.0',
      dmIS.qD_JOBAMOUNT.AsFloat - dmIS.qSUM_PAMOUNT_SUM.AsFloat);
  except;
  end;

end;

procedure TdmIS.qPlan_PAfterScroll(DataSet: TDataSet);
begin
  if dmIs.qLoad_P.Active then
    dmIs.qLoad_P.Locate('ID_P', dmIS.qPlan_PID_P.AsInteger, []);

end;

procedure TdmIS.qEqpBeforeOpen(DataSet: TDataSet);
begin
  if fmEqp <> nil then
  begin
    with qEqp, qEqp.SQL do
    begin
      Close;
      Clear;
      Add('select e.*,i.name from equipments e left join items i on e.id_item = i.id_item');
      Add('where e.id_area = :id_area and (e.d_out > current_date or e.d_out is null)');
      Add(OrderBy(fmEqp.dbg1));
      ParamByName('id_area').AsInteger := fmEqp.lcbEqp.KeyValue;
    end;
  end;
end;

procedure TdmIS.qPlan_PBeforeDelete(DataSet: TDataSet);
begin
  if dmIS.qPlan_PF_AMOUNT.Value > 0 then
    abort;
end;

procedure TdmIS.qPlan_P_FioBeforeDelete(DataSet: TDataSet);
begin
  if dmIS.qPlan_P_FioF_AMOUNT.Value > 0 then
    abort;
end;

procedure TdmIS.qD_JOBAfterPost(DataSet: TDataSet);
begin
  if dmIs.mT.InTransaction then
    dmIs.mT.CommitRetaining;
end;

procedure TdmIS.qPA_OperCalcFields(DataSet: TDataSet);

begin
  if qPA_OperFULL_AMOUNT.IsNull then
  begin
    qPA_OperrEST.Clear;
    qPA_OperpROC.Clear;
  end
  else
  begin
    qPA_OperrEST.AsFloat := qPA_OperFULL_AMOUNT.AsFloat -
      qPA_OperPRODUCED.AsFloat + qPA_OperWASTE.AsFloat;
    if qPA_OperFULL_AMOUNT.AsFloat > 0 then
      qPA_OperpROC.AsFloat :=
        (100 * qPA_OperPRODUCED.AsFloat) / qPA_OperFULL_AMOUNT.AsFloat;
  end;
end;

procedure TdmIS.qLoad_PBeforePost(DataSet: TDataSet);
begin
  dmIs.nom := dmIs.qLoad_PID_P.AsInteger;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('EXECUTE PROCEDURE WRITE_PROD_PLAN_P_FIO(:pp1,:p1,:t1,:id_eq,:am1,:p_amount,:p_time)');
    ParamByName('pp1').AsInteger := dmIS.qD_JOBID_PROD_PLAN.AsInteger;
    case fmDistrJob.Kdistr of
      1:
        begin
          ParamByName('t1').Clear;
          if fmd_Job.lcbEqp.Text <> '' then
            ParamByName('id_eq').AsInteger := fmd_Job.lcbEqp.KeyValue
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
      ParamByName('am1').AsFloat := dmIS.qLoad_PP_AMOUNT.AsFloat;
      ParamByName('p_amount').AsFloat := dmIS.qLoad_PP_AMOUNT.AsFloat;
      ParamByName('p_time').AsFloat := dmIS.qLoad_PP_TIME.AsFloat;
      {    except
              ShowMessage('Введите количество....');
              Exit;
         end;}
      ExecSQL;
      if dmIS.mT.InTransaction then
        dmIS.mT.CommitRetaining;
    except
      MsgInformation('Ошибка записи распределения работ', 'Ошибка записи');
      if dmIS.mT.InTransaction then
        dmIS.mT.RollbackRetaining;
    end; //try
  end;
  qLoad_P.Cancel;
  fmDistrJob.OpenDistr;
  dmIs.qLoad_P.Locate('ID_P', dmIs.nom, []);
  dmIs.qLoad_P.Next;
  dmIs.qPlan_P.Locate('ID_P', dmIs.nom, []);

  Abort;
end;

procedure TdmIS.qLoad_PBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TdmIS.qLoad_PBeforeDelete(DataSet: TDataSet);
begin
  Abort;
end;

procedure TdmIS.qBill_ssNewRecord(DataSet: TDataSet);
begin
  qBill_ssID_PA_BILL_.Value := fmD_Job.id;
end;

procedure TdmIS.qBillAfterScroll(DataSet: TDataSet);
begin
  with dmIS.qBill_ss, dmIS.qBill_ss.SQL do
  begin
    Close;
    Clear;
    SQL.Add('select * from GET_BILL_POS(:cpa)');
    OrderBy(fmD_Job.dbg444);
    ParamByName('cpa').AsInteger := dmIS.qBillID_PA_BILL.AsInteger;
    Open;
  end;

end;

procedure TdmIS.qBill_ssAMOUNTChange(Sender: TField);
begin
  dmIs.qBill_ssSUMMA.Value := dmIS.qBill_ssAMOUNT.Value *
    dmIS.qBill_ssCENA.Value;
  dmIs.qBill_ssAMOUNT2.Value := dmIS.qBill_ssAMOUNT.Value /
    dmIS.qBill_ssFACTOR.Value;
  dmIS.qBill_ssCENA1.Value := dmIS.qBill_ssCENA.Value /
    dmIS.qBill_ssFACTOR.Value;
  if not dmIs.qBill_ssNDS.IsNull then
    dmIs.qBill_ssSUMMA_NDS.Value := (dmIs.qBill_ssSUMMA.Value *
      (dmIs.qBill_ssNDS.Value / 100)) / (1 + dmIs.qBill_ssNDS.Value / 100);

end;

procedure TdmIS.qBill_ssAfterPost(DataSet: TDataSet);
begin
  dmIs.mT.CommitRetaining;
end;

end.

