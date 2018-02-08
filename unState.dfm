object fmSTATE: TfmSTATE
  Left = 232
  Top = 174
  Width = 769
  Height = 359
  Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1091#1095#1072#1089#1090#1082#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pc1: TPageControl
    Left = 480
    Top = 104
    Width = 225
    Height = 129
    ActivePage = ts2
    TabOrder = 1
    Visible = False
    object ts1: TTabSheet
      Caption = #1054#1073#1097#1077#1077
      object dbg1: TDBGrid
        Left = 0
        Top = 0
        Width = 217
        Height = 83
        Align = alClient
        DataSource = dmIS.dsState
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'N_ORDER'
            Title.Alignment = taCenter
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME'
            Title.Alignment = taCenter
            Width = 191
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nOPER'
            Title.Alignment = taCenter
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUM'
            Title.Alignment = taCenter
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rAMOUNT'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fAMOUNT'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_OBJECT'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PROD_OPER'
            Title.Alignment = taCenter
            Width = 55
            Visible = True
          end>
      end
      object dbn1: TDBNavigator
        Left = 0
        Top = 83
        Width = 217
        Height = 18
        DataSource = dmIS.dsState
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alBottom
        TabOrder = 1
      end
    end
    object ts2: TTabSheet
      Caption = #1055#1086' '#1087#1072#1088#1090#1080#1103#1084
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 217
        Height = 83
        Align = alClient
        DataSource = dmIS.dsBState
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'N_ORDER'
            Title.Alignment = taCenter
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME'
            Title.Alignment = taCenter
            Width = 184
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_BATCH'
            Title.Alignment = taCenter
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nOPER'
            Title.Alignment = taCenter
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AMOUNT'
            Title.Alignment = taCenter
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rAMOUNT'
            Title.Alignment = taCenter
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fAMOUNT'
            Title.Alignment = taCenter
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_OBJECT'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PROD_OPER'
            Title.Alignment = taCenter
            Width = 61
            Visible = True
          end>
      end
      object dbn2: TDBNavigator
        Left = 0
        Top = 83
        Width = 217
        Height = 18
        DataSource = dmIS.dsBState
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alBottom
        TabOrder = 1
      end
    end
  end
  object pcStore: TPageControl
    Left = 0
    Top = 24
    Width = 761
    Height = 308
    ActivePage = tsTms
    Align = alClient
    TabOrder = 2
    object tsDet: TTabSheet
      Caption = #1044#1077#1090#1072#1083#1080' '#1087#1086' '#1087#1072#1088#1090#1080#1103#1084
      object dbg3: TDBGridEh
        Left = 0
        Top = 0
        Width = 753
        Height = 280
        Align = alClient
        DataSource = dmIS.dsBState_P_Det
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = dbg3DblClick
        OnGetCellParams = dbg3GetCellParams
        OnSortMarkingChanged = dbg3SortMarkingChanged
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ID_BATCH'
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
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.EndEllipsis = True
            Title.SortIndex = 1
            Title.SortMarker = smDownEh
            Title.TitleButton = True
            Width = 218
          end
          item
            EditButtons = <>
            FieldName = 'UNIT1'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'AMOUNT'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'SUM_R'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'OST'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'ID_STEP'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'ID_OBJECT_TYPE'
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
            FieldName = 'N_ORDER'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'PR_NAME'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 220
          end
          item
            EditButtons = <>
            FieldName = 'N_ID_OPERATION'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'N_ID_PA_TO'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 174
          end
          item
            EditButtons = <>
            FieldName = 'N_ID_PA_FROM'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 211
          end
          item
            EditButtons = <>
            FieldName = 'ID_PROD_TRAFF'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'ID_PROD_OPER'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 53
          end>
      end
    end
    object tsTms: TTabSheet
      Caption = #1052#1072#1090#1077#1088#1080#1072#1083#1099' '#1087#1086' '#1087#1072#1088#1090#1080#1103#1084
      ImageIndex = 1
      object dbg4: TDBGridEh
        Left = 0
        Top = 0
        Width = 753
        Height = 215
        Align = alClient
        DataSource = dmIS.dsIState
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyDown = dbg4KeyDown
        OnMouseDown = dbg4MouseDown
        OnSortMarkingChanged = dbg4SortMarkingChanged
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
            FieldName = 'NDS'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.EndEllipsis = True
            Title.SortIndex = 1
            Title.SortMarker = smDownEh
            Title.TitleButton = True
            Width = 174
          end
          item
            Color = 16776176
            EditButtons = <>
            FieldName = 'AMOUNT'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 52
          end
          item
            Color = 16776176
            EditButtons = <>
            FieldName = 'SUM_R'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 55
          end
          item
            Color = 16776176
            EditButtons = <>
            FieldName = 'OST'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 54
          end
          item
            Color = 16776176
            EditButtons = <>
            FieldName = 'UNIT1'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 46
          end
          item
            Color = 16776176
            EditButtons = <>
            FieldName = 'CENA'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'AMOUNT_P'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 42
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'UNIT2'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 56
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'SUM_R2'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'OST2'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'CENA2'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'FACTOR'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
          end>
      end
      object Panel_Amount: TPanel
        Left = 0
        Top = 215
        Width = 753
        Height = 65
        Align = alBottom
        TabOrder = 1
        object Label1: TLabel
          Left = 5
          Top = 20
          Width = 14
          Height = 13
          Caption = ' ('#1091')'
        end
        object Label2: TLabel
          Left = 471
          Top = 20
          Width = 40
          Height = 13
          Caption = #1062#1077#1085#1072' ('#1091')'
        end
        object Label3: TLabel
          Left = 6
          Top = 42
          Width = 12
          Height = 13
          Caption = '('#1087')'
        end
        object Label4: TLabel
          Left = 471
          Top = 44
          Width = 41
          Height = 13
          Caption = #1062#1077#1085#1072' ('#1087')'
        end
        object Label5: TLabel
          Left = 613
          Top = 20
          Width = 24
          Height = 13
          Caption = #1053#1044#1057
        end
        object SpeedButton2: TSpeedButton
          Left = 444
          Top = 16
          Width = 23
          Height = 44
          Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
            333333333337F33333333333333033333333333333373F333333333333090333
            33333333337F7F33333333333309033333333333337373F33333333330999033
            3333333337F337F33333333330999033333333333733373F3333333309999903
            333333337F33337F33333333099999033333333373333373F333333099999990
            33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
            33333333337F7F33333333333309033333333333337F7F333333333333090333
            33333333337F7F33333333333309033333333333337F7F333333333333090333
            33333333337F7F33333333333300033333333333337773333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton2Click
        end
        object Label6: TLabel
          Left = 198
          Top = 18
          Width = 9
          Height = 20
          Caption = '='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 198
          Top = 42
          Width = 9
          Height = 20
          Caption = '='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 322
          Top = 17
          Width = 9
          Height = 20
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 322
          Top = 41
          Width = 9
          Height = 20
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 143
          Top = 2
          Width = 39
          Height = 13
          Alignment = taCenter
          Caption = #1045#1076'.'#1080#1079#1084'.'
        end
        object Label11: TLabel
          Left = 28
          Top = 2
          Width = 99
          Height = 13
          Alignment = taCenter
          Caption = #1050#1086#1083'-'#1074#1086' '#1089' '#1091#1095#1105#1090#1086#1084' '#1058#1054
        end
        object Label12: TLabel
          Left = 338
          Top = 2
          Width = 49
          Height = 13
          Caption = #1058#1077#1093'.'#1086#1090#1093#1086#1076
        end
        object Label13: TLabel
          Left = 217
          Top = 2
          Width = 34
          Height = 13
          Alignment = taCenter
          Caption = #1050#1086#1083'-'#1074#1086
        end
        object edAmount: TEdit
          Left = 26
          Top = 16
          Width = 101
          Height = 21
          Color = 16776176
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
          OnKeyDown = edAmountKeyDown
        end
        object edCena: TEdit
          Left = 517
          Top = 15
          Width = 89
          Height = 21
          Color = 16776176
          TabOrder = 4
        end
        object edAmountP: TEdit
          Left = 26
          Top = 39
          Width = 101
          Height = 21
          Color = clMoneyGreen
          TabOrder = 3
          OnKeyDown = edAmountPKeyDown
        end
        object edCenaP: TEdit
          Left = 517
          Top = 38
          Width = 89
          Height = 21
          Color = clMoneyGreen
          TabOrder = 5
        end
        object edNDS: TEdit
          Left = 613
          Top = 36
          Width = 56
          Height = 21
          ReadOnly = True
          TabOrder = 6
        end
        object edUnit: TEdit
          Left = 134
          Top = 16
          Width = 56
          Height = 21
          Color = 16776176
          ReadOnly = True
          TabOrder = 0
        end
        object edUnitP: TEdit
          Left = 134
          Top = 38
          Width = 56
          Height = 21
          Color = clMoneyGreen
          ReadOnly = True
          TabOrder = 1
        end
        object edAm: TEdit
          Left = 215
          Top = 16
          Width = 101
          Height = 21
          Color = 16776176
          TabOrder = 7
          OnKeyDown = edAmKeyDown
        end
        object edAmW: TEdit
          Left = 336
          Top = 16
          Width = 101
          Height = 21
          Color = 16776176
          TabOrder = 8
          OnKeyDown = edAmWKeyDown
        end
        object edAmP: TEdit
          Left = 215
          Top = 40
          Width = 101
          Height = 21
          Color = clMoneyGreen
          TabOrder = 9
          OnKeyDown = edAmPKeyDown
        end
        object edAmWP: TEdit
          Left = 336
          Top = 40
          Width = 101
          Height = 21
          Color = clMoneyGreen
          TabOrder = 10
          OnKeyDown = edAmWPKeyDown
        end
      end
    end
  end
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 761
    Height = 24
    AutoSize = True
    Caption = 'tlb1'
    Flat = True
    Images = fmMain.il1
    TabOrder = 0
    DesignSize = (
      761
      22)
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1086#1089#1090#1086#1103#1085#1080#1077
      Caption = 'ToolButton1'
      ImageIndex = 33
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
    object ToolButton4: TToolButton
      Left = 23
      Top = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Caption = 'ToolButton4'
      ImageIndex = 13
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton4Click
    end
    object ToolButton3: TToolButton
      Left = 46
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 30
      OnClick = ToolButton3Click
    end
    object ToolButton2: TToolButton
      Left = 69
      Top = 0
      Width = 58
      Caption = 'ToolButton2'
      ImageIndex = 34
      Style = tbsSeparator
    end
    object Find_Det: TEdit
      Left = 127
      Top = 0
      Width = 114
      Height = 22
      Hint = #1055#1086#1080#1089#1082' '#1087#1086' '#1082#1086#1076#1091' '#1076#1077#1090#1072#1083#1080
      Anchors = [akLeft, akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyUp = Find_DetKeyUp
    end
  end
  object frxRepDet: TfrxReport
    Version = '3.23.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39609.559853935200000000
    ReportOptions.LastChange = 39609.559853935200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 188
    Top = 120
    Datasets = <
      item
        DataSet = frxDet
        DataSetName = 'frxDet'
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
        Height = 83.149660000000000000
        Top = 22.677180000000000000
        Width = 1046.929810000000000000
        object Memo7: TfrxMemoView
          Left = 83.412127360000000000
          Top = 30.236240000000000000
          Width = 57.349118400000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#176#1057#1026#1057#8218#1056#1105#1057#1039)
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 215.433210000000000000
          Top = -0.000000000000000108
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1038#1056#1109#1057#1027#1057#8218#1056#1109#1057#1039#1056#1029#1056#1105#1056#181' '#1057#1027#1056#1108#1056#187#1056#176#1056#1169#1056#176':')
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = -0.000000000000000108
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[Date]')
        end
        object Memo3: TfrxMemoView
          Left = 98.267780000000000000
          Top = -0.000000000000000108
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8 = (
            '[Time]')
        end
        object Memo4: TfrxMemoView
          Left = 941.102970000000000000
          Top = -0.000000000000000108
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'.'#1074#8222#8211' [Page#]')
        end
        object Memo6: TfrxMemoView
          Top = 30.236240000000000000
          Width = 30.498707360000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#1111'/'#1056#1111)
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 140.761245760000000000
          Top = 30.236240000000000000
          Width = 311.627497850000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181)
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 452.388743610000000000
          Top = 30.236240000000000000
          Width = 64.750697990000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109)
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 517.139441600000000000
          Top = 30.236240000000000000
          Width = 34.671938400000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8226#1056#1169'. '
            #1056#1105#1056#183#1056#1112'.'
            '('#1057#1107')')
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 551.811380000000000000
          Top = 30.236240000000000000
          Width = 90.708720000000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#183#1056#176#1056#1108#1056#176#1056#183#1056#176)
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 642.520100000000000000
          Top = 30.236240000000000000
          Width = 226.771800000000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1057#1107#1056#1169#1056#176' '#1056#1111#1056#181#1057#1026#1056#181#1056#1169#1056#176#1057#8218#1057#1034)
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 869.291900000000000000
          Top = 30.236240000000000000
          Width = 177.637910000000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#1108#1057#1107#1056#1169#1056#176' '#1056#1111#1057#1026#1056#1105#1057#8364#1056#187#1056#1109)
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 359.055350000000000000
          Top = -0.000000000000000108
          Width = 563.149970000000100000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[nstore]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 30.236240000000000000
          Top = 30.236240000000000000
          Width = 52.913420000000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169' '#1056#1109#1056#177#1057#1033#1056#181#1056#1108#1057#8218#1056#176)
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
        Top = 132.283550000000000000
        Width = 1046.929810000000000000
        DataSet = frxDet
        DataSetName = 'frxDet'
        RowCount = 0
        Stretched = True
        object Memo5: TfrxMemoView
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line#]')
        end
        object Memo8: TfrxMemoView
          Left = 30.236240000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ID_OBJECT'
          DataSet = frxDet
          DataSetName = 'frxDet'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDet."ID_OBJECT"]')
        end
        object Memo10: TfrxMemoView
          Left = 139.842610000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDet
          DataSetName = 'frxDet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [frxDet."NAME"]/[frxDet."N_ID_OPERATION"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 453.543600000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDet
          DataSetName = 'frxDet'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDet."AMOUNT"] ')
        end
        object Memo14: TfrxMemoView
          Left = 517.795610000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'UNIT1'
          DataSet = frxDet
          DataSetName = 'frxDet'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDet."UNIT1"]')
        end
        object Memo17: TfrxMemoView
          Left = 551.811380000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'N_ORDER'
          DataSet = frxDet
          DataSetName = 'frxDet'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDet."N_ORDER"]')
        end
        object Memo19: TfrxMemoView
          Left = 642.520100000000000000
          Width = 226.771677950000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDet
          DataSetName = 'frxDet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [IIF(<frxDet."N_ID_PA_TO">=<nstore>,'#39' '#39',<frxDet."N_ID_PA_TO">)]'
            ''
            '')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 869.291900000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDet
          DataSetName = 'frxDet'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDet."N_ID_PA_FROM"]')
        end
        object Memo22: TfrxMemoView
          Left = 83.149660000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ID_BATCH'
          DataSet = frxDet
          DataSetName = 'frxDet'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDet."ID_BATCH"]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 18.897650000000000000
        Top = 219.212740000000000000
        Width = 1046.929810000000000000
        object Memo24: TfrxMemoView
          Left = 177.637910000000000000
          Top = -0.000000000000003400
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109':  [SUM(<frxDet."AMOUNT">,MasterData1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 491.338900000000000000
          Top = -0.000000000000003400
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8226#1056#1169'.')
        end
      end
    end
  end
  object frxDet: TfrxDBDataset
    UserName = 'frxDet'
    CloseDataSource = False
    DataSet = dmIS.qBState_P_Det
    Left = 228
    Top = 120
  end
  object frxRepItem: TfrxReport
    Version = '3.23.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39660.730110694440000000
    ReportOptions.LastChange = 39660.730110694440000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 188
    Top = 176
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxItem'
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
      object PageHeader1: TfrxPageHeader
        Height = 94.488250000000040000
        Top = 22.677180000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 83.412127360000000000
          Top = 41.574830000000000000
          Width = 53.569588400000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#176#1057#1026#1057#8218#1056#1105#1057#1039)
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 113.385900000000000000
          Top = -0.000000000000000108
          Width = 491.338900000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1056#1109#1057#1027#1057#8218#1056#1109#1057#1039#1056#1029#1056#1105#1056#181' '#1057#1027#1056#1108#1056#187#1056#176#1056#1169#1056#176':')
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 0.000000000000003445
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[Date]')
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8 = (
            '[Time]')
        end
        object Memo4: TfrxMemoView
          Left = 612.283860000000000000
          Top = -0.000000000000000108
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'.'#1074#8222#8211' [Page#]')
        end
        object Memo6: TfrxMemoView
          Left = -0.000000000000000444
          Top = 41.574830000000000000
          Width = 30.498707360000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#1111'/'#1056#1111)
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 136.981715760000000000
          Top = 41.574830000000000000
          Width = 379.659037850000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1056#1109#1056#177#1057#1033#1056#181#1056#1108#1057#8218#1056#176)
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 516.640753610000100000
          Top = 41.574830000000000000
          Width = 64.750697990000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109
            '('#1057#1107')')
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 581.391451600000000000
          Top = 41.574830000000000000
          Width = 34.671938400000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8226#1056#1169'. '
            #1056#1105#1056#183#1056#1112'.'
            '('#1057#1107')')
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 491.338900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[nstore]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 30.236240000000000000
          Top = 41.574830000000000000
          Width = 52.913420000000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169' '#1056#1109#1056#177#1057#1033#1056#181#1056#1108#1057#8218#1056#176)
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 616.063390000000000000
          Top = 41.574830000000000000
          Width = 64.750697990000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109
            '('#1056#1111')')
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 680.814087990000000000
          Top = 41.574830000000000000
          Width = 38.451468400000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8226#1056#1169'. '
            #1056#1105#1056#183#1056#1112'.'
            '('#1056#1111')')
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
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxItem'
        RowCount = 0
        Stretched = True
        object Memo10: TfrxMemoView
          Top = 0.000000000000007633
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line#]')
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 30.236240000000000000
          Top = 0.000000000000007633
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ID_OBJECT'
          DataSet = frxDBDataset1
          DataSetName = 'frxItem'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxItem."ID_OBJECT"]')
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 83.149660000000000000
          Top = 0.000000000000007633
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ID_BATCH'
          DataSet = frxDBDataset1
          DataSetName = 'frxItem'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxItem."ID_BATCH"]')
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 136.063080000000000000
          Top = 0.000000000000007633
          Width = 381.732285910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxItem'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [frxItem."NAME"]')
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 517.795610000000000000
          Top = 0.000000000000007633
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'AMOUNT'
          DataSet = frxDBDataset1
          DataSetName = 'frxItem'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxItem."AMOUNT"]')
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 582.047620000000000000
          Top = 0.000000000000007633
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'UNIT1'
          DataSet = frxDBDataset1
          DataSetName = 'frxItem'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxItem."UNIT1"]')
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 680.315400000000000000
          Top = 0.000000000000007633
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'UNIT2'
          DataSet = frxDBDataset1
          DataSetName = 'frxItem'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxItem."UNIT2"]')
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 616.063390000000000000
          Top = 0.000000000000007633
          Width = 64.251961180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'AMOUNT_P'
          DataSet = frxDBDataset1
          DataSetName = 'frxItem'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxItem."AMOUNT_P"]')
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxItem'
    CloseDataSource = False
    DataSet = dmIS.qIState
    Left = 228
    Top = 160
  end
end
