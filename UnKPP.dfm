object fmKPP: TfmKPP
  Left = 435
  Top = 280
  Width = 696
  Height = 480
  Caption = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1095#1077#1088#1077#1079' '#1050#1055#1055
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
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
      Caption = 'ToolButton1'
      ImageIndex = 30
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
    object SpeedButton1: TSpeedButton
      Left = 560
      Top = 24
      Width = 23
      Height = 22
      Hint = #1042#1099#1073#1088#1072#1090' '#1076#1086#1082#1091#1084#1077#1085#1090
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF3333333333333744333333333333F773333333333337
        44473333333333F777F3333333333744444333333333F7733733333333374444
        4433333333F77333733333333744444447333333F7733337F333333744444444
        433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
        9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
        C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
        CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
        CCC333333333333777FF33333333333333CC3333333333333773}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
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
    object edNom: TEdit
      Left = 432
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object lcbDoc: TDBLookupComboboxEh
      Left = 296
      Top = 24
      Width = 129
      Height = 21
      DropDownBox.Rows = 15
      DropDownBox.Sizable = True
      DropDownBox.Width = 300
      EditButtons = <>
      KeyField = 'ID_DOCTYPE'
      ListField = 'NAME_PREFIX'
      ListSource = dsDoc
      TabOrder = 2
      Visible = True
    end
  end
  object dbg1: TDBGridEh
    Left = 0
    Top = 89
    Width = 680
    Height = 353
    Align = alClient
    DataSource = dsJ_Move
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnSortMarkingChanged = dbg1SortMarkingChanged
    Columns = <
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'DIRECTION'
        Footers = <>
        KeyList.Strings = (
          '1'
          '0')
        Title.EndEllipsis = True
        Title.TitleButton = True
        Width = 28
      end
      item
        EditButtons = <>
        FieldName = 'PREFIX'
        Footers = <>
        Title.EndEllipsis = True
        Title.TitleButton = True
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'ID_DOC'
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
        Width = 128
      end
      item
        EditButtons = <>
        FieldName = 'D_FIX'
        Footers = <>
        Title.EndEllipsis = True
        Title.SortIndex = 1
        Title.SortMarker = smDownEh
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'FIO_P'
        Footers = <>
        Title.EndEllipsis = True
        Title.TitleButton = True
        Width = 210
      end
      item
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.EndEllipsis = True
        Title.TitleButton = True
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'ID_AREA'
        Footers = <>
        Title.EndEllipsis = True
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'ID_J_MOVE'
        Footers = <>
        Title.EndEllipsis = True
        Title.TitleButton = True
      end>
  end
  object IBQuery1: TIBQuery
    Left = 232
    Top = 256
  end
  object qJ_Move: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BeforeOpen = qJ_MoveBeforeOpen
    SQL.Strings = (
      'select  j.id_j_move, j.id_area,a.name, j.direction,'
      'j.id_fix,p.fio fio_fix, j.d_fix,'
      'j.id_doc_number, d.prefix ,j.id_doc, j.id_p,pp.fio fio_p'
      'from j_moves j join prod_areas a on a.id_p_area = j.id_area'
      'join personnel p on p.id_p = j.id_fix'
      'join doc_numbers d on d.id_doctype = j.id_doc_number'
      'join personnel pp on pp.id_p = j.id_p')
    Left = 320
    Top = 216
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
    Left = 320
    Top = 280
  end
  object qDoc: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select id_doctype, name, prefix, gen_name ,'
      #39'('#39'|| cast(prefix as varchar(5)) || '#39') '#39' || name name_prefix'
      'from doc_numbers'
      'order by 5')
    Left = 392
    Top = 216
    object qDocID_DOCTYPE: TIntegerField
      FieldName = 'ID_DOCTYPE'
      Origin = '"DOC_NUMBERS"."ID_DOCTYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDocNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"DOC_NUMBERS"."NAME"'
      Size = 64
    end
    object qDocPREFIX: TIBStringField
      FieldName = 'PREFIX'
      Origin = '"DOC_NUMBERS"."PREFIX"'
      Size = 5
    end
    object qDocGEN_NAME: TIBStringField
      FieldName = 'GEN_NAME'
      Origin = '"DOC_NUMBERS"."GEN_NAME"'
      Size = 16
    end
    object qDocNAME_PREFIX: TIBStringField
      FieldName = 'NAME_PREFIX'
      ProviderFlags = []
      Size = 72
    end
  end
  object dsDoc: TDataSource
    DataSet = qDoc
    Left = 392
    Top = 280
  end
end
