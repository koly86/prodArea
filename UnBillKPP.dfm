object fmBillKPP: TfmBillKPP
  Left = 567
  Top = 211
  Width = 696
  Height = 570
  Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
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
  object Splitter1: TSplitter
    Left = 0
    Top = 385
    Width = 680
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 217
    Width = 680
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 680
    Height = 29
    Caption = 'ToolBar1'
    Images = fmMain.il1
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 2
      Hint = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100' '#1074' '#1078#1091#1088#1085#1072#1083
      Caption = 'ToolButton1'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 680
    Height = 60
    Align = alTop
    TabOrder = 1
    object sbVib: TSpeedButton
      Left = 8
      Top = 11
      Width = 23
      Height = 41
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777770877777
        7777777778087777777777777700877777777777770B0877777777770000B087
        777777770BBFBB087777777770FB00007777777770BFB08777777700000BFB08
        7777770FBFBFBFB087777770FBFB000077777770BFBFB087777777770BFBFB08
        777777770FFFBFF08777777770FBFFBF08777777700000000077}
      OnClick = sbVibClick
    end
    object GroupBox1: TGroupBox
      Left = 40
      Top = 5
      Width = 249
      Height = 49
      Caption = #1044#1072#1090#1072' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 21
        Width = 6
        Height = 13
        Caption = #1089
      end
      object Label2: TLabel
        Left = 120
        Top = 20
        Width = 12
        Height = 13
        Caption = #1087#1086
      end
      object dtp_in: TDBDateTimeEditEh
        Left = 24
        Top = 16
        Width = 89
        Height = 21
        EditButtons = <>
        Kind = dtkDateEh
        TabOrder = 0
        Visible = True
      end
      object dtp_out: TDBDateTimeEditEh
        Left = 144
        Top = 16
        Width = 89
        Height = 21
        EditButtons = <>
        Kind = dtkDateEh
        TabOrder = 1
        Visible = True
      end
    end
    object edNaklv: TEdit
      Left = 328
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 296
      Top = 16
      Width = 25
      Height = 25
      Caption = #1058
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 680
    Height = 128
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 2
    object dbg1: TDBGridEh
      Left = 1
      Top = 1
      Width = 678
      Height = 126
      Align = alClient
      DataSource = dsBill
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnDblClick = dbg1DblClick
      OnSortMarkingChanged = dbg1SortMarkingChanged
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ID_PA_BILL'
          Footers = <>
          Title.EndEllipsis = True
          Title.SortIndex = 1
          Title.SortMarker = smDownEh
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'NAME_AREA'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 168
        end
        item
          EditButtons = <>
          FieldName = 'NAME_DIST'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 178
        end
        item
          EditButtons = <>
          FieldName = 'D_BILL'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'NUMBER'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'D_CONFIRM'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'FIO_CONF'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'D_FIX'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'FIO_FIX'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 205
        end
        item
          EditButtons = <>
          FieldName = 'D_GET'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'FIO_DET'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 241
        end
        item
          EditButtons = <>
          FieldName = 'REM'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 438
        end
        item
          EditButtons = <>
          FieldName = 'NUMBER_BILL'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'ID_P_AREA'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'PA_BILL_TYPE'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'ID_DESTINATION'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end>
    end
  end
  object dbg3: TDBGridEh
    Left = 27
    Top = 388
    Width = 653
    Height = 144
    Align = alClient
    DataSource = dsJ_Move
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FrozenCols = 3
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'PREFIX'
        Footers = <>
        Title.EndEllipsis = True
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'ID_DOC'
        Footers = <>
        Title.EndEllipsis = True
      end
      item
        ButtonStyle = cbsDropDown
        Color = clWhite
        EditButtons = <>
        FieldName = 'DIRECTION'
        Footers = <>
        KeyList.Strings = (
          '1'
          '0')
        PickList.Strings = (
          #1042#1074#1086#1079
          #1042#1099#1074#1086#1079)
        Title.Color = 16776176
        Title.EndEllipsis = True
        Width = 24
      end
      item
        Color = clWhite
        EditButtons = <>
        FieldName = 'FIO_P'
        Footers = <>
        Title.Color = 16776176
        Title.EndEllipsis = True
        Width = 145
      end
      item
        Color = clWhite
        EditButtons = <>
        FieldName = 'D_FIX'
        Footers = <>
        Title.EndEllipsis = True
      end
      item
        EditButtons = <>
        FieldName = 'FIO_FIX'
        Footers = <>
        Title.EndEllipsis = True
        Width = 203
      end
      item
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.EndEllipsis = True
        Width = 114
      end
      item
        EditButtons = <>
        FieldName = 'ID_AREA'
        Footers = <>
        Title.EndEllipsis = True
      end
      item
        EditButtons = <>
        FieldName = 'ID_J_MOVE'
        Footers = <>
        Title.EndEllipsis = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 220
    Width = 680
    Height = 165
    Align = alTop
    Caption = 'Panel3'
    TabOrder = 4
    object dbg2: TDBGridEh
      Left = 1
      Top = 1
      Width = 678
      Height = 163
      Align = alClient
      DataSource = dsBill_S
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ID_OBJECT'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'ID_BATCH'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'NAME'
          Footers = <>
          Title.EndEllipsis = True
          Title.SortIndex = 1
          Title.SortMarker = smDownEh
          Title.TitleButton = True
          Width = 162
        end
        item
          EditButtons = <>
          FieldName = 'UNIT1'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 48
        end
        item
          EditButtons = <>
          FieldName = 'AMOUNT'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 69
        end
        item
          EditButtons = <>
          FieldName = 'UNIT2'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 48
        end
        item
          EditButtons = <>
          FieldName = 'AMOUNT2'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 67
        end
        item
          EditButtons = <>
          FieldName = 'ID_STEP'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 36
        end
        item
          EditButtons = <>
          FieldName = 'NAME_O'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'N_ORDER'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'ORD_NAME'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 368
        end
        item
          EditButtons = <>
          FieldName = 'REM'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 529
        end
        item
          EditButtons = <>
          FieldName = 'ID_PA_BILL_POS'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'NAME_DETAL'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'OBJ_TYPE'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 388
    Width = 27
    Height = 144
    Align = alLeft
    TabOrder = 5
    object SpeedButton1: TSpeedButton
      Left = 3
      Top = 2
      Width = 23
      Height = 22
      Hint = #1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
  end
  object qIns: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    Left = 96
    Top = 136
  end
  object qBill: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterScroll = qBillAfterScroll
    SQL.Strings = (
      'select p.id_pa_bill, p.id_p_area,a.name name_area,'
      'coalesce( p.id_destination,p.id_agent) id_destination,'
      'cast(coalesce(aa.name,i.name) as varchar(128)) name_dist,'
      'p.pa_bill_type,t.name,p.d_bill, p.number,'
      'p.ID_CONFIRM,rrr.fio fio_conf, p.D_CONFIRM,'
      'p.d_fix, p.id_fix, r.fio fio_fix,'
      'p.d_get, p.id_get,rr.fio fio_det,'
      ' p.rem, p.number_bill'
      'from p_area_bills p'
      'join prod_areas a on a.id_p_area = p.id_p_area'
      'join pa_bill_types t on t.id_pa_bill_type = p.pa_bill_type'
      'left join prod_areas aa on aa.id_p_area = p.id_destination'
      'left join items i on i.id_item = p.id_agent'
      'left join personnel r on r.id_p = p.id_fix'
      'left join personnel rr on rr.id_p = p.id_get'
      'left join personnel rrr on rrr.id_p = p.id_confirm'
      'where  D_FIX >= :d_in and D_FIX < :d_out'
      '')
    Left = 160
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'd_in'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end>
    object qBillID_PA_BILL: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      FieldName = 'ID_PA_BILL'
      Origin = '"P_AREA_BILLS"."ID_PA_BILL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qBillID_P_AREA: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1089#1082#1083#1072#1076'1'
      FieldName = 'ID_P_AREA'
      Origin = '"P_AREA_BILLS"."ID_P_AREA"'
      Required = True
    end
    object qBillNAME_AREA: TIBStringField
      DisplayLabel = #1057#1082#1083#1072#1076'1'
      FieldName = 'NAME_AREA'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object qBillID_DESTINATION: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1050#1086#1085#1090#1088#1072#1075#1077#1085#1090'2'
      FieldName = 'ID_DESTINATION'
      Origin = '"P_AREA_BILLS"."ID_DESTINATION"'
    end
    object qBillNAME_DIST: TIBStringField
      DisplayLabel = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090'2'
      FieldName = 'NAME_DIST'
      ProviderFlags = []
      Size = 128
    end
    object qBillPA_BILL_TYPE: TSmallintField
      DisplayLabel = #1050#1086#1076' '#1090#1080#1087#1072' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      FieldName = 'PA_BILL_TYPE'
      Origin = '"P_AREA_BILLS"."PA_BILL_TYPE"'
      Required = True
    end
    object qBillNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PA_BILL_TYPES"."NAME"'
      Size = 32
    end
    object qBillD_BILL: TDateField
      DisplayLabel = #1044'/'#1085#1072#1082#1083#1072#1076#1085#1086#1081
      FieldName = 'D_BILL'
      Origin = '"P_AREA_BILLS"."D_BILL"'
    end
    object qBillNUMBER: TIBStringField
      DisplayLabel = #8470' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      FieldName = 'NUMBER'
      Origin = '"P_AREA_BILLS"."NUMBER"'
      Size = 16
    end
    object qBillD_FIX: TDateTimeField
      DisplayLabel = #1044'/'#1087#1086#1076#1096#1080#1074#1082#1080'1'
      FieldName = 'D_FIX'
      Origin = '"P_AREA_BILLS"."D_FIX"'
    end
    object qBillID_FIX: TIntegerField
      FieldName = 'ID_FIX'
      Origin = '"P_AREA_BILLS"."ID_FIX"'
    end
    object qBillFIO_FIX: TIBStringField
      DisplayLabel = #1055#1086#1076#1096#1080#1083'1'
      FieldName = 'FIO_FIX'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qBillD_GET: TDateTimeField
      DisplayLabel = #1044'/'#1087#1086#1076#1096#1080#1082#1080'2'
      FieldName = 'D_GET'
      Origin = '"P_AREA_BILLS"."D_GET"'
    end
    object qBillID_GET: TIntegerField
      FieldName = 'ID_GET'
      Origin = '"P_AREA_BILLS"."ID_GET"'
    end
    object qBillFIO_DET: TIBStringField
      DisplayLabel = #1055#1086#1076#1096#1080#1083'2'
      FieldName = 'FIO_DET'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qBillREM: TMemoField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'REM'
      Origin = '"P_AREA_BILLS"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qBillNUMBER_BILL: TIBStringField
      DisplayLabel = #8470' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      FieldName = 'NUMBER_BILL'
      Origin = '"P_AREA_BILLS"."NUMBER_BILL"'
      Size = 32
    end
    object qBillID_CONFIRM: TIntegerField
      FieldName = 'ID_CONFIRM'
      Origin = '"P_AREA_BILLS"."ID_CONFIRM"'
    end
    object qBillFIO_CONF: TIBStringField
      DisplayLabel = #1055#1077#1095#1072#1090#1100
      FieldName = 'FIO_CONF'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qBillD_CONFIRM: TDateTimeField
      DisplayLabel = #1044'/'#1055#1077#1095#1072#1090#1080
      FieldName = 'D_CONFIRM'
      Origin = '"P_AREA_BILLS"."D_CONFIRM"'
    end
  end
  object qBill_S: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select * from GET_BILL_POS(:ID_PA_BILL)')
    Left = 216
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_PA_BILL'
        ParamType = ptUnknown
      end>
    object qBill_SID_OBJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_OBJECT'
      Origin = '"GET_BILL_POS"."ID_OBJECT"'
    end
    object qBill_SID_BATCH: TIntegerField
      DisplayLabel = #1055#1072#1088#1090#1080#1103
      FieldName = 'ID_BATCH'
      Origin = '"GET_BILL_POS"."ID_BATCH"'
    end
    object qBill_SNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"GET_BILL_POS"."NAME"'
      Size = 128
    end
    object qBill_SUNIT1: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084' ('#1091')'
      FieldName = 'UNIT1'
      Origin = '"GET_BILL_POS"."UNIT1"'
      Size = 16
    end
    object qBill_SAMOUNT: TIBBCDField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' ('#1091')'
      FieldName = 'AMOUNT'
      Origin = '"GET_BILL_POS"."AMOUNT"'
      Precision = 18
      Size = 4
    end
    object qBill_SUNIT2: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084' ('#1087')'
      FieldName = 'UNIT2'
      Origin = '"GET_BILL_POS"."UNIT2"'
      Size = 16
    end
    object qBill_SAMOUNT2: TIBBCDField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' ('#1087')'
      FieldName = 'AMOUNT2'
      Origin = '"GET_BILL_POS"."AMOUNT2"'
      Precision = 18
      Size = 4
    end
    object qBill_SID_STEP: TIntegerField
      DisplayLabel = #1064#1072#1075
      FieldName = 'ID_STEP'
      Origin = '"GET_BILL_POS"."ID_STEP"'
    end
    object qBill_SNAME_O: TIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'NAME_O'
      Origin = '"GET_BILL_POS"."NAME_O"'
      Size = 30
    end
    object qBill_SN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"GET_BILL_POS"."N_ORDER"'
      Size = 16
    end
    object qBill_SORD_NAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ORD_NAME'
      Origin = '"GET_BILL_POS"."ORD_NAME"'
      Size = 80
    end
    object qBill_SREM: TMemoField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'REM'
      Origin = '"GET_BILL_POS"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qBill_SID_PA_BILL_POS: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1086#1079#1080#1094#1080#1080
      FieldName = 'ID_PA_BILL_POS'
      Origin = '"GET_BILL_POS"."ID_PA_BILL_POS"'
    end
    object qBill_SNAME_DETAL: TIBStringField
      DisplayLabel = #1044#1077#1090#1072#1083#1100
      FieldName = 'NAME_DETAL'
      Origin = '"GET_BILL_POS"."NAME_DETAL"'
      Size = 1024
    end
    object qBill_SOBJ_TYPE: TIntegerField
      DisplayLabel = #1058#1080#1087' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'OBJ_TYPE'
      Origin = '"GET_BILL_POS"."OBJ_TYPE"'
    end
  end
  object dsBill: TDataSource
    DataSet = qBill
    Left = 160
    Top = 192
  end
  object dsBill_S: TDataSource
    DataSet = qBill_S
    Left = 216
    Top = 192
  end
  object qJ_Move: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    OnNewRecord = qJ_MoveNewRecord
    SQL.Strings = (
      'select  j.id_j_move, j.id_area,a.name, j.direction,'
      'j.id_fix,p.fio fio_fix, j.d_fix,'
      'j.id_doc_number, d.prefix ,j.id_doc, j.id_p,pp.fio fio_p'
      'from j_moves j join prod_areas a on a.id_p_area = j.id_area'
      'join personnel p on p.id_p = j.id_fix'
      'join doc_numbers d on d.id_doctype = j.id_doc_number'
      'join personnel pp on pp.id_p = j.id_p'
      'where j.id_doc_number =:id_doc_number and j.id_doc = :id_doc'
      'order by j.d_fix')
    UpdateObject = UpJ_Move
    GeneratorField.Field = 'ID_J_MOVE'
    GeneratorField.Generator = 'OBJ_ID'
    Left = 280
    Top = 137
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_doc_number'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_doc'
        ParamType = ptUnknown
      end>
    object qJ_MoveID_J_MOVE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1087#1080#1089#1080
      FieldName = 'ID_J_MOVE'
      Origin = '"J_MOVES"."ID_J_MOVE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qJ_MoveID_AREA: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1050#1055#1055
      FieldName = 'ID_AREA'
      Origin = '"J_MOVES"."ID_AREA"'
    end
    object qJ_MoveNAME: TIBStringField
      DisplayLabel = #1050#1055#1055
      FieldName = 'NAME'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object qJ_MoveDIRECTION: TIntegerField
      DisplayLabel = #1058#1080#1087
      FieldName = 'DIRECTION'
      Origin = '"J_MOVES"."DIRECTION"'
    end
    object qJ_MoveID_FIX: TIntegerField
      FieldName = 'ID_FIX'
      Origin = '"J_MOVES"."ID_FIX"'
    end
    object qJ_MoveFIO_FIX: TIBStringField
      DisplayLabel = #1055#1086#1076#1096#1080#1083
      FieldName = 'FIO_FIX'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qJ_MoveD_FIX: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1076#1096#1080#1074#1082#1080
      FieldName = 'D_FIX'
      Origin = '"J_MOVES"."D_FIX"'
    end
    object qJ_MoveID_DOC_NUMBER: TIntegerField
      FieldName = 'ID_DOC_NUMBER'
      Origin = '"J_MOVES"."ID_DOC_NUMBER"'
    end
    object qJ_MovePREFIX: TIBStringField
      DisplayLabel = #1055#1088#1077#1092#1080#1082#1089' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'PREFIX'
      Origin = '"DOC_NUMBERS"."PREFIX"'
      Size = 5
    end
    object qJ_MoveID_DOC: TIntegerField
      DisplayLabel = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'ID_DOC'
      Origin = '"J_MOVES"."ID_DOC"'
    end
    object qJ_MoveID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"J_MOVES"."ID_P"'
    end
    object qJ_MoveFIO_P: TIBStringField
      DisplayLabel = #1056#1072#1079#1088#1077#1096#1080#1083' '#1085#1072' '#1074#1099#1085#1086#1089
      FieldName = 'FIO_P'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsJ_Move: TDataSource
    DataSet = qJ_Move
    Left = 280
    Top = 193
  end
  object UpJ_Move: TIBUpdateSQL
    ModifySQL.Strings = (
      ' update j_moves'
      ' set '
      '     direction = :direction,'
      '     id_fix = :id_fix,'
      '     d_fix = :d_fix,'
      '     id_doc_number = :id_doc_number,'
      '     id_doc = :id_doc,'
      '     id_p = :id_p'
      ' where (id_j_move = :id_j_move)')
    InsertSQL.Strings = (
      
        'insert into j_moves (id_j_move, id_area, direction, id_fix, d_fi' +
        'x, id_doc_number, id_doc, id_p)'
      
        'values (:id_j_move, :id_area, :direction, :id_fix, :d_fix, :id_d' +
        'oc_number, :id_doc, :id_p)')
    DeleteSQL.Strings = (
      'delete from j_moves'
      'where (id_j_move = :id_j_move)')
    Left = 336
    Top = 137
  end
end
