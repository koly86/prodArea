object fmTABEL: TfmTABEL
  Left = 342
  Top = 379
  Width = 1148
  Height = 789
  Caption = #1059#1095#1077#1090' '#1088#1072#1073#1086#1095#1077#1075#1086' '#1074#1088#1077#1084#1077#1085#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object stb1: TStatusBar
    Left = 0
    Top = 732
    Width = 1132
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 200
      end
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object clb1: TCoolBar
    Left = 0
    Top = 0
    Width = 1132
    Height = 56
    AutoSize = True
    Bands = <
      item
        Control = tlb1
        ImageIndex = -1
        MinHeight = 24
        Width = 1128
      end
      item
        Control = tlb2
        ImageIndex = -1
        MinHeight = 26
        Width = 1128
      end>
    object tlb1: TToolBar
      Left = 9
      Top = 0
      Width = 1115
      Height = 24
      AutoSize = True
      Caption = 'tlb1'
      Flat = True
      Images = fmMain.il1
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 24
        Height = 22
        Caption = #1043#1086#1076': '
      end
      object ed1: TEdit
        Left = 24
        Top = 0
        Width = 40
        Height = 22
        TabOrder = 0
        Text = '2000'
        OnKeyUp = ed1KeyUp
      end
      object ud1: TUpDown
        Left = 64
        Top = 0
        Width = 17
        Height = 22
        Associate = ed1
        Min = 1900
        Max = 3000
        Position = 2000
        TabOrder = 2
        Thousands = False
        OnClick = ud1Click
      end
      object Label2: TLabel
        Left = 81
        Top = 0
        Width = 36
        Height = 22
        Caption = #1052#1077#1089#1103#1094':'
      end
      object cb1: TComboBox
        Left = 117
        Top = 0
        Width = 75
        Height = 21
        DropDownCount = 12
        ItemHeight = 13
        TabOrder = 1
        Text = #1057#1077#1085#1090#1103#1073#1088#1100
        OnCloseUp = cb1CloseUp
        Items.Strings = (
          #1071#1085#1074#1072#1088#1100
          #1060#1077#1074#1088#1072#1083#1100
          #1052#1072#1088#1090
          #1040#1087#1088#1077#1083#1100
          #1052#1072#1081
          #1048#1102#1085#1100
          #1048#1102#1083#1100
          #1040#1074#1075#1091#1089#1090
          #1057#1077#1085#1090#1103#1073#1088#1100
          #1054#1082#1090#1103#1073#1088#1100
          #1053#1086#1103#1073#1088#1100
          #1044#1077#1082#1072#1073#1088#1100)
      end
      object Label4: TLabel
        Left = 192
        Top = 0
        Width = 51
        Height = 22
        Caption = '   '#1053#1072' '#1076#1072#1090#1091':'
      end
      object tb2: TToolButton
        Left = 243
        Top = 0
        Hint = #1059#1090#1074#1077#1088#1076#1080#1090#1100' '#1085#1072' '#1076#1072#1090#1091
        Caption = 'tb2'
        ImageIndex = 20
        ParentShowHint = False
        ShowHint = True
        OnClick = tb2Click
      end
      object dtp1: TDateTimePicker
        Left = 266
        Top = 0
        Width = 78
        Height = 22
        Date = 39315.000000000000000000
        Time = 39315.000000000000000000
        DateFormat = dfLong
        TabOrder = 6
      end
      object tbPrint1: TToolButton
        Left = 344
        Top = 0
        Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1077#1083#1103
        Caption = 'tbPrint1'
        DropdownMenu = pm
        ImageIndex = 13
        ParentShowHint = False
        ShowHint = True
        Style = tbsDropDown
      end
      object tbExcel: TToolButton
        Left = 382
        Top = 0
        Caption = 'tbExcel'
        ImageIndex = 30
        OnClick = tbExcelClick
      end
      object lcbPost: TDBLookupComboboxEh
        Left = 405
        Top = 0
        Width = 121
        Height = 22
        DropDownBox.Sizable = True
        DropDownBox.Width = 300
        EditButtons = <>
        KeyField = 'IDPOST'
        ListField = 'NAME'
        ListSource = dsPost
        TabOrder = 3
        Visible = True
        OnCloseUp = lcbPostCloseUp
      end
      object lcbWork: TDBLookupComboboxEh
        Left = 526
        Top = 0
        Width = 121
        Height = 22
        DropDownBox.Rows = 10
        DropDownBox.Sizable = True
        DropDownBox.Width = 300
        EditButtons = <>
        KeyField = 'WORK_SHIFT'
        ListField = 'NAME'
        ListSource = dsTab_Work
        TabOrder = 4
        Visible = True
        OnCloseUp = lcbWorkCloseUp
      end
      object lcbContr: TDBLookupComboboxEh
        Left = 647
        Top = 0
        Width = 99
        Height = 22
        EditButtons = <>
        KeyField = 'CONTRACT_TYPE'
        ListField = 'NAME'
        ListSource = dmIS.dsContr
        TabOrder = 5
        Visible = True
        OnCloseUp = lcbContrCloseUp
      end
    end
    object tlb2: TToolBar
      Left = 9
      Top = 26
      Width = 1115
      Height = 26
      AutoSize = True
      Caption = 'tlb2'
      Images = fmMain.il1
      TabOrder = 1
      object chb1: TCheckBox
        Left = 0
        Top = 2
        Width = 16
        Height = 22
        Hint = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093' (v)'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object lcb1: TDBLookupComboboxEh
        Left = 16
        Top = 2
        Width = 177
        Height = 22
        Hint = #1042#1099#1073#1086#1088' '#1087#1072#1088#1072#1084#1072#1090#1088#1072
        DropDownBox.Rows = 15
        DropDownBox.Sizable = True
        DropDownBox.Width = 300
        EditButtons = <>
        KeyField = 'ID_TAB_COEFF'
        ListField = 'SHORTNAME;NAME'
        ListFieldIndex = 1
        ListSource = dmIS.dsT_COEF
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Visible = True
      end
      object Label3: TLabel
        Left = 193
        Top = 2
        Width = 44
        Height = 22
        Caption = #1050#1086#1101#1092#1092'.: '
      end
      object DBText1: TDBText
        Left = 237
        Top = 2
        Width = 44
        Height = 22
        DataField = 'VAL'
        DataSource = dmIS.dsT_COEF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ed2: TEdit
        Left = 281
        Top = 2
        Width = 40
        Height = 22
        Hint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1095#1072#1089#1086#1074
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnKeyPress = ed2KeyPress
        OnKeyUp = ed2KeyUp
      end
      object dt1: TDateTimePicker
        Left = 321
        Top = 2
        Width = 57
        Height = 22
        Date = 39321.000000000000000000
        Format = 'hh:mm'
        Time = 39321.000000000000000000
        DateFormat = dfLong
        Kind = dtkTime
        TabOrder = 6
        OnKeyUp = dt1KeyUp
      end
      object Label5: TLabel
        Left = 378
        Top = 2
        Width = 40
        Height = 22
        Caption = #1053#1086#1088#1084#1072'  '
      end
      object lcbNorm: TDBLookupComboboxEh
        Left = 418
        Top = 2
        Width = 143
        Height = 22
        DropDownBox.Columns = <
          item
            FieldName = 'NAME'
          end
          item
            FieldName = 'HOURS'
          end
          item
            FieldName = 'date'
          end
          item
            FieldName = 'nomDate'
          end>
        DropDownBox.UseMultiTitle = True
        DropDownBox.Rows = 20
        DropDownBox.ShowTitles = True
        DropDownBox.Sizable = True
        DropDownBox.Width = 500
        EditButtons = <>
        KeyField = 'ID_NORM'
        ListField = 'NAME'
        ListSource = dsWork_Norm
        TabOrder = 1
        Visible = True
      end
      object dbtNorm: TDBText
        Left = 561
        Top = 2
        Width = 39
        Height = 22
        DataField = 'HOURS'
        DataSource = dsWork_Norm
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbExt: TCheckBox
        Left = 600
        Top = 2
        Width = 48
        Height = 22
        Hint = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103'/'#1059#1076#1077#1088#1078#1072#1085#1080#1103
        Caption = #1053'/'#1059
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = cbExtClick
      end
      object cbObj: TCheckBox
        Left = 648
        Top = 2
        Width = 65
        Height = 22
        Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1093' '#1088#1072#1073#1086#1090
        Caption = #1044#1077#1090#1072#1083#1080
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = cbObjClick
      end
      object tb1: TToolButton
        Left = 713
        Top = 2
        Hint = #1059#1076#1072#1083#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1090#1072#1073#1077#1083#1103
        Caption = 'tb1'
        ImageIndex = 3
        ParentShowHint = False
        ShowHint = True
        OnClick = tb1Click
      end
      object lbNomTab: TLabel
        Left = 736
        Top = 2
        Width = 63
        Height = 22
        Caption = '  '#1058#1072#1073#1077#1083#1100' '#8470'  '
      end
    end
  end
  object pc: TPageControl
    Left = 0
    Top = 56
    Width = 1132
    Height = 676
    ActivePage = ts_Sum_Tab_List
    Align = alClient
    TabOrder = 3
    OnChange = pcChange
    object tsTab: TTabSheet
      Caption = #1058#1072#1073#1077#1083#1100
      object Splitter1: TSplitter
        Left = 0
        Top = 249
        Width = 1124
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object Splitter6: TSplitter
        Left = 689
        Top = 252
        Height = 396
      end
      object Splitter7: TSplitter
        Left = 211
        Top = 252
        Height = 396
      end
      object Splitter8: TSplitter
        Left = 357
        Top = 252
        Height = 396
      end
      object p1: TPanel
        Left = 0
        Top = 0
        Width = 1124
        Height = 249
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object sg1: TStringGrid
          Left = 2
          Top = 2
          Width = 1120
          Height = 245
          Align = alClient
          Color = clWhite
          ColCount = 31
          RowCount = 10
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goTabs]
          TabOrder = 0
          OnDblClick = sg1DblClick
          OnDrawCell = sg1DrawCell
          OnKeyUp = sg1KeyUp
          OnMouseDown = sg1MouseDown
          OnSetEditText = sg1SetEditText
          RowHeights = (
            24
            24
            24
            24
            24
            24
            24
            24
            24
            24)
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 252
        Width = 26
        Height = 396
        Align = alLeft
        TabOrder = 1
        object SpeedButton20: TSpeedButton
          Left = 2
          Top = 2
          Width = 23
          Height = 22
          Hint = #1042' Excel '#1089#1077#1090#1082#1080
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            77777777777777700000000000000006666008888888806EEF0770E6666606EE
            F077770E66606EEF06077770E606EEF000077777006EEF077777777706EEF007
            777777706EEF068077777706EEF0E6680777706EEF070E6680770FFFF07770EE
            EE07000007777700000777777777777777777777777777777777}
          OnClick = SpeedButton20Click
        end
      end
      object GroupBox1: TGroupBox
        Left = 360
        Top = 252
        Width = 329
        Height = 396
        Align = alLeft
        Caption = #1059#1076#1077#1088#1078#1072#1085#1080#1103'/'#1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
        TabOrder = 2
        object dbg_Ext: TDBGridEh
          Left = 2
          Top = 15
          Width = 325
          Height = 357
          Align = alClient
          DataSource = dsTab_Ext
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnSortMarkingChanged = dbg_ExtSortMarkingChanged
          Columns = <
            item
              EditButtons = <>
              FieldName = 'C_DATE'
              Footers = <>
              Title.EndEllipsis = True
              Title.SortIndex = 1
              Title.SortMarker = smDownEh
              Title.TitleButton = True
            end
            item
              DropDownBox.UseMultiTitle = True
              DropDownRows = 10
              DropDownWidth = 200
              EditButtons = <>
              FieldName = 'nID_TEPEEXT'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'TATAL_SUM'
              Footer.DisplayFormat = '### ### ###.00'
              Footer.FieldName = 'TATAL_SUM'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              DropDownBox.UseMultiTitle = True
              DropDownRows = 10
              DropDownWidth = 100
              EditButtons = <>
              FieldName = 'nID_CUR'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 31
            end
            item
              ButtonStyle = cbsEllipsis
              EditButtons = <>
              FieldName = 'N_ORDER'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 71
              OnEditButtonClick = dbg_ExtColumns4EditButtonClick
              OnUpdateData = dbg_ExtColumns4UpdateData
            end
            item
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'REM'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'ID_TAB_EXRAFEE'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'ID_TAB'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'ID_P'
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
              FieldName = 'ID_TYPEEXRAFEE'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end>
        end
        object Panel6: TPanel
          Left = 2
          Top = 372
          Width = 325
          Height = 22
          Align = alBottom
          TabOrder = 1
          object sbOrder: TSpeedButton
            Left = 161
            Top = 0
            Width = 25
            Height = 22
            Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1082#1072#1079#1099
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
              3333333333777F33333333333309033333333333337F7F333333333333090333
              33333333337F7F33333333333309033333333333337F7F333333333333090333
              33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
              3333333777737777F333333099999990333333373F3333373333333309999903
              333333337F33337F33333333099999033333333373F333733333333330999033
              3333333337F337F3333333333099903333333333373F37333333333333090333
              33333333337F7F33333333333309033333333333337373333333333333303333
              333333333337F333333333333330333333333333333733333333}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = sbOrderClick
          end
          object DBNavigator1: TDBNavigator
            Left = 1
            Top = 1
            Width = 160
            Height = 20
            DataSource = dsTab_Ext
            VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete, nbEdit, nbPost]
            Align = alLeft
            TabOrder = 0
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 26
        Top = 252
        Width = 185
        Height = 396
        Align = alLeft
        Caption = #1053#1086#1088#1084#1072' '#1095#1072#1089#1086#1074
        TabOrder = 3
        object dbg_Norm: TDBGridEh
          Left = 2
          Top = 15
          Width = 181
          Height = 379
          Align = alClient
          DataSource = dsTab_Norm
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
              FieldName = 'C_DATE'
              Footers = <>
              Width = 31
            end
            item
              EditButtons = <>
              FieldName = 'HOURS'
              Footers = <>
              Width = 42
            end
            item
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ID_TAB_NORM'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ID_TAB'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ID_P'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ID_NORM'
              Footers = <>
            end>
        end
      end
      object GroupBox3: TGroupBox
        Left = 692
        Top = 252
        Width = 432
        Height = 396
        Align = alClient
        Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077
        TabOrder = 4
        object dbg_Obj: TDBGridEh
          Left = 2
          Top = 15
          Width = 428
          Height = 379
          Align = alClient
          DataSource = dsDet
          DrawMemoText = True
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnSortMarkingChanged = dbg_ObjSortMarkingChanged
          Columns = <
            item
              EditButtons = <>
              FieldName = 'DEC_NO'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 75
            end
            item
              EditButtons = <>
              FieldName = 'NM'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 178
            end
            item
              EditButtons = <>
              FieldName = 'NAME_SHIFT'
              Footers = <>
              Width = 169
            end
            item
              EditButtons = <>
              FieldName = 'SHOTNAME'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 211
            end
            item
              EditButtons = <>
              FieldName = 'STEP'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 27
            end
            item
              EditButtons = <>
              FieldName = 'NAME_OPER'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'AMOUNT'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              Color = 16776176
              EditButtons = <>
              FieldName = 'F_AMOUNT'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              Color = 16776176
              EditButtons = <>
              FieldName = 'DIN'
              Footers = <>
              Title.EndEllipsis = True
              Title.SortIndex = 1
              Title.SortMarker = smDownEh
              Title.TitleButton = True
            end
            item
              Color = 16776176
              EditButtons = <>
              FieldName = 'DTO_'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              Color = 16776176
              EditButtons = <>
              FieldName = 'TM_'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'F_TIME'
              Footer.DisplayFormat = '### ### ##0.00'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'F_TIME_P'
              Footer.DisplayFormat = '### ### ##0.00'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'NAME_ORD'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 237
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
              FieldName = 'NAME_POST'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 158
            end
            item
              EditButtons = <>
              FieldName = 'FIO'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 147
            end
            item
              EditButtons = <>
              FieldName = 'ID_PROD_PLAN_P'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'ID_P'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'REM'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'D_OUT'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'DTO'
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
              FieldName = 'ID_ORDER'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'ID_OBJECT'
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
      object GroupBox4: TGroupBox
        Left = 214
        Top = 252
        Width = 143
        Height = 396
        Align = alLeft
        Caption = #1054#1090#1088#1072#1073#1086#1090#1072#1085#1086' '#1095#1072#1089#1086#1074
        TabOrder = 5
        object dbg_Tab: TDBGridEh
          Left = 2
          Top = 15
          Width = 139
          Height = 379
          Align = alClient
          DataSource = dsTab_Pos
          DrawMemoText = True
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'TAB_DAY'
              Footers = <>
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = 'SHORTNAME'
              Footers = <>
              Width = 22
            end
            item
              EditButtons = <>
              FieldName = 'VAL'
              Footer.FieldName = 'VAL'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'COMMENT'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'D_FIX'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ID_P'
              Footers = <>
            end>
        end
      end
    end
    object tsTab_List: TTabSheet
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      ImageIndex = 1
      object pcTab: TPageControl
        Left = 0
        Top = 0
        Width = 1124
        Height = 648
        ActivePage = ts_Tabel
        Align = alClient
        TabOrder = 0
        object ts_Tabel: TTabSheet
          Caption = #1055#1086' '#1090#1072#1073#1077#1083#1102
          object dbg2: TDBGridEh
            Left = 0
            Top = 46
            Width = 1116
            Height = 574
            Align = alClient
            DataSource = dsTab_List
            Flat = True
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnGetCellParams = dbg2GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'FIO'
                Footers = <>
                Title.EndEllipsis = True
                Width = 236
              end
              item
                EditButtons = <>
                FieldName = 'NM'
                Footers = <>
                Title.EndEllipsis = True
                Width = 124
              end
              item
                EditButtons = <>
                FieldName = 'KF'
                Footers = <>
                Title.EndEllipsis = True
                Width = 26
              end
              item
                EditButtons = <>
                FieldName = 'TP'
                Footers = <>
                Title.EndEllipsis = True
                Width = 23
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D1'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D2'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D3'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D4'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D5'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D6'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D7'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D8'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D9'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D10'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D11'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D12'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D13'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D14'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D15'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D16'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D17'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D18'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D19'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D20'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D21'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D22'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D23'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D24'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D25'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D26'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D27'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D28'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D29'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D30'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'D31'
                Footers = <>
                Title.EndEllipsis = True
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'ID_P'
                Footers = <>
                Title.EndEllipsis = True
              end>
          end
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 1116
            Height = 46
            Align = alTop
            TabOrder = 1
            object SpeedButton6: TSpeedButton
              Left = 5
              Top = 8
              Width = 23
              Height = 32
              Hint = 
                #1042#1099#1073#1086#1088#1082#1072' '#1079#1072' '#1087#1077#1088#1080#1086#1076#13#1042#1099#1073#1088#1072#1085#1085#1099#1081' '#1075#1086#1076' '#13#1042#1099#1073#1088#1072#1085#1085#1099#1081' '#1084#1077#1089#1103#1094' - '#1089' '#1103#1085#1074#1072#1088#1103' '#1087#1086' '#1074 +
                #1099#1073#1088#1072#1085#1085#1099#1081' '#1084#1077#1089#1103#1094
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777770877777
                7777777778087777777777777700877777777777770B0877777777770000B087
                777777770BBFBB087777777770FB00007777777770BFB08777777700000BFB08
                7777770FBFBFBFB087777770FBFB000077777770BFBFB087777777770BFBFB08
                777777770FFFBFF08777777770FBFFBF08777777700000000077}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton6Click
            end
            object rg_TP: TRadioGroup
              Left = 32
              Top = 1
              Width = 249
              Height = 42
              Caption = #1042#1099#1073#1086#1088' - '#1095#1072#1089#1099
              Columns = 3
              ItemIndex = 0
              Items.Strings = (
                #1042#1089#1105
                #1056#1072#1073#1086#1095#1080#1077
                #1053#1077' '#1088#1072#1073#1086#1095#1080#1077)
              TabOrder = 0
            end
            object cbSum: TCheckBox
              Left = 288
              Top = 16
              Width = 97
              Height = 17
              Caption = #1057#1091#1084#1084#1080#1088#1086#1074#1072#1090#1100
              TabOrder = 1
            end
          end
          object mmTab_List_Sum: TMemo
            Left = 136
            Top = 144
            Width = 705
            Height = 89
            Lines.Strings = (
              
                'select a.f, a.fio, a.nm, case when a.tp = 0 then '#39#1085#1077' '#1088#1072#1073#39' else '#39 +
                #1088#1072#1073#39' end kf,'
              'a.tp, a.id_p, a.TOTAL_F total,'
              
                'D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15,D16,D17,D18,D' +
                '19,D20,D21,D22,D23,D24,D25,D26,D27,D28,D29,D30,D31'
              'from ('
              
                'select 1 f, cast(FIO || '#39' ['#39' || NAME ||'#39']'#39' as VARCHAR(110)) fio,' +
                'cast(name as VARCHAR(50)) nm,'
              'cast('#39'      '#39' as VARCHAR(6)) kf,tp, id_p,Sum(TOTAL) total_f ,'
              
                'Sum(D1) d1,Sum(D2) d2,Sum(D3) d3,Sum(D4) d4,Sum(D5) d5,Sum(D6) d' +
                '6,Sum(D7) d7,Sum(D8) d8,Sum(D9) d9,'
              
                'Sum(D10) d10,Sum(D11) d11,Sum(D12) d12,Sum(D13) d13,Sum(D14) d14' +
                ',Sum(D15) d15,Sum(D16) d16,Sum(D17) d17,'
              
                'Sum(D18) d18,Sum(D19) d19,Sum(D20) d20,Sum(D21) d21,Sum(D22) d22' +
                ',Sum(D23) d23,Sum(D24) d24,Sum(D25) d25,'
              
                'Sum(D26) d26,Sum(D27) d27,Sum(D28) d28,Sum(D29) d29,Sum(D30) d30' +
                ',Sum(D31) d31'
              'from rep_tab(:ID_TAB)'
              'group by 1,2,3,4,6,5'
              'union'
              
                'select 2 f,cast('#39#1048#1090#1086#1075#1086' '#1087#1086' '#1090#1072#1073#1077#1083#1102':'#39' as VARCHAR(110)) fio,cast('#39#39' ' +
                'as VARCHAR(50)) nm,'
              
                'cast('#39'      '#39' as VARCHAR(6)) kf, -1 tp,-1 id_p,Sum(TOTAL) total_' +
                'f ,'
              
                'Sum(D1),Sum(D2),Sum(D3),Sum(D4),Sum(D5),Sum(D6),Sum(D7),Sum(D8),' +
                'Sum(D9),Sum(D10),Sum(D11),Sum(D12),Sum(D13),'
              
                'Sum(D14),Sum(D15),Sum(D16),Sum(D17),Sum(D18),Sum(D19),Sum(D20),S' +
                'um(D21),Sum(D22),Sum(D23),Sum(D24),Sum(D25),'
              'Sum(D26),Sum(D27),Sum(D28),Sum(D29),Sum(D30),Sum(D31)'
              'from rep_tab(:ID_TAB)'
              'union'
              
                'select 3 f,cast(FIO as VARCHAR(110)) fio,cast('#39#39' as VARCHAR(50))' +
                ' nm,'
              'cast('#39'      '#39' as VARCHAR(6)) kf, tp,tp id_p,TOTAL_F ,'
              
                'D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15,D16,D17,D18,D' +
                '19,D20,D21,D22,D23,D24,D25,D26,D27,D28,D29,D30,D31'
              'from REP_TAB_COEFF(:ID_TAB)'
              'union'
              
                'select 4 f,cast(FIO as VARCHAR(110)) fio,cast('#39#39' as VARCHAR(50))' +
                ' nm,'
              'cast('#39'      '#39' as VARCHAR(6)) kf,-2 tp, -2 id_p,TOTAL_F,'
              
                'D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15,D16,D17,D18,D' +
                '19,D20,D21,D22,D23,D24,D25,D26,D27,D28,D29,D30,D31'
              'from '
              'REP_SORS(:ID_P_AREA,:d_in,:d_out)'
              ') a ')
            TabOrder = 2
            Visible = False
          end
        end
        object ts_Fact: TTabSheet
          Caption = #1055#1086' '#1074#1099#1088#1072#1073#1086#1090#1082#1077
          ImageIndex = 1
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 1116
            Height = 46
            Align = alTop
            TabOrder = 0
            object SpeedButton7: TSpeedButton
              Left = 5
              Top = 8
              Width = 23
              Height = 32
              Hint = 
                #1042#1099#1073#1086#1088#1082#1072' '#1079#1072' '#1087#1077#1088#1080#1086#1076#13#1042#1099#1073#1088#1072#1085#1085#1099#1081' '#1075#1086#1076' '#13#1042#1099#1073#1088#1072#1085#1085#1099#1081' '#1084#1077#1089#1103#1094' - '#1089' '#1103#1085#1074#1072#1088#1103' '#1087#1086' '#1074 +
                #1099#1073#1088#1072#1085#1085#1099#1081' '#1084#1077#1089#1103#1094
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777770877777
                7777777778087777777777777700877777777777770B0877777777770000B087
                777777770BBFBB087777777770FB00007777777770BFB08777777700000BFB08
                7777770FBFBFBFB087777770FBFB000077777770BFBFB087777777770BFBFB08
                777777770FFFBFF08777777770FBFFBF08777777700000000077}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton7Click
            end
            object rg_TP_P: TRadioGroup
              Left = 32
              Top = 1
              Width = 249
              Height = 42
              Caption = #1042#1099#1073#1086#1088' - '#1095#1072#1089#1099
              Columns = 3
              ItemIndex = 0
              Items.Strings = (
                #1042#1089#1105
                #1055#1086' '#1087#1083#1072#1085#1091
                #1042#1085#1077' '#1087#1083#1072#1085#1072)
              TabOrder = 0
            end
            object cbSum_P: TCheckBox
              Left = 288
              Top = 16
              Width = 97
              Height = 17
              Caption = #1057#1091#1084#1084#1080#1088#1086#1074#1072#1090#1100
              TabOrder = 1
            end
          end
          object dbg4: TDBGridEh
            Left = 0
            Top = 46
            Width = 1116
            Height = 574
            Align = alClient
            DataSource = dsTab_List_Plan
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'TP'
                Footers = <>
                Title.EndEllipsis = True
                Width = 20
              end
              item
                EditButtons = <>
                FieldName = 'ID_P'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'FIO'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_F'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D1'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D2'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D3'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D4'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D5'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D6'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D7'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D8'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D9'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D10'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D11'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D12'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D13'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D14'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D15'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D16'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D17'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D18'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D19'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D20'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D21'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D22'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D23'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D24'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D25'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D26'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D27'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D28'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D29'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D30'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D31'
                Footers = <>
                Title.EndEllipsis = True
              end>
          end
        end
      end
    end
    object tsGraf: TTabSheet
      Caption = #1043#1088#1072#1092#1080#1082#1080
      ImageIndex = 3
      object Splitter2: TSplitter
        Left = 0
        Top = 134
        Width = 1124
        Height = 5
        Cursor = crVSplit
        Align = alTop
      end
      object pcGraf: TPageControl
        Left = 0
        Top = 139
        Width = 1124
        Height = 509
        ActivePage = tsGraf_Fio
        Align = alClient
        TabOrder = 0
        OnChange = pcGrafChange
        object tsGraf_Fio: TTabSheet
          Caption = #1059#1095#1072#1089#1090#1085#1080#1082#1080
          object DBChart1: TDBChart
            Left = 0
            Top = 0
            Width = 1116
            Height = 481
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              #1044#1080#1072#1075#1088#1072#1084#1084#1072' '#1087#1086' '#1091#1095#1072#1089#1090#1085#1080#1082#1072#1084)
            BottomAxis.DateTimeFormat = 'dd(hh:nn)'
            BottomAxis.Increment = 0.500000000000000000
            BottomAxis.LabelsSeparation = 0
            BottomAxis.TickLength = 2
            BottomAxis.TickOnLabelsOnly = False
            BottomAxis.Title.Caption = #1044#1072#1090#1072'('#1074#1088#1077#1084#1103')'
            Chart3DPercent = 5
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMaximum = False
            LeftAxis.AutomaticMinimum = False
            LeftAxis.Maximum = 20.000000000000000000
            LeftAxis.Title.Caption = #1059#1095#1072#1089#1090#1085#1080#1082#1080
            Legend.Visible = False
            View3DOptions.Perspective = 0
            View3DOptions.Zoom = 96
            Align = alClient
            TabOrder = 0
            object Series1: TGanttSeries
              ColorEachPoint = True
              Marks.ArrowLength = 0
              Marks.Visible = False
              DataSource = qRep_Plan_Day
              PercentFormat = '##0.##,%'
              SeriesColor = clRed
              Title = #1055#1086' '#1060#1048#1054
              ValueFormat = 'dd.mm.yy'
              XLabelsSource = 'FIO'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = True
              XValues.DateTime = True
              XValues.Name = 'Start'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              XValues.ValueSource = 'DIN'
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              YValues.ValueSource = 'id_nom'
              StartValues.DateTime = True
              StartValues.Name = 'Start'
              StartValues.Multiplier = 1.000000000000000000
              StartValues.Order = loAscending
              StartValues.ValueSource = 'DIN'
              EndValues.DateTime = True
              EndValues.Name = 'End'
              EndValues.Multiplier = 1.000000000000000000
              EndValues.Order = loNone
              EndValues.ValueSource = 'DTO'
              NextTask.DateTime = True
              NextTask.Name = 'NextTask'
              NextTask.Multiplier = 1.000000000000000000
              NextTask.Order = loNone
              NextTask.ValueSource = 'F_TIME_P'
            end
          end
        end
        object tsGraf_Det: TTabSheet
          Caption = #1044#1077#1090#1072#1083#1080
          ImageIndex = 1
          object DBChart2: TDBChart
            Left = 0
            Top = 0
            Width = 1124
            Height = 485
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              #1055#1086' '#1076#1077#1090#1072#1083#1103#1084)
            BottomAxis.DateTimeFormat = 'dd(hh:mm)'
            BottomAxis.Title.Caption = #1044#1072#1090'('#1074#1088#1077#1084#1103')'
            Chart3DPercent = 5
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMaximum = False
            LeftAxis.AutomaticMinimum = False
            LeftAxis.Maximum = 30.000000000000000000
            LeftAxis.Title.Caption = #1044#1077#1090#1072#1083#1080
            Legend.Visible = False
            Align = alClient
            TabOrder = 0
            object Series2: TGanttSeries
              ColorEachPoint = True
              Marks.ArrowLength = 0
              Marks.Visible = False
              DataSource = qRep_Plan_Day
              PercentFormat = '##0.##,%'
              SeriesColor = clRed
              ValueFormat = 'dd.mm.ee,hh:mm'
              XLabelsSource = 'NM'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = True
              XValues.DateTime = True
              XValues.Name = 'Start'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              XValues.ValueSource = 'DIN'
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              YValues.ValueSource = 'nom_det'
              StartValues.DateTime = True
              StartValues.Name = 'Start'
              StartValues.Multiplier = 1.000000000000000000
              StartValues.Order = loAscending
              StartValues.ValueSource = 'DIN'
              EndValues.DateTime = True
              EndValues.Name = 'End'
              EndValues.Multiplier = 1.000000000000000000
              EndValues.Order = loNone
              EndValues.ValueSource = 'DTO'
              NextTask.DateTime = False
              NextTask.Name = 'NextTask'
              NextTask.Multiplier = 1.000000000000000000
              NextTask.Order = loNone
              NextTask.ValueSource = 'F_TIME_P'
            end
          end
        end
        object ts_FIO_Pers: TTabSheet
          Caption = #1044#1077#1090#1072#1083#1080' '#1087#1086' '#1060#1048#1054
          ImageIndex = 2
          object DBChart3: TDBChart
            Left = 0
            Top = 0
            Width = 1124
            Height = 485
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              #1055#1086' '#1076#1077#1090#1072#1083#1103#1084)
            BottomAxis.DateTimeFormat = 'dd(hh:mm)'
            BottomAxis.Increment = 0.500000000000000000
            BottomAxis.Title.Caption = #1044#1072#1090#1072'('#1074#1088#1077#1084#1103')'
            Chart3DPercent = 5
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMaximum = False
            LeftAxis.AutomaticMinimum = False
            LeftAxis.Maximum = 30.000000000000000000
            LeftAxis.Title.Caption = #1044#1077#1090#1072#1083#1080
            Legend.Visible = False
            Align = alClient
            TabOrder = 0
            object GanttSeries1: TGanttSeries
              ColorEachPoint = True
              Marks.ArrowLength = 0
              Marks.Visible = False
              DataSource = qFio_Det
              PercentFormat = '##0.##,%'
              SeriesColor = clRed
              ValueFormat = 'dd.mm.yy,hh:mm'
              XLabelsSource = 'NM'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = True
              XValues.DateTime = True
              XValues.Name = 'Start'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              XValues.ValueSource = 'DIN'
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              YValues.ValueSource = 'nom_det'
              StartValues.DateTime = True
              StartValues.Name = 'Start'
              StartValues.Multiplier = 1.000000000000000000
              StartValues.Order = loAscending
              StartValues.ValueSource = 'DIN'
              EndValues.DateTime = True
              EndValues.Name = 'End'
              EndValues.Multiplier = 1.000000000000000000
              EndValues.Order = loNone
              EndValues.ValueSource = 'DTO'
              NextTask.DateTime = False
              NextTask.Name = 'NextTask'
              NextTask.Multiplier = 1.000000000000000000
              NextTask.Order = loNone
              NextTask.ValueSource = 'F_TIME_P'
            end
          end
        end
        object tsOrd: TTabSheet
          Caption = #1047#1072#1082#1072#1079#1099
          ImageIndex = 4
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 25
            Height = 481
            Align = alLeft
            TabOrder = 0
            object SpeedButton4: TSpeedButton
              Left = 1
              Top = 0
              Width = 23
              Height = 22
              Hint = #1042' Excel '#1089#1077#1090#1082#1080
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                77777777777777700000000000000006666008888888806EEF0770E6666606EE
                F077770E66606EEF06077770E606EEF000077777006EEF077777777706EEF007
                777777706EEF068077777706EEF0E6680777706EEF070E6680770FFFF07770EE
                EE07000007777700000777777777777777777777777777777777}
              OnClick = SpeedButton3Click
            end
          end
          object pcGraf_Order: TPageControl
            Left = 25
            Top = 0
            Width = 1091
            Height = 481
            ActivePage = tsOrd_tp
            Align = alClient
            TabOrder = 1
            object tsOrd_tp: TTabSheet
              Caption = #1055#1086' '#1087#1083#1072#1085#1072#1084
              object Splitter5: TSplitter
                Left = 392
                Top = 0
                Height = 457
              end
              object dbg20: TDBGridEh
                Left = 0
                Top = 0
                Width = 392
                Height = 457
                Align = alLeft
                DataSource = dsRep_Ord
                Flat = True
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -11
                FooterFont.Name = 'MS Sans Serif'
                FooterFont.Style = []
                FooterRowCount = 1
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
                SumList.Active = True
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
                    FieldName = 'DT'
                    Footers = <>
                    Width = 135
                  end
                  item
                    EditButtons = <>
                    FieldName = 'F_TIME1'
                    Footer.DisplayFormat = '### ### ##0.00'
                    Footer.FieldName = 'F_TIME1'
                    Footer.ValueType = fvtSum
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'F_TIME2'
                    Footer.DisplayFormat = '### ### ##0.00'
                    Footer.FieldName = 'F_TIME2'
                    Footer.ValueType = fvtSum
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'F_TIME3'
                    Footer.DisplayFormat = '### ### ##0.00'
                    Footer.FieldName = 'F_TIME3'
                    Footer.ValueType = fvtSum
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NAME_ORD'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'N_ORDER'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NAME_PTYPE'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_ORDER'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'id_nom'
                    Footers = <>
                  end>
              end
              object DBChart4: TDBChart
                Left = 395
                Top = 0
                Width = 696
                Height = 457
                BackWall.Brush.Color = clWhite
                BackWall.Brush.Style = bsClear
                Title.Text.Strings = (
                  'TDBChart')
                BottomAxis.Title.Caption = #8470' '#1079#1072#1082#1072#1079#1072
                LeftAxis.Title.Caption = #1042#1088#1077#1084#1103
                Legend.Alignment = laBottom
                Align = alClient
                TabOrder = 1
                object Series4: TBarSeries
                  Marks.ArrowLength = 20
                  Marks.Visible = False
                  DataSource = qRep_Ord
                  PercentFormat = '##0.##,%'
                  SeriesColor = clGreen
                  Title = #1055#1083#1072#1085
                  XLabelsSource = 'N_ORDER'
                  XValues.DateTime = False
                  XValues.Name = 'X'
                  XValues.Multiplier = 1.000000000000000000
                  XValues.Order = loAscending
                  XValues.ValueSource = 'id_nom'
                  YValues.DateTime = False
                  YValues.Name = 'Bar'
                  YValues.Multiplier = 1.000000000000000000
                  YValues.Order = loNone
                  YValues.ValueSource = 'F_TIME1'
                end
                object Series3: TBarSeries
                  Marks.ArrowLength = 20
                  Marks.Visible = False
                  DataSource = qRep_Ord
                  PercentFormat = '##0.##,%'
                  SeriesColor = clRed
                  Title = #1042#1085#1077' '#1087#1083#1072#1085#1072
                  XLabelsSource = 'N_ORDER'
                  XValues.DateTime = False
                  XValues.Name = 'X'
                  XValues.Multiplier = 1.000000000000000000
                  XValues.Order = loAscending
                  XValues.ValueSource = 'id_nom'
                  YValues.DateTime = False
                  YValues.Name = 'Bar'
                  YValues.Multiplier = 1.000000000000000000
                  YValues.Order = loNone
                  YValues.ValueSource = 'F_TIME2'
                end
                object Series5: TBarSeries
                  Marks.ArrowLength = 20
                  Marks.Visible = False
                  DataSource = qRep_Ord
                  PercentFormat = '##0.##,%'
                  SeriesColor = clYellow
                  Title = #1041#1077#1079' '#1079#1072#1082#1072#1079#1072
                  XValues.DateTime = False
                  XValues.Name = 'X'
                  XValues.Multiplier = 1.000000000000000000
                  XValues.Order = loAscending
                  XValues.ValueSource = 'id_nom'
                  YValues.DateTime = False
                  YValues.Name = 'Bar'
                  YValues.Multiplier = 1.000000000000000000
                  YValues.Order = loNone
                  YValues.ValueSource = 'F_TIME3'
                end
              end
            end
            object tsOrd_Sum: TTabSheet
              Caption = #1055#1086' '#1079#1072#1082#1072#1079#1072#1084
              ImageIndex = 1
              object dbg21: TDBGridEh
                Left = 0
                Top = 0
                Width = 1091
                Height = 457
                Align = alClient
                DataSource = dsRep_Ord_Sum
                Flat = True
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -11
                FooterFont.Name = 'MS Sans Serif'
                FooterFont.Style = []
                FooterRowCount = 1
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
                SumList.Active = True
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
                    FieldName = 'N_ORDER'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NAME_ORD'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NAME_PTYPE'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'SF1'
                    Footer.DisplayFormat = '### ### ### ##0.0'
                    Footer.ValueType = fvtSum
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'SF2'
                    Footer.DisplayFormat = '### ### ### ##0.0'
                    Footer.ValueType = fvtSum
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'nSF1_SF2'
                    Footer.DisplayFormat = '### ### ### ##0.0'
                    Footers = <>
                  end
                  item
                    Color = 16776176
                    EditButtons = <>
                    FieldName = 'SF3'
                    Footer.DisplayFormat = '### ### ### ##0.0'
                    Footers = <>
                    Width = 80
                  end
                  item
                    Color = 16776176
                    EditButtons = <>
                    FieldName = 'SF4'
                    Footer.DisplayFormat = '### ### ### ##0.00'
                    Footer.ValueType = fvtSum
                    Footers = <>
                    Width = 112
                  end
                  item
                    Color = 16776176
                    EditButtons = <>
                    FieldName = 'PR'
                    Footer.DisplayFormat = '### ##0.00'
                    Footer.ValueType = fvtAvg
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'SF3_'
                    Footer.DisplayFormat = '### ### ### ##0.0'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'SF4_'
                    Footer.DisplayFormat = '### ### ### ##0.00'
                    Footer.ValueType = fvtSum
                    Footers = <>
                    Width = 93
                  end
                  item
                    EditButtons = <>
                    FieldName = 'PR_'
                    Footer.DisplayFormat = '### ### ### ##0.0'
                    Footer.ValueType = fvtAvg
                    Footers = <>
                  end
                  item
                    Color = 16776176
                    EditButtons = <>
                    FieldName = 'TOTAL_OPER_PEO'
                    Footer.DisplayFormat = '### ### ### ##0.0'
                    Footer.ValueType = fvtSum
                    Footers = <>
                    Width = 95
                  end
                  item
                    EditButtons = <>
                    FieldName = 'TOTAL_OPER_KD'
                    Footer.DisplayFormat = '### ### ### ##0.0'
                    Footer.ValueType = fvtSum
                    Footers = <>
                    Width = 103
                  end
                  item
                    Color = 16776176
                    EditButtons = <>
                    FieldName = 'ID_ESTIMATE'
                    Footers = <>
                    Width = 57
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_ESTIMATE_KD'
                    Footers = <>
                    Width = 54
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_ORDER'
                    Footers = <>
                  end>
              end
            end
          end
        end
        object ts_Order: TTabSheet
          Caption = #1047#1072#1082#1072#1079#1099' '#1087#1086' '#1060#1048#1054
          ImageIndex = 3
          object Splitter4: TSplitter
            Left = 489
            Top = 0
            Height = 485
          end
          object dbg17: TDBGridEh
            Left = 25
            Top = 0
            Width = 464
            Height = 485
            Align = alLeft
            DataSource = dsRepDay_Order
            Flat = True
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'PL'
                Footers = <>
                Title.EndEllipsis = True
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'F_TIME'
                Footer.DisplayFormat = '### ### ##0.00'
                Footer.FieldName = 'F_TIME'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'D_OUT'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'NAME_PTYPE'
                Footers = <>
                Width = 138
              end
              item
                EditButtons = <>
                FieldName = 'N_ORDER'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'NAME_ORD'
                Footers = <>
                Title.EndEllipsis = True
                Width = 167
              end
              item
                EditButtons = <>
                FieldName = 'ID_ORDER'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'ID_P'
                Footers = <>
                Title.EndEllipsis = True
              end>
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 25
            Height = 485
            Align = alLeft
            TabOrder = 1
            object SpeedButton3: TSpeedButton
              Left = 1
              Top = 0
              Width = 23
              Height = 22
              Hint = #1042' Excel '#1089#1077#1090#1082#1080
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                77777777777777700000000000000006666008888888806EEF0770E6666606EE
                F077770E66606EEF06077770E606EEF000077777006EEF077777777706EEF007
                777777706EEF068077777706EEF0E6680777706EEF070E6680770FFFF07770EE
                EE07000007777700000777777777777777777777777777777777}
              OnClick = SpeedButton3Click
            end
          end
          object dbg18: TDBGridEh
            Left = 492
            Top = 0
            Width = 632
            Height = 485
            Align = alClient
            DataSource = dsRep_Order
            Flat = True
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
            SumList.Active = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'PL'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'F_TIME'
                Footer.DisplayFormat = '### ### ##0.00'
                Footer.FieldName = 'F_TIME'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'NAME_PTYPE'
                Footers = <>
                Width = 117
              end
              item
                EditButtons = <>
                FieldName = 'NAME_ORD'
                Footers = <>
                Title.EndEllipsis = True
                Width = 168
              end
              item
                EditButtons = <>
                FieldName = 'N_ORDER'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'ID_ORDER'
                Footers = <>
                Title.EndEllipsis = True
              end>
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1124
        Height = 134
        Align = alTop
        Caption = 'Panel3'
        TabOrder = 1
        object Splitter3: TSplitter
          Left = 281
          Top = 1
          Height = 132
        end
        object dbg15: TDBGridEh
          Left = 284
          Top = 1
          Width = 839
          Height = 132
          Align = alClient
          DataSource = dsRep_Plan_Day
          DrawMemoText = True
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          SumList.Active = True
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
              FieldName = 'FIO'
              Footers = <>
              Title.EndEllipsis = True
              Title.SortIndex = 1
              Title.SortMarker = smDownEh
              Title.TitleButton = True
              Width = 191
            end
            item
              EditButtons = <>
              FieldName = 'NAME_POST'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 174
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
              FieldName = 'NAME_PTYPE'
              Footers = <>
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
              FieldName = 'NAME_ORD'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 229
            end
            item
              EditButtons = <>
              FieldName = 'ID_OBJECT'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'NM'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 210
            end
            item
              EditButtons = <>
              FieldName = 'STEP'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 25
            end
            item
              EditButtons = <>
              FieldName = 'NAME_OPER'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'SHOTNAME'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 134
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
              FieldName = 'DIN'
              Footers = <>
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'DTO'
              Footers = <>
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'TM'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'F_TIME_P'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'REM'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 184
            end
            item
              EditButtons = <>
              FieldName = 'ID_P'
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
              FieldName = 'OBJ_TYPE'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'NAME_SHIFT'
              Footers = <>
              Width = 198
            end
            item
              EditButtons = <>
              FieldName = 'ID_OPERATION'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'ID_PROD_PLAN'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'ID_PROD_PLAN_P'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'P_TIME'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'nom_det'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'id_nom'
              Footers = <>
            end>
        end
        object dbg16: TDBGridEh
          Left = 1
          Top = 1
          Width = 280
          Height = 132
          Align = alLeft
          DataSource = dsPers
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
          Columns = <
            item
              EditButtons = <>
              FieldName = 'FIO'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ID_P'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'nom'
              Footers = <>
            end>
        end
      end
    end
    object ts_Sum_Tab_List: TTabSheet
      Caption = #1057#1091#1084#1084#1072#1088#1085#1086#1077' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      ImageIndex = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 28
        Height = 648
        Align = alLeft
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 3
          Top = 25
          Width = 23
          Height = 22
          Hint = #1042' Excel '#1089#1077#1090#1082#1080
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            77777777777777700000000000000006666008888888806EEF0770E6666606EE
            F077770E66606EEF06077770E606EEF000077777006EEF077777777706EEF007
            777777706EEF068077777706EEF0E6680777706EEF070E6680770FFFF07770EE
            EE07000007777700000777777777777777777777777777777777}
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 3
          Top = 3
          Width = 23
          Height = 22
          Hint = 
            #1042#1099#1073#1086#1088#1082#1072' '#1079#1072' '#1087#1077#1088#1080#1086#1076#13#1042#1099#1073#1088#1072#1085#1085#1099#1081' '#1075#1086#1076' '#13#1042#1099#1073#1088#1072#1085#1085#1099#1081' '#1084#1077#1089#1103#1094' - '#1089' '#1103#1085#1074#1072#1088#1103' '#1087#1086' '#1074 +
            #1099#1073#1088#1072#1085#1085#1099#1081' '#1084#1077#1089#1103#1094
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777770877777
            7777777778087777777777777700877777777777770B0877777777770000B087
            777777770BBFBB087777777770FB00007777777770BFB08777777700000BFB08
            7777770FBFBFBFB087777770FBFB000077777770BFBFB087777777770BFBFB08
            777777770FFFBFF08777777770FBFFBF08777777700000000077}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton2Click
        end
        object SpeedButton5: TSpeedButton
          Left = 3
          Top = 56
          Width = 23
          Height = 22
          Hint = #1055#1086' '#1074#1089#1077#1084' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103#1084
          Caption = 'All'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton5Click
        end
      end
      object pcTabel: TPageControl
        Left = 28
        Top = 0
        Width = 1096
        Height = 648
        ActivePage = tsSum_Order
        Align = alClient
        TabOrder = 1
        object tsSum_Tabel: TTabSheet
          Caption = #1058#1072#1073#1077#1083#1100
          object dbg3: TDBGridEh
            Left = 0
            Top = 0
            Width = 1088
            Height = 620
            Align = alClient
            DataSource = dsSum_Tab_List
            Flat = True
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnGetCellParams = dbg3GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'FIO'
                Footers = <>
                Width = 208
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL'
                Footers = <>
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL1'
                Footers = <>
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL2'
                Footers = <>
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL3'
                Footers = <>
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL4'
                Footers = <>
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL5'
                Footers = <>
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL6'
                Footers = <>
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL7'
                Footers = <>
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL8'
                Footers = <>
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL9'
                Footers = <>
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL10'
                Footers = <>
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL11'
                Footers = <>
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL12'
                Footers = <>
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'NAME_AREA'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'NOM'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'ID_P_AREA'
                Footers = <>
              end>
          end
        end
        object tsSum_Order: TTabSheet
          Caption = #1047#1072#1082#1072#1079#1099
          ImageIndex = 1
          object dbg19: TDBGridEh
            Left = 0
            Top = 0
            Width = 1088
            Height = 620
            Align = alClient
            DataSource = dsRep_Order_Sum
            Flat = True
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
            SumList.Active = True
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
                FieldName = 'FIO'
                Footers = <>
                Width = 237
              end
              item
                EditButtons = <>
                FieldName = 'F_TIME'
                Footer.DisplayFormat = '### ### ##0.00'
                Footer.FieldName = 'F_TIME'
                Footer.ValueType = fvtSum
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'NAME_PTYPE'
                Footers = <>
                Width = 181
              end
              item
                EditButtons = <>
                FieldName = 'N_ORDER'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'NAME_ORD'
                Footers = <>
                Width = 267
              end
              item
                EditButtons = <>
                FieldName = 'ID_ORDER'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'ID_P'
                Footers = <>
              end>
          end
        end
        object tsTabPers: TTabSheet
          Caption = #1055#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072#1084
          ImageIndex = 2
          object dbgTabPers: TDBGridEh
            Left = 0
            Top = 0
            Width = 1096
            Height = 624
            Align = alClient
            DataSource = dsDay_TabList
            Flat = True
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            FrozenCols = 4
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnGetCellParams = dbgTabPersGetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'FIO'
                Footers = <>
                Width = 134
              end
              item
                EditButtons = <>
                FieldName = 'NAME_AREA'
                Footers = <>
                Width = 159
              end
              item
                EditButtons = <>
                FieldName = 'NOM'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D1'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D2'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D3'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D4'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D5'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D6'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D7'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D8'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D9'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D10'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D11'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D12'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D13'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D14'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D15'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D16'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D17'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D18'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D19'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D20'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D21'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D22'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D23'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D24'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D25'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D26'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D27'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D28'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D29'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D30'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'D31'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'ID_P_AREA'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'ID_P'
                Footers = <>
              end>
          end
        end
      end
    end
  end
  object pnRep: TPanel
    Left = 576
    Top = 168
    Width = 473
    Height = 317
    Caption = 'pnRep'
    TabOrder = 2
    object clb: TCheckListBox
      Left = 1
      Top = 1
      Width = 471
      Height = 168
      Align = alTop
      ItemHeight = 13
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 128
      Top = 192
      Width = 75
      Height = 25
      Caption = #1054#1090#1095#1105#1090
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 216
      Top = 192
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 192
      Width = 75
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1105
      TabOrder = 3
      OnClick = BitBtn3Click
    end
  end
  object qSum_T: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select sum(VAL)'
      'from TAB_POS'
      'where ID_TAB = :tb1 and ID_P = :p1 and ID_TAB_COEFF >0')
    Left = 504
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tb1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end>
    object qSum_TSUM: TIBBCDField
      FieldName = 'SUM'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
  end
  object dsSum_Y: TDataSource
    DataSet = qSum_T
    Left = 528
    Top = 144
  end
  object frxReport1: TfrxReport
    Version = '3.23.18'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39321.611122500000000000
    ReportOptions.LastChange = 39321.611122500000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 568
    Top = 173
    Datasets = <
      item
        DataSet = frxTab
        DataSetName = 'frxTab'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object DBCross1: TfrxDBCrossView
        Left = 7.559060000000000000
        Top = 11.338590000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        DownThenAcross = False
        CellFields.Strings = (
          'VAL')
        ColumnFields.Strings = (
          'ID_DAY')
        DataSet = frxTab
        DataSetName = 'frxTab'
        RowFields.Strings = (
          'ID_P')
        Memos = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
          662D38223F3E3C63726F73733E3C63656C6C6D656D6F733E3C546672784D656D
          6F56696577204C6566743D2239312220546F703D223332222057696474683D22
          353422204865696768743D2232322220416C6C6F7745787072657373696F6E73
          3D2246616C736522204672616D652E5479703D2231352220476170583D223322
          20476170593D2233222048416C69676E3D226861526967687422205374796C65
          3D2263656C6C222056416C69676E3D22766143656E7465722220546578743D22
          30222F3E3C2F63656C6C6D656D6F733E3C636F6C756D6E6D656D6F733E3C5466
          72784D656D6F56696577205461673D2231303022204C6566743D223931222054
          6F703D223130222057696474683D22353422204865696768743D223232222041
          6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
          727365743D22312220466F6E742E436F6C6F723D222D31363737373230382220
          466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269
          616C2220466F6E742E5374796C653D223022204672616D652E5479703D223135
          2220476170583D22332220476170593D2233222048416C69676E3D2268614365
          6E7465722220506172656E74466F6E743D2246616C736522205374796C653D22
          636F6C756D6E222056416C69676E3D22766143656E7465722220546578743D22
          222F3E3C2F636F6C756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D
          6F733E3C546672784D656D6F56696577205461673D2233303022204C6566743D
          223134352220546F703D223130222057696474683D2238312220486569676874
          3D2232322220416C6C6F7745787072657373696F6E733D2246616C7365222046
          6F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230222046
          6F6E742E4865696768743D222D31332220466F6E742E4E616D653D2241726961
          6C2220466F6E742E5374796C653D223122204672616D652E5479703D22313522
          20476170583D22332220476170593D2233222048416C69676E3D22686143656E
          7465722220506172656E74466F6E743D2246616C736522205374796C653D2263
          6F6C6772616E64222056416C69676E3D22766143656E7465722220546578743D
          224772616E6420546F74616C222F3E3C2F636F6C756D6E746F74616C6D656D6F
          733E3C726F776D656D6F733E3C546672784D656D6F56696577205461673D2232
          303022204C6566743D2231302220546F703D223332222057696474683D223831
          22204865696768743D2232322220416C6C6F7745787072657373696F6E733D22
          46616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C
          6F723D222D31363737373230382220466F6E742E4865696768743D222D313322
          20466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2230
          22204672616D652E5479703D2231352220476170583D22332220476170593D22
          33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
          2246616C736522205374796C653D22726F77222056416C69676E3D2276614365
          6E7465722220546578743D22222F3E3C2F726F776D656D6F733E3C726F77746F
          74616C6D656D6F733E3C546672784D656D6F56696577205461673D2234303022
          204C6566743D2231302220546F703D223534222057696474683D223831222048
          65696768743D2232322220416C6C6F7745787072657373696F6E733D2246616C
          73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D
          22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D
          22417269616C2220466F6E742E5374796C653D223122204672616D652E547970
          3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
          686143656E7465722220506172656E74466F6E743D2246616C73652220537479
          6C653D22726F776772616E64222056416C69676E3D22766143656E7465722220
          546578743D224772616E6420546F74616C222F3E3C2F726F77746F74616C6D65
          6D6F733E3C63656C6C66756E6374696F6E733E3C6974656D20302F3E3C2F6365
          6C6C66756E6374696F6E733E3C636F6C756D6E736F72743E3C6974656D20302F
          3E3C2F636F6C756D6E736F72743E3C726F77736F72743E3C6974656D20302F3E
          3C2F726F77736F72743E3C2F63726F73733E}
      end
    end
  end
  object frxTab: TfrxDBDataset
    UserName = 'frxTab'
    CloseDataSource = False
    DataSet = qTab
    Left = 640
    Top = 141
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 608
    Top = 205
  end
  object qTab: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select EXTRACT(DAY FROM s.TAB_DAY) AS ID_DAY,'
      's.id_p,s.ID_TAB_COEFF, s.COEFF, s.val, t.shortname'
      'from TAB_POS s , tab_coeffs t'
      'where ID_TAB = 311534 '
      'and s.id_tab_coeff = t.id_tab_coeff'
      'order by s.id_p,1, s.ID_TAB_COEFF')
    Left = 568
    Top = 205
  end
  object qRep_Tab: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select * from rep_tab(1099764)')
    Left = 808
    Top = 389
    object qRep_TabID_TAB: TIntegerField
      FieldName = 'ID_TAB'
      Origin = '"REP_TAB"."ID_TAB"'
    end
    object qRep_TabID_P_AREA: TIntegerField
      FieldName = 'ID_P_AREA'
      Origin = '"REP_TAB"."ID_P_AREA"'
    end
    object qRep_TabID_YEAR: TSmallintField
      FieldName = 'ID_YEAR'
      Origin = '"REP_TAB"."ID_YEAR"'
    end
    object qRep_TabID_MONTH: TSmallintField
      FieldName = 'ID_MONTH'
      Origin = '"REP_TAB"."ID_MONTH"'
    end
    object qRep_TabTAB_DAY: TDateField
      FieldName = 'TAB_DAY'
      Origin = '"REP_TAB"."TAB_DAY"'
    end
    object qRep_TabNOM_DAY: TSmallintField
      FieldName = 'NOM_DAY'
      Origin = '"REP_TAB"."NOM_DAY"'
    end
    object qRep_TabID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"REP_TAB"."ID_P"'
    end
    object qRep_TabID_TAB_COEFF: TIntegerField
      FieldName = 'ID_TAB_COEFF'
      Origin = '"REP_TAB"."ID_TAB_COEFF"'
    end
    object qRep_TabCOEFF: TFloatField
      FieldName = 'COEFF'
      Origin = '"REP_TAB"."COEFF"'
    end
    object qRep_TabVAL: TFloatField
      FieldName = 'VAL'
      Origin = '"REP_TAB"."VAL"'
    end
    object qRep_TabSHORTNAME_COEFF: TIBStringField
      FieldName = 'SHORTNAME_COEFF'
      Origin = '"REP_TAB"."SHORTNAME_COEFF"'
      Size = 4
    end
    object qRep_TabFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"REP_TAB"."FIO"'
      Size = 60
    end
    object qRep_TabNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"REP_TAB"."NAME"'
      Size = 50
    end
    object qRep_TabD1: TFloatField
      FieldName = 'D1'
      Origin = '"REP_TAB"."D1"'
    end
    object qRep_TabD2: TFloatField
      FieldName = 'D2'
      Origin = '"REP_TAB"."D2"'
    end
    object qRep_TabD3: TFloatField
      FieldName = 'D3'
      Origin = '"REP_TAB"."D3"'
    end
    object qRep_TabD4: TFloatField
      FieldName = 'D4'
      Origin = '"REP_TAB"."D4"'
    end
    object qRep_TabD5: TFloatField
      FieldName = 'D5'
      Origin = '"REP_TAB"."D5"'
    end
    object qRep_TabD6: TFloatField
      FieldName = 'D6'
      Origin = '"REP_TAB"."D6"'
    end
    object qRep_TabD7: TFloatField
      FieldName = 'D7'
      Origin = '"REP_TAB"."D7"'
    end
    object qRep_TabD8: TFloatField
      FieldName = 'D8'
      Origin = '"REP_TAB"."D8"'
    end
    object qRep_TabD9: TFloatField
      FieldName = 'D9'
      Origin = '"REP_TAB"."D9"'
    end
    object qRep_TabD10: TFloatField
      FieldName = 'D10'
      Origin = '"REP_TAB"."D10"'
    end
    object qRep_TabD11: TFloatField
      FieldName = 'D11'
      Origin = '"REP_TAB"."D11"'
    end
    object qRep_TabD12: TFloatField
      FieldName = 'D12'
      Origin = '"REP_TAB"."D12"'
    end
    object qRep_TabD13: TFloatField
      FieldName = 'D13'
      Origin = '"REP_TAB"."D13"'
    end
    object qRep_TabD14: TFloatField
      FieldName = 'D14'
      Origin = '"REP_TAB"."D14"'
    end
    object qRep_TabD15: TFloatField
      FieldName = 'D15'
      Origin = '"REP_TAB"."D15"'
    end
    object qRep_TabD16: TFloatField
      FieldName = 'D16'
      Origin = '"REP_TAB"."D16"'
    end
    object qRep_TabD17: TFloatField
      FieldName = 'D17'
      Origin = '"REP_TAB"."D17"'
    end
    object qRep_TabD18: TFloatField
      FieldName = 'D18'
      Origin = '"REP_TAB"."D18"'
    end
    object qRep_TabD19: TFloatField
      FieldName = 'D19'
      Origin = '"REP_TAB"."D19"'
    end
    object qRep_TabD20: TFloatField
      FieldName = 'D20'
      Origin = '"REP_TAB"."D20"'
    end
    object qRep_TabD21: TFloatField
      FieldName = 'D21'
      Origin = '"REP_TAB"."D21"'
    end
    object qRep_TabD22: TFloatField
      FieldName = 'D22'
      Origin = '"REP_TAB"."D22"'
    end
    object qRep_TabD23: TFloatField
      FieldName = 'D23'
      Origin = '"REP_TAB"."D23"'
    end
    object qRep_TabD24: TFloatField
      FieldName = 'D24'
      Origin = '"REP_TAB"."D24"'
    end
    object qRep_TabD25: TFloatField
      FieldName = 'D25'
      Origin = '"REP_TAB"."D25"'
    end
    object qRep_TabD26: TFloatField
      FieldName = 'D26'
      Origin = '"REP_TAB"."D26"'
    end
    object qRep_TabD27: TFloatField
      FieldName = 'D27'
      Origin = '"REP_TAB"."D27"'
    end
    object qRep_TabD28: TFloatField
      FieldName = 'D28'
      Origin = '"REP_TAB"."D28"'
    end
    object qRep_TabD29: TFloatField
      FieldName = 'D29'
      Origin = '"REP_TAB"."D29"'
    end
    object qRep_TabD30: TFloatField
      FieldName = 'D30'
      Origin = '"REP_TAB"."D30"'
    end
    object qRep_TabD31: TFloatField
      FieldName = 'D31'
      Origin = '"REP_TAB"."D31"'
    end
    object qRep_TabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = '"REP_TAB"."TOTAL"'
    end
    object qRep_TabTOTAL_ALL: TFloatField
      FieldName = 'TOTAL_ALL'
      Origin = '"REP_TAB"."TOTAL_ALL"'
    end
    object qRep_TabNAME_AREA: TIBStringField
      FieldName = 'NAME_AREA'
      Origin = '"REP_TAB"."NAME_AREA"'
      Size = 60
    end
  end
  object frxRep_Tab: TfrxDBDataset
    UserName = 'frxRep_Tab'
    CloseDataSource = False
    DataSet = qRep_Tab
    Left = 832
    Top = 285
  end
  object frxReport2: TfrxReport
    Version = '3.23.18'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39322.551233738400000000
    ReportOptions.LastChange = 39322.551233738400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 752
    Top = 437
    Datasets = <
      item
        DataSet = frxRep_Tab
        DataSetName = 'frxRep_Tab'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 4.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      VGuides.Strings = (
        '0')
      object PageHeader1: TfrxPageHeader
        Height = 56.692950000000000000
        Top = 22.677180000000000000
        Width = 1088.504640000000000000
        object Memo1: TfrxMemoView
          Left = 37.795300000000000000
          Top = -0.000000000000000108
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1118#1056#176#1056#177#1056#181#1056#187#1057#1034' '#1057#1026#1056#176#1056#177#1056#1109#1057#8225#1056#181#1056#1110#1056#1109' '#1056#1030#1057#1026#1056#181#1056#1112#1056#181#1056#1029#1056#1105)
        end
        object Memo37: TfrxMemoView
          Top = 37.795300000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164#1056#152#1056#1115)
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 124.724490000000000000
          Top = 37.795300000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1109#1056#187#1056#182#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034)
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 253.228510000000000000
          Top = 37.795300000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113)
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 268.346630000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 294.803340000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 321.260050000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 347.716760000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 374.173470000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 400.630180000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 427.086890000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 453.543600000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 480.000310000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '9')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 506.457020000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 532.913730000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '11')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 559.370440000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '12')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 585.827150000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '13')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 612.283860000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '14')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 638.740570000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '15')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 665.197280000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '16')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 691.653990000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '17')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 718.110700000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '18')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 744.567410000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '19')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 771.024120000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '20')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 797.480830000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '21')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 823.937540000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '22')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 850.394250000000000000
          Top = 37.795300000000000000
          Width = 26.456692913385800000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '23')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 876.850960000000000000
          Top = 37.795300000000000000
          Width = 26.456692913385800000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '24')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 903.307670000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '25')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 929.764380000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '26')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 956.221090000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '27')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 982.677800000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '28')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 1009.134510000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '29')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 1035.591220000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '30')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 1062.047930000000000000
          Top = 37.795300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '31')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 30.236240000000000000
        ParentFont = False
        Top = 188.976500000000000000
        Width = 1088.504640000000000000
        DataSet = frxRep_Tab
        DataSetName = 'frxRep_Tab'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = -0.000000000000012740
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Memo.UTF8 = (
            '[frxRep_Tab."FIO"]')
          SuppressRepeated = True
        end
        object Memo4: TfrxMemoView
          Left = 128.504020000000000000
          Top = -0.000000000000012740
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxRep_Tab."NAME"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo6: TfrxMemoView
          Left = 124.724490000000000000
          Top = -0.000000000000012740
          Width = 3.779530000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Memo7: TfrxMemoView
          Left = -0.000000000000000444
          Top = -0.000000000000012740
          Width = 7.559057560000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Memo8: TfrxMemoView
          Left = 253.228510000000000000
          Top = -0.000000000000012740
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'SHORTNAME_COEFF'
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxRep_Tab."SHORTNAME_COEFF"]')
        end
        object Memo5: TfrxMemoView
          Left = 268.346630000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D1"> <>0,<frxRep_Tab."D1">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 294.803340000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D2"> <>0,<frxRep_Tab."D2">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 321.260050000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D3"> <>0,<frxRep_Tab."D3">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 347.716760000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D4"> <>0,<frxRep_Tab."D4">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 374.173470000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D5"> <>0,<frxRep_Tab."D5">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 400.630180000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D6"> <>0,<frxRep_Tab."D6">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 427.086890000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D7"> <>0,<frxRep_Tab."D7">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 453.543600000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D8"> <>0,<frxRep_Tab."D8">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 480.000310000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D9"> <>0,<frxRep_Tab."D9">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 506.457020000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D10"> <>0,<frxRep_Tab."D10">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 532.913730000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D1"> <>0,<frxRep_Tab."D11">,'#39#39')]'
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 559.370440000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D12"> <>0,<frxRep_Tab."D12">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 585.827150000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D13"> <>0,<frxRep_Tab."D13">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 612.283860000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D14"> <>0,<frxRep_Tab."D14">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 638.740570000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D15"> <>0,<frxRep_Tab."D15">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 665.197280000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D16"> <>0,<frxRep_Tab."D16">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 691.653990000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D17"> <>0,<frxRep_Tab."D17">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 718.110700000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D18"> <>0,<frxRep_Tab."D18">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 744.567410000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D19"> <>0,<frxRep_Tab."D19">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 771.024120000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D20"> <>0,<frxRep_Tab."D20">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 797.480830000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D21"> <>0,<frxRep_Tab."D22">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 823.937540000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D22"> <>0,<frxRep_Tab."D22">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 850.394250000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D23"> <>0,<frxRep_Tab."D23">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 876.850960000000000000
          Top = -0.000000000000012740
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D24"> <>0,<frxRep_Tab."D24">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 903.307670000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D25"> <>0,<frxRep_Tab."D25">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 929.764380000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D26"> <>0,<frxRep_Tab."D26">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 956.221090000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D27"> <>0,<frxRep_Tab."D27">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 982.677800000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D28"> <>0,<frxRep_Tab."D28">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 1009.134510000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D29"> <>0,<frxRep_Tab."D29">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 1035.591220000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D30"> <>0,<frxRep_Tab."D30">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 1062.047930000000000000
          Top = -0.000000000000012740
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D31"> <>0,<frxRep_Tab."D31">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 219.212740000000000000
          Top = -0.000000000000012740
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'TOTAL'
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Tab."TOTAL"]')
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 15.118120000000000000
        Top = 128.504020000000000000
        Width = 1088.504640000000000000
        Condition = 'frxRep_Tab."ID_P"'
        object Memo3: TfrxMemoView
          Top = -0.000000000000002970
          Width = 1088.504640000000000000
          Height = 15.118120000000000000
          Color = cl3DLight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 3.779530000000000000
          Top = -0.000000000000002970
          Width = 94.488250000000000000
          Height = 18.897650000000000000
        end
        object Memo75: TfrxMemoView
          Left = 188.976500000000000000
          Top = 3.779529999999991000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_ALL'
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Memo.UTF8 = (
            '[frxRep_Tab."TOTAL_ALL"]')
        end
      end
    end
  end
  object frxRepTab1: TfrxReport
    Version = '3.23.18'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39322.739361446800000000
    ReportOptions.LastChange = 41015.417959942130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 736
    Top = 189
    Datasets = <
      item
        DataSet = frxRep_Tab
        DataSetName = 'frxRep_Tab'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Memo1: TfrxMemoView
          Left = 109.606370000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1118#1056#176#1056#177#1056#181#1056#187#1057#1034' '#1057#1026#1056#176#1056#177#1056#1109#1057#8225#1056#181#1056#1110#1056#1109' '#1056#1030#1057#1026#1056#181#1056#1112#1056#181#1056#1029#1056#1105' '#1056#1029#1056#176' ')
        end
        object Memo37: TfrxMemoView
          Top = 45.354360000000010000
          Width = 204.094620000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164#1056#152#1056#1115'/'#1056#8221#1056#1109#1056#187#1056#182#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 249.448980000000000000
          Top = 45.354360000000010000
          Width = 15.118120000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 264.567100000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 291.023810000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 317.480520000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 343.937230000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 370.393940000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 396.850650000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 423.307360000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 449.764070000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 476.220780000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '9')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 502.677490000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 529.134200000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '11')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 555.590910000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '12')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 582.047620000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '13')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 608.504330000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '14')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 634.961040000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '15')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 661.417750000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '16')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 687.874460000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '17')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 714.331170000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '18')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 740.787880000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '19')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 767.244590000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '20')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 793.701300000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '21')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 820.158010000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '22')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 846.614720000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '23')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 873.071430000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '24')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 899.528140000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '25')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 925.984850000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '26')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 952.441560000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '27')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 978.898270000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '28')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 1005.354980000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '29')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 1031.811690000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '30')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 1058.268400000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '31')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 204.094620000000000000
          Top = 45.354360000000010000
          Width = 45.354360000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109
            #1057#8225#1056#176#1057#1027#1056#1109#1056#1030)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 298.582870000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'mmmm  yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxRep_Tab."TAB_DAY"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 483.779840000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          DataField = 'NAME_AREA'
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxRep_Tab."NAME_AREA"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 971.339210000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'.'#1074#8222#8211' [Page#]')
        end
        object Memo82: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[<Date>]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = -0.000000000000000444
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Time]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 302.362400000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Memo.UTF8 = (
            '[frxRep_Tab."ID_MONTH"]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 158.740260000000000000
        Width = 1084.725110000000000000
        Condition = 'frxRep_Tab."ID_P"'
        object Memo75: TfrxMemoView
          Left = 204.094620000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Color = clScrollBar
          DataField = 'TOTAL_ALL'
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Tab."TOTAL_ALL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Color = cl3DLight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [Line]  [frxRep_Tab."FIO"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo2: TfrxMemoView
          Left = 249.448818900000000000
          Width = 835.276130000000000000
          Height = 18.897650000000000000
          Color = cl3DLight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 200.315090000000000000
        Width = 1084.725110000000000000
        DataSet = frxRep_Tab
        DataSetName = 'frxRep_Tab'
        RowCount = 0
        Stretched = True
        object Memo4: TfrxMemoView
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxRep_Tab."NAME"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo7: TfrxMemoView
          Width = 7.559057560000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Memo8: TfrxMemoView
          Left = 249.448980000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'SHORTNAME_COEFF'
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Tab."SHORTNAME_COEFF"]')
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 264.567100000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D1"> <>0,<frxRep_Tab."D1">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 291.023810000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D2"> <>0,<frxRep_Tab."D2">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 317.480520000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D3"> <>0,<frxRep_Tab."D3">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 343.937230000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D4"> <>0,<frxRep_Tab."D4">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 370.393940000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D5"> <>0,<frxRep_Tab."D5">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 396.850650000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D6"> <>0,<frxRep_Tab."D6">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 423.307360000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D7"> <>0,<frxRep_Tab."D7">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 449.764070000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D8"> <>0,<frxRep_Tab."D8">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 476.220780000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D9"> <>0,<frxRep_Tab."D9">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 502.677490000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D10"> <>0,<frxRep_Tab."D10">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 529.134199999999900000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D11"> <>0,<frxRep_Tab."D11">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 555.590910000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D12"> <>0,<frxRep_Tab."D12">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 582.047620000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D13"> <>0,<frxRep_Tab."D13">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 608.504330000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D14"> <>0,<frxRep_Tab."D14">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 634.961040000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D15"> <>0,<frxRep_Tab."D15">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 661.417750000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D16"> <>0,<frxRep_Tab."D16">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 687.874460000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D17"> <>0,<frxRep_Tab."D17">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 714.331170000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D18"> <>0,<frxRep_Tab."D18">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 740.787880000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D19"> <>0,<frxRep_Tab."D19">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 767.244590000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D20"> <>0,<frxRep_Tab."D20">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 793.701300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D21"> <>0,<frxRep_Tab."D22">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 820.158010000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D22"> <>0,<frxRep_Tab."D22">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 846.614720000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D23"> <>0,<frxRep_Tab."D23">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 873.071430000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D24"> <>0,<frxRep_Tab."D24">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 899.528140000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D25"> <>0,<frxRep_Tab."D25">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 925.984850000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D26"> <>0,<frxRep_Tab."D26">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 952.441560000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D27"> <>0,<frxRep_Tab."D27">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 978.898270000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D28"> <>0,<frxRep_Tab."D28">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 1005.354980000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D29"> <>0,<frxRep_Tab."D29">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 1031.811690000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D30"> <>0,<frxRep_Tab."D30">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 1058.268400000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D31"> <>0,<frxRep_Tab."D31">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 204.094620000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'TOTAL'
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Tab."TOTAL"]')
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 83.149660000000000000
        Top = 279.685220000000000000
        Width = 1084.725110000000000000
        object Memo6: TfrxMemoView
          Left = 15.118120000000000000
          Top = 26.456709999999990000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1118#1056#176#1056#177#1056#181#1056#187#1057#1034' '#1057#1027#1056#1109#1057#1027#1057#8218#1056#176#1056#1030#1056#1105#1056#187':')
        end
        object Memo38: TfrxMemoView
          Left = 15.118120000000000000
          Top = 52.913419999999970000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1118#1056#176#1056#177#1056#181#1056#187#1057#1034' '#1057#1107#1057#8218#1056#1030#1056#181#1057#1026#1056#1169#1056#1105#1056#187':')
        end
        object Memo76: TfrxMemoView
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftTop]
        end
        object Memo79: TfrxMemoView
          Left = 162.519790000000000000
          Top = 26.456709999999990000
          Width = 445.984540000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo80: TfrxMemoView
          Left = 162.519790000000000000
          Top = 52.913419999999970000
          Width = 445.984540000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
        end
      end
    end
  end
  object pm: TPopupMenu
    Left = 528
    Top = 61
    object N1: TMenuItem
      Caption = #1058#1072#1073#1077#1083#1100
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054#1090#1095#1105#1090' '#1086' '#1090#1080#1087#1072#1093' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1085#1072#1093
      OnClick = N2Click
    end
  end
  object frxRep_Tab_Coeff: TfrxReport
    Version = '3.23.18'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39325.649425879600000000
    ReportOptions.LastChange = 39325.649425879600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 440
    Top = 141
    Datasets = <
      item
        DataSet = frxTab_Coeff
        DataSetName = 'frxTab_Coeff'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 90.708720000000040000
        ParentFont = False
        Top = 22.677180000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8 = (
            '[Date]')
        end
        object Memo2: TfrxMemoView
          Left = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8 = (
            '[Time]')
        end
        object Memo3: TfrxMemoView
          Left = 226.771800000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1032#1057#8225#1057#8216#1057#8218' '#1057#1026#1056#176#1056#177#1056#1109#1057#8225#1056#181#1056#1110#1056#1109' '#1056#1030#1057#1026#1056#181#1056#1112#1056#181#1056#1029#1056#1105)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 75.590600000000000000
          Top = 26.456710000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          DataSet = frxTab_Coeff
          DataSetName = 'frxTab_Coeff'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'mmmm, yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              '[EncodeDate(<frxTab_Coeff."ID_YEAR">,<frxTab_Coeff."ID_MONTH">,1' +
              ')]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 75.590600000000000000
          Top = 49.133890000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          DataField = 'NAME_PROD'
          DataSet = frxTab_Coeff
          DataSetName = 'frxTab_Coeff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxTab_Coeff."NAME_PROD"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 26.456710000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1119#1056#181#1057#1026#1056#1105#1056#1109#1056#1169)
        end
        object Memo7: TfrxMemoView
          Left = 11.338590000000000000
          Top = 49.133890000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1032#1057#8225#1056#176#1057#1027#1057#8218#1056#1109#1056#1108)
        end
        object Memo16: TfrxMemoView
          Top = 71.811070000000030000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169)
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 45.354360000000000000
          Top = 71.811070000000030000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164#1056#152#1056#1115)
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 283.464750000000000000
          Top = 71.811070000000030000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1109#1056#187#1056#182#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034)
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 514.016080000000000000
          Top = 71.811070000000030000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1056#1108#1056#1109#1057#1036#1057#8222#1057#8222'.')
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 453.543600000000000000
          Top = 71.811070000000030000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#181#1056#1029#1057#1034)
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 718.110700000000000000
          Top = 71.811070000000030000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109)
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 755.906000000000000000
          Top = 71.811070000000030000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1112#1056#1112#1056#181#1056#1029#1057#8218#1056#176#1057#1026#1056#1105#1056#8470)
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 680.315400000000000000
          Top = 71.811070000000030000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1057#1036#1057#8222'.')
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 136.063080000000000000
        Width = 1046.929810000000000000
        DataSet = frxTab_Coeff
        DataSetName = 'frxTab_Coeff'
        RowCount = 0
        Stretched = True
        object Memo8: TfrxMemoView
          Left = 453.543600000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'TAB_DAY'
          DataSet = frxTab_Coeff
          DataSetName = 'frxTab_Coeff'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxTab_Coeff."TAB_DAY"]')
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ID_P'
          DataSet = frxTab_Coeff
          DataSetName = 'frxTab_Coeff'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxTab_Coeff."ID_P"]')
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 49.133890000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'FIO'
          DataSet = frxTab_Coeff
          DataSetName = 'frxTab_Coeff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxTab_Coeff."FIO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 287.244280000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'NAMEDOL'
          DataSet = frxTab_Coeff
          DataSetName = 'frxTab_Coeff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxTab_Coeff."NAMEDOL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 514.016080000000000000
          Width = 166.299271180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'NAME_COEFF'
          DataSet = frxTab_Coeff
          DataSetName = 'frxTab_Coeff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxTab_Coeff."NAME_COEFF"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 718.110700000000000000
          Width = 37.795251180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'VAL'
          DataSet = frxTab_Coeff
          DataSetName = 'frxTab_Coeff'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxTab_Coeff."VAL"]')
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 755.906000000000000000
          Width = 291.023687950000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'COMMENT'
          DataSet = frxTab_Coeff
          DataSetName = 'frxTab_Coeff'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxTab_Coeff."COMMENT"]')
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 680.315400000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'COEFF'
          DataSet = frxTab_Coeff
          DataSetName = 'frxTab_Coeff'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxTab_Coeff."COEFF"]')
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 45.354360000000000000
        Top = 177.637910000000000000
        Width = 1046.929810000000000000
        object Memo15: TfrxMemoView
          Left = 11.338590000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1118#1056#176#1056#177#1056#181#1056#187#1057#1034' '#1057#1027#1056#1109#1057#1027#1057#8218#1056#176#1056#1030#1056#1105#1056#187':')
        end
        object Memo38: TfrxMemoView
          Left = 11.338590000000000000
          Top = 26.456709999999990000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1118#1056#176#1056#177#1056#181#1056#187#1057#1034' '#1057#1107#1057#8218#1056#1030#1056#181#1057#1026#1056#1169#1056#1105#1056#187':')
        end
        object Memo79: TfrxMemoView
          Left = 158.740260000000000000
          Width = 445.984540000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo80: TfrxMemoView
          Left = 158.740260000000000000
          Top = 26.456709999999990000
          Width = 445.984540000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
        end
      end
    end
  end
  object frxTab_Coeff: TfrxDBDataset
    UserName = 'frxTab_Coeff'
    CloseDataSource = False
    DataSet = qTab_Coeff
    Left = 432
    Top = 245
  end
  object qTab_Coeff: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select b.id_tab,b.id_month ,b.id_year,a.name name_prod,'
      
        's.*,p.fio,t.name namedol, p1.fio fio_utv,c.shortname, c.name nam' +
        'e_coeff'
      'from tabs b join tab_pos s on b.id_tab = s.id_tab'
      'left join personnel p on s.id_tab = 311534'
      'and p.id_p = s.id_p'
      'left join post t on T.IDPOST = P.IDPOST'
      'left join personnel p1 on p1.id_p = s.id_fix'
      'left join tab_coeffs c on c.id_tab_coeff = s.id_tab_coeff'
      'left join prod_areas a on a.id_p_area = b.id_p_area'
      'order by P.FIO,s.tab_day,c.name')
    Left = 488
    Top = 317
  end
  object frxRepTab: TfrxReport
    Version = '3.23.18'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39322.739361446800000000
    ReportOptions.LastChange = 39329.671399131900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo5OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '//if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID' +
        '_MONTH">,1)) in [1,7]  then memo5.color := clBtnFace'
      'end;'
      ''
      'procedure Memo9OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,2)) in [1,7]  then memo9.color := clBtnFace'
      'end;'
      ''
      'procedure Memo10OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,3)) in [1,7]  then memo10.color := clBtnFace'
      'end;'
      ''
      'procedure Memo11OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,4)) in [1,7]  then memo11.color := clBtnFace'
      'end;'
      ''
      'procedure Memo12OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,5)) in [1,7]  then memo12.color := clBtnFace'
      'end;'
      ''
      'procedure Memo13OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,6)) in [1,7]  then memo13.color := clBtnFace'
      'end;'
      ''
      'procedure Memo14OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,7)) in [1,7]  then memo14.color := clBtnFace'
      'end;'
      ''
      'procedure Memo15OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,8)) in [1,7]  then memo15.color := clBtnFace'
      'end;'
      ''
      'procedure Memo16OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,9)) in [1,7]  then memo16.color := clBtnFace'
      'end;'
      ''
      'procedure Memo17OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,10)) in [1,7]  then memo17.color := clBtnFace'
      'end;'
      ''
      'procedure Memo18OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,11)) in [1,7]  then memo18.color := clBtnFace'
      'end;'
      ''
      'procedure Memo19OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,12)) in [1,7]  then memo19.color := clBtnFace'
      'end;'
      ''
      'procedure Memo20OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,13)) in [1,7]  then memo20.color := clBtnFace'
      'end;'
      ''
      'procedure Memo21OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,14)) in [1,7]  then memo21.color := clBtnFace'
      'end;'
      ''
      'procedure Memo22OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,15)) in [1,7]  then memo22.color := clBtnFace'
      'end;'
      ''
      'procedure Memo23OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,16)) in [1,7]  then memo23.color := clBtnFace'
      'end;'
      ''
      'procedure Memo24OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,17)) in [1,7]  then memo24.color := clBtnFace'
      'end;'
      ''
      'procedure Memo25OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,18)) in [1,7]  then memo25.color := clBtnFace'
      'end;'
      ''
      'procedure Memo26OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,19)) in [1,7]  then memo26.color := clBtnFace'
      'end;'
      ''
      'procedure Memo27OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,20)) in [1,7]  then memo27.color := clBtnFace'
      'end;'
      ''
      'procedure Memo28OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,21)) in [1,7]  then memo28.color := clBtnFace'
      'end;'
      ''
      'procedure Memo29OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,22)) in [1,7]  then memo29.color := clBtnFace'
      'end;'
      ''
      'procedure Memo30OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,23)) in [1,7]  then memo30.color := clBtnFace'
      'end;'
      ''
      'procedure Memo31OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,24)) in [1,7]  then memo31.color := clBtnFace'
      'end;'
      ''
      'procedure Memo32OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,25)) in [1,7]  then memo32.color := clBtnFace'
      'end;'
      ''
      'procedure Memo33OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,26)) in [1,7]  then memo33.color := clBtnFace'
      'end;'
      ''
      'procedure Memo34OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,27)) in [1,7]  then memo34.color := clBtnFace'
      'end;'
      ''
      'procedure Memo35OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_M' +
        'ONTH">,28)) in [1,7]  then memo35.color := clBtnFace'
      'end;'
      ''
      'procedure Memo36OnBeforePrint(Sender: TfrxComponent);'
      'var D2: TDate;'
      '    M,Y,D : integer;'
      'begin'
      
        'If <frxRep_Tab."ID_MONTH"> < 12 Then D2 := EncodeDate(<frxRep_Ta' +
        'b."ID_YEAR">,<frxRep_Tab."ID_MONTH">+1,1) - 1'
      
        'else D2 := EncodeDate(<frxRep_Tab."ID_MONTH">,<frxRep_Tab."ID_MO' +
        'NTH">,31);'
      'D := DayOf(D2);'
      'if D >= 29 then memo71.text := '#39'29'#39
      'else'
      'begin'
      ' memo36.Frame.Color := clWhite;'
      ' memo36.text := '#39#39';'
      'end;'
      
        'if (D >= 29) and (DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<f' +
        'rxRep_Tab."ID_MONTH">,29)) in [1,7])  then'
      ' memo36.color := clBtnFace'
      'end;'
      ''
      'procedure Memo70OnBeforePrint(Sender: TfrxComponent);'
      'var D2: TDate;'
      '    M,Y,D : integer;'
      'begin'
      
        'If <frxRep_Tab."ID_MONTH"> < 12 Then D2 := EncodeDate(<frxRep_Ta' +
        'b."ID_YEAR">,<frxRep_Tab."ID_MONTH">+1,1) - 1'
      
        'else D2 := EncodeDate(<frxRep_Tab."ID_MONTH">,<frxRep_Tab."ID_MO' +
        'NTH">,31);'
      'D := DayOf(D2);'
      'if D >= 30 then memo71.text := '#39'30'#39
      'else'
      'begin'
      ' memo70.Frame.Color := clWhite;'
      ' memo70.text := '#39#39';'
      'end;'
      
        'if (D >= 30) and (DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<f' +
        'rxRep_Tab."ID_MONTH">,30)) in [1,7])  then'
      ' memo70.color := clBtnFace'
      'end;'
      ''
      'procedure Memo72OnBeforePrint(Sender: TfrxComponent);'
      'var D2: TDate;'
      '    M,Y,D : integer;'
      'begin'
      
        'If <frxRep_Tab."ID_MONTH"> < 12 Then D2 := EncodeDate(<frxRep_Ta' +
        'b."ID_YEAR">,<frxRep_Tab."ID_MONTH">+1,1) - 1'
      
        'else D2 := EncodeDate(<frxRep_Tab."ID_MONTH">,<frxRep_Tab."ID_MO' +
        'NTH">,31);'
      'D := DayOf(D2);'
      'if D = 31 then memo71.text := '#39'31'#39
      'else'
      'begin'
      ' memo72.Frame.Color := clWhite;'
      ' memo72.text := '#39#39';'
      'end;'
      
        'if (D = 31) and (DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<fr' +
        'xRep_Tab."ID_MONTH">,31)) in [1,7]) then'
      ' memo72.color := clBtnFace'
      'end;'
      ''
      'procedure Memo68OnBeforePrint(Sender: TfrxComponent);'
      'var D2: TDate;'
      '    M,Y,D : integer;'
      'begin'
      '//29'
      
        'If <frxRep_Tab."ID_MONTH"> < 12 Then D2 := EncodeDate(<frxRep_Ta' +
        'b."ID_YEAR">,<frxRep_Tab."ID_MONTH">+1,1) - 1'
      
        'else D2 := EncodeDate(<frxRep_Tab."ID_MONTH">,<frxRep_Tab."ID_MO' +
        'NTH">,31);'
      'D := DayOf(D2);'
      'if D >= 29 then memo68.text := '#39'29'#39
      'else'
      'begin'
      ' memo68.Frame.Color := clWhite;'
      ' memo68.text := '#39#39';'
      ' exit;'
      'end;'
      ''
      
        'if (D >= 29) and (DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<f' +
        'rxRep_Tab."ID_MONTH">,29))=7) then'
      ' memo68.text := '#39'29  '#1089#1073#39
      'else'
      
        ' if (D >= 29) and (DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<' +
        'frxRep_Tab."ID_MONTH">,29))=1) then'
      '  memo68.text := '#39'29  '#1074#1089#39';'
      'end;'
      ''
      'procedure Memo69OnBeforePrint(Sender: TfrxComponent);'
      'var D2: TDate;'
      '    M,Y,D : integer;'
      'begin'
      '//30'
      'memo69.Clear;'
      
        'If <frxRep_Tab."ID_MONTH"> < 12 Then D2 := EncodeDate(<frxRep_Ta' +
        'b."ID_YEAR">,<frxRep_Tab."ID_MONTH">+1,1) - 1'
      
        'else D2 := EncodeDate(<frxRep_Tab."ID_MONTH">,<frxRep_Tab."ID_MO' +
        'NTH">,31);'
      'D := DayOf(D2);'
      'if D >= 30 then memo69.text := '#39'30'#39
      'else'
      'begin'
      ' memo69.Frame.Color := clWhite;'
      ' memo69.text := '#39#39';'
      'end;'
      
        'if (D >= 30) and (DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<f' +
        'rxRep_Tab."ID_MONTH">,30))=7) then'
      ' memo69.text := '#39'30  '#1089#1073#39
      'else'
      
        ' if (D >= 30) and (DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<' +
        'frxRep_Tab."ID_MONTH">,30))=1) then'
      '   memo69.text := '#39'30  '#1074#1089#39';'
      ''
      'end;'
      ''
      'procedure Memo71OnBeforePrint(Sender: TfrxComponent);'
      'var D2: TDate;'
      '    M,Y,D : integer;'
      'begin'
      '//31'
      'memo71.Clear;'
      
        'If <frxRep_Tab."ID_MONTH"> < 12 Then D2 := EncodeDate(<frxRep_Ta' +
        'b."ID_YEAR">,<frxRep_Tab."ID_MONTH">+1,1) - 1'
      
        'else D2 := EncodeDate(<frxRep_Tab."ID_MONTH">,<frxRep_Tab."ID_MO' +
        'NTH">,31);'
      'D := DayOf(D2);'
      'if D = 31 then memo71.text := '#39'31'#39
      'else'
      'begin'
      ' memo71.Frame.Color := clWhite;'
      ' memo71.text := '#39#39';'
      'end;'
      
        'if (D = 31) and (DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<fr' +
        'xRep_Tab."ID_MONTH">,31))=7) then'
      ' memo71.text := '#39'31  '#1089#1073#39
      'else'
      
        ' if (D = 31) and (DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<f' +
        'rxRep_Tab."ID_MONTH">,31))=1) then'
      '  memo71.text := '#39'31  '#1074#1089#39';'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 818
    Top = 196
    Datasets = <
      item
        DataSet = frxRep_Sors
        DataSetName = 'frxRep_Sors'
      end
      item
        DataSet = frxRep_Sors_CF
        DataSetName = 'frxRep_Sors_CF'
      end
      item
        DataSet = frxRep_Tab
        DataSetName = 'frxRep_Tab'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object PageHeader1: TfrxPageHeader
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Memo71: TfrxMemoView
          Left = 1058.268400000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          OnBeforePrint = 'Memo71OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 109.606370000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1118#1056#176#1056#177#1056#181#1056#187#1057#1034' '#1057#1026#1056#176#1056#177#1056#1109#1057#8225#1056#181#1056#1110#1056#1109' '#1056#1030#1057#1026#1056#181#1056#1112#1056#181#1056#1029#1056#1105' '#1056#1029#1056#176' ')
        end
        object Memo37: TfrxMemoView
          Top = 45.354360000000010000
          Width = 204.094620000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164#1056#152#1056#1115'/'#1056#8221#1056#1109#1056#187#1056#182#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 249.448980000000000000
          Top = 45.354360000000010000
          Width = 15.118120000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 264.567100000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,1)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,1)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 291.023810000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,2)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,2)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 317.480520000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,3)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,3)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 343.937230000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,4)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,4)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 370.393940000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,5)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,5)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 396.850650000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,6)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,6)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 423.307360000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,7)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,7)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 449.764070000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,8)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,8)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 476.220780000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '9'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,9)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,9)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 502.677490000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '10'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,10)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,10)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 529.134200000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '11'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,11)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,11)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 555.590910000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '12'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,12)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,12)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 582.047620000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '13'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,13)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,13)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 608.504330000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '14'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,14)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,14)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 634.961040000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '15'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,15)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,15)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 661.417750000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '16'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,16)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,16)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 687.874460000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '17'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,17)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,17)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 714.331170000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '18'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,18)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,19)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 740.787880000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '19'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,19)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,19)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 767.244590000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '20'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,20)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,20)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 793.701300000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '21'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,21)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,21)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 820.158010000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '22'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,22)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,22)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 846.614720000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '23'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,23)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,23)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 873.071430000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '24'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,24)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,24)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 899.528140000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '25'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,25)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,25)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 925.984850000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '26'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,26)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,26)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 952.441560000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '27'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,27)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,27)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 978.898270000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '28'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,28)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,28)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 204.094620000000000000
          Top = 45.354360000000010000
          Width = 45.354360000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109
            #1057#8225#1056#176#1057#1027#1056#1109#1056#1030)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 298.582870000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'mmmm  yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxRep_Tab."TAB_DAY"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 483.779840000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          DataField = 'NAME_AREA'
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxRep_Tab."NAME_AREA"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 971.339210000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'.'#1074#8222#8211' [Page#]')
        end
        object Memo82: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[<Date>]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = -0.000000000000000444
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Time]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 1001.575450000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_TAB'
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxRep_Tab."ID_TAB"]')
        end
        object Memo69: TfrxMemoView
          Left = 1031.811690000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          OnBeforePrint = 'Memo69OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 1005.354980000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          OnBeforePrint = 'Memo68OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 158.740260000000000000
        Width = 1084.725110000000000000
        Condition = 'frxRep_Tab."ID_P"'
        object Memo75: TfrxMemoView
          Left = 204.094620000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Color = clScrollBar
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Tab."TOTAL_ALL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Color = cl3DLight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [Line]  [frxRep_Tab."FIO"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo2: TfrxMemoView
          Left = 249.448818900000000000
          Width = 835.276130000000000000
          Height = 18.897650000000000000
          Color = cl3DLight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 200.315090000000000000
        Width = 1084.725110000000000000
        DataSet = frxRep_Tab
        DataSetName = 'frxRep_Tab'
        RowCount = 0
        Stretched = True
        object Memo72: TfrxMemoView
          Left = 1058.268400000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo72OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D31"> <>0,<frxRep_Tab."D31">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxRep_Tab."NAME"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo7: TfrxMemoView
          Width = 7.559057560000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Memo8: TfrxMemoView
          Left = 249.448980000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'SHORTNAME_COEFF'
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Tab."SHORTNAME_COEFF"]')
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 264.567100000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo5OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D1"> <>0,<frxRep_Tab."D1">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 291.023810000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo9OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D2"> <>0,<frxRep_Tab."D2">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 317.480520000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo10OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D3"> <>0,<frxRep_Tab."D3">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 343.937230000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo11OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D4"> <>0,<frxRep_Tab."D4">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 370.393940000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo12OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D5"> <>0,<frxRep_Tab."D5">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 396.850650000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo13OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D6"> <>0,<frxRep_Tab."D6">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 423.307360000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo14OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D7"> <>0,<frxRep_Tab."D7">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 449.764070000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo15OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D8"> <>0,<frxRep_Tab."D8">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 476.220780000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D9"> <>0,<frxRep_Tab."D9">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 502.677490000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo17OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D10"> <>0,<frxRep_Tab."D10">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 529.134200000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo18OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D11"> <>0,<frxRep_Tab."D11">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 555.590910000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo19OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D12"> <>0,<frxRep_Tab."D12">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 582.047620000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo20OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D13"> <>0,<frxRep_Tab."D13">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 608.504330000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo21OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D14"> <>0,<frxRep_Tab."D14">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 634.961040000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo22OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D15"> <>0,<frxRep_Tab."D15">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 661.417750000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo23OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D16"> <>0,<frxRep_Tab."D16">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 687.874460000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo24OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D17"> <>0,<frxRep_Tab."D17">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 714.331170000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo25OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D18"> <>0,<frxRep_Tab."D18">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 740.787880000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo26OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D19"> <>0,<frxRep_Tab."D19">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 767.244590000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo27OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D20"> <>0,<frxRep_Tab."D20">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 793.701300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo28OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D21"> <>0,<frxRep_Tab."D21">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 820.158010000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo29OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D22"> <>0,<frxRep_Tab."D22">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 846.614720000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo30OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D23"> <>0,<frxRep_Tab."D23">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 873.071430000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo31OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D24"> <>0,<frxRep_Tab."D24">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 899.528140000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo32OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D25"> <>0,<frxRep_Tab."D25">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 925.984850000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo33OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D26"> <>0,<frxRep_Tab."D26">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 952.441560000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo34OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D27"> <>0,<frxRep_Tab."D27">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 978.898270000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo35OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D28"> <>0,<frxRep_Tab."D28">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 204.094620000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Tab."TOTAL"]')
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 1031.811690000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo70OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D30"> <>0,<frxRep_Tab."D30">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 1005.354980000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo36OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Tab."D29"> <>0,<frxRep_Tab."D29">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Height = 18.897650000000000000
        Top = 336.378170000000000000
        Width = 1084.725110000000000000
        DataSet = frxRep_Sors
        DataSetName = 'frxRep_Sors'
        RowCount = 0
        object Memo89: TfrxMemoView
          Left = 1058.268400000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo72OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D31"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 264.567100000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo5OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 291.023810000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo9OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 317.480520000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo10OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 343.937230000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo11OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 370.393940000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo12OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 396.850650000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo13OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 423.307360000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo14OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 449.764070000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo15OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Left = 476.220780000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D9"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 502.677490000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo17OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D10"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          Left = 529.134199999999900000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo18OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D11"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          Left = 555.590910000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo19OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D12"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          Left = 582.047620000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo20OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D13"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Left = 608.504330000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo21OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D14"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 634.961040000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo22OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D15"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          Left = 661.417750000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo23OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D16"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          Left = 687.874460000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo24OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D17"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          Left = 714.331170000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo25OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D18"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          Left = 740.787880000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo26OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D19"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          Left = 767.244590000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo27OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D20"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          Left = 793.701300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo28OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D21"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          Left = 820.158010000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo29OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D22"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          Left = 846.614720000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo30OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D23"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          Left = 873.071430000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo31OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D24"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          Left = 899.528140000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo32OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D25"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          Left = 925.984850000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo33OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D26"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          Left = 952.441560000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo34OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D27"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          Left = 978.898270000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo35OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D28"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          Left = 204.094620000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '### ### ##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."TOTAL_F"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          Left = 1031.811690000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo70OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D30"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          Left = 1005.354980000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo36OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."D29"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '  [frxRep_Sors."FIO"]:   ')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 26.456710000000000000
        Top = 241.889920000000000000
        Width = 1084.725110000000000000
        object Memo76: TfrxMemoView
          Left = -0.000000000000000888
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftTop]
        end
        object Memo85: TfrxMemoView
          Left = 204.094620000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxRep_Tab."TOTAL">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 264.567100000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo5OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D1">) <>0,SUM(<frxRep_Tab."D1">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 1058.268400000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo72OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D31">) <>0,SUM(<frxRep_Tab."D31">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 291.023810000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo9OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D2">) <>0,SUM(<frxRep_Tab."D2">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 317.480520000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo10OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D3">) <>0,SUM(<frxRep_Tab."D3">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 343.937230000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo11OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D4">) <>0,SUM(<frxRep_Tab."D4">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 370.393940000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo12OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D5">) <>0,SUM(<frxRep_Tab."D5">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 396.850650000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo13OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D6">) <>0,SUM(<frxRep_Tab."D6">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 423.307360000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo14OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D7">) <>0,SUM(<frxRep_Tab."D7">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 449.764070000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo15OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D8">) <>0,SUM(<frxRep_Tab."D8">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 476.220780000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D9">) <>0,SUM(<frxRep_Tab."D9">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 502.677490000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo17OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D10">) <>0,SUM(<frxRep_Tab."D10">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 529.134200000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo18OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D11">) <>0,SUM(<frxRep_Tab."D11">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 555.590910000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo19OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D12">) <>0,SUM(<frxRep_Tab."D12">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 582.047620000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo20OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D13">) <>0,SUM(<frxRep_Tab."D13">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 608.504330000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo21OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D14">) <>0,SUM(<frxRep_Tab."D14">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 634.961040000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo22OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D15">) <>0,SUM(<frxRep_Tab."D15">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 661.417750000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo23OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D16">) <>0,SUM(<frxRep_Tab."D16">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 687.874460000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo24OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D17">) <>0,SUM(<frxRep_Tab."D17">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Left = 714.331170000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo25OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D18">) <>0,SUM(<frxRep_Tab."D18">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 740.787880000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo26OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D19">) <>0,SUM(<frxRep_Tab."D19">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 767.244590000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo27OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D20">) <>0,SUM(<frxRep_Tab."D20">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 793.701300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo28OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D21">) <>0,SUM(<frxRep_Tab."D21">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 820.158010000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo29OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D22">) <>0,SUM(<frxRep_Tab."D22">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 846.614720000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo30OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D23">) <>0,SUM(<frxRep_Tab."D23">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 873.071430000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo31OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D24">) <>0,SUM(<frxRep_Tab."D24">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 899.528140000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo32OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D25">) <>0,SUM(<frxRep_Tab."D25">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Left = 925.984850000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo33OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D26">) <>0,SUM(<frxRep_Tab."D26">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 952.441560000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo34OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D27">) <>0,SUM(<frxRep_Tab."D27">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 978.898270000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo35OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D28">) <>0,SUM(<frxRep_Tab."D28">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 1031.811690000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo70OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D30">) <>0,SUM(<frxRep_Tab."D30">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 1005.354980000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo36OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(SUM(<frxRep_Tab."D29">) <>0,SUM(<frxRep_Tab."D29">),'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '  '#1056#152#1057#8218#1056#1109#1056#1110#1056#1109' '#1056#1111#1056#1109' '#1057#8218#1056#176#1056#177#1056#181#1056#187#1057#1035':  ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer2: TfrxFooter
        Height = 162.519790000000000000
        Top = 377.953000000000000000
        Width = 1084.725110000000000000
        object Memo6: TfrxMemoView
          Left = 37.795300000000000000
          Top = 41.574830000000020000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1118#1056#176#1056#177#1056#181#1056#187#1057#1034' '#1057#1027#1056#1109#1057#1027#1057#8218#1056#176#1056#1030#1056#1105#1056#187':')
        end
        object Memo38: TfrxMemoView
          Left = 37.795300000000000000
          Top = 68.031540000000010000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1118#1056#176#1056#177#1056#181#1056#187#1057#1034' '#1057#1107#1057#8218#1056#1030#1056#181#1057#1026#1056#1169#1056#1105#1056#187':')
        end
        object Memo79: TfrxMemoView
          Left = 185.196970000000000000
          Top = 41.574830000000020000
          Width = 445.984540000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo80: TfrxMemoView
          Left = 185.196970000000000000
          Top = 68.031540000000010000
          Width = 445.984540000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
        end
      end
      object MasterData3: TfrxMasterData
        Height = 22.677165354330710000
        Top = 291.023810000000000000
        Width = 1084.725110000000000000
        DataSet = frxRep_Sors_CF
        DataSetName = 'frxRep_Sors_CF'
        RowCount = 0
        object Memo120: TfrxMemoView
          Left = 1058.268400000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo72OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D31"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          Left = 264.567100000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo5OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          Left = 291.023810000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo9OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo154: TfrxMemoView
          Left = 317.480520000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo10OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          Left = 343.937230000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo11OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          Left = 370.393940000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo12OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          Left = 396.850650000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo13OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo158: TfrxMemoView
          Left = 423.307360000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo14OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo159: TfrxMemoView
          Left = 449.764070000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo15OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo160: TfrxMemoView
          Left = 476.220780000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo16OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D9"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo161: TfrxMemoView
          Left = 502.677490000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo17OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D10"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo162: TfrxMemoView
          Left = 529.134199999999900000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo18OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D11"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo163: TfrxMemoView
          Left = 555.590910000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo19OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D12"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo164: TfrxMemoView
          Left = 582.047620000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo20OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D13"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo165: TfrxMemoView
          Left = 608.504330000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo21OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D14"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo166: TfrxMemoView
          Left = 634.961040000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo22OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D15"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo167: TfrxMemoView
          Left = 661.417750000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo23OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D16"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo168: TfrxMemoView
          Left = 687.874460000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo24OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D17"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo169: TfrxMemoView
          Left = 714.331170000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo25OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D18"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo170: TfrxMemoView
          Left = 740.787880000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo26OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D19"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo171: TfrxMemoView
          Left = 767.244590000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo27OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D20"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo172: TfrxMemoView
          Left = 793.701300000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo28OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D21"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo173: TfrxMemoView
          Left = 820.158010000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo29OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D22"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo174: TfrxMemoView
          Left = 846.614720000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo30OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D23"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo175: TfrxMemoView
          Left = 873.071430000000000000
          Width = 26.456710000000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo31OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D24"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo176: TfrxMemoView
          Left = 899.528140000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo32OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D25"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo177: TfrxMemoView
          Left = 925.984850000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo33OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D26"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo178: TfrxMemoView
          Left = 952.441560000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo34OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D27"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo179: TfrxMemoView
          Left = 978.898270000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo35OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D28"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo180: TfrxMemoView
          Left = 204.094620000000000000
          Width = 60.472480000000000000
          Height = 22.677165354330710000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '### ### ##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."TOTAL_F"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo181: TfrxMemoView
          Left = 1031.811690000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo70OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D30"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo182: TfrxMemoView
          Left = 1005.354980000000000000
          Width = 26.456692910000000000
          Height = 22.677165354330710000
          OnBeforePrint = 'Memo36OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '####.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors_CF."D29"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo183: TfrxMemoView
          Width = 204.094620000000000000
          Height = 22.677165354330710000
          StretchMode = smMaxHeight
          DataSet = frxRep_Sors
          DataSetName = 'frxRep_Sors'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '  [frxRep_Sors_CF."FIO"]:   ')
          ParentFont = False
        end
      end
    end
  end
  object qRep_Sors: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select * from REP_SORS(260,'#39'1.12.2008'#39','#39'31.12.2008'#39')')
    Left = 162
    Top = 388
    object qRep_SorsFIO: TIBStringField
      DisplayWidth = 29
      FieldName = 'FIO'
      Origin = '"REP_SORS"."FIO"'
      Size = 60
    end
    object qRep_SorsTOTAL_R: TFloatField
      DisplayWidth = 12
      FieldName = 'TOTAL_R'
      Origin = '"REP_SORS"."TOTAL_R"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsTOTAL_F: TFloatField
      DisplayWidth = 12
      FieldName = 'TOTAL_F'
      Origin = '"REP_SORS"."TOTAL_F"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD1: TFloatField
      DisplayWidth = 12
      FieldName = 'D1'
      Origin = '"REP_SORS"."D1"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD2: TFloatField
      DisplayWidth = 12
      FieldName = 'D2'
      Origin = '"REP_SORS"."D2"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD3: TFloatField
      DisplayWidth = 12
      FieldName = 'D3'
      Origin = '"REP_SORS"."D3"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD4: TFloatField
      DisplayWidth = 12
      FieldName = 'D4'
      Origin = '"REP_SORS"."D4"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD5: TFloatField
      DisplayWidth = 12
      FieldName = 'D5'
      Origin = '"REP_SORS"."D5"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD6: TFloatField
      DisplayWidth = 12
      FieldName = 'D6'
      Origin = '"REP_SORS"."D6"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD7: TFloatField
      DisplayWidth = 12
      FieldName = 'D7'
      Origin = '"REP_SORS"."D7"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD8: TFloatField
      DisplayWidth = 12
      FieldName = 'D8'
      Origin = '"REP_SORS"."D8"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD9: TFloatField
      DisplayWidth = 12
      FieldName = 'D9'
      Origin = '"REP_SORS"."D9"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD10: TFloatField
      DisplayWidth = 12
      FieldName = 'D10'
      Origin = '"REP_SORS"."D10"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD11: TFloatField
      DisplayWidth = 12
      FieldName = 'D11'
      Origin = '"REP_SORS"."D11"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD12: TFloatField
      DisplayWidth = 12
      FieldName = 'D12'
      Origin = '"REP_SORS"."D12"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD13: TFloatField
      DisplayWidth = 12
      FieldName = 'D13'
      Origin = '"REP_SORS"."D13"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD14: TFloatField
      DisplayWidth = 12
      FieldName = 'D14'
      Origin = '"REP_SORS"."D14"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD15: TFloatField
      DisplayWidth = 12
      FieldName = 'D15'
      Origin = '"REP_SORS"."D15"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD16: TFloatField
      DisplayWidth = 12
      FieldName = 'D16'
      Origin = '"REP_SORS"."D16"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD17: TFloatField
      DisplayWidth = 12
      FieldName = 'D17'
      Origin = '"REP_SORS"."D17"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD18: TFloatField
      DisplayWidth = 12
      FieldName = 'D18'
      Origin = '"REP_SORS"."D18"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD19: TFloatField
      DisplayWidth = 12
      FieldName = 'D19'
      Origin = '"REP_SORS"."D19"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD20: TFloatField
      DisplayWidth = 12
      FieldName = 'D20'
      Origin = '"REP_SORS"."D20"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD21: TFloatField
      DisplayWidth = 12
      FieldName = 'D21'
      Origin = '"REP_SORS"."D21"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD22: TFloatField
      DisplayWidth = 12
      FieldName = 'D22'
      Origin = '"REP_SORS"."D22"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD23: TFloatField
      DisplayWidth = 12
      FieldName = 'D23'
      Origin = '"REP_SORS"."D23"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD24: TFloatField
      DisplayWidth = 12
      FieldName = 'D24'
      Origin = '"REP_SORS"."D24"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD25: TFloatField
      DisplayWidth = 12
      FieldName = 'D25'
      Origin = '"REP_SORS"."D25"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD26: TFloatField
      DisplayWidth = 12
      FieldName = 'D26'
      Origin = '"REP_SORS"."D26"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD27: TFloatField
      DisplayWidth = 12
      FieldName = 'D27'
      Origin = '"REP_SORS"."D27"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD28: TFloatField
      DisplayWidth = 12
      FieldName = 'D28'
      Origin = '"REP_SORS"."D28"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD29: TFloatField
      DisplayWidth = 12
      FieldName = 'D29'
      Origin = '"REP_SORS"."D29"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD30: TFloatField
      DisplayWidth = 12
      FieldName = 'D30'
      Origin = '"REP_SORS"."D30"'
      DisplayFormat = '### ### ##0.0'
    end
    object qRep_SorsD31: TFloatField
      DisplayWidth = 12
      FieldName = 'D31'
      Origin = '"REP_SORS"."D31"'
      DisplayFormat = '### ### ##0.0'
    end
  end
  object frxRep_Sors: TfrxDBDataset
    UserName = 'frxRep_Sors'
    CloseDataSource = False
    DataSet = qRep_Sors
    Left = 202
    Top = 612
  end
  object dsRep_Sors: TDataSource
    DataSet = qRep_Sors
    Left = 170
    Top = 436
  end
  object frxReport3: TfrxReport
    Version = '3.23.18'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39322.739361446800000000
    ReportOptions.LastChange = 39329.671399131900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 266
    Top = 164
    Datasets = <
      item
        DataSet = frxRep_Sors
        DataSetName = 'frxRep_Sors'
      end
      item
        DataSet = frxRep_Tab
        DataSetName = 'frxRep_Tab'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object PageHeader1: TfrxPageHeader
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Memo71: TfrxMemoView
          Left = 1058.268400000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          OnBeforePrint = 'Memo71OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 109.606370000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1118#1056#176#1056#177#1056#181#1056#187#1057#1034' '#1057#1026#1056#176#1056#177#1056#1109#1057#8225#1056#181#1056#1110#1056#1109' '#1056#1030#1057#1026#1056#181#1056#1112#1056#181#1056#1029#1056#1105' '#1056#1029#1056#176' ')
        end
        object Memo37: TfrxMemoView
          Top = 45.354360000000010000
          Width = 204.094620000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164#1056#152#1056#1115'/'#1056#8221#1056#1109#1056#187#1056#182#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 249.448980000000000000
          Top = 45.354360000000010000
          Width = 15.118120000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 264.567100000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,1)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,1)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 291.023810000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,2)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,2)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 317.480520000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,3)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,3)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 343.937230000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,4)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,4)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 370.393940000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,5)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,5)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 396.850650000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,6)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,6)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 423.307360000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,7)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,7)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 449.764070000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,8)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,8)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 476.220780000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '9'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,9)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,9)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 502.677490000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '10'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,10)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,10)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 529.134200000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '11'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,11)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,11)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 555.590910000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '12'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,12)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,12)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 582.047620000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '13'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,13)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,13)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 608.504330000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015757800000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '14'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,14)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,14)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 634.961040000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '15'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,15)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,15)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 661.417750000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '16'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,16)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,16)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 687.874460000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '17'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,17)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,17)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 714.331170000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '18'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,18)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,19)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 740.787880000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '19'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,19)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,19)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 767.244590000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '20'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,20)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,20)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 793.701300000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '21'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,21)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,21)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 820.158010000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '22'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,22)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,22)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 846.614720000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '23'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,23)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,23)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 873.071430000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '24'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,24)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,24)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 899.528140000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '25'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,25)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,25)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 925.984850000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '26'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,26)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,26)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 952.441560000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '27'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,27)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,27)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 978.898270000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '28'
            '[iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,28)) = 7,'#39#1057#1027#1056#177#39','
            'iif('
            
              'DayOfWeek(EncodeDate(<frxRep_Tab."ID_YEAR">,<frxRep_Tab."ID_MONT' +
              'H">,28)) = 1,'#39#1056#1030#1057#1027#39
            ','#39#39
            ')'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 204.094620000000000000
          Top = 45.354360000000010000
          Width = 45.354360000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109
            #1057#8225#1056#176#1057#1027#1056#1109#1056#1030)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 298.582870000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'mmmm  yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxRep_Tab."TAB_DAY"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 483.779840000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          DataField = 'NAME_AREA'
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxRep_Tab."NAME_AREA"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 971.339210000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'.'#1074#8222#8211' [Page#]')
        end
        object Memo82: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[<Date>]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = -0.000000000000000444
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Time]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 1001.575450000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_TAB'
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxRep_Tab."ID_TAB"]')
        end
        object Memo69: TfrxMemoView
          Left = 1031.811690000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          OnBeforePrint = 'Memo69OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 1005.354980000000000000
          Top = 45.354360000000010000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          OnBeforePrint = 'Memo68OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Child1: TfrxChild
        Height = 83.149660000000000000
        Top = 204.094620000000000000
        Width = 1084.725110000000000000
        object Memo6: TfrxMemoView
          Left = 37.795300000000000000
          Top = 26.456710000000020000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1118#1056#176#1056#177#1056#181#1056#187#1057#1034' '#1057#1027#1056#1109#1057#1027#1057#8218#1056#176#1056#1030#1056#1105#1056#187':')
        end
        object Memo38: TfrxMemoView
          Left = 37.795300000000000000
          Top = 52.913420000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1118#1056#176#1056#177#1056#181#1056#187#1057#1034' '#1057#1107#1057#8218#1056#1030#1056#181#1057#1026#1056#1169#1056#1105#1056#187':')
        end
        object Memo79: TfrxMemoView
          Left = 185.196970000000000000
          Top = 26.456710000000020000
          Width = 445.984540000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo80: TfrxMemoView
          Left = 185.196970000000000000
          Top = 52.913420000000000000
          Width = 445.984540000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
        end
      end
      object MasterData2: TfrxMasterData
        Height = 22.677180000000000000
        Top = 158.740260000000000000
        Width = 1084.725110000000000000
        DataSet = frxRep_Sors
        DataSetName = 'frxRep_Sors'
        RowCount = 0
        object Memo89: TfrxMemoView
          Left = 1058.268400000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo72OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D31"> <>0,<frxRep_Sors."D31">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxRep_Sors."FIO"]:     ')
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo121: TfrxMemoView
          Left = 264.567100000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo5OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D1"> <>0,<frxRep_Sors."D1">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 291.023810000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo9OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D2"> <>0,<frxRep_Sors."D2">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 317.480520000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo10OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D3"> <>0,<frxRep_Sors."D3">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 343.937230000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo11OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D4"> <>0,<frxRep_Sors."D4">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 370.393940000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo12OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D5"> <>0,<frxRep_Sors."D5">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 396.850650000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo13OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D6"> <>0,<frxRep_Sors."D6">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 423.307360000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo14OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D7"> <>0,<frxRep_Sors."D7">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 449.764070000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo15OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D8"> <>0,<frxRep_Sors."D8">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Left = 476.220780000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D9"> <>0,<frxRep_Sors."D9">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 502.677490000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo17OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D10"> <>0,<frxRep_Sors."D10">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          Left = 529.134200000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo18OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D11"> <>0,<frxRep_Sors."D11">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          Left = 555.590910000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo19OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D12"> <>0,<frxRep_Sors."D12">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          Left = 582.047620000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo20OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D13"> <>0,<frxRep_Sors."D13">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Left = 608.504330000000000000
          Width = 26.456692910000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo21OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D14"> <>0,<frxRep_Sors."D14">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 634.961040000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo22OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D15"> <>0,<frxRep_Sors."D15">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          Left = 661.417750000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo23OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D16"> <>0,<frxRep_Sors."D16">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          Left = 687.874460000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo24OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D17"> <>0,<frxRep_Sors."D17">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          Left = 714.331170000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo25OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D18"> <>0,<frxRep_Sors."D18">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          Left = 740.787880000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo26OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D19"> <>0,<frxRep_Sors."D19">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          Left = 767.244590000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo27OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D20"> <>0,<frxRep_Sors."D20">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          Left = 793.701300000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo28OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D21"> <>0,<frxRep_Sors."D21">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          Left = 820.158010000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo29OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D22"> <>0,<frxRep_Sors."D22">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          Left = 846.614720000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo30OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D23"> <>0,<frxRep_Sors."D23">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          Left = 873.071430000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo31OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D24"> <>0,<frxRep_Sors."D24">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          Left = 899.528140000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo32OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D25"> <>0,<frxRep_Sors."D25">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          Left = 925.984850000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo33OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D26"> <>0,<frxRep_Sors."D26">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          Left = 952.441560000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo34OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D27"> <>0,<frxRep_Sors."D27">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          Left = 978.898270000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo35OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D28"> <>0,<frxRep_Sors."D28">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          Left = 204.094620000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_Sors."TOTAL_R"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          Left = 1031.811690000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo70OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D30"> <>0,<frxRep_Sors."D30">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          Left = 1005.354980000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo36OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxRep_Tab
          DataSetName = 'frxRep_Tab'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxRep_Sors."D29"> <>0,<frxRep_Sors."D29">,'#39#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    PrintOptimized = False
    Outline = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Background = False
    Creator = 'FastReport (http://www.fast-report.com)'
    HTMLTags = True
    Left = 338
    Top = 156
  end
  object qRep_Sors_CF: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select *  from REP_TAB_COEFF(:ID_TAB)')
    Left = 104
    Top = 493
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_TAB'
        ParamType = ptUnknown
      end>
    object qRep_Sors_CFFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"REP_TAB_COEFF"."FIO"'
      Size = 60
    end
    object qRep_Sors_CFTOTAL_R: TFloatField
      FieldName = 'TOTAL_R'
      Origin = '"REP_TAB_COEFF"."TOTAL_R"'
    end
    object qRep_Sors_CFTOTAL_F: TFloatField
      FieldName = 'TOTAL_F'
      Origin = '"REP_TAB_COEFF"."TOTAL_F"'
    end
    object qRep_Sors_CFD1: TFloatField
      FieldName = 'D1'
      Origin = '"REP_TAB_COEFF"."D1"'
    end
    object qRep_Sors_CFD2: TFloatField
      FieldName = 'D2'
      Origin = '"REP_TAB_COEFF"."D2"'
    end
    object qRep_Sors_CFD3: TFloatField
      FieldName = 'D3'
      Origin = '"REP_TAB_COEFF"."D3"'
    end
    object qRep_Sors_CFD4: TFloatField
      FieldName = 'D4'
      Origin = '"REP_TAB_COEFF"."D4"'
    end
    object qRep_Sors_CFD5: TFloatField
      FieldName = 'D5'
      Origin = '"REP_TAB_COEFF"."D5"'
    end
    object qRep_Sors_CFD6: TFloatField
      FieldName = 'D6'
      Origin = '"REP_TAB_COEFF"."D6"'
    end
    object qRep_Sors_CFD7: TFloatField
      FieldName = 'D7'
      Origin = '"REP_TAB_COEFF"."D7"'
    end
    object qRep_Sors_CFD8: TFloatField
      FieldName = 'D8'
      Origin = '"REP_TAB_COEFF"."D8"'
    end
    object qRep_Sors_CFD9: TFloatField
      FieldName = 'D9'
      Origin = '"REP_TAB_COEFF"."D9"'
    end
    object qRep_Sors_CFD10: TFloatField
      FieldName = 'D10'
      Origin = '"REP_TAB_COEFF"."D10"'
    end
    object qRep_Sors_CFD11: TFloatField
      FieldName = 'D11'
      Origin = '"REP_TAB_COEFF"."D11"'
    end
    object qRep_Sors_CFD12: TFloatField
      FieldName = 'D12'
      Origin = '"REP_TAB_COEFF"."D12"'
    end
    object qRep_Sors_CFD13: TFloatField
      FieldName = 'D13'
      Origin = '"REP_TAB_COEFF"."D13"'
    end
    object qRep_Sors_CFD14: TFloatField
      FieldName = 'D14'
      Origin = '"REP_TAB_COEFF"."D14"'
    end
    object qRep_Sors_CFD15: TFloatField
      FieldName = 'D15'
      Origin = '"REP_TAB_COEFF"."D15"'
    end
    object qRep_Sors_CFD16: TFloatField
      FieldName = 'D16'
      Origin = '"REP_TAB_COEFF"."D16"'
    end
    object qRep_Sors_CFD17: TFloatField
      FieldName = 'D17'
      Origin = '"REP_TAB_COEFF"."D17"'
    end
    object qRep_Sors_CFD18: TFloatField
      FieldName = 'D18'
      Origin = '"REP_TAB_COEFF"."D18"'
    end
    object qRep_Sors_CFD19: TFloatField
      FieldName = 'D19'
      Origin = '"REP_TAB_COEFF"."D19"'
    end
    object qRep_Sors_CFD20: TFloatField
      FieldName = 'D20'
      Origin = '"REP_TAB_COEFF"."D20"'
    end
    object qRep_Sors_CFD21: TFloatField
      FieldName = 'D21'
      Origin = '"REP_TAB_COEFF"."D21"'
    end
    object qRep_Sors_CFD22: TFloatField
      FieldName = 'D22'
      Origin = '"REP_TAB_COEFF"."D22"'
    end
    object qRep_Sors_CFD23: TFloatField
      FieldName = 'D23'
      Origin = '"REP_TAB_COEFF"."D23"'
    end
    object qRep_Sors_CFD24: TFloatField
      FieldName = 'D24'
      Origin = '"REP_TAB_COEFF"."D24"'
    end
    object qRep_Sors_CFD25: TFloatField
      FieldName = 'D25'
      Origin = '"REP_TAB_COEFF"."D25"'
    end
    object qRep_Sors_CFD26: TFloatField
      FieldName = 'D26'
      Origin = '"REP_TAB_COEFF"."D26"'
    end
    object qRep_Sors_CFD27: TFloatField
      FieldName = 'D27'
      Origin = '"REP_TAB_COEFF"."D27"'
    end
    object qRep_Sors_CFD28: TFloatField
      FieldName = 'D28'
      Origin = '"REP_TAB_COEFF"."D28"'
    end
    object qRep_Sors_CFD29: TFloatField
      FieldName = 'D29'
      Origin = '"REP_TAB_COEFF"."D29"'
    end
    object qRep_Sors_CFD30: TFloatField
      FieldName = 'D30'
      Origin = '"REP_TAB_COEFF"."D30"'
    end
    object qRep_Sors_CFD31: TFloatField
      FieldName = 'D31'
      Origin = '"REP_TAB_COEFF"."D31"'
    end
  end
  object frxRep_Sors_CF: TfrxDBDataset
    UserName = 'frxRep_Sors_CF'
    CloseDataSource = False
    DataSet = qRep_Sors_CF
    Left = 96
    Top = 413
  end
  object dsDet: TDataSource
    DataSet = qDet
    Left = 108
    Top = 224
  end
  object qDet: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select o.dec_no,coalesce(o.obj_name,i.name)  nm,'
      
        ' p.name name_ord,p.n_order, r.step,s.name  name_oper, ps.name  n' +
        'ame_post,'
      ' per.fio, l.id_equipment,'
      
        ' case when (l.id_equipment = 0 or l.id_equipment is null)  then ' +
        #39#39' else e.shotname end shotname,'
      ' l1.id_prod_plan_p,l1.id_p,l1.amount,'
      ' l1.AMOUNT*f.T_PERSONNEL  T_PERS,'
      ' l1.rem,l1.f_amount ,'
      ' l.d_out, l.f_time f_time_p,'
      ' coalesce(l1.din+l1.tin, cast(l.d_out as timestamp)) din ,'
      ' l1.dto+l1.tto dto_,'
      ' coalesce(l1.dto+l1.tto,'
      '   cast(l.d_out as timestamp) +'
      '   ( (floor(l.f_time) + (l.f_time - floor(l.f_time))) )/24) dto,'
      '  floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+'
      ' ( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24'
      ' - floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 tm_,'
      ''
      ' coalesce('
      ' floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+'
      ' ( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24'
      ' - floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 ,'
      
        '  (floor(l.f_time) + (l.f_time - floor(l.f_time)) *60/100)  ) tm' +
        ' ,'
      ''
      ' l1.f_time,l1.p_time,'
      
        ' p.id_version,p.id_project, p.id_order, o.id_object,r.id_prod_op' +
        'er, o.obj_type'
      ' , h.name name_shift'
      
        ' from project_ords p join product_objects o on o.id_version = p.' +
        'id_version'
      ' join product_oper r on r.id_object = o.id_object'
      
        ' join product_traff f on f.id_prod_oper = r.id_prod_oper and f.i' +
        'd_area = :id_area'
      
        ' join operations s on s.id_area = f.id_area and s.id_operation =' +
        ' f.id_operation'
      
        ' join product_plans l on    l.d_out >= :d1 and l.d_out < :d2 --a' +
        'nd l.f_time is not null'
      '    and  l.id_prod_traf = f.id_prod_traff'
      
        ' join product_plans_p l1 on    l1.id_prod_plan = l.id_prod_plan ' +
        'and l1.id_p = :id_p'
      ' left join items i on i.id_item = o.id_item'
      ' left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT'
      ' left join personnel per on l1.id_p = per.id_p '
      ' left join post ps on per.idpost = ps.idpost'
      ' left join shifts h on h.id_shift = l.id_shift'
      ''
      'union'
      ' select cast(coalesce(d.name,'#39'*'#39') as varchar(32)) dec_no,'
      ' cast(coalesce(d.name,'#39#1041#1077#1079' '#1090#1080#1087#1072#39') as varchar(128))  nm,'
      ' cast(coalesce(o.name,'#39'*'#39') as varchar(64)) name_ord,'
      'coalesce(o.n_order,cast('#39#1041#1077#1079' '#1079#1072#1082#1072#1079#1072#39' as varchar(16))) n_order,'
      ' cast(0 as integer) step,'
      ' cast('#39'*'#39' as varchar(30)) name_oper,'
      ' ps.name  name_post,'
      ' per.fio,'
      ' l.id_equipment,'
      
        ' case when (l.id_equipment = 0 or l.id_equipment is null)  then ' +
        #39#39' else e.shotname end shotname,'
      ' l1.id_prod_plan_p,'
      ' l1.id_p,'
      ' l1.amount ,'
      ' cast(1.0 as double precision)  T_PERS,'
      ' l1.rem,'
      ' l1.f_amount ,'
      ' l.d_out,'
      ' max(l1.f_time) f_time_p,'
      ' coalesce(l1.din+l1.tin, cast(l.d_out as timestamp)) din ,'
      ' l1.dto+l1.tto dto_,'
      ' coalesce(l1.dto+l1.tto,'
      '   cast(l.d_out as timestamp) +'
      
        '   ( (floor(max(l1.f_time)) + (max(l1.f_time) - floor(max(l1.f_t' +
        'ime)))) )/24) dto,'
      '  floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+'
      ' ( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24'
      ' - floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 tm_,'
      ''
      ' coalesce('
      ' floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+'
      ' ( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24'
      ' - floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 ,'
      
        '  (floor(max(l1.f_time)) + (max(l1.f_time) - floor(max(l1.f_time' +
        '))) *60/100)  ) tm ,'
      ''
      ' l1.f_time,l1.p_time,'
      ' cast(0 as integer) id_version,'
      ' cast(0 as integer) id_project,'
      ' cast(0 as integer) id_order,'
      ' cast(0 as integer) id_object,'
      ' cast(0 as integer) id_prod_oper,'
      
        ' cast(0 as integer) obj_type , cast(h.name as varchar(64)) name_' +
        'shift'
      ''
      ' from product_plans_stop l'
      
        ' join product_plans_p l1 on  l.id_area = :id_area and l.d_out >=' +
        ' :d1'
      '   and l.d_out < :d2 and l1.id_p = :id_p'
      '   and l1.id_prod_plan_stop = l.id_prod_plan_stop'
      ' left join dutytypes d on d.id_dutytype = l.id_dutytype'
      ' left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT'
      ' left join personnel per on l1.id_p = per.id_p '
      ' left join post ps on per.idpost = ps.idpost'
      ' left join shifts h on h.id_shift = l.id_shift'
      ' left join project_ords o on o.id_order = l.id_order'
      
        ' group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,19,20,22,24,' +
        '25,26,27,28,29,30,31,32'
      ''
      '')
    Left = 116
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_p'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_p'
        ParamType = ptUnknown
      end>
    object qDetDEC_NO: TIBStringField
      DisplayLabel = #1044#1077#1089'.'#8470
      FieldName = 'DEC_NO'
      Origin = '"PRODUCT_OBJECTS"."DEC_NO"'
      Size = 32
    end
    object qDetNM: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'NM'
      ProviderFlags = []
      Size = 128
    end
    object qDetNAME_ORD: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
      FieldName = 'NAME_ORD'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qDetN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qDetSTEP: TIntegerField
      DisplayLabel = #1064#1072#1075
      FieldName = 'STEP'
      Origin = '"PRODUCT_OPER"."STEP"'
    end
    object qDetNAME_OPER: TIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'NAME_OPER'
      Origin = '"OPERATIONS"."NAME"'
      Size = 30
    end
    object qDetNAME_POST: TIBStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'NAME_POST'
      Origin = '"POST"."NAME"'
      Size = 50
    end
    object qDetFIO: TIBStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qDetID_EQUIPMENT: TIntegerField
      FieldName = 'ID_EQUIPMENT'
      ProviderFlags = []
    end
    object qDetSHOTNAME: TIBStringField
      DisplayLabel = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      FieldName = 'SHOTNAME'
      Origin = '"EQUIPMENTS"."SHOTNAME"'
      Size = 128
    end
    object qDetID_PROD_PLAN_P: TIntegerField
      DisplayLabel = #1056#1077#1075'. '#8470' '#1087#1083#1072#1085#1072
      FieldName = 'ID_PROD_PLAN_P'
      Origin = '"PRODUCT_PLANS_P"."ID_PROD_PLAN_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDetID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      FieldName = 'ID_P'
      Origin = '"PRODUCT_PLANS_P"."ID_P"'
    end
    object qDetAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1087#1083#1072#1085
      FieldName = 'AMOUNT'
      Origin = '"PRODUCT_PLANS_P"."AMOUNT"'
    end
    object qDetT_PERS: TFloatField
      FieldName = 'T_PERS'
      ProviderFlags = []
    end
    object qDetREM: TBlobField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'REM'
      Origin = '"PRODUCT_PLANS_P"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qDetF_AMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1092#1072#1082#1090
      FieldName = 'F_AMOUNT'
      Origin = '"PRODUCT_PLANS_P"."F_AMOUNT"'
    end
    object qDetD_OUT: TDateField
      DisplayLabel = #1044'/'#1087#1083#1072#1085#1072
      FieldName = 'D_OUT'
      Origin = '"PRODUCT_PLANS"."D_OUT"'
    end
    object qDetF_TIME_P: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' ('#1072#1073#1089') - '#1087#1083#1072#1085
      FieldName = 'F_TIME_P'
      Origin = '"PRODUCT_PLANS"."F_TIME"'
      DisplayFormat = '0.00'
    end
    object qDetDIN: TDateTimeField
      DisplayLabel = #1053#1072#1095#1072#1083#1086
      FieldName = 'DIN'
      ProviderFlags = []
      DisplayFormat = 'dd.mm.yyyy hh:nn'
    end
    object qDetDTO_: TDateTimeField
      DisplayLabel = #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1088#1072#1089#1095#1105#1090#1085#1086#1077
      FieldName = 'DTO_'
      ProviderFlags = []
      DisplayFormat = 'dd.mm.yyyy hh:nn'
    end
    object qDetDTO: TDateTimeField
      DisplayLabel = #1054#1082#1086#1085#1095#1072#1085#1080#1077' '
      FieldName = 'DTO'
      ProviderFlags = []
      DisplayFormat = 'dd.mm.yyyy hh:nn'
    end
    object qDetTM_: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1088#1072#1089#1095#1105#1090#1085#1086#1077
      FieldName = 'TM_'
      ProviderFlags = []
      DisplayFormat = '0.00'
    end
    object qDetTM: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103
      FieldName = 'TM'
      ProviderFlags = []
      DisplayFormat = '0.00'
    end
    object qDetF_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' ('#1072#1073#1089')'
      FieldName = 'F_TIME'
      Origin = '"PRODUCT_PLANS_P"."F_TIME"'
      DisplayFormat = '0.00'
    end
    object qDetP_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103
      FieldName = 'P_TIME'
      Origin = '"PRODUCT_PLANS_P"."P_TIME"'
      DisplayFormat = '0.00'
    end
    object qDetID_VERSION: TIntegerField
      DisplayLabel = #1042#1077#1088#1089#1080#1103
      FieldName = 'ID_VERSION'
      Origin = '"PROJECT_ORDS"."ID_VERSION"'
    end
    object qDetID_PROJECT: TIntegerField
      FieldName = 'ID_PROJECT'
      Origin = '"PROJECT_ORDS"."ID_PROJECT"'
    end
    object qDetID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS"."ID_ORDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDetID_OBJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_OBJECT'
      Origin = '"PRODUCT_OBJECTS"."ID_OBJECT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDetID_PROD_OPER: TIntegerField
      FieldName = 'ID_PROD_OPER'
      Origin = '"PRODUCT_OPER"."ID_PROD_OPER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDetOBJ_TYPE: TIntegerField
      DisplayLabel = #1058#1080#1087' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'OBJ_TYPE'
      Origin = '"PRODUCT_OBJECTS"."OBJ_TYPE"'
    end
    object qDetNAME_SHIFT: TIBStringField
      DisplayLabel = #1057#1084#1077#1085#1072
      FieldName = 'NAME_SHIFT'
      ProviderFlags = []
      Size = 64
    end
  end
  object qTab_List: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BeforeOpen = qTab_ListBeforeOpen
    SQL.Strings = (
      'select a.f,a.fio,a.nm,a.kf,a.tp,a.id_p,'
      'a.TOTAL,'
      
        'a.D1,a.D2,a.D3,a.D4,a.D5,a.D6,a.D7,a.D8,a.D9,a.D10,a.D11,a.D12,a' +
        '.D13,a.D14,a.D15,'
      
        'a.D16,a.D17,a.D18,a.D19,a.D20,a.D21,a.D22,a.D23,a.D24,a.D25,a.D2' +
        '6,a.D27,a.D28,a.D29,a.D30,a.D31'
      'from ('
      'select 1 f, cast(FIO || '#39' ['#39' || NAME ||'#39']'#39' as VARCHAR(110)) fio,'
      'cast(name as VARCHAR(50)) nm,'
      'cast(SHORTNAME_COEFF as VARCHAR(6)) kf,tp, id_p,'
      'TOTAL ,'
      'D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15,'
      'D16,D17,D18,D19,D20,D21,D22,D23,D24,D25,D26,D27,D28,D29,D30,D31'
      'from rep_tab(:ID_TAB)'
      'union'
      'select 2 f,cast('#39#1048#1090#1086#1075#1086' '#1087#1086' '#1090#1072#1073#1077#1083#1102':'#39' as VARCHAR(110)) fio,'
      'cast('#39#39' as VARCHAR(50)) nm,'
      'cast('#39'      '#39' as VARCHAR(6)) kf, -1 tp,-1 id_p,'
      'Sum(TOTAL) ,'
      
        'Sum(D1),Sum(D2),Sum(D3),Sum(D4),Sum(D5),Sum(D6),Sum(D7),Sum(D8),' +
        'Sum(D9),'
      'Sum(D10),Sum(D11),Sum(D12),Sum(D13),Sum(D14),Sum(D15),'
      
        'Sum(D16),Sum(D17),Sum(D18),Sum(D19),Sum(D20),Sum(D21),Sum(D22),S' +
        'um(D23),'
      
        'Sum(D24),Sum(D25),Sum(D26),Sum(D27),Sum(D28),Sum(D29),Sum(D30),S' +
        'um(D31)'
      'from rep_tab(:ID_TAB)'
      'union'
      'select 3 f,cast(FIO as VARCHAR(110)) fio,'
      'cast('#39#39' as VARCHAR(50)) nm,'
      'cast('#39'      '#39' as VARCHAR(6)) kf, tp,tp id_p,'
      'TOTAL_F total,'
      'D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15,'
      'D16,D17,D18,D19,D20,D21,D22,D23,D24,D25,D26,D27,D28,D29,D30,D31'
      'from REP_TAB_COEFF(:ID_TAB)'
      'union'
      'select 4 f,cast(FIO as VARCHAR(110)) fio,'
      'cast('#39#39' as VARCHAR(50)) nm,'
      'cast('#39'      '#39' as VARCHAR(6)) kf,-2 tp, -2 id_p,'
      'TOTAL_F total,'
      'D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15,'
      'D16,D17,D18,D19,D20,D21,D22,D23,D24,D25,D26,D27,D28,D29,D30,D31'
      'from REP_SORS(:ID_P_AREA,:d_in,:d_out)'
      ') a')
    Left = 204
    Top = 512
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_TAB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_TAB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_TAB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_P_AREA'
        ParamType = ptUnknown
      end
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
    object qTab_ListF: TIntegerField
      FieldName = 'F'
      ProviderFlags = []
    end
    object qTab_ListFIO: TIBStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      ProviderFlags = []
      Size = 110
    end
    object qTab_ListNM: TIBStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'NM'
      ProviderFlags = []
      Size = 50
    end
    object qTab_ListKF: TIBStringField
      DisplayLabel = #1050#1086#1101#1092'.'
      DisplayWidth = 6
      FieldName = 'KF'
      ProviderFlags = []
      Size = 6
    end
    object qTab_ListTP: TIntegerField
      DisplayLabel = #1055
      FieldName = 'TP'
      Origin = '"REP_TAB"."TP"'
    end
    object qTab_ListID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      FieldName = 'ID_P'
      ProviderFlags = []
    end
    object qTab_ListTOTAL: TFloatField
      DisplayLabel = #1048#1090#1086#1075#1086' '#1095#1072#1089#1086#1074
      FieldName = 'TOTAL'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD1: TFloatField
      DisplayLabel = '1'
      FieldName = 'D1'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD2: TFloatField
      DisplayLabel = '2'
      FieldName = 'D2'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD3: TFloatField
      DisplayLabel = '3'
      FieldName = 'D3'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD4: TFloatField
      DisplayLabel = '4'
      FieldName = 'D4'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD5: TFloatField
      DisplayLabel = '5'
      FieldName = 'D5'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD6: TFloatField
      DisplayLabel = '6'
      FieldName = 'D6'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD7: TFloatField
      DisplayLabel = '7'
      FieldName = 'D7'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD8: TFloatField
      DisplayLabel = '8'
      FieldName = 'D8'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD9: TFloatField
      DisplayLabel = '9'
      FieldName = 'D9'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD10: TFloatField
      DisplayLabel = '10'
      FieldName = 'D10'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD11: TFloatField
      DisplayLabel = '11'
      FieldName = 'D11'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD12: TFloatField
      DisplayLabel = '12'
      FieldName = 'D12'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD13: TFloatField
      DisplayLabel = '13'
      FieldName = 'D13'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD14: TFloatField
      DisplayLabel = '14'
      FieldName = 'D14'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD15: TFloatField
      DisplayLabel = '15'
      FieldName = 'D15'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD16: TFloatField
      DisplayLabel = '16'
      FieldName = 'D16'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD17: TFloatField
      DisplayLabel = '17'
      FieldName = 'D17'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD18: TFloatField
      DisplayLabel = '18'
      FieldName = 'D18'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD19: TFloatField
      DisplayLabel = '19'
      FieldName = 'D19'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD20: TFloatField
      DisplayLabel = '20'
      FieldName = 'D20'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD21: TFloatField
      DisplayLabel = '21'
      FieldName = 'D21'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD22: TFloatField
      DisplayLabel = '22'
      FieldName = 'D22'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD23: TFloatField
      DisplayLabel = '23'
      FieldName = 'D23'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD24: TFloatField
      DisplayLabel = '24'
      FieldName = 'D24'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD25: TFloatField
      DisplayLabel = '25'
      FieldName = 'D25'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD26: TFloatField
      DisplayLabel = '26'
      FieldName = 'D26'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD27: TFloatField
      DisplayLabel = '27'
      FieldName = 'D27'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD28: TFloatField
      DisplayLabel = '28'
      FieldName = 'D28'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD29: TFloatField
      DisplayLabel = '29'
      FieldName = 'D29'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD30: TFloatField
      DisplayLabel = '30'
      FieldName = 'D30'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD31: TFloatField
      DisplayLabel = '31'
      FieldName = 'D31'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
  end
  object dsTab_List: TDataSource
    DataSet = qTab_List
    Left = 204
    Top = 560
  end
  object qSum_Tab_List: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select NAME_AREA,ID_P_AREA,NOM,FIO ,'
      'SUM(TOTAL) TOTAL,'
      
        'SUM(TOTAL1) TOTAL1,SUM(TOTAL2) TOTAL2,SUM(TOTAL3) TOTAL3,SUM(TOT' +
        'AL4) TOTAL4,'
      
        'SUM(TOTAL5) TOTAL5,SUM(TOTAL6) TOTAL6,SUM(TOTAL7) TOTAL7,SUM(TOT' +
        'AL8) TOTAL8,'
      
        'SUM(TOTAL9) TOTAL9,SUM(TOTAL10) TOTAL10,SUM(TOTAL11) TOTAL11,SUM' +
        '(TOTAL12) TOTAL12'
      'from REP_TAB_SUM_YEAR(:ID_AR,:M_IN,:M_OUT ,:YE)'
      'group by NAME_AREA,ID_P_AREA,NOM,FIO')
    Left = 196
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_AR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'M_IN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'M_OUT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'YE'
        ParamType = ptUnknown
      end>
    object qSum_Tab_ListNAME_AREA: TIBStringField
      DisplayLabel = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
      FieldName = 'NAME_AREA'
      ProviderFlags = []
      Size = 60
    end
    object qSum_Tab_ListID_P_AREA: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
      FieldName = 'ID_P_AREA'
      ProviderFlags = []
    end
    object qSum_Tab_ListNOM: TIntegerField
      DisplayLabel = #1058#1080#1087
      FieldName = 'NOM'
      ProviderFlags = []
    end
    object qSum_Tab_ListFIO: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 128
      FieldName = 'FIO'
      ProviderFlags = []
      Size = 128
    end
    object qSum_Tab_ListTOTAL: TFloatField
      DisplayLabel = #1048#1090#1086#1075#1086
      FieldName = 'TOTAL'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qSum_Tab_ListTOTAL1: TFloatField
      DisplayLabel = '01'
      FieldName = 'TOTAL1'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qSum_Tab_ListTOTAL2: TFloatField
      DisplayLabel = '02'
      FieldName = 'TOTAL2'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qSum_Tab_ListTOTAL3: TFloatField
      DisplayLabel = '03'
      FieldName = 'TOTAL3'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qSum_Tab_ListTOTAL4: TFloatField
      DisplayLabel = '04'
      FieldName = 'TOTAL4'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qSum_Tab_ListTOTAL5: TFloatField
      DisplayLabel = '05'
      FieldName = 'TOTAL5'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qSum_Tab_ListTOTAL6: TFloatField
      DisplayLabel = '06'
      FieldName = 'TOTAL6'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qSum_Tab_ListTOTAL7: TFloatField
      DisplayLabel = '07'
      FieldName = 'TOTAL7'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qSum_Tab_ListTOTAL8: TFloatField
      DisplayLabel = '08'
      FieldName = 'TOTAL8'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qSum_Tab_ListTOTAL9: TFloatField
      DisplayLabel = '09'
      FieldName = 'TOTAL9'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qSum_Tab_ListTOTAL10: TFloatField
      DisplayLabel = '10'
      FieldName = 'TOTAL10'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qSum_Tab_ListTOTAL11: TFloatField
      DisplayLabel = '11'
      FieldName = 'TOTAL11'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qSum_Tab_ListTOTAL12: TFloatField
      DisplayLabel = '12'
      FieldName = 'TOTAL12'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
  end
  object dsSum_Tab_List: TDataSource
    DataSet = qSum_Tab_List
    Left = 192
    Top = 208
  end
  object qIns: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    Left = 700
    Top = 152
  end
  object qRep_Plan_Day: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      
        'select coalesce(per.fio,'#39#1056#1077#1079#1077#1088#1074#39') fio,l1.din+l1.tin din , l1.dto' +
        '+l1.tto dto,'
      ' coalesce(o.obj_name,i.name)||coalesce(o.dec_no,'#39#39') nm,'
      ' p.name name_ord,p.n_order,pt.name name_ptype,'
      ' r.step, s.name  name_oper, ps.name  name_post, l.id_equipment,'
      
        ' case when (e.id_equipment = 0 or e.id_equipment is null)  then ' +
        #39#39' else e.shotname end shotname,'
      
        ' l1.id_prod_plan_p,coalesce(l1.id_p,1) id_p,l1.amount ,l1.rem,l1' +
        '.f_amount,l.d_out,l.f_time f_time_p,'
      ' l1.dto+l1.tto dto_,'
      
        ' floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+ ( ((l1.dto+l1.t' +
        'to) -(l1.din+l1.tin))*24'
      ' - floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 tm_ ,'
      
        ' floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+ ( ((l1.dto+l1.t' +
        'to) -(l1.din+l1.tin))*24'
      ' - floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 tm ,'
      ' l1.f_time,l1.p_time ,'
      
        ' p.id_version,p.id_project, p.id_order, o.id_object,r.id_prod_op' +
        'er, o.obj_type,'
      ' f.id_operation,l.id_prod_plan, h.name name_shift'
      
        '  from project_ords p join product_objects o on o.id_version = p' +
        '.id_version'
      '  join product_oper r on r.id_object = o.id_object'
      
        '  join product_traff f on f.id_prod_oper = r.id_prod_oper and f.' +
        'id_area = 260'
      
        '  join operations s on s.id_area = f.id_area and s.id_operation ' +
        '= f.id_operation'
      
        '  join product_plans l on l.d_out >= '#39'10.12.2008'#39' and l.d_out <=' +
        ' '#39'31.12.2008'#39' and l.amount > 0'
      '  and l.id_prod_traf = f.id_prod_traff'
      '  join product_plans_p l1 on l1.id_prod_plan = l.id_prod_plan'
      '  left join items i on i.id_item = o.id_item'
      '  left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT'
      '  left join personnel per on l1.id_p = per.id_p'
      '  left join post ps on per.idpost = ps.idpost'
      '  left join shifts h on h.id_shift = l.id_shift'
      '  left join ptypes pt on pt.id_ptype = p.id_cptype'
      ' union'
      
        ' select coalesce(per.fio,'#39#1056#1077#1079#1077#1088#1074#39') fio, coalesce(l1.din+l1.tin, ' +
        'cast(l.d_out as timestamp)) din ,'
      ' coalesce(l1.dto+l1.tto, cast(l.d_out as timestamp) +'
      ' ( (floor(l.f_time) + (l.f_time - floor(l.f_time))) )/24) dto,'
      ' cast(coalesce(d.name,'#39#1041#1077#1079' '#1090#1080#1087#1072#39') as varchar(160))  nm,'
      ' cast(coalesce(d.name,'#39#1041#1077#1079' '#1090#1080#1087#1072#39') as varchar(64)) name_ord,'
      ' cast('#39#1041#1077#1079' '#1079#1072#1082#1072#1079#1072#39' as varchar(16)) n_order,'
      '  cast(coalesce(pt.name,'#39#1041#1077#1079' '#1090#1080#1087#1072#39') as varchar(32)) name_ptype,'
      ' cast(0 as integer) step,cast('#39'*'#39' as varchar(30)) name_oper,'
      ' ps.name  name_post, l.id_equipment,'
      
        ' case when (l.id_equipment = 0 or l.id_equipment is null)  then ' +
        #39#39' else e.shotname end shotname,'
      ' l1.id_prod_plan_p,coalesce(l1.id_p,1) id_p,l1.amount ,'
      ' l1.rem,l1.f_amount , l.d_out, l.f_time f_time_p,'
      ' l1.dto+l1.tto dto_,'
      ' floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+'
      ' ( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24'
      ' - floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 tm_,'
      ' coalesce(floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+'
      ' ( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24'
      ' - floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 ,'
      
        '  (floor(l.f_time) + (l.f_time - floor(l.f_time)) *60/100)  ) tm' +
        ' ,'
      ' l1.f_time,l1.p_time,'
      ' cast(0 as integer) id_version, cast(0 as integer) id_project,'
      ' cast(0 as integer) id_order,'
      ' coalesce(l.id_dutytype,1) id_object,'
      ' cast(0 as integer) id_prod_oper, cast(0 as integer) obj_type ,'
      ' cast(0 as integer) id_operation,'
      
        ' cast(0 as integer) id_prod_plan, cast(h.name as varchar(64)) na' +
        'me_shift'
      '  from product_plans_stop l'
      '  join product_plans_p l1 on  l.id_area = 260'
      
        '  and l.d_out >= '#39'10.12.2008'#39' and l.d_out <= '#39'31.12.2008'#39' and l1' +
        '.id_prod_plan_stop = l.id_prod_plan_stop'
      '  left join dutytypes d on d.id_dutytype = l.id_dutytype'
      '  left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT'
      '  left join personnel per on l1.id_p = per.id_p'
      '  left join post ps on per.idpost = ps.idpost'
      '  left join shifts h on h.id_shift = l.id_shift'
      '  left join project_ords o on o.id_order = l.id_order'
      '  left join ptypes pt on pt.id_ptype = o.id_cptype'
      '')
    Left = 410
    Top = 298
    object qRep_Plan_DayFIO: TIBStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qRep_Plan_DayDIN: TDateTimeField
      DisplayLabel = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1086#1077'|'#1053#1072#1095#1072#1083#1086
      FieldName = 'DIN'
      ProviderFlags = []
      DisplayFormat = 'dd.mm.yyyy hh:mm'
    end
    object qRep_Plan_DayDTO: TDateTimeField
      DisplayLabel = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1086#1077'|'#1054#1082#1086#1085#1095#1072#1085#1080#1077
      FieldName = 'DTO'
      ProviderFlags = []
      DisplayFormat = 'dd.mm.yyyy hh:mm'
    end
    object qRep_Plan_DayNM: TIBStringField
      DisplayLabel = #1054#1073#1098#1077#1082#1090
      FieldName = 'NM'
      ProviderFlags = []
      Size = 128
    end
    object qRep_Plan_DayNAME_ORD: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
      FieldName = 'NAME_ORD'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qRep_Plan_DayN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qRep_Plan_DaySTEP: TIntegerField
      DisplayLabel = #1064#1072#1075
      FieldName = 'STEP'
      Origin = '"PRODUCT_OPER"."STEP"'
    end
    object qRep_Plan_DayNAME_OPER: TIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'NAME_OPER'
      Origin = '"OPERATIONS"."NAME"'
      Size = 30
    end
    object qRep_Plan_DayNAME_POST: TIBStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'NAME_POST'
      Origin = '"POST"."NAME"'
      Size = 50
    end
    object qRep_Plan_DayID_EQUIPMENT: TIntegerField
      FieldName = 'ID_EQUIPMENT'
      ProviderFlags = []
    end
    object qRep_Plan_DaySHOTNAME: TIBStringField
      DisplayLabel = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      FieldName = 'SHOTNAME'
      Origin = '"EQUIPMENTS"."SHOTNAME"'
      Size = 64
    end
    object qRep_Plan_DayID_PROD_PLAN_P: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1083#1072#1085#1072' '#1087#1086' '#1091#1095#1072#1089#1090#1085#1080#1082#1072#1084
      FieldName = 'ID_PROD_PLAN_P'
      Origin = '"PRODUCT_PLANS_P"."ID_PROD_PLAN_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRep_Plan_DayID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      FieldName = 'ID_P'
      Origin = '"PRODUCT_PLANS_P"."ID_P"'
    end
    object qRep_Plan_DayAMOUNT_P: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1079#1072#1087#1083#1072#1085#1080#1088#1086#1074#1072#1085#1086
      FieldName = 'AMOUNT'
      Origin = '"PRODUCT_PLANS_P"."AMOUNT"'
    end
    object qRep_Plan_DayREM_P: TBlobField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'REM'
      Origin = '"PRODUCT_PLANS_P"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qRep_Plan_DayF_AMOUNT: TFloatField
      FieldName = 'F_AMOUNT'
      Origin = '"PRODUCT_PLANS"."F_AMOUNT"'
    end
    object qRep_Plan_DayD_OUT: TDateField
      FieldName = 'D_OUT'
      ProviderFlags = []
    end
    object qRep_Plan_DayF_TIME_P: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' ('#1072#1073#1089'.) - '#1087#1083#1072#1085
      FieldName = 'F_TIME_P'
      Origin = '"PRODUCT_PLANS_P"."F_TIME"'
      DisplayFormat = '0.0000'
    end
    object qRep_Plan_DayDTO_: TDateTimeField
      FieldName = 'DTO_'
      ProviderFlags = []
    end
    object qRep_Plan_DayTM_: TFloatField
      FieldName = 'TM_'
      ProviderFlags = []
    end
    object qRep_Plan_DayTM: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' ('#1095#1095':'#1084#1084') '#1088#1072#1089#1095#1105#1090#1085#1086#1077
      FieldName = 'TM'
      ProviderFlags = []
      DisplayFormat = '0.00'
    end
    object qRep_Plan_DayF_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' ('#1072#1073#1089')'
      FieldName = 'F_TIME'
      Origin = '"PRODUCT_PLANS"."F_TIME"'
    end
    object qRep_Plan_DayP_TIME_P: TFloatField
      DisplayLabel = #1054#1090#1095#1105#1090#1085#1086#1089#1090#1100'|'#1042#1088#1077#1084#1103
      FieldName = 'P_TIME'
      Origin = '"PRODUCT_PLANS_P"."P_TIME"'
      DisplayFormat = '0.00'
    end
    object qRep_Plan_DayID_VERSION: TIntegerField
      DisplayLabel = #1042#1077#1088#1089#1080#1103
      FieldName = 'ID_VERSION'
      Origin = '"PROJECT_ORDS"."ID_VERSION"'
    end
    object qRep_Plan_DayID_PROJECT: TIntegerField
      FieldName = 'ID_PROJECT'
      Origin = '"PROJECT_ORDS"."ID_PROJECT"'
    end
    object qRep_Plan_DayID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS"."ID_ORDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRep_Plan_DayID_OBJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_OBJECT'
      Origin = '"PRODUCT_OBJECTS"."ID_OBJECT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRep_Plan_DayID_PROD_OPER: TIntegerField
      FieldName = 'ID_PROD_OPER'
      Origin = '"PRODUCT_OPER"."ID_PROD_OPER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRep_Plan_DayOBJ_TYPE: TIntegerField
      DisplayLabel = #1058#1080#1087' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'OBJ_TYPE'
      Origin = '"PRODUCT_OBJECTS"."OBJ_TYPE"'
    end
    object qRep_Plan_DayID_OPERATION: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1087#1077#1088#1072#1094#1080#1080
      FieldName = 'ID_OPERATION'
      Origin = '"PRODUCT_TRAFF"."ID_OPERATION"'
    end
    object qRep_Plan_DayID_PROD_PLAN: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1083#1072#1085#1072
      FieldName = 'ID_PROD_PLAN'
      Origin = '"PRODUCT_PLANS"."ID_PROD_PLAN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRep_Plan_DayNAME_SHIFT: TIBStringField
      DisplayLabel = #1057#1084#1077#1085#1072
      FieldName = 'NAME_SHIFT'
      ProviderFlags = []
      Size = 64
    end
    object qRep_Plan_Dayid_nom: TIntegerField
      FieldKind = fkLookup
      FieldName = 'id_nom'
      LookupDataSet = qRepDay_Pers
      LookupKeyFields = 'ID_P'
      LookupResultField = 'nom'
      KeyFields = 'ID_P'
      Lookup = True
    end
    object qRep_Plan_Daynom_det: TIntegerField
      FieldKind = fkLookup
      FieldName = 'nom_det'
      LookupDataSet = qRepDay_Det
      LookupKeyFields = 'ID_OBJECT'
      LookupResultField = 'nom'
      KeyFields = 'ID_OBJECT'
      Lookup = True
    end
    object qRep_Plan_DayNAME_PTYPE: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldName = 'NAME_PTYPE'
      ProviderFlags = []
      Size = 32
    end
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 480
    Top = 152
  end
  object dsRep_Plan_Day: TDataSource
    DataSet = qRep_Plan_Day
    Left = 416
    Top = 340
  end
  object qRepDay_Det: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    OnCalcFields = qRepDay_DetCalcFields
    SQL.Strings = (
      ' select distinct o.id_object'
      
        ' from product_objects o  join product_oper r on r.id_object = o.' +
        'id_object'
      
        ' join product_traff f on f.id_prod_oper = r.id_prod_oper and f.i' +
        'd_area = 239'
      ' join product_plans l on'
      '    l.d_out = :d_out and l.ID_SHIFT = 1'
      '    and  l.id_prod_traf = f.id_prod_traff'
      ' join product_plans_p l1 on'
      '    l1.id_prod_plan = l.id_prod_plan '
      ' left join items i on i.id_item = o.id_item'
      ' left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT'
      ' left join personnel per on l1.id_p = per.id_p'
      ' left join post ps on per.idpost = ps.idpost'
      ''
      'union'
      ' select distinct l.id_dutytype'
      ' from product_plans_stop l'
      
        ' join product_plans_p l1 on  l.id_area = :id_area and l.d_out >=' +
        ' :d_out'
      '   and l.d_out < :d2 and l1.id_p = :id_p'
      '   and l1.id_prod_plan_stop = l.id_prod_plan_stop'
      ' join dutytypes d on d.id_dutytype = l.id_dutytype'
      ' left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT'
      ' left join personnel per on l1.id_p = per.id_p '
      ' left join post ps on per.idpost = ps.idpost'
      ' left join shifts h on h.id_shift = l.id_shift')
    Left = 516
    Top = 362
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_p'
        ParamType = ptUnknown
      end>
    object qRepDay_DetID_OBJECT: TIntegerField
      FieldName = 'ID_OBJECT'
      Origin = '"PRODUCT_OBJECTS"."ID_OBJECT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRepDay_Detnom: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'nom'
      Calculated = True
    end
  end
  object qRepDay_Pers: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    OnCalcFields = qRepDay_PersCalcFields
    SQL.Strings = (
      ' select distinct per.fio,per.id_p'
      ' from'
      
        ' product_plans l  join product_plans_p l1 on l1.id_prod_plan = l' +
        '.id_prod_plan '
      '    and l.d_out = :d_out and l.ID_SHIFT = ID_SHIFT'
      
        ' join product_traff f on  l.id_prod_traf = f.id_prod_traff and f' +
        '.id_area = :id_area'
      ' left join personnel per on l1.id_p = per.id_p'
      ' order by per.fio')
    Left = 582
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end>
    object qRepDay_PersFIO: TIBStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qRepDay_PersID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      FieldName = 'ID_P'
      Origin = '"PERSONNEL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qRepDay_Persnom: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'nom'
      Calculated = True
    end
  end
  object qFio_Det: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select per.fio,l1.din+l1.tin din , l1.dto+l1.tto dto,'
      ' coalesce(o.obj_name,i.name)||coalesce(o.dec_no,'#39#39') nm,'
      ' l.f_time f_time_p, o.id_object'
      
        '  from project_ords p join product_objects o on o.id_version = p' +
        '.id_version'
      '  join product_oper r on r.id_object = o.id_object'
      
        '  join product_traff f on f.id_prod_oper = r.id_prod_oper and f.' +
        'id_area = 239'
      
        '  join operations s on s.id_area = f.id_area and s.id_operation ' +
        '= f.id_operation'
      
        '  join product_plans l on l.d_out = '#39'05.12.2008'#39' and l.amount > ' +
        '0'
      ' and l.id_shift = 5'
      ' and l.id_prod_traf = f.id_prod_traff'
      
        ' join product_plans_p l1 on l1.id_p = 1149 and l1.id_prod_plan =' +
        ' l.id_prod_plan'
      ' left join items i on i.id_item = o.id_item'
      '  left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT'
      '  left join personnel per on l1.id_p = per.id_p'
      '  left join post ps on per.idpost = ps.idpost'
      '  left join shifts h on h.id_shift = l.id_shift'
      ' union'
      
        ' select per.fio, coalesce(l1.din+l1.tin, cast(l.d_out as timesta' +
        'mp)) din ,'
      ' coalesce(l1.dto+l1.tto, cast(l.d_out as timestamp) +'
      ' ( (floor(l.f_time) + (l.f_time - floor(l.f_time))) )/24) dto,'
      
        ' cast(d.name as varchar(160))  nm,l.f_time f_time_p,l.id_dutytyp' +
        'e id_object'
      '  from product_plans_stop l'
      
        '  join product_plans_p l1 on  l.id_area = 239 and l.d_out >= '#39'05' +
        '.12.2008'#39
      
        '    and l.d_out < '#39'06.12.2008'#39' and l1.id_p = 1149 and l1.id_prod' +
        '_plan_stop = l.id_prod_plan_stop'
      '  join dutytypes d on d.id_dutytype = l.id_dutytype'
      '  left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT'
      '  left join personnel per on l1.id_p = per.id_p'
      '  left join post ps on per.idpost = ps.idpost'
      '  left join shifts h on h.id_shift = l.id_shift')
    Left = 652
    Top = 346
    object qFio_DetFIO: TIBStringField
      DisplayWidth = 26
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qFio_DetDIN: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DIN'
      ProviderFlags = []
    end
    object qFio_DetDTO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTO'
      ProviderFlags = []
    end
    object qFio_DetNM: TIBStringField
      DisplayWidth = 160
      FieldName = 'NM'
      ProviderFlags = []
      Size = 160
    end
    object qFio_DetF_TIME_P: TFloatField
      DisplayWidth = 10
      FieldName = 'F_TIME_P'
      Origin = '"PRODUCT_PLANS_STOP"."F_TIME"'
    end
    object qFio_DetID_OBJECT: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_OBJECT'
      Origin = '"PRODUCT_PLANS_STOP"."ID_DUTYTYPE"'
    end
    object qFio_Detnom_det: TIntegerField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'nom_det'
      LookupDataSet = qFio_Det_Nom
      LookupKeyFields = 'ID_OBJECT'
      LookupResultField = 'nom'
      KeyFields = 'ID_OBJECT'
      Lookup = True
    end
  end
  object qFio_Det_Nom: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    OnCalcFields = qFio_Det_NomCalcFields
    SQL.Strings = (
      ' select distinct o.id_object'
      
        ' from product_objects o  join product_oper r on r.id_object = o.' +
        'id_object'
      
        ' join product_traff f on f.id_prod_oper = r.id_prod_oper and f.i' +
        'd_area = 239'
      ' join product_plans l on'
      '    l.d_out = :d_out and l.ID_SHIFT = 1'
      '    and  l.id_prod_traf = f.id_prod_traff'
      ' join product_plans_p l1 on l1.id_p = :id_p and'
      '    l1.id_prod_plan = l.id_prod_plan '
      ' left join items i on i.id_item = o.id_item'
      ' left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT'
      ' left join personnel per on l1.id_p = per.id_p'
      ' left join post ps on per.idpost = ps.idpost'
      ''
      'union'
      ' select distinct l.id_dutytype'
      ' from product_plans_stop l'
      
        ' join product_plans_p l1 on  l.id_area = :id_area and l.d_out >=' +
        ' :d_out'
      '   and l.d_out < :d2 and l1.id_p = :id_p and'
      
        '   l1.id_p = :id_p  and l1.id_prod_plan_stop = l.id_prod_plan_st' +
        'op'
      ' join dutytypes d on d.id_dutytype = l.id_dutytype'
      ' left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT'
      ' left join personnel per on l1.id_p = per.id_p '
      ' left join post ps on per.idpost = ps.idpost'
      ' left join shifts h on h.id_shift = l.id_shift')
    Left = 656
    Top = 396
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_p'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_p'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_p'
        ParamType = ptUnknown
      end>
    object qFio_Det_NomID_OBJECT: TIntegerField
      FieldName = 'ID_OBJECT'
      ProviderFlags = []
    end
    object qFio_Det_Nomnom: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'nom'
      Calculated = True
    end
  end
  object dsFio_Det: TDataSource
    DataSet = qFio_Det
    Left = 712
    Top = 396
  end
  object qPers: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterScroll = qPersAfterScroll
    SQL.Strings = (
      'select * from  GET_WORKERS_AREA(:ID_AREA,:D_BEGIN,:D_END)'
      'order by FIO')
    Left = 272
    Top = 276
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_AREA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'D_BEGIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'D_END'
        ParamType = ptUnknown
      end>
    object qPersFIO: TIBStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      ProviderFlags = []
      Size = 60
    end
    object qPersNAME: TIBStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'NAME'
      ProviderFlags = []
      Size = 50
    end
    object qPersID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      FieldName = 'ID_P'
      ProviderFlags = []
    end
    object qPersIS_WORKER: TIntegerField
      DisplayLabel = #1056#1072#1073'.'#1057#1087#1077#1094'.(1)'
      FieldName = 'IS_WORKER'
      ProviderFlags = []
    end
  end
  object dsPers: TDataSource
    DataSet = qPers
    Left = 272
    Top = 540
  end
  object dsRepDay_Pers: TDataSource
    DataSet = qRepDay_Pers
    Left = 584
    Top = 396
  end
  object qRepDay_Order: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      ' select cast('#39' '#1055#1083#1072#1085#39' as varchar(10)) pl,'
      ' coalesce(per.fio,'#39#1056#1077#1079#1077#1088#1074#39') fio,l.d_out,'
      
        ' p.name name_ord,p.n_order,pt.name name_ptype,p.id_order,per.id_' +
        'p,'
      ' sum(l1.f_time) f_time'
      
        '  from project_ords p join product_objects o on o.id_version = p' +
        '.id_version'
      '  join product_oper r on r.id_object = o.id_object'
      
        '  join product_traff f on f.id_prod_oper = r.id_prod_oper and f.' +
        'id_area = :id_area'
      
        '  join operations s on s.id_area = f.id_area and s.id_operation ' +
        '= f.id_operation'
      
        '  join product_plans l on l.d_out >= :d_in and l.d_out <= :d_out' +
        ' and l.amount > 0'
      '  and l.id_prod_traf = f.id_prod_traff'
      
        '  join product_plans_p l1 on l1.id_prod_plan = l.id_prod_plan an' +
        'd l1.id_p = :id_p'
      '  left join items i on i.id_item = o.id_item'
      '  left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT'
      '  left join personnel per on l1.id_p = per.id_p'
      '  left join post ps on per.idpost = ps.idpost'
      '  left join shifts h on h.id_shift = l.id_shift'
      '  left join ptypes pt on pt.id_ptype = p.id_cptype'
      '  group by 1,2,3,4,5,6,7,8'
      ' union'
      ' select cast('#39#1042#1085#1077' '#1087#1083#1072#1085#1072#39' as varchar(10)) pl,'
      ' coalesce(per.fio,'#39#1056#1077#1079#1077#1088#1074#39') fio,l.d_out,'
      ' cast(coalesce(o.name,'#39#1041#1077#1079' '#1090#1080#1087#1072#39') as varchar(64)) name_ord,'
      ' cast(coalesce(o.n_order,'#39#1041#1077#1079' '#1079#1072#1082#1072#1079#1072#39') as varchar(16)) n_order,'
      ' cast(coalesce(pt.name,'#39#1041#1077#1079' '#1090#1080#1087#1072#39') as varchar(32)) name_ptype,'
      ' o.id_order, per.id_p, sum(l1.f_time)'
      '  from product_plans_stop l'
      '  join product_plans_p l1 on  l.id_area = :id_area'
      '  and l.d_out >= :d_in and l.d_out <= :d_out and l1.id_p = :id_p'
      '  and l1.id_prod_plan_stop = l.id_prod_plan_stop'
      '  left join dutytypes d on d.id_dutytype = l.id_dutytype'
      '  left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT'
      '  left join personnel per on l1.id_p = per.id_p'
      '  left join post ps on per.idpost = ps.idpost'
      '  left join shifts h on h.id_shift = l.id_shift'
      '  left join project_ords o on o.id_order = l.id_order'
      '  left join ptypes pt on pt.id_ptype = o.id_cptype'
      '   group by 1,2,3,4,5,6,7,8'
      ' order by 2,3,4')
    Left = 328
    Top = 395
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_in'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_p'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_in'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_p'
        ParamType = ptUnknown
      end>
    object qRepDay_OrderPL: TIBStringField
      DisplayLabel = #1055#1083#1072#1085
      FieldName = 'PL'
      ProviderFlags = []
      Size = 10
    end
    object qRepDay_OrderFIO: TIBStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      ProviderFlags = []
      Size = 60
    end
    object qRepDay_OrderD_OUT: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'D_OUT'
      ProviderFlags = []
    end
    object qRepDay_OrderNAME_ORD: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
      FieldName = 'NAME_ORD'
      ProviderFlags = []
      Size = 64
    end
    object qRepDay_OrderN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      ProviderFlags = []
      Size = 16
    end
    object qRepDay_OrderID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ID_ORDER'
      ProviderFlags = []
    end
    object qRepDay_OrderID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      FieldName = 'ID_P'
      ProviderFlags = []
    end
    object qRepDay_OrderF_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' ('#1072#1073#1089')'
      FieldName = 'F_TIME'
      ProviderFlags = []
      DisplayFormat = '### ##.0.00'
    end
    object qRepDay_OrderNAME_PTYPE: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldName = 'NAME_PTYPE'
      ProviderFlags = []
      Size = 32
    end
  end
  object dsRepDay_Order: TDataSource
    DataSet = qRepDay_Order
    Left = 328
    Top = 451
  end
  object qRep_Order: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select cast('#39' '#1055#1083#1072#1085#39' as varchar(10)) pl,'
      ' coalesce(per.fio,'#39#1056#1077#1079#1077#1088#1074#39') fio,'
      
        ' p.name name_ord,p.n_order,pt.name name_ptype,p.id_order,per.id_' +
        'p,'
      ' sum(l1.f_time) f_time'
      
        '  from project_ords p join product_objects o on o.id_version = p' +
        '.id_version'
      '  join product_oper r on r.id_object = o.id_object'
      
        '  join product_traff f on f.id_prod_oper = r.id_prod_oper and f.' +
        'id_area = :id_area'
      
        '  join operations s on s.id_area = f.id_area and s.id_operation ' +
        '= f.id_operation'
      
        '  join product_plans l on l.d_out >= :d_in and l.d_out <= :d_out' +
        ' and l.amount > 0'
      '  and l.id_prod_traf = f.id_prod_traff'
      
        '  join product_plans_p l1 on l1.id_prod_plan = l.id_prod_plan an' +
        'd l1.id_p = :id_p'
      '  left join items i on i.id_item = o.id_item'
      '  left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT'
      '  left join personnel per on l1.id_p = per.id_p'
      '  left join post ps on per.idpost = ps.idpost'
      '  left join shifts h on h.id_shift = l.id_shift'
      '  left join ptypes pt on pt.id_ptype = p.id_cptype'
      '  group by 1,2,3,4,5,6,7'
      ' union'
      ' select cast('#39#1042#1085#1077' '#1087#1083#1072#1085#1072#39' as varchar(10)) pl,'
      ' coalesce(per.fio,'#39#1056#1077#1079#1077#1088#1074#39') fio,'
      ' cast(coalesce(o.name,'#39#1041#1077#1079' '#1090#1080#1087#1072#39') as varchar(64)) name_ord,'
      ' cast(coalesce(o.n_order,'#39#1041#1077#1079' '#1079#1072#1082#1072#1079#1072#39') as varchar(16)) n_order,'
      ' cast(coalesce(pt.name,'#39#1041#1077#1079' '#1090#1080#1087#1072#39') as varchar(32)) name_ptype,'
      ''
      ' o.id_order, per.id_p, sum(l1.f_time)'
      '  from product_plans_stop l'
      '  join product_plans_p l1 on  l.id_area = :id_area'
      '  and l.d_out >= :d_in and l.d_out <= :d_out and l1.id_p = :id_p'
      '  and l1.id_prod_plan_stop = l.id_prod_plan_stop'
      '  left join dutytypes d on d.id_dutytype = l.id_dutytype'
      '  left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT'
      '  left join personnel per on l1.id_p = per.id_p'
      '  left join post ps on per.idpost = ps.idpost'
      '  left join shifts h on h.id_shift = l.id_shift'
      '  left join project_ords o on o.id_order = l.id_order'
      '  left join ptypes pt on pt.id_ptype = o.id_cptype'
      '  group by 1,2,3,4,5,6,7'
      ' order by 2,3,4')
    Left = 384
    Top = 395
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_in'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_p'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_in'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_p'
        ParamType = ptUnknown
      end>
    object qRep_OrderPL: TIBStringField
      DisplayLabel = #1055#1083#1072#1085
      FieldName = 'PL'
      ProviderFlags = []
      Size = 10
    end
    object qRep_OrderFIO: TIBStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      ProviderFlags = []
      Size = 60
    end
    object qRep_OrderNAME_ORD: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
      FieldName = 'NAME_ORD'
      ProviderFlags = []
      Size = 64
    end
    object qRep_OrderN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      ProviderFlags = []
      Size = 16
    end
    object qRep_OrderID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ID_ORDER'
      ProviderFlags = []
    end
    object qRep_OrderID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      FieldName = 'ID_P'
      ProviderFlags = []
    end
    object qRep_OrderF_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' ('#1072#1073#1089')'
      FieldName = 'F_TIME'
      ProviderFlags = []
      DisplayFormat = '### ##.0.00'
    end
    object qRep_OrderNAME_PTYPE: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldName = 'NAME_PTYPE'
      ProviderFlags = []
      Size = 32
    end
  end
  object dsRep_Order: TDataSource
    DataSet = qRep_Order
    Left = 384
    Top = 443
  end
  object qRep_Ord: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select'
      ' cast('#39' '#1055#1083#1072#1085#39' as varchar(10)) pl,'
      ' cast('#39#1047#1072#1082#1072#1079#39' as varchar(32)) dt,'
      ' p.name name_ord,p.n_order,p.id_order,pt.name name_ptype,'
      ' sum(l1.f_time) f_time1 , sum(cast(0.0 as float)) f_time2,'
      ' sum(cast(0.0 as float)) f_time3'
      
        '  from project_ords p join product_objects o on o.id_version = p' +
        '.id_version'
      '  join product_oper r on r.id_object = o.id_object'
      
        '  join product_traff f on f.id_prod_oper = r.id_prod_oper and f.' +
        'id_area = :id_area'
      
        '  join operations s on s.id_area = f.id_area and s.id_operation ' +
        '= f.id_operation'
      
        '  join product_plans l on l.d_out >= :d_in and l.d_out <= :d_out' +
        ' and l.amount > 0'
      '  and l.id_prod_traf = f.id_prod_traff'
      '  join product_plans_p l1 on l1.id_prod_plan = l.id_prod_plan'
      '  left join items i on i.id_item = o.id_item'
      '  left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT'
      '  left join personnel per on l1.id_p = per.id_p'
      '  left join post ps on per.idpost = ps.idpost'
      '  left join shifts h on h.id_shift = l.id_shift'
      '  left join ptypes pt on pt.id_ptype = p.id_cptype'
      '  group by 1,2,3,4,5,6'
      ' union'
      ' select'
      ' cast('#39#1042#1085#1077' '#1087#1083#1072#1085#1072#39' as varchar(10)) pl,'
      ' coalesce(d.name,'#39#1041#1077#1079' '#1090#1080#1087#1072#39' ) dt,'
      ' cast(coalesce(o.name,'#39#1041#1077#1079' '#1079#1072#1082#1072#1079#1072#39') as varchar(64)) name_ord,'
      
        ' cast(coalesce(o.n_order,'#39#1041#1077#1079' '#1079#1072#1082#1072#1079#1072#39') as varchar(16)) name_ord,' +
        'o.id_order, pt.name name_ptype,'
      ' sum(cast(0.0 as float)) f_time1 , sum(l1.f_time) f_time2,'
      ' sum(cast(0.0 as float)) f_time3'
      '  from product_plans_stop l'
      '  join product_plans_p l1 on  l.id_area = :id_area'
      '  and l.d_out >= :d_in and l.d_out <= :d_out'
      '  and l1.id_prod_plan_stop = l.id_prod_plan_stop'
      '  left join dutytypes d on d.id_dutytype = l.id_dutytype'
      '  left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT'
      '  left join personnel per on l1.id_p = per.id_p'
      '  left join post ps on per.idpost = ps.idpost'
      '  left join shifts h on h.id_shift = l.id_shift'
      '  join project_ords o on o.id_order = l.id_order'
      '  left join ptypes pt on pt.id_ptype = o.id_cptype'
      '  group by 1,2,3,4,5,6'
      ' union'
      ' select'
      ' cast('#39#1042#1085#1077' '#1087#1083#1072#1085#1072#39' as varchar(10)) pl,'
      ' coalesce(d.name,'#39#1041#1077#1079' '#1090#1080#1087#1072#39' ) dt,'
      ' cast('#39#1041#1077#1079' '#1079#1072#1082#1072#1079#1072#39' as varchar(64)) name_ord,'
      
        ' cast('#39#1041#1077#1079' '#1079#1072#1082#1072#1079#1072#39' as varchar(16)) name_ord,cast(0 as integer) i' +
        'd_order,'
      ' cast('#39#1041#1077#1079' '#1090#1080#1087#1072#39' as varchar(32)) name_ptype,'
      
        ' sum(cast(0.0 as float)) f_time1 ,sum(cast(0.0 as float)) f_time' +
        '2,'
      ' sum(l1.f_time) f_time3'
      ' '
      '  from product_plans_stop l'
      '  join product_plans_p l1 on  l.id_area = :id_area'
      
        '  and l.d_out >= :d_in and l.d_out <= :d_out and l.id_order is n' +
        'ull'
      '  and l1.id_prod_plan_stop = l.id_prod_plan_stop'
      '  left join dutytypes d on d.id_dutytype = l.id_dutytype'
      '  left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT'
      '  left join personnel per on l1.id_p = per.id_p'
      '  left join post ps on per.idpost = ps.idpost'
      '  left join shifts h on h.id_shift = l.id_shift'
      '  group by 1,2,3,4,5'
      ''
      ' order by 5,1')
    Left = 272
    Top = 595
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_in'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_in'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
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
    object qRep_OrdDT: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1087#1083#1072#1085#1072
      FieldName = 'DT'
      ProviderFlags = []
      Size = 32
    end
    object qRep_OrdNAME_ORD: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
      FieldName = 'NAME_ORD'
      ProviderFlags = []
      Size = 64
    end
    object qRep_OrdN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      ProviderFlags = []
      Size = 16
    end
    object qRep_OrdID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ID_ORDER'
      ProviderFlags = []
    end
    object qRep_Ordid_nom: TIntegerField
      FieldKind = fkLookup
      FieldName = 'id_nom'
      LookupDataSet = qOrder
      LookupKeyFields = 'ID_ORDER'
      LookupResultField = 'nom'
      KeyFields = 'ID_ORDER'
      Lookup = True
    end
    object qRep_OrdF_TIME1: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103'|'#1055#1083#1072#1085
      FieldName = 'F_TIME1'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qRep_OrdF_TIME2: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103'|'#1042#1085#1077' '#1055#1083#1072#1085
      FieldName = 'F_TIME2'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qRep_OrdF_TIME3: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103'|'#1041#1077#1079' '#1079#1072#1082#1072#1079#1072
      FieldName = 'F_TIME3'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qRep_OrdNAME_PTYPE: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldName = 'NAME_PTYPE'
      ProviderFlags = []
      Size = 32
    end
  end
  object dsRep_Ord: TDataSource
    DataSet = qRep_Ord
    Left = 264
    Top = 459
  end
  object qOrder: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    OnCalcFields = qOrderCalcFields
    SQL.Strings = (
      'select distinct p.id_order'
      
        '  from project_ords p join product_objects o on o.id_version = p' +
        '.id_version'
      '  join product_oper r on r.id_object = o.id_object'
      
        '  join product_traff f on f.id_prod_oper = r.id_prod_oper and f.' +
        'id_area = :id_area'
      
        '  join operations s on s.id_area = f.id_area and s.id_operation ' +
        '= f.id_operation'
      
        '  join product_plans l on  l.d_out >= :d_in and l.d_out <= :d_ou' +
        't and l.amount > 0'
      '  and l.id_prod_traf = f.id_prod_traff'
      '  join product_plans_p l1 on l1.id_prod_plan = l.id_prod_plan'
      '  left join items i on i.id_item = o.id_item'
      '  left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT'
      '  left join personnel per on l1.id_p = per.id_p'
      '  left join post ps on per.idpost = ps.idpost'
      '  left join shifts h on h.id_shift = l.id_shift'
      ' union'
      ' select distinct  o.id_order'
      '  from product_plans_stop l'
      '  join product_plans_p l1 on  l.id_area = :id_area'
      '  and l.d_out >= :d_in and l.d_out <= :d_out'
      '  and l1.id_prod_plan_stop = l.id_prod_plan_stop'
      '  left join dutytypes d on d.id_dutytype = l.id_dutytype'
      '  left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT'
      '  left join personnel per on l1.id_p = per.id_p'
      '  left join post ps on per.idpost = ps.idpost'
      '  left join shifts h on h.id_shift = l.id_shift'
      '  join project_ords o on o.id_order = l.id_order'
      ' union'
      ' select distinct  coalesce(o.id_order,0) id_order'
      '  from product_plans_stop l'
      '  join product_plans_p l1 on  l.id_area = :id_area'
      
        '  and l.d_out >= :d_in and l.d_out <= :d_out and l.id_order is n' +
        'ull'
      '  and l1.id_prod_plan_stop = l.id_prod_plan_stop'
      '  left join dutytypes d on d.id_dutytype = l.id_dutytype'
      '  left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT'
      '  left join personnel per on l1.id_p = per.id_p'
      '  left join post ps on per.idpost = ps.idpost'
      '  left join shifts h on h.id_shift = l.id_shift'
      '  join project_ords o on o.id_order = l.id_order')
    Left = 752
    Top = 395
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_in'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_in'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
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
    object qOrderID_ORDER: TIntegerField
      FieldName = 'ID_ORDER'
      ProviderFlags = []
    end
    object qOrdernom: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'nom'
      Calculated = True
    end
  end
  object qRep_Order_Sum: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      
        'select fio,name_ord,n_order,name_ptype,id_order,id_p,sum(f_time)' +
        ' f_time'
      'from REP_TABSUM_ORDER(:id_area,:d_in,:d_out)'
      'group by 1,2,3,4,5,6')
    Left = 464
    Top = 443
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
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
    object qRep_Order_SumFIO: TIBStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      ProviderFlags = []
      Size = 60
    end
    object qRep_Order_SumNAME_ORD: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
      FieldName = 'NAME_ORD'
      ProviderFlags = []
      Size = 64
    end
    object qRep_Order_SumN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      ProviderFlags = []
      Size = 16
    end
    object qRep_Order_SumNAME_PTYPE: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldName = 'NAME_PTYPE'
      ProviderFlags = []
      Size = 32
    end
    object qRep_Order_SumID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ID_ORDER'
      ProviderFlags = []
    end
    object qRep_Order_SumID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      FieldName = 'ID_P'
      ProviderFlags = []
    end
    object qRep_Order_SumF_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' ('#1072#1073#1089')'
      FieldName = 'F_TIME'
      ProviderFlags = []
      DisplayFormat = '### ##.0.00'
    end
  end
  object dsRep_Order_Sum: TDataSource
    DataSet = qRep_Order_Sum
    Left = 464
    Top = 395
  end
  object qWork_Norm: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    OnCalcFields = qWork_NormCalcFields
    SQL.Strings = (
      ' select n.id_norm, n.work_shift, n.c_year, n.c_month, n.hours,'
      'n.begin_days,s.name'
      
        ' from work_norms n join work_shifts s on s.work_shift = n.work_s' +
        'hift'
      ' where  n.c_year = :c_year and n.c_month = :c_month'
      'order by s.name,n.hours')
    Left = 132
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'c_year'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'c_month'
        ParamType = ptUnknown
      end>
    object qWork_NormID_NORM: TIntegerField
      FieldName = 'ID_NORM'
      Origin = '"WORK_NORMS"."ID_NORM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qWork_NormWORK_SHIFT: TSmallintField
      FieldName = 'WORK_SHIFT'
      Origin = '"WORK_NORMS"."WORK_SHIFT"'
    end
    object qWork_NormC_YEAR: TIntegerField
      FieldName = 'C_YEAR'
      Origin = '"WORK_NORMS"."C_YEAR"'
    end
    object qWork_NormC_MONTH: TIntegerField
      FieldName = 'C_MONTH'
      Origin = '"WORK_NORMS"."C_MONTH"'
    end
    object qWork_NormHOURS: TFloatField
      DisplayLabel = #1053#1086#1088#1084#1072' '#1095#1072#1089#1086#1074
      FieldName = 'HOURS'
      Origin = '"WORK_NORMS"."HOURS"'
    end
    object qWork_NormNAME: TIBStringField
      DisplayLabel = #1056#1072#1073#1086#1090#1072
      FieldName = 'NAME'
      Origin = '"WORK_SHIFTS"."NAME"'
      Size = 32
    end
    object qWork_NormBEGIN_DAYS: TSmallintField
      FieldName = 'BEGIN_DAYS'
      Origin = '"WORK_NORMS"."BEGIN_DAYS"'
    end
    object qWork_Normdate: TStringField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1089#1084#1077#1085#1099
      FieldKind = fkCalculated
      FieldName = 'date'
      Size = 16
      Calculated = True
    end
    object qWork_NormnomDate: TStringField
      DisplayLabel = #1044#1077#1085#1100
      FieldKind = fkCalculated
      FieldName = 'nomDate'
      Size = 16
      Calculated = True
    end
  end
  object dsWork_Norm: TDataSource
    DataSet = qWork_Norm
    Left = 132
    Top = 344
  end
  object qTab_Norm: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterDelete = qTab_NormAfterDelete
    BeforeOpen = qTab_NormBeforeOpen
    SQL.Strings = (
      
        'select t.id_tab_norm, t.id_tab, t.id_p, t.id_norm, t.c_date, w.h' +
        'ours,s.name'
      'from tab_norms t'
      'join work_norms w on w.id_norm = t.id_norm'
      'join work_shifts s on s.work_shift = w.work_shift'
      'where t.id_tab = :id_tab and t.id_p = :id_p'
      'order by  t.c_date')
    UpdateObject = UpTab_Norm
    GeneratorField.Field = 'ID_TAB_NORM'
    GeneratorField.Generator = 'OBJ_ID'
    Left = 68
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_tab'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_p'
        ParamType = ptUnknown
      end>
    object qTab_NormID_TAB_NORM: TIntegerField
      DisplayLabel = #1056#1077#1075'. '#8470' '#1079#1072#1087#1084#1089#1080
      FieldName = 'ID_TAB_NORM'
      Origin = '"TAB_NORMS"."ID_TAB_NORM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTab_NormID_TAB: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1072#1073#1077#1083#1103
      FieldName = 'ID_TAB'
      Origin = '"TAB_NORMS"."ID_TAB"'
    end
    object qTab_NormID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'.'#8470
      FieldName = 'ID_P'
      Origin = '"TAB_NORMS"."ID_P"'
    end
    object qTab_NormID_NORM: TIntegerField
      DisplayLabel = #1056#1077#1075'. '#8470' '#1079#1072#1087#1080#1089#1080' '#1085#1086#1088#1084#1099
      FieldName = 'ID_NORM'
      Origin = '"TAB_NORMS"."ID_NORM"'
    end
    object qTab_NormC_DATE: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'C_DATE'
      Origin = '"TAB_NORMS"."C_DATE"'
    end
    object qTab_NormHOURS: TFloatField
      DisplayLabel = #1053#1086#1088#1084#1072' ('#1095')'
      FieldName = 'HOURS'
      Origin = '"WORK_NORMS"."HOURS"'
    end
    object qTab_NormNAME: TIBStringField
      DisplayLabel = #1043#1088#1072#1092#1080#1082
      FieldName = 'NAME'
      Origin = '"WORK_SHIFTS"."NAME"'
      Size = 32
    end
  end
  object dsTab_Norm: TDataSource
    DataSet = qTab_Norm
    Left = 68
    Top = 296
  end
  object qT_Norm: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select cast(w.hours as integer) hours'
      'from tab_norms t'
      'join work_norms w on w.id_norm = t.id_norm'
      'join work_shifts s on s.work_shift = w.work_shift'
      'where t.id_tab = :id_tab and t.id_p = :id_p')
    Left = 428
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_tab'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_p'
        ParamType = ptUnknown
      end>
    object qT_NormHOURS: TIntegerField
      FieldName = 'HOURS'
      ProviderFlags = []
    end
  end
  object UpTab_Norm: TIBUpdateSQL
    ModifySQL.Strings = (
      'update tab_norms'
      'set id_norm = :id_norm,'
      'where (id_tab_norm = :id_tab_norm)')
    InsertSQL.Strings = (
      
        'insert into tab_norms (id_tab_norm, id_tab, id_p, id_norm, c_dat' +
        'e)'
      'values (:id_tab_norm, :id_tab, :id_p, :id_norm, :c_date)')
    DeleteSQL.Strings = (
      'delete from tab_norms'
      'where (id_tab_norm = :id_tab_norm)')
    Left = 20
    Top = 256
  end
  object qTab_Pos: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BeforeOpen = qTab_PosBeforeOpen
    SQL.Strings = (
      
        'select t.tab_day,t.val, c.name,c.shortname, t.comment, t.id_tab_' +
        'pos,  t.id_tab_coeff,t.id_tab, id_p,  t.coeff,'
      ' t.d_fix, t.id_fix'
      
        'from tab_pos t join tab_coeffs c on c.id_tab_coeff = t.id_tab_co' +
        'eff'
      'where id_tab = :id_tab and t.id_p = :id_p'
      'order by t.tab_day , t.id_tab_coeff')
    Left = 244
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_tab'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_p'
        ParamType = ptUnknown
      end>
    object qTab_PosTAB_DAY: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'TAB_DAY'
      Origin = '"TAB_POS"."TAB_DAY"'
    end
    object qTab_PosVAL: TIBBCDField
      DisplayLabel = #1063#1072#1089
      FieldName = 'VAL'
      Origin = '"TAB_POS"."VAL"'
      Precision = 18
      Size = 3
    end
    object qTab_PosNAME: TIBStringField
      DisplayLabel = #1050#1086#1101#1092'.'
      FieldName = 'NAME'
      Origin = '"TAB_COEFFS"."NAME"'
      Size = 64
    end
    object qTab_PosSHORTNAME: TIBStringField
      DisplayLabel = #1050#1092
      FieldName = 'SHORTNAME'
      Origin = '"TAB_COEFFS"."SHORTNAME"'
      Size = 4
    end
    object qTab_PosCOMMENT: TIBStringField
      DisplayLabel = #1050#1086#1101#1092#1080#1094#1080#1077#1085#1090
      FieldName = 'COMMENT'
      Origin = '"TAB_POS"."COMMENT"'
      Size = 64
    end
    object qTab_PosD_FIX: TDateTimeField
      DisplayLabel = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077
      FieldName = 'D_FIX'
      Origin = '"TAB_POS"."D_FIX"'
    end
    object qTab_PosID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'.'#8470
      FieldName = 'ID_P'
      Origin = '"TAB_POS"."ID_P"'
    end
  end
  object dsTab_Pos: TDataSource
    DataSet = qTab_Pos
    Left = 244
    Top = 384
  end
  object qTab_Ext: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterPost = qTab_ExtAfterPost
    BeforeOpen = qTab_ExtBeforeOpen
    BeforePost = qTab_ExtBeforePost
    OnNewRecord = qTab_ExtNewRecord
    OnPostError = qTab_ExtPostError
    SQL.Strings = (
      
        'select t.id_tab_exrafee, t.id_tab, t.id_p, t.c_date, t.tatal_sum' +
        ', t.id_currency,'
      't.id_order, t.rem, t.id_typeexrafee, o.name,o.n_order'
      
        'from tab_exrafees t left join project_ords o on o.id_order = t.i' +
        'd_order'
      'where t.id_tab = :id_tab and t.id_p = :id_p')
    UpdateObject = UpTab_Ext
    GeneratorField.Field = 'ID_TAB_EXRAFEE'
    GeneratorField.Generator = 'OBJ_ID'
    Left = 28
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_tab'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_p'
        ParamType = ptUnknown
      end>
    object qTab_ExtID_TAB_EXRAFEE: TIntegerField
      DisplayLabel = #1056#1077#1075'. '#8470' '#1079#1072#1087#1080#1089#1080
      FieldName = 'ID_TAB_EXRAFEE'
      Origin = '"TAB_EXRAFEES"."ID_TAB_EXRAFEE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTab_ExtID_TAB: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1072#1073#1077#1083#1103
      FieldName = 'ID_TAB'
      Origin = '"TAB_EXRAFEES"."ID_TAB"'
    end
    object qTab_ExtID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      FieldName = 'ID_P'
      Origin = '"TAB_EXRAFEES"."ID_P"'
    end
    object qTab_ExtC_DATE: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'C_DATE'
      Origin = '"TAB_EXRAFEES"."C_DATE"'
    end
    object qTab_ExtTATAL_SUM: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'TATAL_SUM'
      Origin = '"TAB_EXRAFEES"."TATAL_SUM"'
    end
    object qTab_ExtID_CURRENCY: TIntegerField
      FieldName = 'ID_CURRENCY'
      Origin = '"TAB_EXRAFEES"."ID_CURRENCY"'
    end
    object qTab_ExtID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ID_ORDER'
      Origin = '"TAB_EXRAFEES"."ID_ORDER"'
    end
    object qTab_ExtREM: TBlobField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'REM'
      Origin = '"TAB_EXRAFEES"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qTab_ExtID_TYPEEXRAFEE: TIntegerField
      FieldName = 'ID_TYPEEXRAFEE'
      Origin = '"TAB_EXRAFEES"."ID_TYPEEXRAFEE"'
    end
    object qTab_ExtNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qTab_ExtN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qTab_ExtnID_TEPEEXT: TStringField
      DisplayLabel = #1042#1080#1076' '#1059'/'#1053
      FieldKind = fkLookup
      FieldName = 'nID_TEPEEXT'
      LookupDataSet = qExt
      LookupKeyFields = 'ID_TYPEEXRAFEE'
      LookupResultField = 'NAME'
      KeyFields = 'ID_TYPEEXRAFEE'
      Size = 32
      Lookup = True
    end
    object qTab_ExtnID_CUR: TStringField
      DisplayLabel = #1042#1072#1083#1102#1090#1072
      FieldKind = fkLookup
      FieldName = 'nID_CUR'
      LookupDataSet = dmIS.qCurrency
      LookupKeyFields = 'ID_CURRENCY'
      LookupResultField = 'NAME'
      KeyFields = 'ID_CURRENCY'
      Size = 4
      Lookup = True
    end
  end
  object dsTab_Ext: TDataSource
    DataSet = qTab_Ext
    Left = 28
    Top = 168
  end
  object qExt: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select id_typeexrafee, name, id_c from typeexrafees')
    Left = 28
    Top = 412
    object qExtID_TYPEEXRAFEE: TIntegerField
      FieldName = 'ID_TYPEEXRAFEE'
      Origin = '"TYPEEXRAFEES"."ID_TYPEEXRAFEE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qExtNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"TYPEEXRAFEES"."NAME"'
      Size = 32
    end
    object qExtID_C: TIntegerField
      FieldName = 'ID_C'
      Origin = '"TYPEEXRAFEES"."ID_C"'
    end
  end
  object dsExt: TDataSource
    DataSet = qExt
    Left = 30
    Top = 468
  end
  object UpTab_Ext: TIBUpdateSQL
    ModifySQL.Strings = (
      'update tab_exrafees'
      'set'
      '    c_date = :c_date,'
      '    tatal_sum = :tatal_sum,'
      '    id_currency = :id_currency,'
      '    id_order = :id_order,'
      '    rem = :rem,'
      '    id_typeexrafee = :id_typeexrafee'
      'where (id_tab_exrafee = :id_tab_exrafee)')
    InsertSQL.Strings = (
      
        'insert into tab_exrafees (id_tab_exrafee, id_tab, id_p, c_date, ' +
        'tatal_sum, id_currency, id_order, rem, id_typeexrafee)'
      
        'values (:id_tab_exrafee, :id_tab, :id_p, :c_date, :tatal_sum, :i' +
        'd_currency, :id_order, :rem, :id_typeexrafee)')
    DeleteSQL.Strings = (
      'delete from tab_exrafees'
      'where (id_tab_exrafee = :id_tab_exrafee)')
    Left = 76
    Top = 160
  end
  object qPost: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      
        'select distinct w.idpost,w.name from  GET_WORKERS_AREA(:ID_AREA,' +
        ':D_BEGIN,:D_END) w'
      'where w.idpost > 0  order by w.name')
    Left = 276
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_AREA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'D_BEGIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'D_END'
        ParamType = ptUnknown
      end>
    object qPostIDPOST: TIntegerField
      FieldName = 'IDPOST'
      Origin = '"GET_WORKERS_AREA"."IDPOST"'
    end
    object qPostNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"GET_WORKERS_AREA"."NAME"'
      Size = 50
    end
  end
  object dsPost: TDataSource
    DataSet = qPost
    Left = 324
    Top = 224
  end
  object qWork: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select distinct p.work_shift, s.name'
      'from GET_WORKERS_AREA(:ID_AREA,:D_BEGIN,:D_END) w'
      'join personnel p on p.id_p = w.id_p'
      'join work_shifts s on s.work_shift = p.work_shift'
      'where w.idpost > 0  order by w.name')
    Left = 396
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_AREA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'D_BEGIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'D_END'
        ParamType = ptUnknown
      end>
    object qWorkWORK_SHIFT: TSmallintField
      FieldName = 'WORK_SHIFT'
      Origin = '"PERSONNEL"."WORK_SHIFT"'
    end
    object qWorkNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"WORK_SHIFTS"."NAME"'
      Size = 32
    end
  end
  object dsTab_Work: TDataSource
    DataSet = qWork
    Left = 420
    Top = 64
  end
  object qRep_Ord_Sum: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    OnCalcFields = qRep_Ord_SumCalcFields
    SQL.Strings = (
      'select p.*  from Rep_Order_Plan(:id_area,:d_in,:d_out) p')
    Left = 333
    Top = 507
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
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
    object qRep_Ord_SumN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      ProviderFlags = []
      Size = 16
    end
    object qRep_Ord_SumNAME_ORD: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
      FieldName = 'NAME_ORD'
      ProviderFlags = []
      Size = 64
    end
    object qRep_Ord_SumID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ID_ORDER'
      ProviderFlags = []
    end
    object qRep_Ord_SumNAME_PTYPE: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldName = 'NAME_PTYPE'
      ProviderFlags = []
      Size = 32
    end
    object qRep_Ord_SumSF1: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103'|'#1055#1083#1072#1085
      FieldName = 'SF1'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qRep_Ord_SumSF2: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103'|'#1042#1085#1077' '#1055#1083#1072#1085
      FieldName = 'SF2'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qRep_Ord_SumnSF1_SF2: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103'|'#1048#1090#1086#1075#1086
      FieldKind = fkCalculated
      FieldName = 'nSF1_SF2'
      DisplayFormat = '### ### ##0.00'
      Calculated = True
    end
    object qRep_Ord_SumID_ESTIMATE: TIntegerField
      DisplayLabel = #1057#1084#1077#1090#1072' '#1055#1069#1054
      FieldName = 'ID_ESTIMATE'
      ProviderFlags = []
    end
    object qRep_Ord_SumID_ESTIMATE_KD: TIntegerField
      DisplayLabel = #1057#1084#1077#1090#1072' '#1050#1044
      FieldName = 'ID_ESTIMATE_KD'
      ProviderFlags = []
    end
    object qRep_Ord_SumTOTAL_OPER_PEO: TFloatField
      DisplayLabel = #1054#1073#1097#1072#1103' '#1089#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1081'|'#1055#1069#1054
      FieldName = 'TOTAL_OPER_PEO'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qRep_Ord_SumTOTAL_OPER_KD: TFloatField
      DisplayLabel = #1054#1073#1097#1072#1103' '#1089#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1081'|'#1050#1044
      FieldName = 'TOTAL_OPER_KD'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qRep_Ord_SumSF3: TFloatField
      DisplayLabel = #1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1055#1069#1054'|'#1050#1086#1083'-'#1074#1086' '#1086#1087#1077#1088#1072#1094#1080#1081
      FieldName = 'SF3'
      Origin = '"REP_ORDER_PLAN"."SF3"'
      DisplayFormat = '### ### ##0.00'
    end
    object qRep_Ord_SumSF4: TFloatField
      DisplayLabel = #1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1055#1069#1054'|'#1057#1091#1084#1084#1072
      FieldName = 'SF4'
      Origin = '"REP_ORDER_PLAN"."SF4"'
      DisplayFormat = '### ### ##0.00'
    end
    object qRep_Ord_SumPR: TFloatField
      DisplayLabel = #1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1055#1069#1054'|'#1044#1086#1083#1103' %'
      FieldName = 'PR'
      Origin = '"REP_ORDER_PLAN"."PR"'
      DisplayFormat = '### ### ##0.00'
    end
    object qRep_Ord_SumSF3_: TFloatField
      DisplayLabel = #1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1050#1044'|'#1050#1086#1083'-'#1074#1086' '#1086#1087#1077#1088#1072#1094#1080#1081
      FieldName = 'SF3_'
      Origin = '"REP_ORDER_PLAN"."SF3_"'
      DisplayFormat = '### ### ##0.00'
    end
    object qRep_Ord_SumSF4_: TFloatField
      DisplayLabel = #1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1050#1044'|'#1057#1091#1084#1084#1072
      FieldName = 'SF4_'
      Origin = '"REP_ORDER_PLAN"."SF4_"'
      DisplayFormat = '### ### ##0.00'
    end
    object qRep_Ord_SumPR_: TFloatField
      DisplayLabel = #1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1050#1044'|'#1044#1086#1083#1103' %'
      FieldName = 'PR_'
      Origin = '"REP_ORDER_PLAN"."PR_"'
      DisplayFormat = '### ### ##0.00'
    end
  end
  object dsRep_Ord_Sum: TDataSource
    DataSet = qRep_Ord_Sum
    Left = 341
    Top = 579
  end
  object IBQuery1: TIBQuery
    Left = 645
    Top = 451
  end
  object qTab_List_Plan: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BeforeOpen = qTab_List_PlanBeforeOpen
    SQL.Strings = (
      'select * from REP_SORS_ID_P(:ID_TAB_ ,:ID_P_AREA,:D_IN ,:D_OUT)')
    Left = 580
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_TAB_'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_P_AREA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'D_IN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'D_OUT'
        ParamType = ptUnknown
      end>
    object qTab_List_PlanTP: TIntegerField
      DisplayLabel = #1055
      FieldName = 'TP'
      Origin = '"REP_SORS_ID_P"."TP"'
    end
    object qTab_List_PlanID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      FieldName = 'ID_P'
      Origin = '"REP_SORS_ID_P"."ID_P"'
    end
    object qTab_List_PlanFIO: TIBStringField
      DisplayLabel = #1060#1048#1054
      DisplayWidth = 110
      FieldName = 'FIO'
      Origin = '"REP_SORS_ID_P"."FIO"'
      Size = 110
    end
    object qTab_List_PlanTOTAL_F: TFloatField
      DisplayLabel = #1048#1090#1086#1075#1086' '#1095#1072#1089#1086#1074
      FieldName = 'TOTAL_F'
      Origin = '"REP_SORS_ID_P"."TOTAL_F"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD1: TFloatField
      DisplayLabel = '1'
      FieldName = 'D1'
      Origin = '"REP_SORS_ID_P"."D1"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD2: TFloatField
      DisplayLabel = '2'
      FieldName = 'D2'
      Origin = '"REP_SORS_ID_P"."D2"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD3: TFloatField
      DisplayLabel = '3'
      FieldName = 'D3'
      Origin = '"REP_SORS_ID_P"."D3"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD4: TFloatField
      DisplayLabel = '4'
      FieldName = 'D4'
      Origin = '"REP_SORS_ID_P"."D4"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD5: TFloatField
      DisplayLabel = '5'
      FieldName = 'D5'
      Origin = '"REP_SORS_ID_P"."D5"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD6: TFloatField
      DisplayLabel = '6'
      FieldName = 'D6'
      Origin = '"REP_SORS_ID_P"."D6"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD7: TFloatField
      DisplayLabel = '7'
      FieldName = 'D7'
      Origin = '"REP_SORS_ID_P"."D7"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD8: TFloatField
      DisplayLabel = '8'
      FieldName = 'D8'
      Origin = '"REP_SORS_ID_P"."D8"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD9: TFloatField
      DisplayLabel = '9'
      FieldName = 'D9'
      Origin = '"REP_SORS_ID_P"."D9"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD10: TFloatField
      DisplayLabel = '10'
      FieldName = 'D10'
      Origin = '"REP_SORS_ID_P"."D10"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD11: TFloatField
      DisplayLabel = '11'
      FieldName = 'D11'
      Origin = '"REP_SORS_ID_P"."D11"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD12: TFloatField
      DisplayLabel = '12'
      FieldName = 'D12'
      Origin = '"REP_SORS_ID_P"."D12"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD13: TFloatField
      DisplayLabel = '13'
      FieldName = 'D13'
      Origin = '"REP_SORS_ID_P"."D13"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD14: TFloatField
      DisplayLabel = '14'
      FieldName = 'D14'
      Origin = '"REP_SORS_ID_P"."D14"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD15: TFloatField
      DisplayLabel = '15'
      FieldName = 'D15'
      Origin = '"REP_SORS_ID_P"."D15"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD16: TFloatField
      DisplayLabel = '16'
      FieldName = 'D16'
      Origin = '"REP_SORS_ID_P"."D16"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD17: TFloatField
      DisplayLabel = '17'
      FieldName = 'D17'
      Origin = '"REP_SORS_ID_P"."D17"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD18: TFloatField
      DisplayLabel = '18'
      FieldName = 'D18'
      Origin = '"REP_SORS_ID_P"."D18"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD19: TFloatField
      DisplayLabel = '19'
      FieldName = 'D19'
      Origin = '"REP_SORS_ID_P"."D19"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD20: TFloatField
      DisplayLabel = '20'
      FieldName = 'D20'
      Origin = '"REP_SORS_ID_P"."D20"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD21: TFloatField
      DisplayLabel = '21'
      FieldName = 'D21'
      Origin = '"REP_SORS_ID_P"."D21"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD22: TFloatField
      DisplayLabel = '22'
      FieldName = 'D22'
      Origin = '"REP_SORS_ID_P"."D22"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD23: TFloatField
      DisplayLabel = '23'
      FieldName = 'D23'
      Origin = '"REP_SORS_ID_P"."D23"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD24: TFloatField
      DisplayLabel = '24'
      FieldName = 'D24'
      Origin = '"REP_SORS_ID_P"."D24"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD25: TFloatField
      DisplayLabel = '25'
      FieldName = 'D25'
      Origin = '"REP_SORS_ID_P"."D25"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD26: TFloatField
      DisplayLabel = '26'
      FieldName = 'D26'
      Origin = '"REP_SORS_ID_P"."D26"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD27: TFloatField
      DisplayLabel = '27'
      FieldName = 'D27'
      Origin = '"REP_SORS_ID_P"."D27"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD28: TFloatField
      DisplayLabel = '28'
      FieldName = 'D28'
      Origin = '"REP_SORS_ID_P"."D28"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD29: TFloatField
      DisplayLabel = '29'
      FieldName = 'D29'
      Origin = '"REP_SORS_ID_P"."D29"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD30: TFloatField
      DisplayLabel = '30'
      FieldName = 'D30'
      Origin = '"REP_SORS_ID_P"."D30"'
      DisplayFormat = '### ### ##0.00'
    end
    object qTab_List_PlanD31: TFloatField
      DisplayLabel = '31'
      FieldName = 'D31'
      Origin = '"REP_SORS_ID_P"."D31"'
      DisplayFormat = '### ### ##0.00'
    end
  end
  object dsTab_List_Plan: TDataSource
    DataSet = qTab_List_Plan
    Left = 680
    Top = 264
  end
  object qDay_TabList: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select NAME_AREA,ID_P_AREA,NOM,FIO ,'
      'TOTAL,'
      'd1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12,'
      
        '    d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, ' +
        'd25, d26,'
      '    d27, d28, d29, d30, d31, id_p'
      'from REP_TAB_SUM_YEAR_PERS(:ID_AR,:YE, :M)'
      '')
    Left = 324
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_AR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'YE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'M'
        ParamType = ptUnknown
      end>
    object qDay_TabListNAME_AREA: TIBStringField
      DisplayLabel = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
      FieldName = 'NAME_AREA'
      ProviderFlags = []
      Size = 60
    end
    object qDay_TabListID_P_AREA: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
      FieldName = 'ID_P_AREA'
      ProviderFlags = []
    end
    object qDay_TabListNOM: TIntegerField
      DisplayLabel = #1058#1080#1087
      FieldName = 'NOM'
      ProviderFlags = []
    end
    object qDay_TabListFIO: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 128
      FieldName = 'FIO'
      ProviderFlags = []
      Size = 128
    end
    object qDay_TabListTOTAL: TFloatField
      DisplayLabel = #1048#1090#1086#1075#1086
      FieldName = 'TOTAL'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD1: TFloatField
      DisplayLabel = '1'
      FieldName = 'D1'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D1"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD2: TFloatField
      DisplayLabel = '2'
      FieldName = 'D2'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D2"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD3: TFloatField
      DisplayLabel = '3'
      FieldName = 'D3'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D3"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD4: TFloatField
      DisplayLabel = '4'
      FieldName = 'D4'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D4"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD5: TFloatField
      DisplayLabel = '5'
      FieldName = 'D5'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D5"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD6: TFloatField
      DisplayLabel = '6'
      FieldName = 'D6'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D6"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD7: TFloatField
      DisplayLabel = '7'
      FieldName = 'D7'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D7"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD8: TFloatField
      DisplayLabel = '8'
      FieldName = 'D8'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D8"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD9: TFloatField
      DisplayLabel = '9'
      FieldName = 'D9'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D9"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD10: TFloatField
      DisplayLabel = '10'
      FieldName = 'D10'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D10"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD11: TFloatField
      DisplayLabel = '11'
      FieldName = 'D11'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D11"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD12: TFloatField
      DisplayLabel = '12'
      FieldName = 'D12'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D12"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD13: TFloatField
      DisplayLabel = '13'
      FieldName = 'D13'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D13"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD14: TFloatField
      DisplayLabel = '14'
      FieldName = 'D14'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D14"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD15: TFloatField
      DisplayLabel = '15'
      FieldName = 'D15'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D15"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD16: TFloatField
      DisplayLabel = '16'
      FieldName = 'D16'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D16"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD17: TFloatField
      DisplayLabel = '17'
      FieldName = 'D17'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D17"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD18: TFloatField
      DisplayLabel = '18'
      FieldName = 'D18'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D18"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD19: TFloatField
      DisplayLabel = '19'
      FieldName = 'D19'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D19"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD20: TFloatField
      DisplayLabel = '20'
      FieldName = 'D20'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D20"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD21: TFloatField
      DisplayLabel = '21'
      FieldName = 'D21'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D21"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD22: TFloatField
      DisplayLabel = '22'
      FieldName = 'D22'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D22"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD23: TFloatField
      DisplayLabel = '23'
      FieldName = 'D23'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D23"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD24: TFloatField
      DisplayLabel = '24'
      FieldName = 'D24'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D24"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD25: TFloatField
      DisplayLabel = '25'
      FieldName = 'D25'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D25"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD26: TFloatField
      DisplayLabel = '26'
      FieldName = 'D26'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D26"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD27: TFloatField
      DisplayLabel = '27'
      FieldName = 'D27'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D27"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD28: TFloatField
      DisplayLabel = '28'
      FieldName = 'D28'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D28"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD29: TFloatField
      DisplayLabel = '29'
      FieldName = 'D29'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D29"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD30: TFloatField
      DisplayLabel = '30'
      FieldName = 'D30'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D30"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListD31: TFloatField
      DisplayLabel = '31'
      FieldName = 'D31'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."D31"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qDay_TabListID_P: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      FieldName = 'ID_P'
      Origin = '"REP_TAB_SUM_YEAR_PERS"."ID_P"'
    end
  end
  object dsDay_TabList: TDataSource
    DataSet = qDay_TabList
    Left = 376
    Top = 272
  end
end
