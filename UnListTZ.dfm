object fmListTZ: TfmListTZ
  Left = 358
  Top = 309
  Width = 756
  Height = 480
  Caption = #1057#1087#1080#1089#1086#1082' '#1058#1047' '#1087#1088#1080#1085#1103#1090#1099#1093' '#1085#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 748
    Height = 35
    Align = alTop
    TabOrder = 0
    DesignSize = (
      748
      35)
    object Label1: TLabel
      Left = 37
      Top = 12
      Width = 6
      Height = 13
      Caption = #1089
    end
    object Label2: TLabel
      Left = 140
      Top = 12
      Width = 12
      Height = 13
      Caption = #1087#1086
    end
    object sb: TSpeedButton
      Left = 6
      Top = 7
      Width = 23
      Height = 23
      Hint = #1053#1072#1081#1090#1080' '#1101#1083#1077#1084#1077#1085#1090' (Enter)'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777770877777
        7777777778087777777777777700877777777777770B0877777777770000B087
        777777770BBFBB087777777770FB00007777777770BFB08777777700000BFB08
        7777770FBFBFBFB087777770FBFB000077777770BFBFB087777777770BFBFB08
        777777770FFFBFF08777777770FBFFBF08777777700000000077}
      OnClick = sbClick
    end
    object Label3: TLabel
      Left = 248
      Top = 13
      Width = 28
      Height = 13
      Caption = #8470' '#1058#1047
    end
    object Label4: TLabel
      Left = 376
      Top = 13
      Width = 27
      Height = 13
      Caption = #1041#1088#1080#1092
    end
    object Label5: TLabel
      Left = 528
      Top = 11
      Width = 43
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089' c'
    end
    object edFind: TEdit
      Left = 280
      Top = 8
      Width = 89
      Height = 21
      TabOrder = 0
    end
    object edFind1: TEdit
      Left = 408
      Top = 8
      Width = 113
      Height = 21
      TabOrder = 1
    end
    object dtp_in: TDBDateTimeEditEh
      Left = 48
      Top = 8
      Width = 89
      Height = 21
      Hint = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1086' '#1074' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      EditButtons = <>
      Kind = dtkDateEh
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Visible = True
    end
    object dtp_out: TDBDateTimeEditEh
      Left = 157
      Top = 8
      Width = 89
      Height = 21
      Hint = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1086' '#1074' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      EditButtons = <>
      Kind = dtkDateEh
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Visible = True
    end
    object lcbStatus: TDBLookupComboboxEh
      Left = 576
      Top = 8
      Width = 169
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DropDownBox.Rows = 20
      DropDownBox.Sizable = True
      EditButtons = <>
      KeyField = 'ID_ORD_EVENT'
      ListField = 'NAME_STATUS'
      ListSource = dsStatus
      TabOrder = 4
      Visible = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 35
    Width = 748
    Height = 418
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 1
      Top = 233
      Width = 746
      Height = 3
      Cursor = crVSplit
      Align = alBottom
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 398
      Width = 746
      Height = 19
      DataSource = dsListTZ
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 0
    end
    object dbg1: TDBGridEh
      Left = 1
      Top = 1
      Width = 746
      Height = 232
      Align = alClient
      DataSource = dsListTZ
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnDblClick = dbg1DblClick
      OnGetCellParams = dbg1GetCellParams
      OnKeyDown = dbg1KeyDown
      OnSortMarkingChanged = dbg1SortMarkingChanged
      Columns = <
        item
          EditButtons = <>
          FieldName = 'PR'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'ID_EST_PR'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'ID_ESTIMATE'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'D_FACT'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'N_ORDER'
          Footers = <>
          Title.EndEllipsis = True
          Title.SortIndex = 1
          Title.SortMarker = smDownEh
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'NAME'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 249
        end
        item
          EditButtons = <>
          FieldName = 'AMOUNT'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'SHIPPED'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'PRODUSED'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'PRICE'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'PRICEA'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'AGENT'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 269
        end
        item
          EditButtons = <>
          FieldName = 'NAMECUR'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'ID_ORDER'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'ID_VERSION'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'D_MAT'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'D_OPEN'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'D_CLOSE'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'D_READY'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'D_REJECT'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'STATUS'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end>
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 236
      Width = 746
      Height = 162
      Align = alBottom
      DataSource = dsOrd_Ev
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ID_ORD_EVENT'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'NAME_EVENT'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'D_FACT'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'FIO_FACT'
          Footers = <>
          Title.Alignment = taCenter
        end>
    end
  end
  object qListTZ: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BeforeOpen = qListTZBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select e.id_estimate id_est_pr, i.name as agent ,p.*, c.name as ' +
        'namecur, s.d_fact,'
      'case when p.d_close is not null then '#39#1047#39
      '     when p.d_reject is not null then '#39#1054#39
      '     else '#39#1056#39' end pr'
      'from PROJECT_ORDS p join items i on p.id_agent = i.id_item'
      'join currency c on p.id_currency = c.id_currency'
      
        'join project_ords_state s  on p.id_order = s.id_order and s.id_o' +
        'rd_event =80'
      
        'left join product_estimate_title e on p.id_version = e.id_versio' +
        'n')
    Left = 120
    Top = 112
    object qListTZD_FACT: TDateTimeField
      DisplayLabel = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1086' '#1087#1088'-'#1074#1086#1084
      FieldName = 'D_FACT'
      Origin = '"PROJECT_ORDS_STATE"."D_FACT"'
    end
    object qListTZD_CONSTR: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080
      FieldName = 'D_CONSTR'
      Origin = '"PROJECT_ORDS"."D_CONSTR"'
    end
    object qListTZD_READY: TDateField
      DisplayLabel = #1044#1072#1090#1072'  '#1074#1085#1091#1090#1088#1077#1085#1085#1080#1081' '#1075#1086#1090#1086#1074#1085#1086#1089#1090#1080
      FieldName = 'D_READY'
      Origin = '"PROJECT_ORDS"."D_READY"'
    end
    object qListTZD_OPEN: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1090#1082#1088#1099#1090#1080#1103
      FieldName = 'D_OPEN'
      Origin = '"PROJECT_ORDS"."D_OPEN"'
    end
    object qListTZD_CLOSE: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1079#1072#1082#1088#1099#1090#1080#1103
      FieldName = 'D_CLOSE'
      Origin = '"PROJECT_ORDS"."D_CLOSE"'
    end
    object qListTZD_INPROD: TDateTimeField
      FieldName = 'D_INPROD'
      Origin = '"PROJECT_ORDS"."D_INPROD"'
    end
    object qListTZD_REJECT: TDateTimeField
      DisplayLabel = #1054#1090#1074#1077#1088#1075#1085#1091#1090#1086
      FieldName = 'D_REJECT'
      Origin = '"PROJECT_ORDS"."D_REJECT"'
    end
    object qListTZD_MAT: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
      FieldName = 'D_MAT'
      Origin = '"PROJECT_ORDS"."D_MAT"'
    end
    object qListTZD_FIX: TDateTimeField
      FieldName = 'D_FIX'
      Origin = '"PROJECT_ORDS"."D_FIX"'
    end
    object qListTZAGENT: TIBStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'AGENT'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qListTZNAME: TIBStringField
      DisplayLabel = #1041#1088#1080#1092
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qListTZNAMECUR: TIBStringField
      DisplayLabel = #1042#1072#1083#1102#1090#1072
      FieldName = 'NAMECUR'
      Origin = '"CURRENCY"."NAME"'
      Size = 4
    end
    object qListTZN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1058#1047
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qListTZAMOUNT: TIBBCDField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"PROJECT_ORDS"."AMOUNT"'
      Precision = 18
      Size = 4
    end
    object qListTZSHIPPED: TIBBCDField
      DisplayLabel = #1054#1090#1075#1088#1091#1078#1077#1085#1086
      FieldName = 'SHIPPED'
      Origin = '"PROJECT_ORDS"."SHIPPED"'
      Precision = 18
      Size = 4
    end
    object qListTZPR: TIBStringField
      DisplayLabel = #1055#1088#1080#1079#1085#1072#1082
      FieldName = 'PR'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qListTZPRICE: TIBBCDField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
      Origin = '"PROJECT_ORDS"."PRICE"'
      Precision = 18
      Size = 4
    end
    object qListTZPRICEA: TIBBCDField
      DisplayLabel = #1062#1077#1085#1072' '#1076#1086#1087'.'
      FieldName = 'PRICEA'
      Origin = '"PROJECT_ORDS"."PRICEA"'
      Precision = 18
      Size = 4
    end
    object qListTZID_PROJECT: TIntegerField
      FieldName = 'ID_PROJECT'
      Origin = '"PROJECT_ORDS"."ID_PROJECT"'
    end
    object qListTZID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1058#1047
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS"."ID_ORDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qListTZID_CURRENCY: TIntegerField
      FieldName = 'ID_CURRENCY'
      Origin = '"PROJECT_ORDS"."ID_CURRENCY"'
    end
    object qListTZID_PRODUCT: TIntegerField
      FieldName = 'ID_PRODUCT'
      Origin = '"PROJECT_ORDS"."ID_PRODUCT"'
    end
    object qListTZID_CONSTR: TIntegerField
      FieldName = 'ID_CONSTR'
      Origin = '"PROJECT_ORDS"."ID_CONSTR"'
    end
    object qListTZID_PA_OUT: TIntegerField
      FieldName = 'ID_PA_OUT'
      Origin = '"PROJECT_ORDS"."ID_PA_OUT"'
    end
    object qListTZSD_SUMMA: TIBBCDField
      FieldName = 'SD_SUMMA'
      Origin = '"PROJECT_ORDS"."SD_SUMMA"'
      Precision = 18
      Size = 4
    end
    object qListTZID_C: TIntegerField
      FieldName = 'ID_C'
      Origin = '"PROJECT_ORDS"."ID_C"'
    end
    object qListTZSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"PROJECT_ORDS"."STATUS"'
    end
    object qListTZID_OPEN: TIntegerField
      FieldName = 'ID_OPEN'
      Origin = '"PROJECT_ORDS"."ID_OPEN"'
    end
    object qListTZID_CLOSE: TIntegerField
      FieldName = 'ID_CLOSE'
      Origin = '"PROJECT_ORDS"."ID_CLOSE"'
    end
    object qListTZID_FIX: TIntegerField
      FieldName = 'ID_FIX'
      Origin = '"PROJECT_ORDS"."ID_FIX"'
    end
    object qListTZID_DOC: TIntegerField
      FieldName = 'ID_DOC'
      Origin = '"PROJECT_ORDS"."ID_DOC"'
    end
    object qListTZID_INPROD: TIntegerField
      FieldName = 'ID_INPROD'
      Origin = '"PROJECT_ORDS"."ID_INPROD"'
    end
    object qListTZID_REJECTOR: TIntegerField
      FieldName = 'ID_REJECTOR'
      Origin = '"PROJECT_ORDS"."ID_REJECTOR"'
    end
    object qListTZID_CPTYPE: TIntegerField
      FieldName = 'ID_CPTYPE'
      Origin = '"PROJECT_ORDS"."ID_CPTYPE"'
    end
    object qListTZID_CPROD: TIntegerField
      FieldName = 'ID_CPROD'
      Origin = '"PROJECT_ORDS"."ID_CPROD"'
    end
    object qListTZID_AGENT: TIntegerField
      FieldName = 'ID_AGENT'
      Origin = '"PROJECT_ORDS"."ID_AGENT"'
    end
    object qListTZID_VERSION: TIntegerField
      DisplayLabel = #1042#1077#1088#1089#1080#1103' '#1074' '#1087#1088'-'#1074#1077
      FieldName = 'ID_VERSION'
      Origin = '"PROJECT_ORDS"."ID_VERSION"'
    end
    object qListTZID_ESTIMATE: TIntegerField
      DisplayLabel = #8470' '#1089#1084#1077#1090#1099' ('#1101#1082#1086#1085'.)'
      FieldName = 'ID_ESTIMATE'
      Origin = '"PROJECT_ORDS"."ID_ESTIMATE"'
    end
    object qListTZID_EST_PR: TIntegerField
      DisplayLabel = #8470' '#1089#1084#1077#1090#1099' ('#1087#1088#1086#1080#1079#1074'.)'
      FieldName = 'ID_EST_PR'
      Origin = '"PRODUCT_ESTIMATE_TITLE"."ID_ESTIMATE"'
    end
    object qListTZPRODUSED: TFloatField
      DisplayLabel = #1048#1079#1075#1086#1090#1086#1074#1083#1077#1085#1086
      FieldName = 'PRODUSED'
      Origin = '"PROJECT_ORDS"."PRODUSED"'
    end
  end
  object dsListTZ: TDataSource
    DataSet = qListTZ
    Left = 168
    Top = 112
  end
  object qIns: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BufferChunks = 1000
    CachedUpdates = False
    Left = 248
    Top = 115
  end
  object qStatus: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select o.*, name || '#39'['#39' || coalesce(STATUS,'#39'**'#39')|| '#39']'#39' name_stat' +
        'us'
      'from ORD_EVENTS o'
      'order by ID_ORD_EVENT')
    Left = 312
    Top = 115
    object qStatusID_ORD_EVENT: TIntegerField
      FieldName = 'ID_ORD_EVENT'
      Origin = '"ORD_EVENTS"."ID_ORD_EVENT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qStatusNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"ORD_EVENTS"."NAME"'
      Size = 40
    end
    object qStatusSTATUS: TSmallintField
      FieldName = 'STATUS'
      Origin = '"ORD_EVENTS"."STATUS"'
    end
    object qStatusNAME_STATUS: TIBStringField
      FieldName = 'NAME_STATUS'
      ProviderFlags = []
      Size = 47
    end
  end
  object dsStatus: TDataSource
    DataSet = qStatus
    Left = 360
    Top = 115
  end
  object qOrd_Ev: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsListTZ
    SQL.Strings = (
      'select * from GET_ORD_STATE(:ID_ORDER)'
      'where D_FACT > '#39'01.01.1900'#39
      'order by D_FACT, name_EVENT')
    Left = 432
    Top = 123
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_ORDER'
        ParamType = ptUnknown
      end>
    object qOrd_EvID_ORD_EVENT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1089#1086#1073#1099#1090#1080#1103
      FieldName = 'ID_ORD_EVENT'
      Origin = '"GET_ORD_STATE"."ID_ORD_EVENT"'
    end
    object qOrd_EvNAME_EVENT: TIBStringField
      DisplayLabel = #1057#1086#1073#1099#1090#1080#1077
      FieldName = 'NAME_EVENT'
      Origin = '"GET_ORD_STATE"."NAME_EVENT"'
      Size = 40
    end
    object qOrd_EvD_PLAN: TDateTimeField
      FieldName = 'D_PLAN'
      Origin = '"GET_ORD_STATE"."D_PLAN"'
    end
    object qOrd_EvID_PLAN: TIntegerField
      FieldName = 'ID_PLAN'
      Origin = '"GET_ORD_STATE"."ID_PLAN"'
    end
    object qOrd_EvFIO_PLAN: TIBStringField
      FieldName = 'FIO_PLAN'
      Origin = '"GET_ORD_STATE"."FIO_PLAN"'
      Size = 60
    end
    object qOrd_EvD_FACT: TDateTimeField
      DisplayLabel = #1060#1072#1082#1090
      FieldName = 'D_FACT'
      Origin = '"GET_ORD_STATE"."D_FACT"'
    end
    object qOrd_EvID_FACT: TIntegerField
      FieldName = 'ID_FACT'
      Origin = '"GET_ORD_STATE"."ID_FACT"'
    end
    object qOrd_EvFIO_FACT: TIBStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO_FACT'
      Origin = '"GET_ORD_STATE"."FIO_FACT"'
      Size = 60
    end
  end
  object dsOrd_Ev: TDataSource
    DataSet = qOrd_Ev
    Left = 488
    Top = 123
  end
end
