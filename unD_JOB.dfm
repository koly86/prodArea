object fmD_JOB: TfmD_JOB
  Left = 419
  Top = 146
  Width = 1101
  Height = 668
  Caption = 'gf'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 1085
    Height = 24
    AutoSize = True
    Caption = 'tlb1'
    Flat = True
    Images = fmMain.il1
    TabOrder = 0
    object tbVib: TToolButton
      Left = 0
      Top = 0
      Hint = #1042#1099#1073#1086#1088#1082#1072
      Caption = 'tbVib'
      ImageIndex = 33
      ParentShowHint = False
      ShowHint = True
      OnClick = tbVibClick
    end
    object Label1: TLabel
      Left = 23
      Top = 0
      Width = 51
      Height = 22
      Caption = ' '#1053#1072' '#1076#1072#1090#1091':  '
    end
    object cbClose: TCheckBox
      Left = 74
      Top = 0
      Width = 18
      Height = 22
      Hint = 
        ' '#1057#1077#1088#1072#1103' - '#1042#1089#1077' '#1079#1072#1082#1072#1079#1099#13#1063#1105#1088#1085#1072#1103' - '#1054#1090#1082#1088#1099#1090#1099#1077' '#1079#1072#1082#1072#1079#1099#13'  '#1055#1091#1089#1090#1086'  - '#1047#1072#1082#1088#1099#1090#1099#1077 +
        ' '#1079#1072#1082#1072#1079#1099
      AllowGrayed = True
      Caption = #1054#1090#1082#1088#1099#1090#1099#1077
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 3
    end
    object dtp1: TDateTimePicker
      Left = 92
      Top = 0
      Width = 85
      Height = 22
      Date = 38961.000000000000000000
      Time = 38961.000000000000000000
      DateFormat = dfLong
      TabOrder = 0
      OnChange = dtp1Change
    end
    object Label2: TLabel
      Left = 177
      Top = 0
      Width = 36
      Height = 22
      Caption = #1057#1084#1077#1085#1072':'
    end
    object lcbShift: TDBLookupComboboxEh
      Left = 213
      Top = 0
      Width = 126
      Height = 22
      DropDownBox.Sizable = True
      DropDownBox.Width = 200
      EditButtons = <>
      KeyField = 'ID_SHIFT'
      ListField = 'NAME'
      ListSource = dmIS.dsShifts
      TabOrder = 1
      Visible = True
    end
    object Label3: TLabel
      Left = 339
      Top = 0
      Width = 82
      Height = 22
      Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077':  '
    end
    object lcbEqp: TDBLookupComboboxEh
      Left = 421
      Top = 0
      Width = 147
      Height = 22
      DropDownBox.Rows = 20
      DropDownBox.Sizable = True
      DropDownBox.Width = 300
      EditButtons = <>
      KeyField = 'ID_EQUIPMENT'
      ListField = 'PL_NAME;SHOTNAME'
      ListSource = dmIS.dsEqp
      TabOrder = 2
      Visible = True
    end
    object tb1: TToolButton
      Left = 568
      Top = 0
      Caption = #1055#1088#1080#1093#1086#1076#1085#1099#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      OnClick = tb1Click
    end
    object tb2: TToolButton
      Left = 591
      Top = 0
      Hint = #1055#1086' '#1073#1088#1080#1075#1072#1076#1072#1084
      Caption = 'tb2'
      ImageIndex = 26
      ParentShowHint = False
      ShowHint = True
      OnClick = tb2Click
    end
    object ToolButton4: TToolButton
      Left = 614
      Top = 0
      Width = 24
      Caption = 'ToolButton4'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object tb3: TToolButton
      Left = 638
      Top = 0
      Hint = #1057#1084#1077#1085#1085#1086#1077' '#1079#1072#1076#1072#1085#1080#1077' '#1085#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1099#1081' '#1091#1095#1072#1089#1090#1086#1082' - '#1087#1083#1072#1085
      Caption = 'tb3'
      DropdownMenu = pm1
      ImageIndex = 13
      ParentShowHint = False
      ShowHint = True
      Style = tbsDropDown
    end
    object tb4: TToolButton
      Left = 676
      Top = 0
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1080#1079#1076#1077#1083#1080#1103
      Caption = 'tb4'
      ImageIndex = 40
      ParentShowHint = False
      ShowHint = True
      OnClick = tb4Click
    end
    object ToolButton2: TToolButton
      Left = 699
      Top = 0
      Hint = #1052#1072#1088#1096#1088#1091#1090#1085#1072#1103' '#1082#1072#1088#1090#1072
      Caption = 'ToolButton2'
      ImageIndex = 31
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton2Click
    end
    object tb5: TToolButton
      Left = 722
      Top = 0
      Hint = #1042' Excel '
      Caption = 'tb5'
      ImageIndex = 30
      OnClick = tb5Click
    end
  end
  object pcAll: TPageControl
    Left = 0
    Top = 24
    Width = 1085
    Height = 606
    ActivePage = tsStop
    Align = alClient
    TabOrder = 1
    OnChange = pcAllChange
    object tsWork: TTabSheet
      Caption = #1055#1083#1072#1085
      object p2: TPanel
        Left = 0
        Top = 0
        Width = 1077
        Height = 578
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 2
          Top = 229
          Width = 1073
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object Panel1: TPanel
          Left = 2
          Top = 2
          Width = 1073
          Height = 24
          Align = alTop
          TabOrder = 0
          object DBText1: TDBText
            Left = 8
            Top = 2
            Width = 585
            Height = 17
            DataField = 'NAME'
            DataSource = dmIS.dsD_JOB
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        object Panel2: TPanel
          Left = 2
          Top = 26
          Width = 1073
          Height = 203
          Align = alTop
          Caption = 'Panel2'
          Constraints.MinHeight = 120
          TabOrder = 1
          object Panel3: TPanel
            Left = 1
            Top = 180
            Width = 1077
            Height = 22
            Align = alBottom
            TabOrder = 0
            object sbYtv: TSpeedButton
              Left = 277
              Top = 0
              Width = 94
              Height = 22
              Hint = #1059#1090#1074#1077#1088#1076#1080#1090#1100
              Caption = #1059#1090#1074#1077#1088#1076#1080#1090#1100
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
              OnClick = sbYtvClick
            end
            object sbPlanFakt: TSpeedButton
              Left = 195
              Top = 1
              Width = 81
              Height = 21
              Hint = #1042#1099#1076#1077#1083#1077#1085#1085#1099#1077' '#1079#1072#1087#1080#1089#1080#13#1050#1086#1083'-'#1074#1086' '#1087#1083#1072#1085' = '#1050#1086#1083'-'#1074#1086' '#1092#1072#1082#1090'.'
              Caption = #1055#1083#1072#1085'='#1060#1072#1082#1090
              ParentShowHint = False
              ShowHint = True
              OnClick = sbPlanFaktClick
            end
            object tb6: TSpeedButton
              Left = 169
              Top = 1
              Width = 25
              Height = 21
              Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1084#1077#1085#1085#1086#1075#1086' '#1079#1072#1076#1072#1085#1080#1103
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
                000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
                00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
                F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
                0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
                FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
                FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
                0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
                00333377737FFFFF773333303300000003333337337777777333}
              NumGlyphs = 2
              OnClick = tb6Click
            end
            object dbn1: TDBNavigator
              Left = 1
              Top = 1
              Width = 168
              Height = 20
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost]
              Align = alLeft
              TabOrder = 0
            end
            object cbNakl: TCheckBox
              Left = 373
              Top = 2
              Width = 156
              Height = 17
              Hint = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1089#1086#1079#1076#1072#1074#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1099#1077' '#13#1085#1072' '#1087#1077#1088#1077#1076#1072#1095#1091' '#1076#1077#1090#1072#1083#1077#1081'.'
              Caption = #1053#1072#1082#1083#1072#1076#1085#1099#1077' ('#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077')'
              Checked = True
              ParentShowHint = False
              ShowHint = True
              State = cbChecked
              TabOrder = 1
            end
          end
          object dbg1: TDBGridEh
            Left = 1
            Top = 1
            Width = 1077
            Height = 179
            Align = alClient
            DataSource = dmIS.dsD_JOB
            Flat = True
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnColExit = dbg1ColExit
            OnDblClick = dbg1DblClick
            OnDrawColumnCell = dbg1DrawColumnCell
            OnKeyDown = dbg1KeyDown
            OnSortMarkingChanged = dbg1SortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'AMOUNT_ORD'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 69
              end
              item
                EditButtons = <>
                FieldName = 'NAME'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 273
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
                FieldName = 'ID_VERSION'
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
                FieldName = 'POSIT'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'NM'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 226
              end
              item
                EditButtons = <>
                FieldName = 'NMAT'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 324
              end
              item
                EditButtons = <>
                FieldName = 'STEP'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'ONAME'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'KOL_H'
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
                EditButtons = <>
                FieldName = 'F_AMOUNT'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'F_TM'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                ButtonStyle = cbsEllipsis
                EditButtons = <>
                FieldName = 'P_AMOUNT'
                Footers = <>
                Title.EndEllipsis = True
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Title.TitleButton = True
                OnUpdateData = dbg1P_AMOUNTUpdateData
              end
              item
                EditButtons = <>
                FieldName = 'P_TIME'
                Footers = <>
                Title.EndEllipsis = True
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Title.TitleButton = True
                OnUpdateData = dbg1P_TIME5UpdateData
              end
              item
                ButtonStyle = cbsEllipsis
                EditButtons = <>
                FieldName = 'REM'
                Footers = <>
                Width = 86
                OnEditButtonClick = dbg1REMEditButtonClick
              end
              item
                EditButtons = <>
                FieldName = 'OST'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'DEC_NO'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'DESCRIPT'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                DisplayFormat = '0.00'
                EditButtons = <>
                FieldName = 'T_PERSONNEL'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'F_TIME'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'REM_OPER'
                Footers = <>
                Width = 110
              end
              item
                DisplayFormat = '0.00'
                EditButtons = <>
                FieldName = 'SUM_PERS'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'FIO'
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
                FieldName = 'ID_OPERATION'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
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
                FieldName = 'ID_ITEM'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'NAME_AREAIN'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'ID_PA_TO'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'FULL_AMOUNT'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCED'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'OST_ORD'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'PL_NAME'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'COMMENT'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'ID_SHIFT'
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
                FieldName = 'ID_PROD_PLAN'
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
                FieldName = 'COST'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'AMOUNT_SUM_ALL'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'PARENT_NAME'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 276
              end
              item
                ButtonStyle = cbsEllipsis
                EditButtons = <>
                EndEllipsis = True
                FieldName = 'EQ_NAME'
                Footers = <>
                Width = 516
                OnEditButtonClick = dbg1Columns44EditButtonClick
              end>
          end
        end
        object Panel7: TPanel
          Left = 2
          Top = 232
          Width = 1073
          Height = 344
          Align = alClient
          Caption = 'Panel7'
          Constraints.MinHeight = 120
          TabOrder = 2
          object Splitter2: TSplitter
            Left = 962
            Top = 1
            Height = 342
            Align = alRight
          end
          object Label10: TLabel
            Left = 272
            Top = 24
            Width = 38
            Height = 13
            Caption = 'Label10'
          end
          object pc: TPageControl
            Left = 1
            Top = 1
            Width = 961
            Height = 342
            ActivePage = ts_oper
            Align = alClient
            Constraints.MinWidth = 50
            TabOrder = 0
            OnChange = pcChange
            object ts_bill: TTabSheet
              Caption = #1053#1072#1082#1083#1072#1076#1085#1099#1077
              ImageIndex = 2
              object pcBill: TPageControl
                Left = 0
                Top = 0
                Width = 953
                Height = 314
                ActivePage = ts70
                Align = alClient
                TabOrder = 0
                object ts70: TTabSheet
                  Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1088#1072#1073#1086#1090' (70)'
                  object dbg3: TDBGridEh
                    Left = 25
                    Top = 0
                    Width = 926
                    Height = 286
                    Align = alClient
                    DataSource = dsBills
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
                    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
                    SumList.Active = True
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    UseMultiTitle = True
                    OnDrawColumnCell = dbg3DrawColumnCell
                    OnSortMarkingChanged = dbg3SortMarkingChanged
                    Columns = <
                      item
                        EditButtons = <>
                        FieldName = 'NUMBER'
                        Footers = <>
                        Title.EndEllipsis = True
                        Title.TitleButton = True
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
                        FieldName = 'D_FIX'
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
                        FieldName = 'ID_BATCH'
                        Footers = <>
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                      end
                      item
                        EditButtons = <>
                        FieldName = 'OBJ_NAME'
                        Footers = <>
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                        Width = 250
                      end
                      item
                        EditButtons = <>
                        FieldName = 'AMOUNT'
                        Footers = <>
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                        Width = 82
                      end
                      item
                        EditButtons = <>
                        FieldName = 'NAME_AREA'
                        Footers = <>
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                        Width = 255
                      end
                      item
                        EditButtons = <>
                        FieldName = 'ONAME'
                        Footers = <>
                        Title.EndEllipsis = True
                        Title.TitleButton = True
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
                        FieldName = 'OBJ_TYPE'
                        Footers = <>
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                        Width = 43
                      end
                      item
                        EditButtons = <>
                        FieldName = 'ID_PROD_OPER'
                        Footers = <>
                        Title.EndEllipsis = True
                        Title.TitleButton = True
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
                        FieldName = 'FIO'
                        Footers = <>
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                        Width = 277
                      end
                      item
                        EditButtons = <>
                        FieldName = 'FIO_ID_P'
                        Footers = <>
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                        Width = 199
                      end
                      item
                        EditButtons = <>
                        FieldName = 'ID_P'
                        Footers = <>
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                        Width = 55
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
                        FieldName = 'NAME'
                        Footers = <>
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                        Width = 283
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
                        FieldName = 'ID_PROD_TRAFF'
                        Footers = <>
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                      end
                      item
                        EditButtons = <>
                        FieldName = 'SUMMA'
                        Footer.FieldName = 'SUMMA'
                        Footer.ValueType = fvtSum
                        Footers = <>
                        Width = 94
                      end
                      item
                        EditButtons = <>
                        FieldName = 'CENA'
                        Footers = <>
                        Width = 62
                      end
                      item
                        EditButtons = <>
                        FieldName = 'SUMMA_NDS'
                        Footer.FieldName = 'SUMMA_NDS'
                        Footer.ValueType = fvtSum
                        Footers = <>
                      end>
                  end
                  object Panel4: TPanel
                    Left = 0
                    Top = 0
                    Width = 25
                    Height = 286
                    Align = alLeft
                    TabOrder = 1
                    object SpeedButton2: TSpeedButton
                      Left = 1
                      Top = 2
                      Width = 23
                      Height = 22
                      Hint = #1042' Excel '
                      Flat = True
                      Glyph.Data = {
                        F6000000424DF600000000000000760000002800000010000000100000000100
                        0400000000008000000000000000000000001000000000000000000000000000
                        80000080000000808000800000008000800080800000C0C0C000808080000000
                        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                        77777777777777700000000000000006666008888888806EEF0770E6666606EE
                        F077770E66606EEF06077770E606EEF000077777006EEF077777777706EEF007
                        777777706EEF068077777706EEF0E6680777706EEF070E6680770FFFF07770EE
                        EE07000007777700000777777777777777777777777777777777}
                      OnClick = SpeedButton2Click
                    end
                    object sb1: TSpeedButton
                      Left = 1
                      Top = 46
                      Width = 23
                      Height = 22
                      Hint = #1057#1086#1079#1076#1072#1085#1080#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1093' '#1085#1072' '#1087#1077#1088#1077#1076#1072#1095#1091' '#1058#1052#1062
                      Flat = True
                      Glyph.Data = {
                        76010000424D7601000000000000760000002800000020000000100000000100
                        04000000000000010000120B0000120B00001000000000000000000000000000
                        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
                        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
                        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
                        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
                        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
                        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
                        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
                        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
                        00333377737FFFFF773333303300000003333337337777777333}
                      NumGlyphs = 2
                      ParentShowHint = False
                      ShowHint = True
                      OnClick = sb1Click
                    end
                    object SpeedButton5: TSpeedButton
                      Left = 1
                      Top = 24
                      Width = 23
                      Height = 22
                      Hint = #1053#1072#1082#1083#1072#1076#1085#1099#1077' '#1085#1072' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
                      Flat = True
                      Glyph.Data = {
                        36040000424D3604000000000000360000002800000010000000100000000100
                        2000000000000004000000000000000000000000000000000000C0C0C000FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF000000000000000000000000000000000000000000FFFFFF00C0C0C000C0C0
                        C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00000000000000FF000000FF000000FF0000000000FFFFFF00C0C0C000C0C0
                        C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00000000000000FF000000FF000000FF0000000000FFFFFF00C0C0C000C0C0
                        C000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00000000000000FF000000FF000000FF0000000000FFFFFF00C0C0C000C0C0
                        C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF000000000000000000000000000000000000000000FFFFFF00C0C0C000C0C0
                        C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
                        0000000000000000000000000000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
                        0000FFFF0000FFFF000000000000C0C0C000C0C0C000C0C0C000FFFFFF00FFFF
                        FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
                        0000FFFF0000FFFF0000000000000000000000000000C0C0C000C0C0C000FFFF
                        FF000000000000000000000000000000000000000000FFFFFF0000000000FFFF
                        0000FFFF0000FFFF000000000000FFFF000000000000C0C0C000C0C0C0000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000FFFF0000000000000000000000000000C0C0
                        C000C0C0C000000000000000000000000000FFFFFF00FFFFFF00C0C0C000C0C0
                        C00000000000FFFF0000FFFF0000FFFF000000000000FFFF000000000000C0C0
                        C000C0C0C000000000000000000000000000FFFFFF00FFFFFF00C0C0C000C0C0
                        C0000000000000000000000000000000000000000000FFFF000000000000C0C0
                        C000C0C0C000000000000000000000000000FFFFFF00FFFFFF00C0C0C000C0C0
                        C000C0C0C000C0C0C00000000000FFFF0000FFFF0000FFFF000000000000C0C0
                        C000000000000000000000000000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0
                        C000C0C0C000C0C0C0000000000000000000000000000000000000000000C0C0
                        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00}
                      ParentShowHint = False
                      ShowHint = True
                      OnClick = SpeedButton5Click
                    end
                    object SpeedButton13: TSpeedButton
                      Left = 1
                      Top = 68
                      Width = 23
                      Height = 22
                      Hint = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1091#1095#1072#1089#1090#1082#1072' '#1087#1086' '#1058#1052#1062'/'#1044#1077#1090#1072#1083#1103#1084
                      Flat = True
                      Glyph.Data = {
                        76010000424D7601000000000000760000002800000020000000100000000100
                        04000000000000010000120B0000120B00001000000000000000000000000000
                        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
                        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
                        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
                        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
                        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
                        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
                        5555557FFFFF7755555555500000005555555577777775555555555555555555
                        5555555555555555555555555555555555555555555555555555}
                      NumGlyphs = 2
                      ParentShowHint = False
                      ShowHint = True
                      OnClick = SpeedButton6Click
                    end
                  end
                end
                object tsBill_List: TTabSheet
                  Caption = #1055#1088#1086#1090#1088#1077#1073#1085#1086#1089#1090#1100' '#1058#1052#1062' '#1087#1086' '#1074#1099#1088#1072#1073#1086#1090#1082#1077' (70)'
                  ImageIndex = 2
                  object dbg33: TDBGridEh
                    Left = 0
                    Top = 25
                    Width = 945
                    Height = 238
                    Align = alClient
                    DataSource = dsBILLPOS_BILL70TRAFF
                    DrawMemoText = True
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
                    OnGetCellParams = dbg33GetCellParams
                    OnMouseDown = dbg33MouseDown
                    Columns = <
                      item
                        EditButtons = <>
                        FieldName = 'ID_OBJECT'
                        Footers = <>
                        Title.EndEllipsis = True
                      end
                      item
                        EditButtons = <>
                        FieldName = 'ID_BATCH'
                        Footers = <>
                        Title.EndEllipsis = True
                      end
                      item
                        EditButtons = <>
                        FieldName = 'OBJ_NAME'
                        Footers = <>
                        Title.EndEllipsis = True
                        Width = 126
                      end
                      item
                        EditButtons = <>
                        FieldName = 'ONAME'
                        Footers = <>
                        Title.EndEllipsis = True
                        Width = 156
                      end
                      item
                        EditButtons = <>
                        FieldName = 'ID_STEP'
                        Footers = <>
                        Title.EndEllipsis = True
                        Width = 20
                      end
                      item
                        EditButtons = <>
                        FieldName = 'AMOUNT'
                        Footers = <>
                        Title.EndEllipsis = True
                        Width = 49
                      end
                      item
                        EditButtons = <>
                        FieldName = 'ID_ITEM'
                        Footers = <>
                        Title.EndEllipsis = True
                        Width = 54
                      end
                      item
                        EditButtons = <>
                        FieldName = 'NAME_TMC'
                        Footers = <>
                        Title.EndEllipsis = True
                        Width = 251
                      end
                      item
                        EditButtons = <>
                        FieldName = 'FULL_AMOUNT'
                        Footers = <>
                      end
                      item
                        EditButtons = <>
                        FieldName = 'FULL_AMOUNT_NOT_WASTE'
                        Footers = <>
                      end
                      item
                        EditButtons = <>
                        FieldName = 'FULL_AMOUNT_WASTE'
                        Footers = <>
                      end
                      item
                        EditButtons = <>
                        FieldName = 'EXP'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        Footers = <>
                        Width = 78
                      end
                      item
                        EditButtons = <>
                        FieldName = 'EXP_W'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        Footers = <>
                        Width = 79
                      end
                      item
                        EditButtons = <>
                        FieldName = 'AMOUNT_FIX'
                        Footers = <>
                      end
                      item
                        EditButtons = <>
                        FieldName = 'AMOUNT_W_FIX'
                        Footers = <>
                        Width = 70
                      end
                      item
                        EditButtons = <>
                        FieldName = 'AMOUNT_NOT_FIX'
                        Footers = <>
                      end
                      item
                        EditButtons = <>
                        FieldName = 'AMOUNT_W_NOT_FIX'
                        Footers = <>
                      end
                      item
                        Color = 16776176
                        EditButtons = <>
                        FieldName = 'NAME_U'
                        Footers = <>
                        Title.Color = 16776176
                        Title.EndEllipsis = True
                        Width = 39
                      end
                      item
                        Color = 16776176
                        EditButtons = <>
                        FieldName = 'OST'
                        Footers = <>
                        Title.Color = 16776176
                        Title.EndEllipsis = True
                      end
                      item
                        Color = 16776176
                        EditButtons = <>
                        FieldName = 'AMOUNT_TMC'
                        Footers = <>
                        Title.Color = 16776176
                        Title.EndEllipsis = True
                      end
                      item
                        Color = 16776176
                        EditButtons = <>
                        FieldName = 'AMOUNT_TMC_NOT_WASTE'
                        Footers = <>
                        Title.Color = 16776176
                        Title.EndEllipsis = True
                      end
                      item
                        Color = 16776176
                        EditButtons = <>
                        FieldName = 'AMOUNT_WASTE'
                        Footers = <>
                        Title.Color = 16776176
                        Title.EndEllipsis = True
                      end
                      item
                        Color = clMoneyGreen
                        EditButtons = <>
                        FieldName = 'NAME_UP'
                        Footers = <>
                        Title.Color = clMoneyGreen
                        Title.EndEllipsis = True
                        Width = 38
                      end
                      item
                        Color = clMoneyGreen
                        EditButtons = <>
                        FieldName = 'OST_P'
                        Footers = <>
                        Title.Color = clMoneyGreen
                        Title.EndEllipsis = True
                      end
                      item
                        Color = clMoneyGreen
                        EditButtons = <>
                        FieldName = 'AMOUNT_TMC_P'
                        Footers = <>
                        Title.Color = clMoneyGreen
                        Title.EndEllipsis = True
                      end
                      item
                        Color = clMoneyGreen
                        EditButtons = <>
                        FieldName = 'AMOUNT_TMC_NOT_WASTE_P'
                        Footers = <>
                        Title.Color = clMoneyGreen
                        Title.EndEllipsis = True
                      end
                      item
                        Color = clMoneyGreen
                        EditButtons = <>
                        FieldName = 'AMOUNT_WASTE_P'
                        Footers = <>
                        Title.Color = clMoneyGreen
                        Title.EndEllipsis = True
                      end
                      item
                        EditButtons = <>
                        FieldName = 'FACTOR'
                        Footers = <>
                        Title.EndEllipsis = True
                      end
                      item
                        EditButtons = <>
                        FieldName = 'NUMBER'
                        Footers = <>
                        Title.EndEllipsis = True
                      end
                      item
                        EditButtons = <>
                        FieldName = 'D_BILL'
                        Footers = <>
                        Title.EndEllipsis = True
                        Width = 71
                      end
                      item
                        EditButtons = <>
                        FieldName = 'D_FIX'
                        Footers = <>
                        Title.EndEllipsis = True
                      end
                      item
                        EditButtons = <>
                        FieldName = 'ID_PROD_TRAFF'
                        Footers = <>
                        Title.EndEllipsis = True
                      end
                      item
                        EditButtons = <>
                        FieldName = 'ID_ORDER'
                        Footers = <>
                        Title.EndEllipsis = True
                      end
                      item
                        EditButtons = <>
                        FieldName = 'ORDNAME'
                        Footers = <>
                        Title.EndEllipsis = True
                      end
                      item
                        EditButtons = <>
                        FieldName = 'N_ORDER'
                        Footers = <>
                        Title.EndEllipsis = True
                      end
                      item
                        EditButtons = <>
                        FieldName = 'OBJECT_NAME'
                        Footers = <>
                        Title.EndEllipsis = True
                      end
                      item
                        EditButtons = <>
                        FieldName = 'OPERNAME'
                        Footers = <>
                        Title.EndEllipsis = True
                      end
                      item
                        EditButtons = <>
                        FieldName = 'ID_ID_STEP'
                        Footers = <>
                        Title.EndEllipsis = True
                      end
                      item
                        EditButtons = <>
                        FieldName = 'ID_AREA'
                        Footers = <>
                        Title.EndEllipsis = True
                      end
                      item
                        EditButtons = <>
                        FieldName = 'ID_PA_BILL_POS'
                        Footers = <>
                        Title.EndEllipsis = True
                      end
                      item
                        EditButtons = <>
                        FieldName = 'ID_PA_BILL'
                        Footers = <>
                        Title.EndEllipsis = True
                      end>
                  end
                  object Panel28: TPanel
                    Left = 0
                    Top = 0
                    Width = 945
                    Height = 25
                    Align = alTop
                    TabOrder = 1
                    DesignSize = (
                      945
                      25)
                    object SpeedButton22: TSpeedButton
                      Left = 26
                      Top = 0
                      Width = 23
                      Height = 23
                      Hint = #1042' Excel '
                      Flat = True
                      Glyph.Data = {
                        F6000000424DF600000000000000760000002800000010000000100000000100
                        0400000000008000000000000000000000001000000000000000000000000000
                        80000080000000808000800000008000800080800000C0C0C000808080000000
                        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                        77777777777777700000000000000006666008888888806EEF0770E6666606EE
                        F077770E66606EEF06077770E606EEF000077777006EEF077777777706EEF007
                        777777706EEF068077777706EEF0E6680777706EEF070E6680770FFFF07770EE
                        EE07000007777700000777777777777777777777777777777777}
                      OnClick = SpeedButton22Click
                    end
                    object SpeedButton29: TSpeedButton
                      Left = 49
                      Top = 0
                      Width = 23
                      Height = 23
                      Hint = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1091#1095#1072#1089#1090#1082#1072' '#1087#1086' '#1058#1052#1062'/'#1044#1077#1090#1072#1083#1103#1084
                      Flat = True
                      Glyph.Data = {
                        76010000424D7601000000000000760000002800000020000000100000000100
                        04000000000000010000120B0000120B00001000000000000000000000000000
                        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
                        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
                        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
                        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
                        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
                        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
                        5555557FFFFF7755555555500000005555555577777775555555555555555555
                        5555555555555555555555555555555555555555555555555555}
                      NumGlyphs = 2
                      ParentShowHint = False
                      ShowHint = True
                      OnClick = SpeedButton6Click
                    end
                    object SpeedButton30: TSpeedButton
                      Left = 91
                      Top = 0
                      Width = 23
                      Height = 23
                      Hint = #1057#1086#1079#1076#1072#1085#1080#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1093' '#1085#1072' '#1089#1087#1080#1089#1072#1085#1080#1077' '#1058#1052#1062
                      Flat = True
                      Glyph.Data = {
                        76010000424D7601000000000000760000002800000020000000100000000100
                        04000000000000010000120B0000120B00001000000000000000000000000000
                        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
                        0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
                        00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
                        00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
                        F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
                        F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
                        FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
                        0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
                        00337777FFFF77FF7733EEEE0000000003337777777777777333}
                      NumGlyphs = 2
                      ParentShowHint = False
                      ShowHint = True
                      OnClick = SpeedButton30Click
                    end
                    object sbTraff_Mat: TSpeedButton
                      Left = 2
                      Top = 0
                      Width = 23
                      Height = 23
                      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1074#1099#1073#1086#1088#1082#1091
                      Flat = True
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
                      OnClick = sbTraff_MatClick
                    end
                    object Panel_Bill: TPanel
                      Left = 116
                      Top = 1
                      Width = 734
                      Height = 22
                      Anchors = [akLeft, akTop, akRight]
                      Color = clMoneyGreen
                      TabOrder = 1
                      Visible = False
                      DesignSize = (
                        734
                        22)
                      object Label8: TLabel
                        Left = 5
                        Top = 4
                        Width = 11
                        Height = 13
                        Caption = #8470
                      end
                      object lbNom: TLabel
                        Left = 120
                        Top = 5
                        Width = 30
                        Height = 13
                        Caption = 'lbNom'
                        Visible = False
                      end
                      object edNom: TEdit
                        Left = 20
                        Top = 0
                        Width = 85
                        Height = 21
                        ReadOnly = True
                        TabOrder = 0
                      end
                      object mm: TMemo
                        Left = 112
                        Top = 0
                        Width = 617
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        Lines.Strings = (
                          '')
                        ReadOnly = True
                        TabOrder = 1
                      end
                    end
                    object cbStore_List: TCheckBox
                      Left = 74
                      Top = 3
                      Width = 17
                      Height = 17
                      Hint = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1089#1086#1090#1086#1103#1085#1080#1077' '#1091#1095#1072#1089#1090#1082#1072
                      TabOrder = 0
                      OnClick = cbStore_ListClick
                    end
                    object cbBeep: TCheckBox
                      Left = 865
                      Top = 4
                      Width = 81
                      Height = 17
                      Hint = #1057#1086#1086#1073#1097#1077#1085#1080#1077' '#1086' '#1085#1072#1083#1080#1095#1080#1080' '#1058#1052#1062' '#1085#1072' '#1091#1095#1072#1089#1090#1082#1077
                      Anchors = [akTop, akRight]
                      Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1077
                      ParentShowHint = False
                      ShowHint = True
                      TabOrder = 2
                    end
                  end
                  object Panel29: TPanel
                    Left = 0
                    Top = 263
                    Width = 945
                    Height = 23
                    Align = alBottom
                    Caption = 'Panel29'
                    TabOrder = 2
                    object lbItem: TLabel
                      Left = 8
                      Top = 5
                      Width = 28
                      Height = 13
                      Caption = 'lbItem'
                    end
                  end
                end
                object ts106: TTabSheet
                  Caption = #1057#1087#1080#1089#1072#1085#1080#1077' (106)/'#1042#1086#1079#1074#1088#1072#1090'(4)'
                  ImageIndex = 1
                  object Splitter9: TSplitter
                    Left = 0
                    Top = 95
                    Width = 945
                    Height = 3
                    Cursor = crVSplit
                    Align = alTop
                  end
                  object Panel30: TPanel
                    Left = 0
                    Top = 0
                    Width = 945
                    Height = 95
                    Align = alTop
                    Caption = 'Panel30'
                    TabOrder = 0
                    object dbg44: TDBGridEh
                      Left = 28
                      Top = 1
                      Width = 916
                      Height = 93
                      Align = alClient
                      DataSource = dmIS.dsBill
                      DrawMemoText = True
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
                      OnGetCellParams = dbg44GetCellParams
                      Columns = <
                        item
                          EditButtons = <>
                          FieldName = 'PA_BILL_TYPE'
                          Footers = <>
                          Width = 27
                        end
                        item
                          EditButtons = <>
                          FieldName = 'NUMBER'
                          Footers = <>
                        end
                        item
                          EditButtons = <>
                          FieldName = 'D_BILL'
                          Footers = <>
                        end
                        item
                          EditButtons = <>
                          FieldName = 'D_EDIT'
                          Footers = <>
                        end
                        item
                          EditButtons = <>
                          FieldName = 'D_FIX'
                          Footers = <>
                        end
                        item
                          EditButtons = <>
                          FieldName = 'REM'
                          Footers = <>
                          Width = 126
                        end
                        item
                          EditButtons = <>
                          FieldName = 'FIO_FIX'
                          Footers = <>
                        end
                        item
                          EditButtons = <>
                          FieldName = 'FIO_EDIT'
                          Footers = <>
                        end
                        item
                          EditButtons = <>
                          FieldName = 'NAME'
                          Footers = <>
                          Width = 83
                        end
                        item
                          EditButtons = <>
                          FieldName = 'ID_PA_BILL'
                          Footers = <>
                        end
                        item
                          EditButtons = <>
                          FieldName = 'ID_P_AREA'
                          Footers = <>
                        end>
                    end
                    object Panel32: TPanel
                      Left = 1
                      Top = 1
                      Width = 27
                      Height = 93
                      Align = alLeft
                      TabOrder = 1
                      DesignSize = (
                        27
                        93)
                      object sbDFix: TSpeedButton
                        Left = 2
                        Top = 24
                        Width = 24
                        Height = 22
                        Hint = #1055#1086#1076#1096#1080#1074#1082#1072' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
                        Anchors = [akLeft, akTop, akRight]
                        Flat = True
                        Glyph.Data = {
                          76010000424D7601000000000000760000002800000020000000100000000100
                          04000000000000010000120B0000120B00001000000000000000000000000000
                          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
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
                        OnClick = sbDFixClick
                      end
                      object sbBill: TSpeedButton
                        Left = 2
                        Top = 2
                        Width = 24
                        Height = 22
                        Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1074#1099#1073#1086#1088#1082#1091
                        Anchors = [akLeft, akTop, akRight]
                        Flat = True
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
                        OnClick = sbBillClick
                      end
                      object SpeedButton27: TSpeedButton
                        Left = 3
                        Top = 46
                        Width = 23
                        Height = 22
                        Hint = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1091#1095#1072#1089#1090#1082#1072' '#1087#1086' '#1058#1052#1062'/'#1044#1077#1090#1072#1083#1103#1084
                        Flat = True
                        Glyph.Data = {
                          76010000424D7601000000000000760000002800000020000000100000000100
                          04000000000000010000120B0000120B00001000000000000000000000000000
                          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                          5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
                          0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
                          0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
                          0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
                          0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
                          0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
                          5555557FFFFF7755555555500000005555555577777775555555555555555555
                          5555555555555555555555555555555555555555555555555555}
                        NumGlyphs = 2
                        ParentShowHint = False
                        ShowHint = True
                        OnClick = SpeedButton6Click
                      end
                      object sbDelBill: TSpeedButton
                        Left = 3
                        Top = 68
                        Width = 23
                        Height = 22
                        Hint = #1059#1076#1072#1083#1077#1085#1080#1077' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
                        Glyph.Data = {
                          76010000424D7601000000000000760000002800000020000000100000000100
                          04000000000000010000120B0000120B00001000000000000000000000000000
                          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
                          3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
                          33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
                          33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
                          333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
                          03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
                          33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
                          0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
                          3333333337FFF7F3333333333000003333333333377777333333}
                        NumGlyphs = 2
                        ParentShowHint = False
                        ShowHint = True
                        OnClick = sbDelBillClick
                      end
                    end
                  end
                  object Panel31: TPanel
                    Left = 0
                    Top = 98
                    Width = 945
                    Height = 188
                    Align = alClient
                    Caption = 'Panel31'
                    TabOrder = 1
                    object dbg444: TDBGridEh
                      Left = 1
                      Top = 1
                      Width = 960
                      Height = 122
                      Align = alClient
                      DataSource = dmIS.dsBill_ss
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
                          FieldName = 'ID_OBJECT'
                          Footers = <>
                          ReadOnly = True
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'ID_BATCH'
                          Footers = <>
                          ReadOnly = True
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'NAME'
                          Footers = <>
                          ReadOnly = True
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                          Width = 150
                        end
                        item
                          Color = 16776176
                          EditButtons = <>
                          FieldName = 'UNIT1'
                          Footers = <>
                          ReadOnly = True
                          Title.Color = 16776176
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                          Width = 44
                        end
                        item
                          Color = 16776176
                          EditButtons = <>
                          FieldName = 'AM'
                          Footers = <>
                          Title.Color = 16776176
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                          Width = 57
                        end
                        item
                          Color = 16776176
                          EditButtons = <>
                          FieldName = 'AMOUNT_W'
                          Footers = <>
                          Title.Color = 16776176
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                          Width = 62
                        end
                        item
                          Color = 16776176
                          EditButtons = <>
                          FieldName = 'AMOUNT'
                          Footers = <>
                          Title.Color = 16776176
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                          Width = 54
                        end
                        item
                          Color = 16776176
                          EditButtons = <>
                          FieldName = 'CENA'
                          Footers = <>
                          ReadOnly = True
                          Title.Color = 16776176
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                          Width = 52
                        end
                        item
                          Color = clWhite
                          EditButtons = <>
                          FieldName = 'SUMMA'
                          Footer.DisplayFormat = '### ### ##0.00'
                          Footer.FieldName = 'SUMMA'
                          Footer.ValueType = fvtSum
                          Footers = <>
                          ReadOnly = True
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                          Width = 67
                        end
                        item
                          Color = clMoneyGreen
                          EditButtons = <>
                          FieldName = 'UNIT2'
                          Footers = <>
                          ReadOnly = True
                          Title.Color = clMoneyGreen
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                          Width = 45
                        end
                        item
                          Color = clMoneyGreen
                          EditButtons = <>
                          FieldName = 'AM2'
                          Footers = <>
                          Title.Color = clMoneyGreen
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                          Width = 54
                        end
                        item
                          Color = clMoneyGreen
                          EditButtons = <>
                          FieldName = 'AMOUNT2_W'
                          Footers = <>
                          Title.Color = clMoneyGreen
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                          Width = 45
                        end
                        item
                          Color = clMoneyGreen
                          EditButtons = <>
                          FieldName = 'AMOUNT2'
                          Footers = <>
                          ReadOnly = True
                          Title.Color = clMoneyGreen
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                          Width = 57
                        end
                        item
                          Color = clMoneyGreen
                          EditButtons = <>
                          FieldName = 'CENA1'
                          Footers = <>
                          ReadOnly = True
                          Title.Color = clMoneyGreen
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                          Width = 53
                        end
                        item
                          EditButtons = <>
                          FieldName = 'REM'
                          Footers = <>
                          ReadOnly = True
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                          Width = 216
                        end
                        item
                          EditButtons = <>
                          FieldName = 'N_ORDER'
                          Footers = <>
                          ReadOnly = True
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'ORD_NAME'
                          Footers = <>
                          ReadOnly = True
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                          Width = 276
                        end
                        item
                          EditButtons = <>
                          FieldName = 'NDS'
                          Footers = <>
                          ReadOnly = True
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                          Width = 34
                        end
                        item
                          EditButtons = <>
                          FieldName = 'SUMMA_NDS'
                          Footer.DisplayFormat = '### ### ##0.00'
                          Footer.FieldName = 'SUMMA_NDS'
                          Footer.ValueType = fvtSum
                          Footers = <>
                          ReadOnly = True
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'NAME_DETAL'
                          Footers = <>
                          ReadOnly = True
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'OBJ_TYPE'
                          Footers = <>
                          ReadOnly = True
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'ID_PROD_TRAFF'
                          Footers = <>
                          ReadOnly = True
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'ID_PA_BILL_POS'
                          Footers = <>
                          ReadOnly = True
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'FACTOR'
                          Footers = <>
                          ReadOnly = True
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'LID'
                          Footers = <>
                          ReadOnly = True
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'ID_ORDER'
                          Footers = <>
                          ReadOnly = True
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'NAME_TRAFF_MAT'
                          Footers = <>
                          ReadOnly = True
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                          Width = 279
                        end
                        item
                          EditButtons = <>
                          FieldName = 'ID_ITEM'
                          Footers = <>
                          ReadOnly = True
                          Title.EndEllipsis = True
                          Title.TitleButton = True
                        end>
                    end
                  end
                end
              end
            end
            object ts_Fio: TTabSheet
              Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1080
              ImageIndex = 9
              object Splitter4: TSplitter
                Left = 702
                Top = 0
                Height = 314
                Align = alRight
              end
              object Panel15: TPanel
                Left = 0
                Top = 0
                Width = 702
                Height = 314
                Align = alClient
                Caption = 'Panel15'
                TabOrder = 0
                object dbg12: TDBGridEh
                  Left = 1
                  Top = 1
                  Width = 700
                  Height = 246
                  Align = alClient
                  DataSource = dsPlan_P
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
                  ReadOnly = True
                  SumList.Active = True
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  UseMultiTitle = True
                  OnKeyUp = dbg12KeyUp
                  OnMouseUp = dbg12MouseUp
                  OnSortMarkingChanged = dbg12SortMarkingChanged
                  Columns = <
                    item
                      EditButtons = <>
                      FieldName = 'fIO'
                      Footers = <>
                      Title.EndEllipsis = True
                      Width = 157
                    end
                    item
                      EditButtons = <>
                      FieldName = 'AMOUNT'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                      Width = 50
                    end
                    item
                      EditButtons = <>
                      FieldName = 'T_PERS'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                      Width = 46
                    end
                    item
                      EditButtons = <>
                      FieldName = 'F_AMOUNT'
                      Footer.FieldName = 'F_AMOUNT'
                      Footer.ValueType = fvtSum
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                      Width = 52
                    end
                    item
                      EditButtons = <>
                      FieldName = 'DIN'
                      Footers = <>
                      Title.TitleButton = True
                      OnUpdateData = dbg12DINUpdateData
                    end
                    item
                      EditButtons = <>
                      FieldName = 'TIN'
                      Footers = <>
                      Title.TitleButton = True
                      OnUpdateData = dbg12TINUpdateData
                    end
                    item
                      EditButtons = <>
                      FieldName = 'DTO'
                      Footers = <>
                      Title.TitleButton = True
                      OnUpdateData = dbg12DTOUpdateData
                    end
                    item
                      EditButtons = <>
                      FieldName = 'TTO'
                      Footers = <>
                      Title.TitleButton = True
                      OnUpdateData = dbg12TTOUpdateData
                    end
                    item
                      EditButtons = <>
                      FieldName = 'P_TIME'
                      Footers = <>
                      Title.TitleButton = True
                      OnUpdateData = dbg12PTIMEUpdateData
                    end
                    item
                      EditButtons = <>
                      FieldName = 'REM'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                      Width = 401
                      OnUpdateData = dbg12RemUpdateData
                    end
                    item
                      EditButtons = <>
                      FieldName = 'F_TIME'
                      Footer.FieldName = 'F_TIME'
                      Footer.ValueType = fvtSum
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
                      FieldName = 'D_IN'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                      OnUpdateData = dbg12D_INUpdateData
                    end
                    item
                      EditButtons = <>
                      FieldName = 'D_TO'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                      OnUpdateData = dbg12D_TOUpdateData
                    end
                    item
                      EditButtons = <>
                      FieldName = 'FIO_P'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.SortIndex = 1
                      Title.SortMarker = smDownEh
                      Title.TitleButton = True
                      Width = 276
                    end>
                end
                object Panel16: TPanel
                  Left = 1
                  Top = 247
                  Width = 700
                  Height = 41
                  Align = alBottom
                  Caption = 'Panel16'
                  TabOrder = 1
                  DesignSize = (
                    700
                    41)
                  object DBMemo1: TDBMemo
                    Left = 0
                    Top = 0
                    Width = 706
                    Height = 40
                    Anchors = [akLeft, akTop, akRight, akBottom]
                    DataField = 'REM'
                    DataSource = dsPlan_P
                    TabOrder = 0
                  end
                end
                object Panel18: TPanel
                  Left = 1
                  Top = 288
                  Width = 700
                  Height = 25
                  Align = alBottom
                  TabOrder = 2
                  object sbDel: TSpeedButton
                    Left = 133
                    Top = 2
                    Width = 23
                    Height = 22
                    Hint = #1059#1076#1072#1083#1077#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      04000000000000010000120B0000120B00001000000000000000000000000000
                      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
                      3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
                      33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
                      33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
                      333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
                      03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
                      33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
                      0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
                      3333333337FFF7F3333333333000003333333333377777333333}
                    NumGlyphs = 2
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = sbDelClick
                  end
                  object SpeedButton20: TSpeedButton
                    Left = 2
                    Top = 2
                    Width = 23
                    Height = 22
                    Hint = #1042' Excel '#1089#1077#1090#1082#1080
                    Flat = True
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
              end
              object Panel17: TPanel
                Left = 705
                Top = 0
                Width = 248
                Height = 314
                Align = alRight
                Caption = 'Panel17'
                TabOrder = 1
                object Splitter10: TSplitter
                  Left = 1
                  Top = 129
                  Width = 246
                  Height = 3
                  Cursor = crVSplit
                  Align = alTop
                end
                object Panel14: TPanel
                  Left = 1
                  Top = 132
                  Width = 246
                  Height = 23
                  Align = alTop
                  TabOrder = 0
                  object SpeedButton21: TSpeedButton
                    Left = 26
                    Top = 2
                    Width = 23
                    Height = 19
                    Hint = #1042' Excel '#1089#1077#1090#1082#1080
                    Flat = True
                    Glyph.Data = {
                      F6000000424DF600000000000000760000002800000010000000100000000100
                      0400000000008000000000000000000000001000000000000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                      77777777777777700000000000000006666008888888806EEF0770E6666606EE
                      F077770E66606EEF06077770E606EEF000077777006EEF077777777706EEF007
                      777777706EEF068077777706EEF0E6680777706EEF070E6680770FFFF07770EE
                      EE07000007777700000777777777777777777777777777777777}
                    OnClick = SpeedButton21Click
                  end
                  object SpeedButton18: TSpeedButton
                    Left = 2
                    Top = 2
                    Width = 23
                    Height = 19
                    Hint = #1055#1083#1072#1085'-'#1090#1072#1073#1077#1083#1100
                    Flat = True
                    Glyph.Data = {
                      36040000424D3604000000000000360000002800000010000000100000000100
                      2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF0000000000008080000080800000000000FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF000080800000000000C0C0C00000000000008080000000
                      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF000000000000808000FFFFFF00FFFFFF00FFFFFF00C0C0C0000000
                      00000080800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF000080800000000000FFFFFF008080800080808000FFFFFF00FFFF
                      FF00C0C0C000000000000080800000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF000000000000808000FFFFFF00FFFFFF00808080000000800000008000C0C0
                      C000FFFFFF00FFFFFF00C0C0C0000000000000808000FFFFFF00FFFFFF00FFFF
                      FF000080800000000000FFFFFF008080800000008000FFFFFF0000008000FFFF
                      FF00FFFFFF00C0C0C000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
                      000000808000FFFFFF00FFFFFF008080800080808000FFFFFF0000008000FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF0000808000FFFFFF00FFFFFF00FFFFFF000080
                      800000000000FFFFFF008080800080808000FFFFFF00FFFFFF0000008000C0C0
                      C000C0C0C000FFFFFF008080800000000000FFFFFF00FFFFFF00000000000080
                      8000FFFFFF00FFFFFF008080800080808000FFFFFF00C0C0C000FFFFFF00C0C0
                      C000FFFFFF00FFFFFF0000808000FFFFFF00FFFFFF00FFFFFF00008080000000
                      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                      8000FFFFFF008080800000000000FFFFFF00FFFFFF00FFFFFF00000000000080
                      8000C0C0C00080808000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF0000808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF000000000080808000C0C0C000C0C0C000C0C0C00000000000FFFFFF00FFFF
                      FF008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0C00080808000FFFFFF00FFFF
                      FF0000808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF0080808000C0C0C0000000000000808000008080008080
                      800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00000000000080
                      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton18Click
                  end
                  object sbIn: TSpeedButton
                    Left = 89
                    Top = 2
                    Width = 23
                    Height = 19
                    Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1089#1087#1080#1089#1086#1082' '#1079#1072#1076#1072#1085#1080#1103
                    Flat = True
                    Glyph.Data = {
                      36040000424D3604000000000000360000002800000010000000100000000100
                      2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00000000000000000000000000000000000000000000000000000000000000
                      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF0000000000FFFFFF00FFFFFF0000FF0000FFFFFF00FFFFFF00FFFFFF000000
                      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF0000000000FFFFFF00FFFFFF0000FF0000FFFFFF00FFFFFF00FFFFFF000000
                      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF0000000000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF0000000000FFFFFF00FF000000FF00000080000000FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF0000000000FFFFFF00FF000000FF00000080000000FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF008000
                      00008000000080000000FF000000FF0000008000000080000000800000000000
                      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FF00
                      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
                      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FF00
                      0000FF000000FF000000FF000000FF000000800000008000000080000000FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF0000000000FFFFFF00FF000000FF00000080000000FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF0000000000FFFFFF00FF000000FF00000080000000FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00000000000000000000000000000000000000000000000000000000000000
                      000000000000000000000000000000000000FFFFFF00FFFFFF00}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = sbInClick
                  end
                  object dbn14: TDBNavigator
                    Left = 49
                    Top = 2
                    Width = 40
                    Height = 19
                    DataSource = dsLoad_P
                    VisibleButtons = [nbFirst, nbLast]
                    Flat = True
                    TabOrder = 0
                    BeforeAction = dbn14BeforeAction
                  end
                  object cbFIO: TCheckBox
                    Left = 115
                    Top = 4
                    Width = 85
                    Height = 17
                    Hint = #1057#1087#1080#1089#1086#1082' '#1085#1072' '#1089#1091#1090#1082#1080
                    Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1080
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 1
                    OnClick = cbFIOClick
                  end
                  object cbWork: TCheckBox
                    Left = 198
                    Top = 3
                    Width = 97
                    Height = 17
                    Caption = #1056#1072#1073#1086#1090#1072
                    Checked = True
                    State = cbChecked
                    TabOrder = 2
                    OnClick = cbWorkClick
                  end
                end
                object dbg14: TDBGridEh
                  Left = 1
                  Top = 1
                  Width = 246
                  Height = 128
                  Align = alTop
                  DataSource = dsLoad_P
                  Flat = True
                  FooterColor = clWindow
                  FooterFont.Charset = DEFAULT_CHARSET
                  FooterFont.Color = clWindowText
                  FooterFont.Height = -11
                  FooterFont.Name = 'MS Sans Serif'
                  FooterFont.Style = []
                  Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                  OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
                  ReadOnly = True
                  TabOrder = 1
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  UseMultiTitle = True
                  OnSortMarkingChanged = dbg14SortMarkingChanged
                  Columns = <
                    item
                      EditButtons = <>
                      FieldName = 'NAME'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.SortIndex = 1
                      Title.SortMarker = smDownEh
                      Title.TitleButton = True
                      Width = 160
                    end
                    item
                      EditButtons = <>
                      FieldName = 'NAME_POST'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                      Width = 117
                    end
                    item
                      EditButtons = <>
                      FieldName = 'LOAD_TIME'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                      Width = 50
                    end
                    item
                      EditButtons = <>
                      FieldName = 'WORK_TIME'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                      Width = 48
                    end
                    item
                      EditButtons = <>
                      FieldName = 'ID_P'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                    end>
                end
                object GroupBox2: TGroupBox
                  Left = 1
                  Top = 155
                  Width = 246
                  Height = 158
                  Align = alClient
                  Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077
                  TabOrder = 2
                  object dbg_Obj: TDBGridEh
                    Left = 2
                    Top = 15
                    Width = 242
                    Height = 141
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
                    ReadOnly = True
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
                        FieldName = 'FIO'
                        Footers = <>
                        Width = 149
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
              end
            end
            object ts_Det: TTabSheet
              Caption = #1044#1077#1090#1072#1083#1080
              object Splitter3: TSplitter
                Left = 145
                Top = 0
                Height = 314
              end
              object dbg4: TDBGridEh
                Left = 148
                Top = 0
                Width = 805
                Height = 314
                Align = alClient
                DataSource = dsStore_Det
                Flat = True
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -11
                FooterFont.Name = 'MS Sans Serif'
                FooterFont.Style = []
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                UseMultiTitle = True
                OnSortMarkingChanged = dbg4SortMarkingChanged
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'NAME'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                    Width = 138
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
                    Title.SortIndex = 1
                    Title.SortMarker = smDownEh
                    Title.TitleButton = True
                    Width = 184
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_STEP'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                    Width = 23
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ONAME'
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
                    Width = 59
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
                    FieldName = 'ID_PROD_TRAFF'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
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
                    FieldName = 'ID_P_AREA'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                  end>
              end
              object Panel13: TPanel
                Left = 0
                Top = 0
                Width = 145
                Height = 314
                Align = alLeft
                TabOrder = 1
                object ToolBar2: TToolBar
                  Left = 1
                  Top = 1
                  Width = 143
                  Height = 29
                  Caption = 'ToolBar2'
                  TabOrder = 0
                  object cbTree: TCheckBox
                    Left = 0
                    Top = 2
                    Width = 61
                    Height = 22
                    Caption = #1044#1077#1088#1077#1074#1086
                    Checked = True
                    State = cbChecked
                    TabOrder = 1
                    OnClick = cbTreeClick
                  end
                  object SpeedButton17: TSpeedButton
                    Left = 61
                    Top = 2
                    Width = 23
                    Height = 22
                    Hint = #1054#1090#1082#1088#1099#1090#1100'/'#1047#1072#1082#1088#1099#1090#1100' '#1087#1086#1083#1085#1086#1089#1090#1100#1102' '#1076#1077#1088#1077#1074#1086
                    Flat = True
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      04000000000000010000120B0000120B00001000000000000000000000000000
                      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
                      333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
                      300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
                      333337F373F773333333303330033333333337F3377333333333303333333333
                      333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
                      333337777F337F33333330330BB00333333337F373F773333333303330033333
                      333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
                      333377777F77377733330BBB0333333333337F337F33333333330BB003333333
                      333373F773333333333330033333333333333773333333333333}
                    NumGlyphs = 2
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton17Click
                  end
                  object ToolButton7: TToolButton
                    Left = 84
                    Top = 2
                    Width = 12
                    Caption = 'ToolButton7'
                    Style = tbsSeparator
                  end
                  object cbDet: TCheckBox
                    Left = 96
                    Top = 2
                    Width = 17
                    Height = 22
                    Hint = #1063#1105#1088#1085#1072#1103' - '#1052#1077#1089#1090#1086' '#1093#1088#1072#1085#1077#1085#1080#1077#13'  '#1055#1091#1089#1090#1086'  - '#1055#1086' '#1074#1089#1077#1084#1091' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1091
                    Caption = 'cbDet'
                    Checked = True
                    ParentShowHint = False
                    ShowHint = True
                    State = cbChecked
                    TabOrder = 0
                  end
                  object SpeedButton16: TSpeedButton
                    Left = 113
                    Top = 2
                    Width = 23
                    Height = 22
                    Hint = #1042' Excel '
                    Flat = True
                    Glyph.Data = {
                      F6000000424DF600000000000000760000002800000010000000100000000100
                      0400000000008000000000000000000000001000000000000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                      77777777777777700000000000000006666008888888806EEF0770E6666606EE
                      F077770E66606EEF06077770E606EEF000077777006EEF077777777706EEF007
                      777777706EEF068077777706EEF0E6680777706EEF070E6680770FFFF07770EE
                      EE07000007777700000777777777777777777777777777777777}
                    OnClick = SpeedButton16Click
                  end
                end
                object dbt1: TDB_TreeView
                  Left = 1
                  Top = 30
                  Width = 143
                  Height = 283
                  Align = alClient
                  HideSelection = False
                  Indent = 19
                  SortType = stText
                  TabOrder = 1
                  Database = dmIS.dbIS
                  Transaction = dmIS.mT
                  RootId = 0
                  TableName = 'PROD_OBJ_TR'
                  FieldId = 'ID_OBJECT'
                  FieldParentId = 'PARENT'
                  FieldName = 'NAME'
                  FieldState = 'OBJ_TYPE'
                  SortByName = False
                end
              end
            end
            object ts_oper: TTabSheet
              Caption = #1054#1087#1077#1088#1072#1094#1080#1080
              ImageIndex = 8
              object dbg11: TDBGridEh
                Left = 0
                Top = 28
                Width = 959
                Height = 286
                Align = alClient
                DataSource = dmIS.dsPA_Oper
                Flat = True
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -11
                FooterFont.Name = 'MS Sans Serif'
                FooterFont.Style = []
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
                OnGetCellParams = dbg11GetCellParams
                OnSortMarkingChanged = dbg11SortMarkingChanged
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'N_ORDER'
                    Footers = <>
                    Title.SortIndex = 1
                    Title.SortMarker = smUpEh
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_ORDER'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_OBJECT'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ORDNAME'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'OBJ_NAME'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'STEP'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_OPERATION'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ONAME'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_PROD_OPER'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_PROD_TRAFF'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'PRODUCED'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'IS_UNIT'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'FULL_AMOUNT'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'PROD_AMOUNT'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'T_PERSONNEL'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'WASTE'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NMAT'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'DEC_NO'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'TONAME'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'rEST'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'pRoc'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_BATCH'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'PARENT_NAME'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                  end>
              end
              object ToolBar1: TToolBar
                Left = 0
                Top = 0
                Width = 959
                Height = 28
                Caption = 'ToolBar1'
                Flat = True
                Images = fmMain.il1
                TabOrder = 1
                object ToolButton3: TToolButton
                  Left = 0
                  Top = 0
                  Hint = #1054#1073#1085#1086#1074#1080#1090#1100' - '#1085#1077' '#1087#1086#1083#1085#1086#1089#1090#1100' '#1074#1099#1087#1086#1083#1085#1077#1085#1099#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
                  Caption = 'ToolButton3'
                  ImageIndex = 33
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = ToolButton3Click
                end
                object Label4: TLabel
                  Left = 23
                  Top = 0
                  Width = 27
                  Height = 13
                  Caption = #1044#1085#1077#1081
                end
                object edDay: TEdit
                  Left = 50
                  Top = 0
                  Width = 39
                  Height = 22
                  Hint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1076#1085#1077#1081' '
                  TabOrder = 0
                  Text = '0'
                end
                object ToolButton5: TToolButton
                  Left = 89
                  Top = 0
                  Width = 16
                  Caption = 'ToolButton5'
                  ImageIndex = 37
                  Style = tbsSeparator
                end
                object tsIn: TToolButton
                  Left = 105
                  Top = 0
                  Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1089#1087#1080#1089#1086#1082
                  Caption = 'tsIn'
                  ImageIndex = 35
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = tsInClick
                end
                object Label5: TLabel
                  Left = 128
                  Top = 0
                  Width = 37
                  Height = 13
                  Caption = #1050#1086#1083'-'#1074#1086' '
                end
                object edKol: TEdit
                  Left = 165
                  Top = 0
                  Width = 70
                  Height = 22
                  TabOrder = 1
                  OnKeyPress = edKolKeyPress
                end
                object ToolButton6: TToolButton
                  Left = 235
                  Top = 0
                  Hint = #1042' Excel '
                  Caption = 'ToolButton6'
                  ImageIndex = 30
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = ToolButton6Click
                end
                object Label6: TLabel
                  Left = 258
                  Top = 0
                  Width = 34
                  Height = 13
                  Caption = #1053#1072#1081#1090#1080' '
                end
                object ed1: TEdit
                  Left = 292
                  Top = 0
                  Width = 121
                  Height = 22
                  TabOrder = 2
                  OnKeyUp = ed1KeyUp
                end
                object ToolButton8: TToolButton
                  Left = 413
                  Top = 0
                  Width = 19
                  Caption = 'ToolButton8'
                  ImageIndex = 38
                  Style = tbsSeparator
                end
                object ToolButton1: TToolButton
                  Left = 432
                  Top = 0
                  Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1088#1086#1089#1090#1086#1081
                  Caption = 'ToolButton1'
                  Enabled = False
                  ImageIndex = 37
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = ToolButton1Click
                end
                object edTime: TEdit
                  Left = 455
                  Top = 0
                  Width = 50
                  Height = 22
                  ParentShowHint = False
                  ShowHint = False
                  TabOrder = 3
                  OnKeyUp = edTimeKeyUp
                end
                object Label7: TLabel
                  Left = 505
                  Top = 0
                  Width = 23
                  Height = 13
                  Alignment = taCenter
                  Caption = #1063#1072#1089' '
                end
                object lcbDutyType: TDBLookupComboboxEh
                  Left = 528
                  Top = 0
                  Width = 147
                  Height = 22
                  DropDownBox.Rows = 20
                  DropDownBox.Sizable = True
                  DropDownBox.Width = 300
                  EditButtons = <>
                  KeyField = 'ID_DUTYTYPE'
                  ListField = 'NAME'
                  TabOrder = 4
                  Visible = True
                end
                object cb_ss: TCheckBox
                  Left = 675
                  Top = 0
                  Width = 206
                  Height = 22
                  Caption = #1053#1077' '#1087#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1087#1088#1080#1086#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1099#1077
                  TabOrder = 5
                end
              end
            end
            object ts_mat: TTabSheet
              Caption = #1052#1072#1090#1077#1088#1080#1072#1083' '#1082' '#1076#1077#1090#1072#1083#1080' - '#1087#1083#1072#1085
              ImageIndex = 1
              object Splitter8: TSplitter
                Left = 0
                Top = 145
                Width = 959
                Height = 3
                Cursor = crVSplit
                Align = alTop
              end
              object Panel26: TPanel
                Left = 0
                Top = 0
                Width = 959
                Height = 145
                Align = alTop
                Caption = 'Panel26'
                TabOrder = 0
                object Panel5: TPanel
                  Left = 1
                  Top = 1
                  Width = 26
                  Height = 143
                  Align = alLeft
                  TabOrder = 0
                  object SpeedButton3: TSpeedButton
                    Left = 1
                    Top = 3
                    Width = 23
                    Height = 22
                    Hint = #1042' Excel '
                    Flat = True
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
                  object SpeedButton6: TSpeedButton
                    Left = 1
                    Top = 25
                    Width = 23
                    Height = 22
                    Hint = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1091#1095#1072#1089#1090#1082#1072' '#1087#1086' '#1058#1052#1062'/'#1044#1077#1090#1072#1083#1103#1084
                    Flat = True
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      04000000000000010000120B0000120B00001000000000000000000000000000
                      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                      5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
                      0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
                      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
                      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
                      0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
                      0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
                      5555557FFFFF7755555555500000005555555577777775555555555555555555
                      5555555555555555555555555555555555555555555555555555}
                    NumGlyphs = 2
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton6Click
                  end
                end
                object dbg2: TDBGridEh
                  Left = 27
                  Top = 1
                  Width = 931
                  Height = 143
                  Align = alClient
                  DataSource = dsOper_Mats
                  Flat = True
                  FooterColor = clWindow
                  FooterFont.Charset = DEFAULT_CHARSET
                  FooterFont.Color = clWindowText
                  FooterFont.Height = -11
                  FooterFont.Name = 'MS Sans Serif'
                  FooterFont.Style = []
                  Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                  OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
                  TabOrder = 1
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  UseMultiTitle = True
                  OnSortMarkingChanged = dbg2SortMarkingChanged
                  Columns = <
                    item
                      EditButtons = <>
                      FieldName = 'ID_ITEM'
                      Footers = <>
                      Title.Caption = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                      Width = 60
                    end
                    item
                      EditButtons = <>
                      FieldName = 'NAME'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.SortIndex = 1
                      Title.SortMarker = smDownEh
                      Title.TitleButton = True
                      Width = 231
                    end
                    item
                      EditButtons = <>
                      FieldName = 'UNIT_Y'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                      Width = 45
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
                      FieldName = 'AMOUNT_MATS_ORDS'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                    end
                    item
                      EditButtons = <>
                      FieldName = 'AMOUNT_MATS_PLAN'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                    end
                    item
                      EditButtons = <>
                      FieldName = 'AMOUNT_MATS_PLAN_F_AM'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'AMOUNT_MATS_PLAN_P_AM'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'AMOUNT_MATS_PROD'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                    end
                    item
                      EditButtons = <>
                      FieldName = 'AMOUNT_MATS_WASTE'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                    end
                    item
                      EditButtons = <>
                      FieldName = 'AMOUNT_MATS_WASTE_ORD'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                    end
                    item
                      EditButtons = <>
                      FieldName = 'AMOUNT_MATS_WASTE_PLAN'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                    end
                    item
                      EditButtons = <>
                      FieldName = 'AMOUNT_MATS_WASTE_F_AM'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'AMOUNT_MATS_WASTE_P_AM'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'AMOUNT_MATS_WASTE_PROD'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                    end
                    item
                      EditButtons = <>
                      FieldName = 'WASTE'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                    end
                    item
                      EditButtons = <>
                      FieldName = 'DEFECT'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                    end
                    item
                      EditButtons = <>
                      FieldName = 'LENG'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                    end
                    item
                      EditButtons = <>
                      FieldName = 'WIDTH'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                    end
                    item
                      EditButtons = <>
                      FieldName = 'HEIGHT'
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
                    end>
                end
              end
              object GroupBox1: TGroupBox
                Left = 0
                Top = 148
                Width = 959
                Height = 166
                Align = alClient
                Caption = #1053#1072' '#1091#1095#1072#1089#1090#1082#1077'/'#1057#1082#1083#1072#1076#1077' '#1087#1086' '#1087#1072#1088#1090#1080#1080
                TabOrder = 1
                object dbg23: TDBGridEh
                  Left = 28
                  Top = 15
                  Width = 929
                  Height = 149
                  Align = alClient
                  DataSource = dsSTORE_TMS_BATCH
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
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  Columns = <
                    item
                      EditButtons = <>
                      FieldName = 'N_ID_PA_AREA'
                      Footers = <>
                      Width = 189
                    end
                    item
                      EditButtons = <>
                      FieldName = 'ID_BATCH'
                      Footers = <>
                    end
                    item
                      Color = clMoneyGreen
                      EditButtons = <>
                      FieldName = 'OST'
                      Footer.FieldName = 'OST'
                      Footer.ValueType = fvtSum
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'AMOUNT'
                      Footer.FieldName = 'AMOUNT'
                      Footer.ValueType = fvtSum
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'SUM_R'
                      Footer.FieldName = 'SUM_R'
                      Footer.ValueType = fvtSum
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'PRICE'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'NDS'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'ID_P_AREA'
                      Footers = <>
                    end>
                end
                object Panel27: TPanel
                  Left = 2
                  Top = 15
                  Width = 26
                  Height = 149
                  Align = alLeft
                  TabOrder = 1
                  object cbStore: TCheckBox
                    Left = 6
                    Top = 5
                    Width = 15
                    Height = 17
                    Hint = #1063#1105#1088#1085#1072#1103' '#1075#1072#1083#1086#1095#1082#1072' - '#1091#1095#1072#1089#1090#1086#1082#13#1055#1091#1089#1090#1086' -'#1087#1086' '#1074#1089#1077#1084#1091' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1091
                    Caption = 'cbStore'
                    Checked = True
                    State = cbChecked
                    TabOrder = 0
                    OnClick = cbStoreClick
                  end
                end
              end
            end
            object ts_mat_ord: TTabSheet
              Caption = #1052#1072#1090#1077#1088#1080#1072#1083' '#1082' '#1079#1072#1082#1072#1079#1091' - '#1087#1083#1072#1085
              ImageIndex = 6
              object Panel8: TPanel
                Left = 0
                Top = 0
                Width = 27
                Height = 314
                Align = alLeft
                TabOrder = 0
                object SpeedButton7: TSpeedButton
                  Left = 2
                  Top = 1
                  Width = 23
                  Height = 22
                  Hint = #1042' Excel '
                  Flat = True
                  Glyph.Data = {
                    F6000000424DF600000000000000760000002800000010000000100000000100
                    0400000000008000000000000000000000001000000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                    77777777777777700000000000000006666008888888806EEF0770E6666606EE
                    F077770E66606EEF06077770E606EEF000077777006EEF077777777706EEF007
                    777777706EEF068077777706EEF0E6680777706EEF070E6680770FFFF07770EE
                    EE07000007777700000777777777777777777777777777777777}
                  OnClick = SpeedButton7Click
                end
                object SpeedButton8: TSpeedButton
                  Left = 2
                  Top = 23
                  Width = 23
                  Height = 22
                  Hint = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1091#1095#1072#1089#1090#1082#1072' '#1087#1086' '#1058#1052#1062'/'#1044#1077#1090#1072#1083#1103#1084
                  Flat = True
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000120B0000120B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                    5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
                    0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
                    0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
                    0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
                    0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
                    0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
                    5555557FFFFF7755555555500000005555555577777775555555555555555555
                    5555555555555555555555555555555555555555555555555555}
                  NumGlyphs = 2
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton6Click
                end
              end
              object dbg8: TDBGridEh
                Left = 27
                Top = 0
                Width = 932
                Height = 314
                Align = alClient
                DataSource = dsSum_Mats_Ord
                Flat = True
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -11
                FooterFont.Name = 'MS Sans Serif'
                FooterFont.Style = []
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                UseMultiTitle = True
                OnSortMarkingChanged = dbg8SortMarkingChanged
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'ID_ITEM'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NAME_TMC'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.SortIndex = 1
                    Title.SortMarker = smDownEh
                    Title.TitleButton = True
                    Width = 261
                  end
                  item
                    EditButtons = <>
                    FieldName = 'UNIT_Y'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                    Width = 32
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT_MATS_PLAN'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT_MATS_PROD'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT_MATS_ORDS'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT_MATS_WASTE'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT_MATS_WASTE_PLAN'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT_MATS_WASTE_ORD'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT_MATS_WASTE_PROD'
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
                    FieldName = 'NAME_ORD'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                    Width = 182
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_ORDER'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                  end>
              end
            end
            object ts_mat_sum: TTabSheet
              Caption = #1052#1072#1090#1077#1088#1080#1072#1083' - '#1087#1083#1072#1085
              ImageIndex = 7
              object dbg9: TDBGridEh
                Left = 27
                Top = 0
                Width = 943
                Height = 250
                Align = alClient
                DataSource = dsSum_Oper_Mats
                Flat = True
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -11
                FooterFont.Name = 'MS Sans Serif'
                FooterFont.Style = []
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                UseMultiTitle = True
                OnSortMarkingChanged = dbg9SortMarkingChanged
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'ID_ITEM'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NAME'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                    Width = 445
                  end
                  item
                    EditButtons = <>
                    FieldName = 'UNIT_Y'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                    Width = 59
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT_MATS_PLAN'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                    Width = 86
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT_MATS_WASTE_PLAN'
                    Footers = <>
                    Title.EndEllipsis = True
                    Title.TitleButton = True
                    Width = 77
                  end>
              end
              object Panel9: TPanel
                Left = 0
                Top = 0
                Width = 27
                Height = 250
                Align = alLeft
                TabOrder = 1
                object SpeedButton9: TSpeedButton
                  Left = 2
                  Top = 1
                  Width = 23
                  Height = 22
                  Hint = #1042' Excel '
                  Flat = True
                  Glyph.Data = {
                    F6000000424DF600000000000000760000002800000010000000100000000100
                    0400000000008000000000000000000000001000000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                    77777777777777700000000000000006666008888888806EEF0770E6666606EE
                    F077770E66606EEF06077770E606EEF000077777006EEF077777777706EEF007
                    777777706EEF068077777706EEF0E6680777706EEF070E6680770FFFF07770EE
                    EE07000007777700000777777777777777777777777777777777}
                  OnClick = SpeedButton9Click
                end
                object SpeedButton10: TSpeedButton
                  Left = 2
                  Top = 23
                  Width = 23
                  Height = 22
                  Hint = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1091#1095#1072#1089#1090#1082#1072' '#1087#1086' '#1058#1052#1062'/'#1044#1077#1090#1072#1083#1103#1084
                  Flat = True
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000120B0000120B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                    5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
                    0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
                    0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
                    0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
                    0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
                    0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
                    5555557FFFFF7755555555500000005555555577777775555555555555555555
                    5555555555555555555555555555555555555555555555555555}
                  NumGlyphs = 2
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton6Click
                end
              end
            end
            object ts_doc: TTabSheet
              Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
              ImageIndex = 3
              object dbg5: TDBGridEh
                Left = 26
                Top = 0
                Width = 944
                Height = 250
                Align = alClient
                DataSource = dsDoc
                Flat = True
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -11
                FooterFont.Name = 'MS Sans Serif'
                FooterFont.Style = []
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                UseMultiTitle = True
                OnDblClick = dbg5DblClick
                OnGetCellParams = dbg5GetCellParams
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'DOC_TYPE'
                    Footers = <>
                    Width = 101
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NAME'
                    Footers = <>
                    Width = 315
                  end
                  item
                    EditButtons = <>
                    FieldName = 'D_CONFIRM'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_DOC'
                    Footers = <>
                  end>
              end
              object Panel11: TPanel
                Left = 0
                Top = 0
                Width = 26
                Height = 250
                Align = alLeft
                TabOrder = 1
                object SpeedButton14: TSpeedButton
                  Left = 1
                  Top = 1
                  Width = 23
                  Height = 22
                  Hint = #1042' Excel '
                  Flat = True
                  Glyph.Data = {
                    F6000000424DF600000000000000760000002800000010000000100000000100
                    0400000000008000000000000000000000001000000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                    77777777777777700000000000000006666008888888806EEF0770E6666606EE
                    F077770E66606EEF06077770E606EEF000077777006EEF077777777706EEF007
                    777777706EEF068077777706EEF0E6680777706EEF070E6680770FFFF07770EE
                    EE07000007777700000777777777777777777777777777777777}
                  OnClick = SpeedButton14Click
                end
                object SpeedButton15: TSpeedButton
                  Left = 1
                  Top = 22
                  Width = 23
                  Height = 22
                  Hint = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1091#1095#1072#1089#1090#1082#1072' '#1087#1086' '#1058#1052#1062'/'#1044#1077#1090#1072#1083#1103#1084
                  Flat = True
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000120B0000120B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                    5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
                    0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
                    0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
                    0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
                    0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
                    0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
                    5555557FFFFF7755555555500000005555555577777775555555555555555555
                    5555555555555555555555555555555555555555555555555555}
                  NumGlyphs = 2
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton6Click
                end
              end
            end
            object ts_vip: TTabSheet
              Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077
              ImageIndex = 4
              object dbg6: TDBGridEh
                Left = 26
                Top = 0
                Width = 944
                Height = 250
                Align = alClient
                DataSource = dsObj_Fix
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
                OnSortMarkingChanged = dbg6SortMarkingChanged
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'OBJ_NAME'
                    Footers = <>
                    Title.TitleButton = True
                    Width = 222
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT'
                    Footer.FieldName = 'AMOUNT'
                    Footer.ValueType = fvtSum
                    Footers = <>
                    Title.TitleButton = True
                    Width = 78
                  end
                  item
                    EditButtons = <>
                    FieldName = 'D_FIX'
                    Footers = <>
                    Title.TitleButton = True
                    Width = 102
                  end
                  item
                    EditButtons = <>
                    FieldName = 'D_BILL'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_STEP'
                    Footers = <>
                    Title.TitleButton = True
                    Width = 38
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ONAME'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_OBJECT'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_BATCH'
                    Footers = <>
                    Title.TitleButton = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'FIO'
                    Footers = <>
                    Title.TitleButton = True
                    Width = 143
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_PFIO'
                    Footers = <>
                    Title.TitleButton = True
                    Width = 188
                  end>
              end
              object Panel6: TPanel
                Left = 0
                Top = 0
                Width = 26
                Height = 250
                Align = alLeft
                TabOrder = 1
                object SpeedButton1: TSpeedButton
                  Left = 1
                  Top = 1
                  Width = 23
                  Height = 22
                  Hint = #1042' Excel '
                  Flat = True
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
                object SpeedButton4: TSpeedButton
                  Left = 1
                  Top = 22
                  Width = 23
                  Height = 22
                  Hint = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1091#1095#1072#1089#1090#1082#1072' '#1087#1086' '#1058#1052#1062'/'#1044#1077#1090#1072#1083#1103#1084
                  Flat = True
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000120B0000120B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                    5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
                    0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
                    0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
                    0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
                    0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
                    0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
                    5555557FFFFF7755555555500000005555555577777775555555555555555555
                    5555555555555555555555555555555555555555555555555555}
                  NumGlyphs = 2
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton6Click
                end
              end
            end
            object ts_plan: TTabSheet
              Caption = #1055#1083#1072#1085#1080#1088#1086#1074#1072#1085#1080#1077
              ImageIndex = 5
              object dbg10: TDBGridEh
                Left = 26
                Top = 0
                Width = 944
                Height = 250
                Align = alClient
                DataSource = dsPlan
                Flat = True
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -11
                FooterFont.Name = 'MS Sans Serif'
                FooterFont.Style = []
                FooterRowCount = 1
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
                    FieldName = 'D_OUT'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NAME'
                    Footers = <>
                    Width = 104
                  end
                  item
                    EditButtons = <>
                    FieldName = 'F_TM'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'F_AMOUNT'
                    Footer.FieldName = 'F_AMOUNT'
                    Footer.ValueType = fvtSum
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'OST'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'PL_NAME'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NAME_AREAIN'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'SHOTNAME'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'F_TIME'
                    Footers = <>
                  end>
              end
              object Panel10: TPanel
                Left = 0
                Top = 0
                Width = 26
                Height = 250
                Align = alLeft
                TabOrder = 1
                object SpeedButton11: TSpeedButton
                  Left = 1
                  Top = 1
                  Width = 23
                  Height = 22
                  Hint = #1042' Excel '
                  Flat = True
                  Glyph.Data = {
                    F6000000424DF600000000000000760000002800000010000000100000000100
                    0400000000008000000000000000000000001000000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                    77777777777777700000000000000006666008888888806EEF0770E6666606EE
                    F077770E66606EEF06077770E606EEF000077777006EEF077777777706EEF007
                    777777706EEF068077777706EEF0E6680777706EEF070E6680770FFFF07770EE
                    EE07000007777700000777777777777777777777777777777777}
                  OnClick = SpeedButton11Click
                end
                object SpeedButton12: TSpeedButton
                  Left = 1
                  Top = 23
                  Width = 23
                  Height = 22
                  Hint = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1091#1095#1072#1089#1090#1082#1072' '#1087#1086' '#1058#1052#1062'/'#1044#1077#1090#1072#1083#1103#1084
                  Flat = True
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000120B0000120B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                    5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
                    0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
                    0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
                    0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
                    0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
                    0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
                    5555557FFFFF7755555555500000005555555577777775555555555555555555
                    5555555555555555555555555555555555555555555555555555}
                  NumGlyphs = 2
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton6Click
                end
              end
            end
            object tsExp: TTabSheet
              Caption = #1059#1089#1083#1091#1075#1080
              ImageIndex = 10
              object dbg51: TDBGridEh
                Left = 0
                Top = 0
                Width = 970
                Height = 250
                Align = alClient
                DataSource = dsExp
                DrawMemoText = True
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
                    FieldName = 'DESCRIPTION'
                    Footers = <>
                    Title.EndEllipsis = True
                    Width = 310
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT'
                    Footer.FieldName = 'AMOUNT'
                    Footer.ValueType = fvtSum
                    Footers = <>
                    Title.EndEllipsis = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'UNAME'
                    Footers = <>
                    Title.EndEllipsis = True
                    Width = 33
                  end
                  item
                    EditButtons = <>
                    FieldName = 'TOTAL_SUM'
                    Footers = <>
                    Title.EndEllipsis = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NCURR'
                    Footers = <>
                    Title.EndEllipsis = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'PROC_NDS'
                    Footers = <>
                    Title.EndEllipsis = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'DEF_SUM'
                    Footer.FieldName = 'DEF_SUM'
                    Footer.ValueType = fvtSum
                    Footers = <>
                    Title.EndEllipsis = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'EXPENCE_DATE'
                    Footers = <>
                    Title.EndEllipsis = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'EXPENCE_NUMBER'
                    Footers = <>
                    Title.EndEllipsis = True
                    Width = 89
                  end
                  item
                    EditButtons = <>
                    FieldName = 'N_ID_AGENT'
                    Footers = <>
                    Title.EndEllipsis = True
                    Width = 237
                  end
                  item
                    EditButtons = <>
                    FieldName = 'RATE'
                    Footers = <>
                    Title.EndEllipsis = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NAME'
                    Footers = <>
                    Title.EndEllipsis = True
                    Width = 227
                  end
                  item
                    EditButtons = <>
                    FieldName = 'DOC_NUMBER'
                    Footers = <>
                    Title.EndEllipsis = True
                    Width = 143
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_EXPENCE'
                    Footers = <>
                    Title.EndEllipsis = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_EXPOS'
                    Footers = <>
                    Title.EndEllipsis = True
                  end>
              end
            end
            object tsP_Plan: TTabSheet
              Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1083#1072#1085
              ImageIndex = 11
              object Panel33: TPanel
                Left = 0
                Top = 0
                Width = 970
                Height = 23
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object sbRfrPPlan: TSpeedButton
                  Left = 0
                  Top = 0
                  Width = 23
                  Height = 22
                  Glyph.Data = {
                    F6000000424DF600000000000000760000002800000010000000100000000100
                    0400000000008000000000000000000000001000000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777770877777
                    7777777778087777777777777700877777777777770B0877777777770000B087
                    777777770BBFBB087777777770FB00007777777770BFB08777777700000BFB08
                    7777770FBFBFBFB087777770FBFB000077777770BFBFB087777777770BFBFB08
                    777777770FFFBFF08777777770FBFFBF08777777700000000077}
                  OnClick = sbRfrPPlanClick
                end
                object Label9: TLabel
                  Left = 32
                  Top = 0
                  Width = 56
                  Height = 13
                  Caption = #1056#1072#1073'. '#1062#1077#1085#1090#1088
                end
                object Label11: TLabel
                  Left = 224
                  Top = 0
                  Width = 10
                  Height = 13
                  Caption = #1057':'
                end
                object Label12: TLabel
                  Left = 368
                  Top = 0
                  Width = 17
                  Height = 13
                  Caption = #1055#1086':'
                end
                object sbMovePlan: TSpeedButton
                  Left = 528
                  Top = 0
                  Width = 23
                  Height = 22
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
                  OnClick = sbMovePlanClick
                end
                object dblWCentrPlans: TDBLookupComboboxEh
                  Left = 96
                  Top = 0
                  Width = 121
                  Height = 21
                  EditButtons = <>
                  KeyField = 'ID_WCENTER'
                  ListField = 'NAME'
                  ListSource = dsWC
                  TabOrder = 0
                  Visible = True
                end
                object dtpPlanFrom: TDateTimePicker
                  Left = 240
                  Top = -1
                  Width = 129
                  Height = 21
                  Date = 41530.533164699070000000
                  Time = 41530.533164699070000000
                  TabOrder = 1
                end
                object dtpPLanTo: TDateTimePicker
                  Left = 388
                  Top = -1
                  Width = 129
                  Height = 21
                  Date = 41530.533164699070000000
                  Time = 41530.533164699070000000
                  TabOrder = 2
                end
              end
              object dbgPPlan: TDBGridEh
                Left = 0
                Top = 23
                Width = 970
                Height = 227
                Align = alClient
                DataSource = dsPPlan
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
                    FieldName = 'N_ORDER'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'OPER_NAME'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'WC_NAME'
                    Footers = <>
                    Width = 334
                  end
                  item
                    EditButtons = <>
                    FieldName = 'D_BEGIN'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'D_END'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT_TIME'
                    Footers = <>
                    Width = 87
                  end
                  item
                    EditButtons = <>
                    FieldName = 'FULL_AMOUNT'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NAME_ORD'
                    Footers = <>
                  end>
              end
            end
          end
          object pnKol: TPanel
            Left = 965
            Top = 1
            Width = 107
            Height = 342
            Align = alRight
            Caption = 'pnKol'
            Constraints.MinWidth = 20
            TabOrder = 1
            object dbg7: TDBGridEh
              Left = 1
              Top = 1
              Width = 105
              Height = 340
              Align = alClient
              DataSource = dsObj_Sum
              Flat = True
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              FooterRowCount = 1
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
                  FieldName = 'SUM'
                  Footer.FieldName = 'SUM'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 53
                end
                item
                  EditButtons = <>
                  FieldName = 'D_FIX'
                  Footers = <>
                  Width = 58
                end>
            end
          end
        end
      end
    end
    object tsStop: TTabSheet
      Caption = #1042#1085#1077' '#1087#1083#1072#1085#1072
      ImageIndex = 2
      object Splitter6: TSplitter
        Left = 0
        Top = 225
        Width = 1077
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 1077
        Height = 225
        Align = alTop
        Caption = 'Panel12'
        TabOrder = 0
        object Panel21: TPanel
          Left = 1
          Top = 201
          Width = 1075
          Height = 23
          Align = alBottom
          TabOrder = 0
          object tb7: TSpeedButton
            Left = 169
            Top = 0
            Width = 25
            Height = 22
            Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1084#1077#1085#1085#1086#1075#1086' '#1079#1072#1076#1072#1085#1080#1103
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
              000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
              00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
              F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
              0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
              FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
              FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
              0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
              00333377737FFFFF773333303300000003333337337777777333}
            NumGlyphs = 2
            OnClick = tb7Click
          end
          object dbn16: TDBNavigator
            Left = 1
            Top = 1
            Width = 168
            Height = 21
            DataSource = dsProd_Plan_Stop
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost]
            Align = alLeft
            TabOrder = 0
          end
        end
        object dbg16: TDBGridEh
          Left = 1
          Top = 1
          Width = 1075
          Height = 164
          Align = alClient
          DataSource = dsProd_Plan_Stop
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
          ReadOnly = True
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleImages = fmMain.il1
          UseMultiTitle = True
          OnSortMarkingChanged = dbg16SortMarkingChanged
          Columns = <
            item
              DropDownRows = 15
              DropDownSizing = True
              EditButtons = <>
              FieldName = 'n_ID_DUTY_TYPE'
              Footers = <>
              Title.EndEllipsis = True
              Width = 167
            end
            item
              ButtonStyle = cbsEllipsis
              EditButtons = <>
              FieldName = 'N_ORDER'
              Footers = <>
              OnEditButtonClick = dbg16NOrderEditButtonClick
              OnUpdateData = dbg16NOrderUpdateData
            end
            item
              EditButtons = <>
              FieldName = 'DIN'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              OnUpdateData = dbg16DINUpdateData
            end
            item
              EditButtons = <>
              FieldName = 'TIN'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              OnUpdateData = dbg16TINUpdateData
            end
            item
              EditButtons = <>
              FieldName = 'DTO'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              OnUpdateData = dbg16Columns3UpdateData
            end
            item
              EditButtons = <>
              FieldName = 'TTO'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              OnUpdateData = dbg16TTOUpdateData
            end
            item
              EditButtons = <>
              FieldName = 'P_TIME'
              Footer.FieldName = 'F_TIME'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              OnUpdateData = dbg16PTIMEUpdateData
            end
            item
              EditButtons = <>
              FieldName = 'REM'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 209
            end
            item
              EditButtons = <>
              FieldName = 'F_TIME'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'PL_NAME'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'NAME_SHIFT'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 102
            end
            item
              EditButtons = <>
              FieldName = 'ID_PROD_PLAN_STOP'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'ID_DUTYTYPE'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'ID_SHIFT'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'ID_EQUIPMENT'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'NAME_ORD'
              Footers = <>
              Width = 228
            end
            item
              EditButtons = <>
              FieldName = 'ID_ORDER'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'F_TIME_SUM'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'FIO'
              Footers = <>
              Title.Caption = #1060#1048#1054' '#1091#1090#1074#1077#1088#1076#1080#1074#1096#1077#1075#1086
            end
            item
              EditButtons = <>
              FieldName = 'D_OUT'
              Footers = <>
            end>
        end
        object dbMm: TDBMemo
          Left = 1
          Top = 165
          Width = 1075
          Height = 36
          Align = alBottom
          DataField = 'REM'
          DataSource = dsProd_Plan_Stop
          ReadOnly = True
          TabOrder = 2
        end
      end
      object Panel20: TPanel
        Left = 0
        Top = 228
        Width = 1077
        Height = 350
        Align = alClient
        Caption = 'Panel20'
        TabOrder = 1
        object Splitter7: TSplitter
          Left = 881
          Top = 1
          Height = 348
          Align = alRight
        end
        object Panel22: TPanel
          Left = 884
          Top = 1
          Width = 192
          Height = 348
          Align = alRight
          Caption = 'Panel17'
          TabOrder = 0
          object Splitter11: TSplitter
            Left = 1
            Top = 137
            Width = 190
            Height = 3
            Cursor = crVSplit
            Align = alTop
          end
          object Panel23: TPanel
            Left = 1
            Top = 140
            Width = 190
            Height = 25
            Align = alTop
            TabOrder = 0
            object SpeedButton23: TSpeedButton
              Left = 74
              Top = 2
              Width = 23
              Height = 22
              Hint = #1055#1083#1072#1085'-'#1090#1072#1073#1077#1083#1100
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF0000000000008080000080800000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF000080800000000000C0C0C00000000000008080000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF000000000000808000FFFFFF00FFFFFF00FFFFFF00C0C0C0000000
                00000080800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF000080800000000000FFFFFF008080800080808000FFFFFF00FFFF
                FF00C0C0C000000000000080800000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF000000000000808000FFFFFF00FFFFFF00808080000000800000008000C0C0
                C000FFFFFF00FFFFFF00C0C0C0000000000000808000FFFFFF00FFFFFF00FFFF
                FF000080800000000000FFFFFF008080800000008000FFFFFF0000008000FFFF
                FF00FFFFFF00C0C0C000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
                000000808000FFFFFF00FFFFFF008080800080808000FFFFFF0000008000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000808000FFFFFF00FFFFFF00FFFFFF000080
                800000000000FFFFFF008080800080808000FFFFFF00FFFFFF0000008000C0C0
                C000C0C0C000FFFFFF008080800000000000FFFFFF00FFFFFF00000000000080
                8000FFFFFF00FFFFFF008080800080808000FFFFFF00C0C0C000FFFFFF00C0C0
                C000FFFFFF00FFFFFF0000808000FFFFFF00FFFFFF00FFFFFF00008080000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                8000FFFFFF008080800000000000FFFFFF00FFFFFF00FFFFFF00000000000080
                8000C0C0C00080808000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF0000808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF000000000080808000C0C0C000C0C0C000C0C0C00000000000FFFFFF00FFFF
                FF008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0C00080808000FFFFFF00FFFF
                FF0000808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF0080808000C0C0C0000000000000808000008080008080
                800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00000000000080
                8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton18Click
            end
            object SpeedButton24: TSpeedButton
              Left = 98
              Top = 2
              Width = 23
              Height = 22
              Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1089#1087#1080#1089#1086#1082' '#1079#1072#1076#1072#1085#1080#1103
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000000000000000000000000000000000000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FFFFFF00FFFFFF0000FF0000FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FFFFFF00FFFFFF0000FF0000FFFFFF00FFFFFF00FFFFFF000000
                0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FFFFFF00FF000000FF00000080000000FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FFFFFF00FF000000FF00000080000000FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF008000
                00008000000080000000FF000000FF0000008000000080000000800000000000
                0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FF00
                0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
                0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FF00
                0000FF000000FF000000FF000000FF000000800000008000000080000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FFFFFF00FF000000FF00000080000000FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FFFFFF00FF000000FF00000080000000FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000FFFFFF00FFFFFF00}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton24Click
            end
            object sbFio: TSpeedButton
              Left = 50
              Top = 1
              Width = 23
              Height = 22
              Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
                3333333777333777FF33339993707399933333773337F3777FF3399933000339
                9933377333777F3377F3399333707333993337733337333337FF993333333333
                399377F33333F333377F993333303333399377F33337FF333373993333707333
                333377F333777F333333993333101333333377F333777F3FFFFF993333000399
                999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
                99933773FF777F3F777F339993707399999333773F373F77777F333999999999
                3393333777333777337333333999993333333333377777333333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = sbFioClick
            end
            object DBNavigator1: TDBNavigator
              Left = 1
              Top = 1
              Width = 48
              Height = 22
              DataSource = dsLoad_P
              VisibleButtons = [nbFirst, nbLast]
              TabOrder = 0
              BeforeAction = dbn14BeforeAction
            end
            object cbWorks: TCheckBox
              Left = 125
              Top = 6
              Width = 60
              Height = 17
              Caption = #1056#1072#1073#1086#1090#1072
              Checked = True
              State = cbChecked
              TabOrder = 1
              OnClick = cbWorksClick
            end
          end
          object dbg18: TDBGridEh
            Left = 1
            Top = 1
            Width = 190
            Height = 136
            Align = alTop
            DataSource = dsLoad_P
            Flat = True
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnSortMarkingChanged = dbg18SortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'NAME'
                Footers = <>
                Title.EndEllipsis = True
                Title.SortIndex = 1
                Title.SortMarker = smDownEh
                Title.TitleButton = True
                Width = 160
              end
              item
                EditButtons = <>
                FieldName = 'NAME_POST'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 117
              end
              item
                EditButtons = <>
                FieldName = 'LOAD_TIME'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'WORK_TIME'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 48
              end
              item
                EditButtons = <>
                FieldName = 'ID_P'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end>
          end
          object GroupBox3: TGroupBox
            Left = 1
            Top = 165
            Width = 190
            Height = 182
            Align = alClient
            Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077
            TabOrder = 2
            object dbg_Obj1: TDBGridEh
              Left = 2
              Top = 15
              Width = 186
              Height = 165
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
              ReadOnly = True
              SumList.Active = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              OnSortMarkingChanged = dbg_Obj1SortMarkingChanged
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
                  FieldName = 'FIO'
                  Footers = <>
                  Width = 149
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
        end
        object Panel24: TPanel
          Left = 1
          Top = 1
          Width = 880
          Height = 348
          Align = alClient
          Caption = 'Panel24'
          TabOrder = 1
          object dbg17: TDBGridEh
            Left = 1
            Top = 1
            Width = 878
            Height = 285
            Align = alClient
            DataSource = dsPlan_P_Stop
            DrawMemoText = True
            Flat = True
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            ReadOnly = True
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnKeyUp = dbg17KeyUp
            OnMouseUp = dbg17MouseUp
            OnSortMarkingChanged = dbg17SortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'FIO'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 256
              end
              item
                EditButtons = <>
                FieldName = 'DIN'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'TIN'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                OnUpdateData = dbg17TINUpdateData
              end
              item
                EditButtons = <>
                FieldName = 'DTO'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                OnUpdateData = dbg17DTOUpdateData
              end
              item
                EditButtons = <>
                FieldName = 'TTO'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                OnUpdateData = dbg17TTOUpdateData
              end
              item
                EditButtons = <>
                FieldName = 'P_TIME'
                Footer.FieldName = 'F_TIME'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                OnUpdateData = dbg17PTIMEUpdateData
              end
              item
                EditButtons = <>
                FieldName = 'F_TIME'
                Footer.FieldName = 'F_TIME'
                Footer.ValueType = fvtSum
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
                OnUpdateData = dbg17REMUpdateData
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
                FieldName = 'ID_PROD_PLAN_STOP'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end>
          end
          object Panel25: TPanel
            Left = 1
            Top = 322
            Width = 878
            Height = 25
            Align = alBottom
            TabOrder = 1
            object SpeedButton25: TSpeedButton
              Left = 37
              Top = 2
              Width = 23
              Height = 22
              Hint = #1059#1076#1072#1083#1077#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
                3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
                33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
                33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
                333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
                03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
                33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
                0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
                3333333337FFF7F3333333333000003333333333377777333333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = sbDelClick
            end
            object SpeedButton26: TSpeedButton
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
              OnClick = SpeedButton26Click
            end
            object SpeedButton19: TSpeedButton
              Left = 586
              Top = 1
              Width = 23
              Height = 22
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
              OnClick = SpeedButton19Click
            end
          end
          object dbM: TDBMemo
            Left = 1
            Top = 286
            Width = 878
            Height = 36
            Align = alBottom
            DataField = 'REM'
            DataSource = dsPlan_P_Stop
            ReadOnly = True
            TabOrder = 2
          end
        end
      end
    end
    object tsFio: TTabSheet
      Caption = #1043#1088#1072#1092#1080#1082
      ImageIndex = 1
      object Splitter5: TSplitter
        Left = 0
        Top = 233
        Width = 1077
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object Panel19: TPanel
        Left = 0
        Top = 0
        Width = 1077
        Height = 233
        Align = alTop
        Caption = 'Panel19'
        TabOrder = 0
        object dbg15: TDBGridEh
          Left = 1
          Top = 1
          Width = 1081
          Height = 231
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
          OnSortMarkingChanged = dbg15SortMarkingChanged
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
      end
      object pcGraf: TPageControl
        Left = 0
        Top = 236
        Width = 1077
        Height = 342
        ActivePage = ts_FIO_Pers
        Align = alClient
        TabOrder = 1
        object tsGraf_Fio: TTabSheet
          Caption = #1059#1095#1072#1089#1090#1085#1080#1082#1080
          object DBChart1: TDBChart
            Left = 0
            Top = 0
            Width = 855
            Height = 275
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              #1044#1080#1072#1075#1088#1072#1084#1084#1072' '#1087#1086' '#1091#1095#1072#1089#1090#1085#1080#1082#1072#1084)
            BottomAxis.DateTimeFormat = 'h:mm'
            BottomAxis.TickLength = 2
            BottomAxis.TickOnLabelsOnly = False
            BottomAxis.Title.Caption = #1044#1072#1090#1072
            Chart3DPercent = 5
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMaximum = False
            LeftAxis.AutomaticMinimum = False
            LeftAxis.Maximum = 20.000000000000000000
            LeftAxis.Minimum = 1.000000000000000000
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
              ValueFormat = 'dd.mm.ee,hh:mm'
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
              NextTask.DateTime = False
              NextTask.Name = 'NextTask'
              NextTask.Multiplier = 1.000000000000000000
              NextTask.Order = loNone
              NextTask.ValueSource = 'F_TIME_P'
            end
          end
        end
        object pcGraf_Det: TTabSheet
          Caption = #1044#1077#1090#1072#1083#1080
          ImageIndex = 1
          object DBChart2: TDBChart
            Left = 0
            Top = 0
            Width = 855
            Height = 275
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              #1055#1086' '#1076#1077#1090#1072#1083#1103#1084)
            BottomAxis.DateTimeFormat = 'h:mm'
            BottomAxis.Title.Caption = #1042#1088#1077#1084#1103
            Chart3DPercent = 5
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMaximum = False
            LeftAxis.AutomaticMinimum = False
            LeftAxis.Maximum = 20.000000000000000000
            LeftAxis.Minimum = 1.000000000000000000
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
          Caption = #1060#1048#1054
          ImageIndex = 2
          object DBChart3: TDBChart
            Left = 0
            Top = 0
            Width = 1075
            Height = 314
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              #1055#1086' '#1076#1077#1090#1072#1083#1103#1084)
            BottomAxis.DateTimeFormat = 'h:mm'
            BottomAxis.Increment = 0.041666666666666660
            BottomAxis.Title.Caption = #1042#1088#1077#1084#1103
            Chart3DPercent = 5
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMaximum = False
            LeftAxis.AutomaticMinimum = False
            LeftAxis.Maximum = 20.000000000000000000
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
      end
    end
  end
  object qStore_Det: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'SELECT p.id_p_area,a.name,coalesce(o.obj_name,i.name) nm,'
      'p.AMOUNT,p.id_prod_traff,p.id_step, s.name oname,'
      ' p.ID_OBJECT, p.ID_BATCH, p.ID_OBJECT_TYPE'
      ' FROM product_objects o'
      
        ' join P_AREA_STATES p  on o.id_parent = :id_parent and  p.ID_P_A' +
        'REA = :ID_P_AREA and'
      
        '  (p.amount is not null or p.amount >0) and o.id_object = p.id_o' +
        'bject'
      ' left join prod_areas a on a.id_p_area = p.id_p_area'
      ' left join items i on i.id_item = o.id_product'
      ' join product_traff f on f.id_prod_traff = p.id_prod_traff'
      ' join operations s on  s.id_operation = f.id_operation')
    Left = 182
    Top = 361
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_parent'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_P_AREA'
        ParamType = ptUnknown
      end>
    object qStore_DetID_P_AREA: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1084#1077#1089#1090#1072' '#1093#1088#1072#1085#1077#1085#1080#1103
      FieldName = 'ID_P_AREA'
      Origin = '"P_AREA_STATES"."ID_P_AREA"'
    end
    object qStore_DetNAME: TIBStringField
      DisplayLabel = #1052#1077#1089#1090#1086' '#1093#1088#1072#1085#1077#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object qStore_DetNM: TIBStringField
      DisplayLabel = #1054#1073#1098#1077#1082#1090
      FieldName = 'NM'
      ProviderFlags = []
      Size = 128
    end
    object qStore_DetAMOUNT: TIBBCDField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"P_AREA_STATES"."AMOUNT"'
      Precision = 18
      Size = 4
    end
    object qStore_DetID_PROD_TRAFF: TIntegerField
      DisplayLabel = #1058#1088#1072#1092#1080#1082
      FieldName = 'ID_PROD_TRAFF'
      Origin = '"P_AREA_STATES"."ID_PROD_TRAFF"'
    end
    object qStore_DetID_STEP: TIntegerField
      DisplayLabel = #1064#1072#1075
      FieldName = 'ID_STEP'
      Origin = '"P_AREA_STATES"."ID_STEP"'
    end
    object qStore_DetONAME: TIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'ONAME'
      Origin = '"OPERATIONS"."NAME"'
      Size = 30
    end
    object qStore_DetID_OBJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_OBJECT'
      Origin = '"P_AREA_STATES"."ID_OBJECT"'
    end
    object qStore_DetID_BATCH: TIntegerField
      DisplayLabel = #1055#1072#1088#1090#1080#1103
      FieldName = 'ID_BATCH'
      Origin = '"P_AREA_STATES"."ID_BATCH"'
    end
    object qStore_DetID_OBJECT_TYPE: TIntegerField
      DisplayLabel = #1058#1080#1087' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_OBJECT_TYPE'
      Origin = '"P_AREA_STATES"."ID_OBJECT_TYPE"'
    end
  end
  object dsStore_Det: TDataSource
    DataSet = qStore_Det
    Left = 174
    Top = 441
  end
  object qOper_Mats: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterScroll = qOper_MatsAfterScroll
    SQL.Strings = (
      'select M.*, I.NAME, u.name unit_y,'
      'm.amount * m.waste /100 amount_mats_waste,'
      'm.amount * t.full_amount * m.waste /100 amount_mats_waste_ord,'
      'm.amount * t.prod_amount * m.waste /100 amount_mats_waste_prod,'
      'm.amount * l.amount * m.waste /100 amount_mats_waste_plan,'
      'm.amount * l.f_amount * m.waste /100 amount_mats_waste_f_am,'
      'm.amount * l.p_amount * m.waste /100 amount_mats_waste_p_am,'
      't.prod_amount,'
      't.prod_amount * m.amount  amount_mats_prod,'
      'l.amount amount_plan,'
      'm.amount * l.amount amount_mats_plan,'
      'm.amount * l.p_amount amount_mats_plan_f_am,'
      'm.amount * l.f_amount amount_mats_plan_p_am,'
      't.full_amount amount_ord,'
      't.full_amount * m.amount amount_mats_ords'
      'from product_traff_mats M join ITEMS I on M.ID_ITEM = I.ID_ITEM'
      'join product_traff t on t.id_prod_traff = m.id_prod_traff'
      
        'join product_plans l on l.id_prod_traf = t.id_prod_traff and l.d' +
        '_out = :d_out'
      'left outer join params_value v on'
      
        '   (v.id_item =  m.id_item and v.id_param = 1 and v.data = '#39'1.01' +
        '.1900'#39')'
      'left outer join units u on u.id_unit = v.smlval'
      'where  m.id_prod_traff = :id_prod_traff')
    Left = 136
    Top = 360
    ParamData = <
      item
        DataType = ftDate
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id_prod_traff'
        ParamType = ptUnknown
      end>
    object qOper_MatsID_ITEM: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1058#1052#1062
      FieldName = 'ID_ITEM'
      Origin = '"PRODUCT_OPER_MATS"."ID_ITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOper_MatsNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1058#1052#1062
      FieldName = 'NAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qOper_MatsAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1074#1082#1083#1102#1095#1072#1103' '#1090#1077#1093'.'#1086#1090#1093#1086#1076'|'#1085#1072' '#1086#1076#1085#1091' '#1076#1077#1090#1072#1083#1100
      FieldName = 'AMOUNT'
      Origin = '"PRODUCT_OPER_MATS"."AMOUNT"'
      DisplayFormat = '### ### ##0.0####'
    end
    object qOper_MatsUNIT_Y: TIBStringField
      DisplayLabel = #1045#1076'.'#1080#1079#1084'. ('#1091')'
      FieldName = 'UNIT_Y'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qOper_MatsWASTE: TIBBCDField
      DisplayLabel = #1058#1077#1093'. '#1086#1090#1093#1086#1076' (%)'
      FieldName = 'WASTE'
      Origin = '"PRODUCT_OPER_MATS"."WASTE"'
      Precision = 9
      Size = 2
    end
    object qOper_MatsDEFECT: TIBBCDField
      DisplayLabel = #1041#1088#1072#1082' (%)'
      FieldName = 'DEFECT'
      Origin = '"PRODUCT_OPER_MATS"."DEFECT"'
      Precision = 9
      Size = 2
    end
    object qOper_MatsLENG: TFloatField
      DisplayLabel = #1044#1083#1080#1085#1072
      FieldName = 'LENG'
      Origin = '"PRODUCT_OPER_MATS"."LENG"'
    end
    object qOper_MatsWIDTH: TFloatField
      DisplayLabel = #1064#1080#1088#1080#1085#1072
      FieldName = 'WIDTH'
      Origin = '"PRODUCT_OPER_MATS"."WIDTH"'
    end
    object qOper_MatsHEIGHT: TFloatField
      DisplayLabel = #1042#1099#1089#1086#1090#1072
      FieldName = 'HEIGHT'
      Origin = '"PRODUCT_OPER_MATS"."HEIGHT"'
    end
    object qOper_MatsREM: TBlobField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      FieldName = 'REM'
      Origin = '"PRODUCT_OPER_MATS"."REM"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qOper_MatsPROD_AMOUNT: TFloatField
      FieldName = 'PROD_AMOUNT'
      Origin = '"PRODUCT_OBJECTS"."PROD_AMOUNT"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qOper_MatsAMOUNT_PLAN: TFloatField
      FieldName = 'AMOUNT_PLAN'
      Origin = '"PRODUCT_PLANS"."AMOUNT"'
      DisplayFormat = '### ### ##0.000'
    end
    object qOper_MatsAMOUNT_MATS_PLAN: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1074#1082#1083#1102#1095#1072#1103' '#1090#1077#1093'.'#1086#1090#1093#1086#1076'|'#1087#1086' '#1087#1083#1072#1085#1091
      FieldName = 'AMOUNT_MATS_PLAN'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qOper_MatsAMOUNT_MATS_PROD: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1074#1082#1083#1102#1095#1072#1103' '#1090#1077#1093'.'#1086#1090#1093#1086#1076'|'#1085#1072' '#1080#1079#1076#1077#1083#1080#1077
      FieldName = 'AMOUNT_MATS_PROD'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qOper_MatsAMOUNT_MATS_ORDS: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1074#1082#1083#1102#1095#1072#1103' '#1090#1077#1093'.'#1086#1090#1093#1086#1076'|'#1085#1072' '#1074#1077#1089#1100' '#1079#1072#1082#1072#1079
      FieldName = 'AMOUNT_MATS_ORDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qOper_MatsAMOUNT_MATS_WASTE: TFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1077#1093'.'#1086#1090#1093#1086#1076#1072'|'#1085#1072' '#1086#1076#1085#1086' '#1080#1079#1076#1077#1083#1080#1077
      FieldName = 'AMOUNT_MATS_WASTE'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qOper_MatsAMOUNT_MATS_WASTE_PLAN: TFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1077#1093'.'#1086#1090#1093#1086#1076#1072'|'#1087#1086' '#1087#1083#1072#1085#1091
      FieldName = 'AMOUNT_MATS_WASTE_PLAN'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qOper_MatsAMOUNT_MATS_WASTE_PROD: TFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1077#1093'.'#1086#1090#1093#1086#1076#1072'|'#1085#1072' '#1080#1079#1076#1077#1083#1080#1077
      FieldName = 'AMOUNT_MATS_WASTE_PROD'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qOper_MatsAMOUNT_MATS_WASTE_ORD: TFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1077#1093'.'#1086#1090#1093#1086#1076#1072'|'#1085#1072'  '#1074#1077#1089#1100' '#1079#1072#1082#1072#1079
      FieldName = 'AMOUNT_MATS_WASTE_ORD'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qOper_MatsAMOUNT_MATS_WASTE_F_AM: TFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1077#1093'.'#1086#1090#1093#1086#1076#1072'|'#1074#1099#1087#1086#1083#1085#1077#1085#1086
      FieldName = 'AMOUNT_MATS_WASTE_F_AM'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qOper_MatsAMOUNT_MATS_WASTE_P_AM: TFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1077#1093'.'#1086#1090#1093#1086#1076#1072'|'#1087#1086' '#1092#1072#1082#1090#1091
      FieldName = 'AMOUNT_MATS_WASTE_P_AM'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qOper_MatsAMOUNT_MATS_PLAN_F_AM: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1074#1082#1083#1102#1095#1072#1103' '#1090#1077#1093'.'#1086#1090#1093#1086#1076'|'#1074#1099#1087#1086#1083#1085#1077#1085#1086
      FieldName = 'AMOUNT_MATS_PLAN_F_AM'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qOper_MatsAMOUNT_MATS_PLAN_P_AM: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1074#1082#1083#1102#1095#1072#1103' '#1090#1077#1093'.'#1086#1090#1093#1086#1076'|'#1087#1086' '#1092#1072#1082#1090#1091
      FieldName = 'AMOUNT_MATS_PLAN_P_AM'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
  end
  object dsOper_Mats: TDataSource
    DataSet = qOper_Mats
    Left = 136
    Top = 440
  end
  object qIns: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    Left = 56
    Top = 184
  end
  object qBills: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      
        'select distinct coalesce(coalesce(b.obj_name,i.name)||'#39' - '#39'||coa' +
        'lesce(b.dec_no,'#39#39'),'
      'coalesce(i.name,'#39#39')) as obj_name, '
      'o.name as oname,'
      
        'p.id_pa_bill, p.d_bill,p.d_fix, s.ID_PA_BILL_POS, s.ID_OBJECT, s' +
        '.ID_BATCH, s.ID_PROD_OPER,s.id_prod_traff, s.AMOUNT,p.number,'
      ' s.OBJ_TYPE, s.OLD_PROD_OPER, s.ID_STEP,r.fio,'
      's.id_p,case when s.id_p is null then '#39#39
      '        when s.id_p = -1 then '#39#1088#1077#1079#1077#1088#1074#39
      '        else r1.fio end fio_id_p,'
      ' t.id_pa_to, a.name name_area,'
      
        'po.name,s.id_order,po.n_order,s.summa,s.summa_nds, cast(s.summa/' +
        's.AMOUNT as double precision) cena'
      
        ' from (((p_area_bills p join  PA_BILL_POS s on p.id_pa_bill = s.' +
        'id_pa_bill'
      ' and p.pa_bill_type = 70 and p.id_p_area = :id_p_area)'
      
        ' join operations o on o.id_operation = s.id_suboper and p.id_p_a' +
        'rea = o.id_area)'
      ' join product_objects b on s.id_object = b.id_object)'
      ' left join items i on i.id_item = b.id_product'
      'left join product_traff t on t.id_prod_oper = s.id_prod_oper'
      'left join personnel r on r.id_p = p.id_fix  '
      'left join personnel r1 on r1.id_p = s.id_p '
      'left join prod_areas a on a.id_p_area = t.id_pa_to'
      'left join project_ords po on po.id_order = s.id_order'
      'where p.d_bill >= :d_bill and p.d_bill <:d_bill + 1')
    Left = 222
    Top = 377
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_p_area'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_bill'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_bill'
        ParamType = ptUnknown
      end>
    object qBillsOBJ_NAME: TIBStringField
      DisplayLabel = #1054#1073#1098#1077#1082#1090
      FieldName = 'OBJ_NAME'
      ProviderFlags = []
      Size = 128
    end
    object qBillsONAME: TIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'ONAME'
      Origin = '"OPERATIONS"."NAME"'
      Size = 30
    end
    object qBillsID_PA_BILL: TIntegerField
      FieldName = 'ID_PA_BILL'
      Origin = '"P_AREA_BILLS"."ID_PA_BILL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qBillsD_BILL: TDateField
      DisplayLabel = #1044'/'#1085#1072#1082#1083'.'
      FieldName = 'D_BILL'
      Origin = '"P_AREA_BILLS"."D_BILL"'
    end
    object qBillsD_FIX: TDateTimeField
      DisplayLabel = #1044'/'#1087#1086#1076#1096#1080#1074#1082#1080
      FieldName = 'D_FIX'
      Origin = '"P_AREA_BILLS"."D_FIX"'
    end
    object qBillsID_PA_BILL_POS: TIntegerField
      DisplayLabel = #1056#1077#1075'.'#8470' '#1087#1086#1079#1080#1094#1080#1080
      FieldName = 'ID_PA_BILL_POS'
      Origin = '"PA_BILL_POS"."ID_PA_BILL_POS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qBillsID_OBJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_OBJECT'
      Origin = '"PA_BILL_POS"."ID_OBJECT"'
      Required = True
    end
    object qBillsID_BATCH: TIntegerField
      DisplayLabel = #1055#1072#1088#1090#1080#1103
      FieldName = 'ID_BATCH'
      Origin = '"PA_BILL_POS"."ID_BATCH"'
    end
    object qBillsID_PROD_OPER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1087#1077#1088#1072#1094#1080#1080
      FieldName = 'ID_PROD_OPER'
      Origin = '"PA_BILL_POS"."ID_PROD_OPER"'
    end
    object qBillsID_PROD_TRAFF: TIntegerField
      DisplayLabel = #1058#1088#1072#1092#1080#1082
      FieldName = 'ID_PROD_TRAFF'
      Origin = '"PA_BILL_POS"."ID_PROD_TRAFF"'
    end
    object qBillsAMOUNT: TIBBCDField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"PA_BILL_POS"."AMOUNT"'
      Precision = 18
      Size = 4
    end
    object qBillsNUMBER: TIBStringField
      DisplayLabel = #8470' '#1085#1072#1082#1083'.'
      FieldName = 'NUMBER'
      Origin = '"P_AREA_BILLS"."NUMBER"'
      Size = 16
    end
    object qBillsOBJ_TYPE: TIntegerField
      DisplayLabel = #1058#1080#1087' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'OBJ_TYPE'
      Origin = '"PA_BILL_POS"."OBJ_TYPE"'
    end
    object qBillsOLD_PROD_OPER: TIntegerField
      FieldName = 'OLD_PROD_OPER'
      Origin = '"PA_BILL_POS"."OLD_PROD_OPER"'
    end
    object qBillsID_STEP: TIntegerField
      DisplayLabel = #1064#1072#1075
      FieldName = 'ID_STEP'
      Origin = '"PA_BILL_POS"."ID_STEP"'
    end
    object qBillsFIO: TIBStringField
      DisplayLabel = #1060#1048#1054' - '#1091#1090#1074#1077#1088#1076#1080#1083
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qBillsID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470' '#1091#1095#1072#1089#1090#1085#1080#1082#1072
      FieldName = 'ID_P'
      Origin = '"PA_BILL_POS"."ID_P"'
    end
    object qBillsFIO_ID_P: TIBStringField
      DisplayLabel = #1059#1095#1072#1089#1090#1085#1080#1082
      FieldName = 'FIO_ID_P'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qBillsID_PA_TO: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1089#1082#1083#1072#1076#1072' '#1082#1091#1076#1072' '#1087#1077#1088#1077#1076#1072#1090#1100
      FieldName = 'ID_PA_TO'
      Origin = '"PRODUCT_TRAFF"."ID_PA_TO"'
    end
    object qBillsNAME_AREA: TIBStringField
      DisplayLabel = #1050#1091#1076#1072' '#1087#1077#1088#1077#1076#1072#1090#1100
      FieldName = 'NAME_AREA'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object qBillsNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qBillsID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ID_ORDER'
      Origin = '"PA_BILL_POS"."ID_ORDER"'
    end
    object qBillsN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qBillsSUMMA: TIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUMMA'
      Origin = '"PA_BILL_POS"."SUMMA"'
      DisplayFormat = '### ### ### ##0.00'
      Precision = 18
      Size = 4
    end
    object qBillsSUMMA_NDS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1053#1044#1057
      FieldName = 'SUMMA_NDS'
      Origin = '"PA_BILL_POS"."SUMMA_NDS"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qBillsCENA: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'CENA'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
  end
  object dsBills: TDataSource
    DataSet = qBills
    Left = 222
    Top = 441
  end
  object qDoc: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select * from PRODUCT_DOCS'
      'where ID_OBJECT = :ID_OBJECT'
      'and status is null')
    Left = 254
    Top = 377
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_OBJECT'
        ParamType = ptUnknown
      end>
    object qDocID_PROD_DOC: TIntegerField
      FieldName = 'ID_PROD_DOC'
      Origin = '"PRODUCT_DOCS"."ID_PROD_DOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDocID_PRODUCT: TIntegerField
      FieldName = 'ID_PRODUCT'
      Origin = '"PRODUCT_DOCS"."ID_PRODUCT"'
    end
    object qDocID_OBJECT: TIntegerField
      FieldName = 'ID_OBJECT'
      Origin = '"PRODUCT_DOCS"."ID_OBJECT"'
    end
    object qDocDOC_TYPE: TIntegerField
      DisplayLabel = #1058#1080#1087
      FieldName = 'DOC_TYPE'
      Origin = '"PRODUCT_DOCS"."DOC_TYPE"'
    end
    object qDocNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PRODUCT_DOCS"."NAME"'
      Size = 64
    end
    object qDocD_CONFIRM: TDateTimeField
      DisplayLabel = #1044'/'#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103
      FieldName = 'D_CONFIRM'
      Origin = '"PRODUCT_DOCS"."D_CONFIRM"'
    end
    object qDocID_CONFIRM: TIntegerField
      FieldName = 'ID_CONFIRM'
      Origin = '"PRODUCT_DOCS"."ID_CONFIRM"'
    end
    object qDocID_DOC: TIntegerField
      DisplayLabel = #1056#1077#1075'.'#8470' '#1076#1086#1082'-'#1090#1072
      FieldName = 'ID_DOC'
      Origin = '"PRODUCT_DOCS"."ID_DOC"'
    end
    object qDocID_PROD_OPER: TIntegerField
      FieldName = 'ID_PROD_OPER'
      Origin = '"PRODUCT_DOCS"."ID_PROD_OPER"'
    end
  end
  object dsDoc: TDataSource
    DataSet = qDoc
    Left = 254
    Top = 441
  end
  object frxRepD_JOB: TfrxReport
    Version = '3.23.18'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39212.431819120400000000
    ReportOptions.LastChange = 39212.431819120400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 418
    Top = 182
    Datasets = <
      item
        DataSet = frxD_JOB
        DataSetName = 'frxD_JOB'
      end
      item
        DataSet = frxSum_Oper_Mats
        DataSetName = 'frxSum_Oper_Mats'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
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
        Font.Name = 'Times New Roman'
        Font.Style = []
        Height = 75.590600000000000000
        ParentFont = False
        Top = 22.677180000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 136.063080000000000000
          Top = -0.000000000000000108
          Width = 801.260360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1038#1056#1112#1056#181#1056#1029#1056#1029#1056#1109#1056#181' '#1056#183#1056#176#1056#1169#1056#176#1056#1029#1056#1105#1056#181' '#1056#1029#1056#176' '#1056#1111#1057#1026#1056#1109#1056#1105#1056#183#1056#1030#1056#1109#1056#1169#1057#1027#1057#8218#1056#1030#1056#181#1056#1029#1056#1029#1057 +
              #8249#1056#8470' '#1057#1107#1057#8225#1056#176#1057#1027#1057#8218#1056#1109#1056#1108)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = -0.000000000000000108
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[Date]')
        end
        object Memo3: TfrxMemoView
          Left = 79.370130000000000000
          Top = -0.000000000000000108
          Width = 52.913420000000000000
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
        object Memo5: TfrxMemoView
          Left = 136.063080000000000000
          Top = 26.456710000000000000
          Width = 801.260360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[N_PROD_AREA]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 377.953000000000000000
          Top = 56.692950000000010000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[D_JOB]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 230.551330000000000000
        Width = 1046.929810000000000000
        DataSet = frxD_JOB
        DataSetName = 'frxD_JOB'
        RowCount = 0
        Stretched = True
        object Memo33: TfrxMemoView
          Top = 0.000000000000007203
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxD_JOB."N_ORDER"]')
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 86.929190000000000000
          Top = 0.000000000000007203
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxD_JOB."NM"] - [frxD_JOB."DEC_NO"]')
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 166.299320000000000000
          Top = 0.000000000000007203
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[frxD_JOB."ONAME"] [IIF(<frxD_JOB."DESCRIPT"> = '#39#39','#39#39','#39'('#39')] [frx' +
              'D_JOB."DESCRIPT"] [IIF(<frxD_JOB."DESCRIPT"> = '#39#39','#39#39','#39')'#39')] [IIF(' +
              '<frxD_JOB."REM"> = '#39#39','#39#39','#39'('#39')] [frxD_JOB."REM"] [IIF(<frxD_JOB."' +
              'REM"> = '#39#39','#39#39','#39')'#39')]')
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 585.827150000000000000
          Top = 0.000000000000007203
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxD_JOB."KOL_H"]')
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 642.520100000000000000
          Top = 0.000000000000007203
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxD_JOB."AMOUNT"]')
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 684.094930000000000000
          Top = 0.000000000000007203
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo39: TfrxMemoView
          Left = 729.449290000000000000
          Top = 0.000000000000007203
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo40: TfrxMemoView
          Left = 771.024120000000000000
          Top = 0.000000000000007203
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo41: TfrxMemoView
          Left = 869.291900000000000000
          Top = 0.000000000000007203
          Width = 56.692827950000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo42: TfrxMemoView
          Left = 925.984850000000000000
          Top = 0.000000000000007203
          Width = 68.031417950000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo43: TfrxMemoView
          Left = 994.016390000000000000
          Top = 0.000000000000007203
          Width = 52.913297950000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo61: TfrxMemoView
          Left = 41.574830000000000000
          Top = 0.000000000000007203
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxD_JOB."ID_OBJECT"]')
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 336.378170000000000000
          Top = 0.000000000000007203
          Width = 120.944837950000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'NMAT'
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxD_JOB."NMAT"]')
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 457.323130000000000000
          Top = 0.000000000000007203
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'REM'
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxD_JOB."REM"]')
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 64.252010000000000000
        Top = 461.102660000000000000
        Width = 1046.929810000000000000
        object Memo44: TfrxMemoView
          Left = 52.913420000000000000
          Top = 26.456710000000040000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1119#1056#8221#1056#1115':')
        end
        object Memo45: TfrxMemoView
          Left = 102.047310000000000000
          Top = 45.354360000000150000
          Width = 483.779840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#1105#1056#1109'/'#1056#1169#1056#176#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 589.606680000000000000
          Top = 26.456710000000040000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1116#1056#176#1057#8225#1056#176#1056#187#1057#1034#1056#1029#1056#1105#1056#1108' ('#1056#1112#1056#176#1057#1027#1057#8218#1056#181#1057#1026') '#1057#1107#1057#8225#1056#176#1057#1027#1057#8218#1056#1108#1056#176':')
        end
        object Memo47: TfrxMemoView
          Left = 797.480830000000000000
          Top = 45.354360000000150000
          Width = 249.448857950000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#1105#1056#1109'/'#1056#1169#1056#176#1057#8218#1056#176)
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        Height = 90.708720000000000000
        Top = 279.685220000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object Memo52: TfrxMemoView
          Top = 68.031540000000010000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169' '#1056#1118#1056#1114#1056#166)
        end
        object Memo53: TfrxMemoView
          Left = 102.047310000000000000
          Top = 68.031540000000010000
          Width = 638.740570000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181)
        end
        object Memo54: TfrxMemoView
          Left = 740.787880000000500000
          Top = 68.031540000000010000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8226#1056#1169'. '#1056#1105#1056#183#1056#1112'. ('#1057#1107')')
        end
        object Memo55: TfrxMemoView
          Left = 816.378480000000500000
          Top = 68.031540000000010000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027' '#1057#1107#1057#8225#1057#8216#1057#8218#1056#1109#1056#1112' '#1057#8218#1056#181#1057#8230'.'#1056#1109#1057#8218#1057#8230#1056#1109#1056#1169#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 933.543910000000500000
          Top = 68.031540000000010000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8218#1056#181#1057#8230'. '#1056#1109#1057#8218#1057#8230#1056#1109#1056#1169)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 1035.591220000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              #1056#1038#1057#1107#1056#1112#1056#176#1057#1026#1056#1029#1056#1109#1056#181' '#1056#1108#1056#1109#1056#187#1056#1105#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109' '#1056#1112#1056#176#1057#8218#1056#181#1057#1026#1056#1105#1056#176#1056#187#1056#176' '#1056#1029#1056#176': [' +
              'N_PROD_AREA]  [D_JOB]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 11.338590000000000000
          Frame.Typ = [ftTop]
        end
        object Memo68: TfrxMemoView
          Left = 816.378480000000500000
          Top = 49.133890000000010000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1111#1056#1109' '#1056#1111#1056#187#1056#176#1056#1029#1057#1107)
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 408.189240000000000000
        Width = 1046.929810000000000000
        DataSet = frxSum_Oper_Mats
        DataSetName = 'frxSum_Oper_Mats'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = frxSum_Oper_Mats
          DataSetName = 'frxSum_Oper_Mats'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxSum_Oper_Mats."ID_ITEM"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 102.047310000000000000
          Width = 638.740325910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'NAME'
          DataSet = frxSum_Oper_Mats
          DataSetName = 'frxSum_Oper_Mats'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxSum_Oper_Mats."NAME"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 740.787880000000500000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'UNIT_Y'
          DataSet = frxSum_Oper_Mats
          DataSetName = 'frxSum_Oper_Mats'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxSum_Oper_Mats."UNIT_Y"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 933.543910000000500000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'AMOUNT_MATS_WASTE_PLAN'
          DataSet = frxSum_Oper_Mats
          DataSetName = 'frxSum_Oper_Mats'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.8f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxSum_Oper_Mats."AMOUNT_MATS_WASTE_PLAN"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 816.378480000000500000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataSet = frxSum_Oper_Mats
          DataSetName = 'frxSum_Oper_Mats'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.8f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxSum_Oper_Mats."AMOUNT_MATS_PLAN"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 90.708720000000000000
        Top = 120.944960000000000000
        Width = 1046.929810000000000000
        object Memo8: TfrxMemoView
          Top = -0.000000000000005308
          Width = 41.574830000000000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#183#1056#176#1056#1108#1056#176#1056#183#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 86.929190000000000000
          Top = -0.000000000000005308
          Width = 79.370130000000000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1056#1169#1056#181#1057#8218#1056#176#1056#187#1056#1105'/'#1056#8221#1056#181#1057#8224#1056#1105#1056#1112#1056#176#1056#187#1057#1034#1056#1029#1057#8249#1056#8470' '#1056#1029#1056 +
              #1109#1056#1112#1056#181#1057#1026)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 166.299320000000000000
          Top = -0.000000000000005308
          Width = 170.078850000000000000
          Height = 75.590600000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#1111#1056#181#1057#1026#1056#176#1057#8224#1056#1105#1057#1039
            '('#1056#1119#1057#1026#1056#1105#1056#1112#1056#181#1057#8225#1056#176#1056#1029#1056#1105#1056#181')')
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 585.827150000000000000
          Top = -0.000000000000005308
          Width = 56.692950000000010000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#187#1056#176#1056#1029#1056#1105#1057#1026#1057#1107'-'
            #1056#181#1056#1112#1056#176#1057#1039
            #1057#8218#1057#1026#1057#1107#1056#1169#1056#1109#1057#8216#1056#1112'-'
            #1056#1108#1056#1109#1057#1027#1057#8218#1057#1034)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 642.520100000000000000
          Top = -0.000000000000005308
          Width = 86.929190000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187#1056#1105#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 642.520100000000000000
          Top = 37.795299999999970000
          Width = 41.574830000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#176#1056#1169#1056#176#1056#1029#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 684.094930000000000000
          Top = 37.795299999999970000
          Width = 45.354360000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1056#183#1056#1110#1056#1109#1057#8218#1056#1109#1056#1030#1056#187#1056#181#1056#1029#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 729.449290000000000000
          Top = -0.000000000000005308
          Width = 41.574830000000000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#176#1057#8218#1057#1026#1056#176#1057#8225#1056#181#1056#1029#1056#1109
            #1056#1030#1057#1026#1056#181#1056#1112#1056#181#1056#1029#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 771.024120000000000000
          Top = -0.000000000000005308
          Width = 98.267780000000000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164#1056#152#1056#1115' '#1057#1026#1056#176#1056#177#1056#1109#1057#8225#1056#181#1056#1110#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 869.291900000000000000
          Top = -0.000000000000005308
          Width = 177.637910000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1119#1057#1026#1056#1109#1056#1030#1056#181#1057#1026#1056#1108#1056#176' '#1057#8218#1056#181#1057#8230#1056#1029#1056#1109#1056#187#1056#1109#1056#1110#1056#1105#1057#8225#1056#181#1057#1027#1056#1108#1056#1109#1056#8470' '#1056#1169#1056#1105#1057#1027#1057#8224#1056#181#1056#1111#1056#187#1056#1105 +
              #1056#1029#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 869.291900000000000000
          Top = 37.795299999999970000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1057#1026#1056#181#1056#1112#1057#1039' '#1056#1111#1057#1026#1056#1109#1056#1030#1056#181#1056#1169#1056#181#1056#1029#1056#1105#1057#1039' '#1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 869.291900000000000000
          Top = 56.692949999999970000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#181#1057#8230#1056#1029#1056#1109#1056#187#1056#1109#1056#1110)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 925.984850000000000000
          Top = 56.692949999999970000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1029#1057#8218#1057#1026#1056#1109#1056#187#1057#8216#1057#1026)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 994.016390000000000000
          Top = 56.692949999999970000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1114#1056#176#1057#1027#1057#8218#1056#181#1057#1026)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Top = 75.590599999999970000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 86.929190000000000000
          Top = 75.590599999999970000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 166.299320000000000000
          Top = 75.590599999999970000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 585.827150000000000000
          Top = 75.590599999999970000
          Width = 56.692950000000010000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 642.520100000000000000
          Top = 75.590599999999970000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 684.094930000000000000
          Top = 75.590599999999970000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 729.449290000000000000
          Top = 75.590599999999970000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '9')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 771.024120000000000000
          Top = 75.590599999999970000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '10')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 869.291900000000000000
          Top = 75.590599999999970000
          Width = 56.692950000000010000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '11')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 925.984850000000000000
          Top = 75.590599999999970000
          Width = 68.031540000000010000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '12')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 994.016390000000000000
          Top = 75.590599999999970000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '13')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 41.574830000000000000
          Top = -0.000000000000005308
          Width = 45.354360000000000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169' '#1056#1109#1056#177#1057#1033#1056#181#1056#1108#1057#8218#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 41.574830000000000000
          Top = 75.590599999999970000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 336.378170000000000000
          Top = -0.000000000000005308
          Width = 120.944960000000000000
          Height = 75.590599999999990000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8216#1056#176#1056#183#1056#1109#1056#1030#1057#8249#1056#8470' '#1056#1112#1056#176#1057#8218#1056#181#1057#1026#1056#1105#1056#176#1056#187)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 336.378170000000000000
          Top = 75.590599999999970000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 457.323130000000000000
          Top = -0.000000000000005308
          Width = 128.504020000000000000
          Height = 75.590600000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1105#1056#1112#1056#181#1057#8225#1056#176#1056#1029#1056#1105#1056#181)
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 457.323130000000000000
          Top = 75.590599999999970000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxD_JOB: TfrxDBDataset
    UserName = 'frxD_JOB'
    CloseDataSource = False
    Left = 410
    Top = 110
  end
  object frxSum_Oper_Mats: TfrxDBDataset
    UserName = 'frxSum_Oper_Mats'
    CloseDataSource = False
    DataSet = qSum_Oper_Mats
    Left = 498
    Top = 166
  end
  object qSum_Oper_Mats: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BeforeOpen = qSum_Oper_MatsBeforeOpen
    SQL.Strings = (
      'select I.NAME,i.id_item,  u.name as unit_y,'
      'SUM(m.amount * m.waste /100) as amount_mats_waste,'
      
        'SUM(m.amount * t.full_amount * m.waste /100)  amount_mats_waste_' +
        'ord,'
      
        'SUM(m.amount * t.prod_amount * m.waste /100)  amount_mats_waste_' +
        'prod,'
      
        'SUM(m.amount * l.amount * m.waste /100) as amount_mats_waste_pla' +
        'n,'
      'SUM(t.prod_amount) prod_amount,'
      'SUM(t.prod_amount * m.amount) as amount_mats_prod,'
      'SUM(l.amount) as amount_plan,'
      'SUM(l.amount * m.amount) as amount_mats_plan,'
      '--avg(t.full_amount) as amount_ord,'
      'SUM(t.full_amount * m.amount) as amount_mats_ords'
      'from product_traff_mats M join ITEMS I on M.ID_ITEM = I.ID_ITEM'
      
        'join product_traff t on t.id_prod_traff = m.id_prod_traff and t.' +
        'id_area = :id_area'
      
        'join product_plans l on l.id_prod_traf = t.id_prod_traff and l.d' +
        '_out = :d_out '
      'and l.id_shift = :id_shift and l.ID_EQUIPMENT= :ID_EQUIPMENT'
      'left outer join params_value v on'
      
        '   (v.id_item =  m.id_item and v.id_param = 1 and v.data = '#39'1.01' +
        '.1900'#39')'
      'left outer join units u on u.id_unit = v.smlval'
      'group by I.NAME,i.id_item, u.name')
    Left = 422
    Top = 441
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_area'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id_shift'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_EQUIPMENT'
        ParamType = ptUnknown
      end>
    object qSum_Oper_MatsNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'NAME'
      ProviderFlags = []
      Size = 128
    end
    object qSum_Oper_MatsID_ITEM: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_ITEM'
      ProviderFlags = []
    end
    object qSum_Oper_MatsUNIT_Y: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'. ('#1091')'
      FieldName = 'UNIT_Y'
      ProviderFlags = []
      Size = 16
    end
    object qSum_Oper_MatsAMOUNT_MATS_WASTE: TFloatField
      FieldName = 'AMOUNT_MATS_WASTE'
      ProviderFlags = []
    end
    object qSum_Oper_MatsAMOUNT_MATS_WASTE_ORD: TFloatField
      FieldName = 'AMOUNT_MATS_WASTE_ORD'
      ProviderFlags = []
    end
    object qSum_Oper_MatsAMOUNT_MATS_WASTE_PROD: TFloatField
      FieldName = 'AMOUNT_MATS_WASTE_PROD'
      ProviderFlags = []
    end
    object qSum_Oper_MatsAMOUNT_MATS_WASTE_PLAN: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1087#1086' '#1087#1083#1072#1085#1091'|'#1090#1077#1093'.'#1086#1090#1093#1086#1076
      FieldName = 'AMOUNT_MATS_WASTE_PLAN'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qSum_Oper_MatsPROD_AMOUNT: TFloatField
      FieldName = 'PROD_AMOUNT'
      ProviderFlags = []
    end
    object qSum_Oper_MatsAMOUNT_MATS_PROD: TFloatField
      FieldName = 'AMOUNT_MATS_PROD'
      ProviderFlags = []
    end
    object qSum_Oper_MatsAMOUNT_PLAN: TFloatField
      FieldName = 'AMOUNT_PLAN'
      ProviderFlags = []
    end
    object qSum_Oper_MatsAMOUNT_MATS_PLAN: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1087#1086' '#1087#1083#1072#1085#1091'|'#1074#1082#1083#1102#1095#1072#1103' '#1090#1077#1093'.'#1086#1090#1093#1086#1076
      FieldName = 'AMOUNT_MATS_PLAN'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qSum_Oper_MatsAMOUNT_MATS_ORDS: TFloatField
      FieldName = 'AMOUNT_MATS_ORDS'
      ProviderFlags = []
    end
  end
  object dsSum_Oper_Mats: TDataSource
    DataSet = qSum_Oper_Mats
    Left = 438
    Top = 473
  end
  object pm1: TPopupMenu
    Left = 578
    Top = 150
    object N5: TMenuItem
      Caption = #1057#1087#1080#1089#1086#1082' '#1089#1084#1077#1085#1085#1099#1093' '#1079#1072#1076#1072#1085#1080#1081' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      OnClick = N5Click
    end
    object N1: TMenuItem
      Caption = #1057#1084#1077#1085#1085#1086#1077' '#1079#1072#1076#1072#1085#1080#1077' '#1085#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1099#1081' '#1091#1095#1072#1089#1090#1086#1082
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1057#1084#1077#1085#1085#1086#1077' '#1079#1072#1076#1072#1085#1080#1077' '#1087#1086' '#1086#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086#1077
      Enabled = False
      OnClick = N2Click
    end
    object N6: TMenuItem
      Caption = #1057#1084#1077#1085#1085#1086#1077' '#1079#1072#1076#1072#1085#1080#1077' '#1087#1086' '#1079#1072#1082#1072#1079#1091
      OnClick = N6Click
    end
    object N4: TMenuItem
      Caption = #1057#1076#1077#1083#1072#1085#1086' '#1079#1072' '#1089#1091#1090#1082#1080
      OnClick = N4Click
    end
    object N3: TMenuItem
      Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103' - '#1088#1072#1087#1086#1088#1090' ('#1074#1085#1091#1090#1088#1080' '#1091#1095#1072#1089#1090#1082#1072')'
      OnClick = N3Click
    end
  end
  object qBill_s: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select * from REP_NAKL(239, 70, 70, 70,70,NULL, NULL, 1, 0,'
      #39'O05-00001108'#39', NULL, NULL, 1, 1,1)')
    Left = 582
    Top = 369
    object qBill_sNAME_O: TIBStringField
      FieldName = 'NAME_O'
      Origin = '"REP_NAKL"."NAME_O"'
      Size = 30
    end
    object qBill_sID_PA_BILL: TIntegerField
      FieldName = 'ID_PA_BILL'
      Origin = '"REP_NAKL"."ID_PA_BILL"'
    end
    object qBill_sID_P_AREA: TIntegerField
      FieldName = 'ID_P_AREA'
      Origin = '"REP_NAKL"."ID_P_AREA"'
    end
    object qBill_sN_ID_P_AREA: TIBStringField
      FieldName = 'N_ID_P_AREA'
      Origin = '"REP_NAKL"."N_ID_P_AREA"'
      Size = 80
    end
    object qBill_sPA_BILL_TYPE: TSmallintField
      FieldName = 'PA_BILL_TYPE'
      Origin = '"REP_NAKL"."PA_BILL_TYPE"'
    end
    object qBill_sN_PA_BILL_TYPE: TIBStringField
      FieldName = 'N_PA_BILL_TYPE'
      Origin = '"REP_NAKL"."N_PA_BILL_TYPE"'
      Size = 35
    end
    object qBill_sID_DESTINATION: TIntegerField
      FieldName = 'ID_DESTINATION'
      Origin = '"REP_NAKL"."ID_DESTINATION"'
    end
    object qBill_sN_ID_DESTINATION: TIBStringField
      FieldName = 'N_ID_DESTINATION'
      Origin = '"REP_NAKL"."N_ID_DESTINATION"'
      Size = 80
    end
    object qBill_sID_TEAM: TIntegerField
      FieldName = 'ID_TEAM'
      Origin = '"REP_NAKL"."ID_TEAM"'
    end
    object qBill_sID_C: TIntegerField
      FieldName = 'ID_C'
      Origin = '"REP_NAKL"."ID_C"'
    end
    object qBill_sD_BILL: TDateField
      FieldName = 'D_BILL'
      Origin = '"REP_NAKL"."D_BILL"'
    end
    object qBill_sNUMBER_BILL: TIBStringField
      FieldName = 'NUMBER_BILL'
      Origin = '"REP_NAKL"."NUMBER_BILL"'
      Size = 32
    end
    object qBill_sNUMBER: TIBStringField
      FieldName = 'NUMBER'
      Origin = '"REP_NAKL"."NUMBER"'
      Size = 16
    end
    object qBill_sD_EDIT: TDateTimeField
      FieldName = 'D_EDIT'
      Origin = '"REP_NAKL"."D_EDIT"'
    end
    object qBill_sID_EDIT: TIntegerField
      FieldName = 'ID_EDIT'
      Origin = '"REP_NAKL"."ID_EDIT"'
    end
    object qBill_sN_ID_EDIT: TIBStringField
      FieldName = 'N_ID_EDIT'
      Origin = '"REP_NAKL"."N_ID_EDIT"'
      Size = 60
    end
    object qBill_sD_CONFIRM: TDateTimeField
      FieldName = 'D_CONFIRM'
      Origin = '"REP_NAKL"."D_CONFIRM"'
    end
    object qBill_sID_CONFIRM: TIntegerField
      FieldName = 'ID_CONFIRM'
      Origin = '"REP_NAKL"."ID_CONFIRM"'
    end
    object qBill_sN_ID_CONFIRM: TIBStringField
      FieldName = 'N_ID_CONFIRM'
      Origin = '"REP_NAKL"."N_ID_CONFIRM"'
      Size = 60
    end
    object qBill_sD_FIX: TDateTimeField
      FieldName = 'D_FIX'
      Origin = '"REP_NAKL"."D_FIX"'
    end
    object qBill_sID_FIX: TIntegerField
      FieldName = 'ID_FIX'
      Origin = '"REP_NAKL"."ID_FIX"'
    end
    object qBill_sN_ID_FIX: TIBStringField
      FieldName = 'N_ID_FIX'
      Origin = '"REP_NAKL"."N_ID_FIX"'
      Size = 60
    end
    object qBill_sD_GET: TDateTimeField
      FieldName = 'D_GET'
      Origin = '"REP_NAKL"."D_GET"'
    end
    object qBill_sID_GET: TIntegerField
      FieldName = 'ID_GET'
      Origin = '"REP_NAKL"."ID_GET"'
    end
    object qBill_sN_ID_GET: TIBStringField
      FieldName = 'N_ID_GET'
      Origin = '"REP_NAKL"."N_ID_GET"'
      Size = 60
    end
    object qBill_sNUMBER_PO: TIBStringField
      FieldName = 'NUMBER_PO'
      Origin = '"REP_NAKL"."NUMBER_PO"'
      Size = 32
    end
    object qBill_sID_CURRENCY: TIntegerField
      FieldName = 'ID_CURRENCY'
      Origin = '"REP_NAKL"."ID_CURRENCY"'
    end
    object qBill_sN_ID_CURRENCY: TIBStringField
      FieldName = 'N_ID_CURRENCY'
      Origin = '"REP_NAKL"."N_ID_CURRENCY"'
      Size = 4
    end
    object qBill_sID_AGENT: TIntegerField
      FieldName = 'ID_AGENT'
      Origin = '"REP_NAKL"."ID_AGENT"'
    end
    object qBill_sN_AGENT: TIBStringField
      FieldName = 'N_AGENT'
      Origin = '"REP_NAKL"."N_AGENT"'
      Size = 128
    end
    object qBill_sREM: TBlobField
      FieldName = 'REM'
      Origin = '"REP_NAKL"."REM"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qBill_sSUMMA: TFloatField
      FieldName = 'SUMMA'
      Origin = '"REP_NAKL"."SUMMA"'
    end
    object qBill_sSUMMA_DEF: TFloatField
      FieldName = 'SUMMA_DEF'
      Origin = '"REP_NAKL"."SUMMA_DEF"'
    end
    object qBill_sID_PA_BILL_POS: TIntegerField
      FieldName = 'ID_PA_BILL_POS'
      Origin = '"REP_NAKL"."ID_PA_BILL_POS"'
    end
    object qBill_sID_OBJECT: TIntegerField
      FieldName = 'ID_OBJECT'
      Origin = '"REP_NAKL"."ID_OBJECT"'
    end
    object qBill_sNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"REP_NAKL"."NAME"'
      Size = 128
    end
    object qBill_sUNIT1: TIBStringField
      FieldName = 'UNIT1'
      Origin = '"REP_NAKL"."UNIT1"'
      Size = 16
    end
    object qBill_sUNIT2: TIBStringField
      FieldName = 'UNIT2'
      Origin = '"REP_NAKL"."UNIT2"'
      Size = 16
    end
    object qBill_sID_BATCH: TIntegerField
      FieldName = 'ID_BATCH'
      Origin = '"REP_NAKL"."ID_BATCH"'
    end
    object qBill_sFACTOR: TIBBCDField
      FieldName = 'FACTOR'
      Origin = '"REP_NAKL"."FACTOR"'
      Precision = 18
      Size = 4
    end
    object qBill_sAMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Origin = '"REP_NAKL"."AMOUNT"'
      Precision = 18
      Size = 4
    end
    object qBill_sAMOUNT2: TIBBCDField
      FieldName = 'AMOUNT2'
      Origin = '"REP_NAKL"."AMOUNT2"'
      Precision = 18
      Size = 4
    end
    object qBill_sOBJ_TYPE: TIntegerField
      FieldName = 'OBJ_TYPE'
      Origin = '"REP_NAKL"."OBJ_TYPE"'
    end
    object qBill_sN_ORDER: TIBStringField
      FieldName = 'N_ORDER'
      Origin = '"REP_NAKL"."N_ORDER"'
      Size = 16
    end
    object qBill_sORD_NAME: TIBStringField
      FieldName = 'ORD_NAME'
      Origin = '"REP_NAKL"."ORD_NAME"'
      Size = 80
    end
    object qBill_sSUMMA_: TIBBCDField
      FieldName = 'SUMMA_'
      Origin = '"REP_NAKL"."SUMMA_"'
      Precision = 18
      Size = 4
    end
    object qBill_sSUMMA_EXP: TIBBCDField
      FieldName = 'SUMMA_EXP'
      Origin = '"REP_NAKL"."SUMMA_EXP"'
      Precision = 18
      Size = 4
    end
    object qBill_sCENA: TIBBCDField
      FieldName = 'CENA'
      Origin = '"REP_NAKL"."CENA"'
      Precision = 18
      Size = 4
    end
    object qBill_sCENA1: TIBBCDField
      FieldName = 'CENA1'
      Origin = '"REP_NAKL"."CENA1"'
      Precision = 18
      Size = 4
    end
    object qBill_sID_C_TMC: TIntegerField
      FieldName = 'ID_C_TMC'
      Origin = '"REP_NAKL"."ID_C_TMC"'
    end
    object qBill_sREM_BILL_POS: TMemoField
      FieldName = 'REM_BILL_POS'
      Origin = '"REP_NAKL"."REM_BILL_POS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qBill_sNAME_OF: TBlobField
      FieldName = 'NAME_OF'
      Origin = '"REP_NAKL"."NAME_OF"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qBill_sADR_P: TBlobField
      FieldName = 'ADR_P'
      Origin = '"REP_NAKL"."ADR_P"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qBill_sADR_F: TBlobField
      FieldName = 'ADR_F'
      Origin = '"REP_NAKL"."ADR_F"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qBill_sADR_D: TBlobField
      FieldName = 'ADR_D'
      Origin = '"REP_NAKL"."ADR_D"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qBill_sTELR: TBlobField
      FieldName = 'TELR'
      Origin = '"REP_NAKL"."TELR"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qBill_sFIO_R: TBlobField
      FieldName = 'FIO_R'
      Origin = '"REP_NAKL"."FIO_R"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qBill_sDOL_R: TBlobField
      FieldName = 'DOL_R'
      Origin = '"REP_NAKL"."DOL_R"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qBill_sFIO_B: TBlobField
      FieldName = 'FIO_B'
      Origin = '"REP_NAKL"."FIO_B"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qBill_sDOL_B: TBlobField
      FieldName = 'DOL_B'
      Origin = '"REP_NAKL"."DOL_B"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qBill_sINN: TBlobField
      FieldName = 'INN'
      Origin = '"REP_NAKL"."INN"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qBill_sAMOUNT_ORD: TIntegerField
      FieldName = 'AMOUNT_ORD'
      Origin = '"REP_NAKL"."AMOUNT_ORD"'
    end
    object qBill_sQCD: TIntegerField
      FieldName = 'QCD'
      Origin = '"REP_NAKL"."QCD"'
    end
    object qBill_sNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"REP_NAKL"."NMAT"'
      Size = 128
    end
    object qBill_sNDS: TFloatField
      FieldName = 'NDS'
      Origin = '"REP_NAKL"."NDS"'
    end
    object qBill_sSUMMA_NDS: TFloatField
      FieldName = 'SUMMA_NDS'
      Origin = '"REP_NAKL"."SUMMA_NDS"'
    end
    object qBill_sFIO_S: TIBStringField
      FieldName = 'FIO_S'
      Origin = '"REP_NAKL"."FIO_S"'
      Size = 60
    end
    object qBill_sID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"REP_NAKL"."ID_P"'
    end
    object qBill_sID_PA_TO: TIntegerField
      FieldName = 'ID_PA_TO'
      Origin = '"REP_NAKL"."ID_PA_TO"'
    end
    object qBill_sNAME_AREA: TIBStringField
      FieldName = 'NAME_AREA'
      Origin = '"REP_NAKL"."NAME_AREA"'
      Size = 80
    end
  end
  object frxRepBills_s: TfrxReport
    Version = '3.23.18'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39147.679068819400000000
    ReportOptions.LastChange = 39261.639909606500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnAfterPrintReport = frxRepBills_sAfterPrintReport
    Left = 630
    Top = 361
    Datasets = <
      item
        DataSet = frxZBill_s
        DataSetName = 'frxZBill_s'
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
      object PageHeader3: TfrxPageHeader
        Height = 68.031540000000010000
        Top = 22.677180000000000000
        Width = 1046.929810000000000000
        object Memo104: TfrxMemoView
          Left = 944.882500000000000000
          Top = -0.000000000000000108
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'. '#1074#8222#8211' [Page#] '#1056#1105#1056#183' [TotalPages#] ')
        end
        object Memo105: TfrxMemoView
          Top = 3.779530000000001000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '***[Date] [Time]***')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1038#1056#1108#1056#187#1056#176#1056#1169)
        end
        object Memo108: TfrxMemoView
          Left = 222.992270000000000000
          Top = -0.000000000000000108
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1108#1056#187#1056#176#1056#1169#1056#1029#1056#176#1057#1039' '#1074#8222#8211)
        end
        object Memo109: TfrxMemoView
          Left = 325.039580000000000000
          Top = -0.000000000000000108
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'NUMBER'
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxZBill_s."NUMBER"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 714.331170000000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#1105#1056#1111' '#1056#1169#1056#1109#1056#1108'-'#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 782.362710000000000000
          Top = 22.677180000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataField = 'N_PA_BILL_TYPE'
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxZBill_s."N_PA_BILL_TYPE"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo123: TfrxMemoView
          Left = 3.779530000000000000
          Top = 45.354360000000010000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1038#1056#1109#1056#183#1056#1169#1056#176#1056#187':')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          Left = 45.354360000000000000
          Top = 45.354360000000010000
          Width = 634.961040000000000000
          Height = 11.338590000000000000
          StretchMode = smMaxHeight
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxZBill_s."D_EDIT"]  [frxZBill_s."N_ID_EDIT"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 52.913420000000000000
          Top = 22.677180000000000000
          Width = 627.401980000000000000
          Height = 18.897650000000000000
          DataField = 'N_ID_P_AREA'
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxZBill_s."N_ID_P_AREA"]')
          ParentFont = False
        end
      end
      object GroupHeader4: TfrxGroupHeader
        Height = 109.606370000000000000
        Top = 132.283550000000000000
        Width = 1046.929810000000000000
        Condition = 'frxZBill_s."ID_PA_BILL"'
        object Memo112: TfrxMemoView
          Left = 75.590600000000000000
          Top = -0.000000000000008910
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxZBill_s."D_BILL"]')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Left = 3.779530000000000000
          Top = -0.000000000000008910
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1169#1056#1109#1056#1108'-'#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 3.779530000000000000
          Top = 49.133890000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[IIF(<frxZBill_s."N_ID_DESTINATION"> ='#39#39','#39#39','#39#1056#1119#1056#1109#1056#187#1057#1107#1057#8225#1056#176#1057#8218#1056#181#1056#187#1057 +
              #1034#39')] ')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Left = 90.708720000000000000
          Top = 49.133890000000000000
          Width = 948.662030000000000000
          Height = 18.897650000000000000
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              '[IIF(<frxZBill_s."N_ID_DESTINATION"> ='#39#39','#39#39',<frxZBill_s."N_ID_DE' +
              'STINATION">)] ')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677179999999980000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1105#1056#1112#1056#181#1057#8225#1056#176#1056#1029#1056#1105#1056#181)
        end
        object Memo117: TfrxMemoView
          Left = 90.708720000000000000
          Top = 22.677179999999980000
          Width = 948.662030000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'REM'
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Memo.UTF8 = (
            '[frxZBill_s."REM"]')
        end
        object Memo118: TfrxMemoView
          Left = 245.669450000000000000
          Top = -0.000000000000008910
          Width = 793.701300000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[IIF(<frxZBill_s."N_AGENT"> ='#39#39','#39#39',<frxZBill_s."N_AGENT">)] ')
        end
        object Memo119: TfrxMemoView
          Left = 162.519790000000000000
          Top = -0.000000000000008910
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[IIF(<frxZBill_s."N_AGENT"> ='#39#39','#39#39','#39#1056#1113#1056#1109#1056#1029#1057#8218#1057#1026#1056#176#1056#1110#1056#181#1056#1029#1057#8218#39')] ')
        end
        object Memo120: TfrxMemoView
          Left = 71.811070000000000000
          Top = 75.590599999999870000
          Width = 56.692950000000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#176#1057#1026#1057#8218#1056#1105#1057#1039)
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = -0.000000000000000444
          Top = 75.590599999999870000
          Width = 71.811070000000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169' '#1056#1118#1056#1114#1056#166)
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 147.401670000000000000
          Top = 75.590599999999870000
          Width = 381.732530000000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1056#1109#1056#177#1057#1033#1056#181#1056#1108#1057#8218#1056#176'/'#1056#1109#1056#1111#1056#181#1057#1026#1056#176#1057#8224#1056#1105#1057#1039'/'#1056#1112#1056#176#1057#8218#1056 +
              #181#1057#1026#1056#1105#1056#176#1056#187)
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 529.134200000000000000
          Top = 75.590599999999870000
          Width = 52.913420000000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109)
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 582.047620000000000000
          Top = 75.590599999999870000
          Width = 37.795300000000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8226#1056#1169'.'#1056#1105#1056#183#1056#1112' ('#1057#1107')')
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 619.842920000000000000
          Top = 75.590599999999870000
          Width = 86.929190000000000000
          Height = 34.015770000000010000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#183#1056#176#1056#1108#1056#176#1056#183#1056#176)
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 128.504020000000000000
          Top = 75.590599999999870000
          Width = 18.897650000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#1118#1056#1113)
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 706.772110000000000000
          Top = 75.590599999999870000
          Width = 188.976500000000000000
          Height = 34.015770000000010000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#181#1057#1026#1056#181#1056#1169#1056#176#1057#8218#1057#1034)
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 895.748610000000000000
          Top = 75.590599999999870000
          Width = 151.181200000000000000
          Height = 34.015769999999990000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1057#1027#1056#1111#1056#1109#1056#187#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034)
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 260.787570000000000000
        Width = 1046.929810000000000000
        DataSet = frxZBill_s
        DataSetName = 'frxZBill_s'
        RowCount = 0
        Stretched = True
        object Memo128: TfrxMemoView
          Left = 147.401670000000000000
          Top = 0.000000000000016542
          Width = 381.732285910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [frxZBill_s."NAME"]'
            
              ' [IIF(<frxZBill_s."NAME_O"> = '#39#39','#39' '#39','#39'//'#39')] [frxZBill_s."NAME_O"' +
              ']  [IIF(<frxZBill_s."NMAT"> = '#39#39','#39' '#39','#39'//'#39')] [frxZBill_s."NMAT"]')
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Left = 71.811070000000000000
          Top = 0.000000000000016542
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ID_BATCH'
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxZBill_s."ID_BATCH"]')
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 529.134200000000000000
          Top = 0.000000000000016542
          Width = 52.913346770000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxZBill_s."AMOUNT"]')
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          Top = 0.000000000000016542
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxZBill_s."ID_OBJECT"]')
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          Left = 582.047620000000000000
          Top = 0.000000000000016542
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'UNIT1'
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxZBill_s."UNIT1"]')
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 619.842920000000000000
          Top = 0.000000000000016542
          Width = 86.929165590000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxZBill_s."N_ORDER"]')
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 128.504020000000000000
          Top = 0.000000000000016542
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxZBill_s."QCD"> = 1,'#39'V'#39','#39' '#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 706.772110000000000000
          Top = 0.000000000000016542
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'NAME_AREA'
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxZBill_s."NAME_AREA"]')
        end
        object Memo7: TfrxMemoView
          Left = 895.748610000000000000
          Top = 0.000000000000016542
          Width = 151.181151180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'FIO_S'
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxZBill_s."FIO_S"]')
        end
      end
      object GroupFooter3: TfrxGroupFooter
        Height = 362.834880000000000000
        Top = 306.141930000000000000
        Width = 1046.929810000000000000
        object Memo136: TfrxMemoView
          Left = 3.779527559055120000
          Top = 26.456709999999990000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[IIF(<frxZBill_s."D_FIX">=0,'#39#39',<frxZBill_s."D_FIX">)] ')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          Left = 3.779527559055120000
          Top = 3.779530000000025000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[IIF(<frxZBill_s."D_FIX">=0,'#39#39','#39#1056#8221'/'#1056#1111#1056#1109#1056#1169#1057#8364#1056#1105#1056#1030#1056#1108#1056#1105#39')] ')
          ParentFont = False
        end
        object Memo138: TfrxMemoView
          Left = 3.779527559055120000
          Top = 45.354377090000010000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxZBill_s."N_ID_FIX"] ')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          Left = 3.779527559055120000
          Top = 64.252027090000010000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[IIF(<frxZBill_s."D_GET">=0,'#39#39',<frxZBill_s."D_GET">)] ')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          Left = 264.567100000000000000
          Top = 30.236257089999990000
          Width = 215.433070870000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176)
        end
        object Memo143: TfrxMemoView
          Left = 495.118430000000000000
          Top = 30.236257089999990000
          Width = 215.433070870000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176)
        end
        object Memo144: TfrxMemoView
          Left = 264.567100000000000000
          Top = 60.472497089999990000
          Width = 215.433070870000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            #1056#8217#1057#8249#1056#1169#1056#176#1056#187)
        end
        object Memo145: TfrxMemoView
          Left = 264.567100000000000000
          Top = 86.929207089999970000
          Width = 215.433070870000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034)
        end
        object Memo146: TfrxMemoView
          Left = 495.118430000000000000
          Top = 60.472497089999990000
          Width = 215.433070870000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#187#1057#1107#1057#8225#1056#1105#1056#187)
        end
        object Memo147: TfrxMemoView
          Left = 491.338900000000000000
          Top = 86.929207089999970000
          Width = 215.433070870000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034)
        end
        object Memo148: TfrxMemoView
          Left = 3.779527559055120000
          Top = 86.929207089999970000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxZBill_s."N_ID_GET"] ')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 68.031540000000010000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 600.945270000000000000
          Top = -0.000000000000001273
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'. '#1074#8222#8211' [Page#] '#1056#1105#1056#183' [TotalPages#] ')
        end
        object Memo9: TfrxMemoView
          Top = 3.779530000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '***[Date] [Time]***')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1038#1056#1108#1056#187#1056#176#1056#1169)
        end
        object Memo11: TfrxMemoView
          Left = 222.992270000000000000
          Top = -0.000000000000001273
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1108#1056#187#1056#176#1056#1169#1056#1029#1056#176#1057#1039' '#1074#8222#8211)
        end
        object Memo12: TfrxMemoView
          Left = 325.039580000000000000
          Top = -0.000000000000001273
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'NUMBER'
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxZBill_s."NUMBER"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 434.645950000000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#1105#1056#1111' '#1056#1169#1056#1109#1056#1108'-'#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 495.118430000000000000
          Top = 18.897650000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataField = 'N_PA_BILL_TYPE'
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxZBill_s."N_PA_BILL_TYPE"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1038#1056#1109#1056#183#1056#1169#1056#176#1056#187':')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 45.354360000000000000
          Top = 45.354360000000000000
          Width = 385.512060000000000000
          Height = 11.338590000000000000
          StretchMode = smMaxHeight
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxZBill_s."D_EDIT"]  [frxZBill_s."N_ID_EDIT"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 52.913420000000000000
          Top = 22.677180000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DataField = 'N_ID_P_AREA'
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '[frxZBill_s."N_ID_P_AREA"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 109.606370000000000000
        Top = 124.724490000000000000
        Width = 718.110700000000000000
        Condition = 'frxZBill_s."ID_PA_BILL"'
        object Memo18: TfrxMemoView
          Left = 75.590600000000000000
          Top = 0.000000000000002963
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxZBill_s."D_BILL"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 3.779530000000000000
          Top = 0.000000000000002963
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1169#1056#1109#1056#1108'-'#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 3.779530000000000000
          Top = 49.133890000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[IIF(<frxZBill_s."N_ID_DESTINATION"> ='#39#39','#39#39','#39#1056#1119#1056#1109#1056#187#1057#1107#1057#8225#1056#176#1057#8218#1056#181#1056#187#1057 +
              #1034#39')] ')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 90.708720000000000000
          Top = 49.133890000000010000
          Width = 619.842920000000000000
          Height = 18.897650000000000000
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              '[IIF(<frxZBill_s."N_ID_DESTINATION"> ='#39#39','#39#39',<frxZBill_s."N_ID_DE' +
              'STINATION">)] ')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1105#1056#1112#1056#181#1057#8225#1056#176#1056#1029#1056#1105#1056#181)
        end
        object Memo23: TfrxMemoView
          Left = 90.708720000000000000
          Top = 22.677180000000000000
          Width = 619.842920000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'REM'
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Memo.UTF8 = (
            '[frxZBill_s."REM"]')
        end
        object Memo24: TfrxMemoView
          Left = 245.669450000000000000
          Top = 0.000000000000002963
          Width = 464.882190000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[IIF(<frxZBill_s."N_AGENT"> ='#39#39','#39#39',<frxZBill_s."N_AGENT">)] ')
        end
        object Memo25: TfrxMemoView
          Left = 162.519790000000000000
          Top = 0.000000000000002963
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[IIF(<frxZBill_s."N_AGENT"> ='#39#39','#39#39','#39#1056#1113#1056#1109#1056#1029#1057#8218#1057#1026#1056#176#1056#1110#1056#181#1056#1029#1057#8218#39')] ')
        end
        object Memo26: TfrxMemoView
          Left = 71.811070000000000000
          Top = 75.590599999999880000
          Width = 56.692950000000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#176#1057#1026#1057#8218#1056#1105#1057#1039)
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = -0.000000000000000444
          Top = 75.590599999999880000
          Width = 71.811070000000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169' '#1056#1118#1056#1114#1056#166)
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 147.401670000000000000
          Top = 75.590599999999880000
          Width = 381.732530000000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1056#1109#1056#177#1057#1033#1056#181#1056#1108#1057#8218#1056#176'/'#1056#1109#1056#1111#1056#181#1057#1026#1056#176#1057#8224#1056#1105#1057#1039'/'#1056#1112#1056#176#1057#8218#1056 +
              #181#1057#1026#1056#1105#1056#176#1056#187)
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 529.134200000000000000
          Top = 75.590599999999880000
          Width = 52.913420000000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109)
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 582.047620000000000000
          Top = 75.590599999999880000
          Width = 37.795300000000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8226#1056#1169'.'#1056#1105#1056#183#1056#1112' ('#1057#1107')')
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 619.842920000000000000
          Top = 75.590600000000000000
          Width = 90.708720000000000000
          Height = 34.015770000000010000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#183#1056#176#1056#1108#1056#176#1056#183#1056#176)
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 128.504020000000000000
          Top = 75.590599999999880000
          Width = 18.897650000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#1118#1056#1113)
          Rotation = 90
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
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        DataSet = frxZBill_s
        DataSetName = 'frxZBill_s'
        RowCount = 0
        Stretched = True
        object Memo35: TfrxMemoView
          Left = 147.401670000000000000
          Top = 0.000000000000004663
          Width = 381.732285910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [frxZBill_s."NAME"]'
            
              ' [IIF(<frxZBill_s."NAME_O"> = '#39#39','#39' '#39','#39'//'#39')] [frxZBill_s."NAME_O"' +
              ']  [IIF(<frxZBill_s."NMAT"> = '#39#39','#39' '#39','#39'//'#39')] [frxZBill_s."NMAT"]')
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 71.811070000000000000
          Top = 0.000000000000004663
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ID_BATCH'
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxZBill_s."ID_BATCH"]')
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 529.134200000000000000
          Top = 0.000000000000004663
          Width = 52.913346770000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxZBill_s."AMOUNT"]')
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Top = 0.000000000000004663
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxZBill_s."ID_OBJECT"]')
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 582.047620000000000000
          Top = 0.000000000000004663
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'UNIT1'
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxZBill_s."UNIT1"]')
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 619.842920000000000000
          Top = 0.000000000000004663
          Width = 90.708695590000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxZBill_s."N_ORDER"]')
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 128.504020000000000000
          Top = 0.000000000000004663
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[iif(<frxZBill_s."QCD"> = 1,'#39'V'#39','#39' '#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 362.834880000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Memo44: TfrxMemoView
          Left = 3.779527559055120000
          Top = 26.456710000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[IIF(<frxZBill_s."D_FIX">=0,'#39#39',<frxZBill_s."D_FIX">)] ')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 3.779527559055120000
          Top = 3.779530000000035000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[IIF(<frxZBill_s."D_FIX">=0,'#39#39','#39#1056#8221'/'#1056#1111#1056#1109#1056#1169#1057#8364#1056#1105#1056#1030#1056#1108#1056#1105#39')] ')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 3.779527559055120000
          Top = 45.354377090000030000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxZBill_s."N_ID_FIX"] ')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 3.779527559055120000
          Top = 64.252027090000030000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[IIF(<frxZBill_s."D_GET">=0,'#39#39',<frxZBill_s."D_GET">)] ')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 264.567100000000000000
          Top = 30.236257089999990000
          Width = 215.433070870000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176)
        end
        object Memo49: TfrxMemoView
          Left = 495.118430000000000000
          Top = 30.236257089999990000
          Width = 215.433070870000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176)
        end
        object Memo50: TfrxMemoView
          Left = 264.567100000000000000
          Top = 60.472497090000000000
          Width = 215.433070870000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            #1056#8217#1057#8249#1056#1169#1056#176#1056#187)
        end
        object Memo51: TfrxMemoView
          Left = 264.567100000000000000
          Top = 86.929207090000050000
          Width = 215.433070870000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034)
        end
        object Memo52: TfrxMemoView
          Left = 495.118430000000000000
          Top = 60.472497090000000000
          Width = 215.433070870000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#187#1057#1107#1057#8225#1056#1105#1056#187)
        end
        object Memo53: TfrxMemoView
          Left = 491.338900000000000000
          Top = 86.929207090000050000
          Width = 215.433070870000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034)
        end
        object Memo54: TfrxMemoView
          Left = 3.779527559055120000
          Top = 86.929207090000050000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          DataSet = frxZBill_s
          DataSetName = 'frxZBill_s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxZBill_s."N_ID_GET"] ')
          ParentFont = False
        end
      end
    end
  end
  object frxZBill_s: TfrxDBDataset
    UserName = 'frxZBill_s'
    CloseDataSource = False
    DataSet = qBill_s
    Left = 590
    Top = 353
  end
  object qD_JOB: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BeforeOpen = qD_JOBBeforeOpen
    SQL.Strings = (
      
        'select floor(l.f_time) + ((l.f_time - floor(l.f_time))*60)/100 a' +
        's f_tm,'
      'r.id_prod_oper,'
      
        'p.id_project, p.n_order,p.id_order, p.name, o.id_object, o.obj_t' +
        'ype,p.id_version,'
      'o.obj_name, coalesce(o.obj_name,i.name) as nm,'
      
        's.id_operation, s.name as oname, l.amount,l.f_amount,l.p_amount,' +
        'l.amount - l.f_amount as ost,l.f_time,l.p_time,'
      'i.name as iname, f.t_personnel,f.id_prod_traff,f.id_area,'
      'f.t_personnel*l.amount as sum_pers, l.id_prod_plan,l.posit,'
      'l.rem ,r.rem as rem_oper,r.step,r.descript'
      
        'from (((((project_ords p join product_objects o on o.id_version ' +
        '= p.id_version)'
      'join product_oper r on r.id_object = o.id_object)'
      
        'join product_traff f on f.id_prod_oper = r.id_prod_oper and f.id' +
        '_area = :pa1)'
      
        'join operations s on s.id_area = f.id_area and s.id_operation = ' +
        'f.id_operation)'
      
        'join product_plans l on l.d_out = :d1 and  l.id_prod_traf = f.id' +
        '_prod_traff and l.amount >0 )'
      'left join items i on i.id_item = o.id_product'
      'where p.d_close is null')
    Left = 550
    Top = 353
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pa1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd1'
        ParamType = ptUnknown
      end>
  end
  object frxRepDay_JOB: TfrxReport
    Version = '3.23.18'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39273.713542372700000000
    ReportOptions.LastChange = 39273.713542372700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 280
    Top = 184
    Datasets = <
      item
        DataSet = frxD_JOB
        DataSetName = 'frxD_JOB'
      end
      item
        DataSet = frxOrd
        DataSetName = 'frxOrd'
      end
      item
        DataSet = frxSum_TMC_Ord
        DataSetName = 'frxSum_TMC_Ord'
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 71.811070000000000000
        ParentFont = False
        Top = 22.677180000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = -0.000000000000000108
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[Date] [Time]')
        end
        object Memo2: TfrxMemoView
          Left = 154.960730000000000000
          Top = -0.000000000000000108
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1038#1056#1169#1056#181#1056#187#1056#176#1056#1029#1056#1109' '#1056#183#1056#176' '#1057#1027#1057#1107#1057#8218#1056#1108#1056#1105)
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 619.842920000000000000
          Top = -0.000000000000000108
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'.'#1074#8222#8211' [Page#]')
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 154.960730000000000000
          Top = 22.677180000000000000
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[N_PROD_AREA]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 253.228510000000000000
          Top = -0.000000000000000108
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[D_JOB]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = -0.000000000000000444
          Top = 45.354360000000010000
          Width = 52.913420000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1056#181#1057#1026#1057#1027#1056#1105#1057#1039)
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 52.913420000000000000
          Top = 45.354360000000010000
          Width = 75.590600000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#183#1056#176#1056#1108#1056#176#1056#183#1056#176)
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 128.504020000000000000
          Top = 45.354360000000010000
          Width = 173.858380000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1056#183#1056#176#1056#1108#1056#176#1056#183#1056#176)
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 302.362400000000000000
          Top = 45.354360000000010000
          Width = 18.897650000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1025#1056#176#1056#1110)
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 321.260050000000000000
          Top = 45.354360000000010000
          Width = 226.771799999999900000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#177#1057#1033#1056#181#1056#1108#1057#8218' - '#1056#1169#1056#181#1057#8224#1056#1105#1056#1112#1056#176#1056#187#1057#1034#1056#1029#1057#8249#1056#8470' '#1056#1029#1056#1109#1056#1112#1056#181#1057#1026'/'
            #1056#1115#1056#1111#1056#181#1057#1026#1056#176#1057#8224#1056#1105#1057#1039)
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 608.504330000000000000
          Top = 45.354360000000010000
          Width = 52.913420000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1030#1057#8249#1056#1111#1056#1109#1056#187#1056#1029#1056#181#1056#1029#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 661.417750000000000000
          Top = 45.354360000000010000
          Width = 56.692901180000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1057#1026#1056#181#1056#1112#1057#1039
            #1057#8225#1057#8225':'#1056#1112#1056#1112)
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 548.031849999999900000
          Top = 45.354360000000010000
          Width = 60.472480000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1111#1056#187#1056#176#1056#1029)
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
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        DataSet = frxD_JOB
        DataSetName = 'frxD_JOB'
        RowCount = 0
        Stretched = True
        object Memo4: TfrxMemoView
          Left = 52.913420000000000000
          Top = 0.000000000000000631
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'N_ORDER'
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxD_JOB."N_ORDER"]')
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 128.504020000000000000
          Top = 0.000000000000000631
          Width = 173.858257950000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [frxD_JOB."NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 321.260050000000000000
          Top = 0.000000000000000631
          Width = 226.771677950000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [frxD_JOB."NM"] - [frxD_JOB."DEC_NO"] / [frxD_JOB."ONAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 608.504330000000000000
          Top = 0.000000000000000631
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[iif(<frxD_JOB."F_AMOUNT"> > 0,<frxD_JOB."F_AMOUNT">,'#39' '#39')] ')
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 661.417750000000000000
          Top = 0.000000000000000631
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[iif(<frxD_JOB."F_TIME"> > 0,TimeToStr(0+<frxD_JOB."F_TIME">/24)' +
              ','#39' '#39')]')
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = -0.000000000000000444
          Top = 0.000000000000000631
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ID_VERSION'
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxD_JOB."ID_VERSION"]')
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 302.362400000000000000
          Top = 0.000000000000000631
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'STEP'
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxD_JOB."STEP"]')
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 548.031849999999900000
          Top = 0.000000000000000631
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxD_JOB."AMOUNT"]')
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 15.118120000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo11: TfrxMemoView
          Left = 427.086890000000000000
          Top = -0.000000000000005523
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1109#1056#1111#1056#181#1057#1026#1056#176#1057#8224#1056#1105#1056#8470':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 548.031849999999900000
          Top = -0.000000000000005523
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[iif(SUM(<frxD_JOB."F_AMOUNT">,MasterData1) > 0,SUM(<frxD_JOB."F' +
              '_AMOUNT">,MasterData1),'#39' '#39')] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 661.417750000000000000
          Top = -0.000000000000005523
          Width = 56.692950000000010000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[iif'
            '('
            '  SUM(<frxD_JOB."F_TIME">,MasterData1)>0,'
            '  IntToStr(Trunc(SUM(<frxD_JOB."F_TIME">,MasterData1))) '
            ' ,'#39'00'#39
            ')'
            ']:[iif'
            '('
            '  SUM(<frxD_JOB."F_TIME">,MasterData1)>0,'
            '  IntToStr'
            '  ('
            '    Trunc'
            '  ('
            '   ( '
            '     SUM(<frxD_JOB."F_TIME">,MasterData1) '
            '      -'
            '    Trunc'
            '     ('
            '      SUM(<frxD_JOB."F_TIME">,MasterData1)'
            '     )'
            '   )*60'
            '  )'
            ' )'
            ' ,'#39'00 '#39
            ')'
            ']'
            '')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader1: TfrxGroupHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 143.622140000000000000
        ParentFont = False
        Top = 22.677180000000000000
        Width = 718.110700000000000000
        Condition = 'frxD_JOB."ID_ORDER"'
        StartNewPage = True
        object Memo30: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.913419999999990000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1056#181#1057#1026#1057#1027#1056#1105#1057#1039)
        end
        object Memo38: TfrxMemoView
          Left = 177.637910000000000000
          Top = 52.913419999999990000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'N_ORDER'
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxD_JOB."N_ORDER"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 60.472480000000000000
          Top = 52.913419999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_VERSION'
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Memo.UTF8 = (
            '[frxD_JOB."ID_VERSION"]')
        end
        object Memo39: TfrxMemoView
          Left = 309.921460000000000000
          Top = 52.913419999999990000
          Width = 400.630057950000000000
          Height = 18.897650000000000000
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ' [frxD_JOB."NAME"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 151.181200000000000000
          Top = 52.913419999999990000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1074#8222#8211)
        end
        object Memo25: TfrxMemoView
          Left = 3.779529999999999000
          Top = -0.000000000000000108
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[Date] [Time]')
        end
        object Memo26: TfrxMemoView
          Left = 151.181200000000000000
          Top = -0.000000000000000108
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1038#1056#1169#1056#181#1056#187#1056#176#1056#1029#1056#1109' '#1056#183#1056#176' '#1057#1027#1057#1107#1057#8218#1056#1108#1056#1105)
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 616.063390000000000000
          Top = -0.000000000000000108
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'.'#1074#8222#8211' [Page#]')
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 151.181200000000000000
          Top = 22.677180000000000000
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[N_PROD_AREA]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 249.448980000000000000
          Top = -0.000000000000000108
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[D_JOB]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 37.795300000000000000
          Top = 117.165430000000000000
          Width = 18.897650000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1025#1056#176#1056#1110)
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 56.692950000000010000
          Top = 117.165430000000000000
          Width = 457.323130000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#177#1057#1033#1056#181#1056#1108#1057#8218'/'#1056#1115#1056#1111#1056#181#1057#1026#1056#176#1057#8224#1056#1105#1057#1039)
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 608.504330000000000000
          Top = 117.165430000000000000
          Width = 52.913420000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1030#1057#8249#1056#1111#1056#1109#1056#187#1056#1029#1056#181#1056#1029#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 661.417750000000000000
          Top = 117.165430000000000000
          Width = 56.692901180000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1057#1026#1056#181#1056#1112#1057#1039
            #1057#8225#1057#8225':'#1056#1112#1056#1112)
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 548.031849999999900000
          Top = 117.165430000000000000
          Width = 60.472480000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1111#1056#187#1056#176#1056#1029)
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 514.016080000000000000
          Top = 117.165430000000000000
          Width = 34.015770000000010000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8226#1056#1169'. '#1056#1105#1056#183#1056#1112'.')
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Top = 117.165430000000000000
          Width = 37.795300000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#1111'/'#1056#1111)
          Rotation = 90
        end
        object Memo49: TfrxMemoView
          Left = 3.779530000000000000
          Top = 79.370129999999950000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1029#1057#1027#1057#8218#1057#1026#1057#1107#1056#1108#1057#8218#1056#1109#1057#1026)
        end
        object Memo68: TfrxMemoView
          Left = 83.149660000000000000
          Top = 79.370129999999950000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          DataField = 'FIO'
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Memo.UTF8 = (
            '[frxD_JOB."FIO"]')
        end
      end
      object MasterData2: TfrxMasterData
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = frxD_JOB
        DataSetName = 'frxD_JOB'
        RowCount = 0
        object Memo41: TfrxMemoView
          Left = 56.692913390000000000
          Top = 0.000000000000038178
          Width = 457.323007950000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [frxD_JOB."NM"] - [frxD_JOB."DEC_NO"] / [frxD_JOB."ONAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 608.504330000000000000
          Top = 0.000000000000009756
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[iif(<frxD_JOB."F_AMOUNT"> > 0,<frxD_JOB."F_AMOUNT">,'#39' '#39')] ')
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 661.417750000000000000
          Top = 0.000000000000038178
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[iif(<frxD_JOB."F_TIME"> > 0,TimeToStr(0+<frxD_JOB."F_TIME">/24)' +
              ','#39' '#39')]')
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 548.031849999999900000
          Top = 0.000000000000009756
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxD_JOB."AMOUNT"]')
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 37.795300000000000000
          Top = 0.000000000000038178
          Width = 18.897637795275590000
          Height = 18.897650000000000000
          DataField = 'STEP'
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxD_JOB."STEP"]')
        end
        object Memo47: TfrxMemoView
          Top = 0.000000000000009756
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 514.015750469999900000
          Top = 0.000000000000038178
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8364#1057#8218'.')
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 132.283550000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Left = 7.559060000000000000
          Top = 52.913420000000130000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#8212#1056#176#1057#8218#1057#1026#1056#181#1056#177#1056#1109#1056#1030#1056#176#1056#187':')
        end
        object Memo51: TfrxMemoView
          Left = 105.826840000000000000
          Top = 52.913420000000130000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo52: TfrxMemoView
          Left = 7.559060000000000000
          Top = 11.338589999999980000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1029#1057#1027#1057#8218#1057#1026#1057#1107#1056#1108#1057#8218#1056#1109#1057#1026':')
        end
        object Memo53: TfrxMemoView
          Left = 105.826840000000000000
          Top = 11.338589999999980000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo54: TfrxMemoView
          Left = 385.512060000000000000
          Top = 11.338589999999980000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          DataField = 'FIO'
          DataSet = frxD_JOB
          DataSetName = 'frxD_JOB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxD_JOB."FIO"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 90.708720000000030000
          Width = 86.929190000000000000
          Height = 37.795300000000000000
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '
            #1057#1107#1057#8218#1056#1030#1056#181#1057#1026#1056#182#1056#1169#1056#181#1056#1029#1056#1105#1057#1039':')
        end
        object Memo56: TfrxMemoView
          Left = 105.826840000000000000
          Top = 102.047309999999900000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftBottom]
        end
      end
    end
  end
  object qList_Plan: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select distinct f.id_area,a.name namea, l.d_out, w.name namews'
      'from product_traff f join product_plans l on'
      'f.id_area = :pa1 and   l.id_prod_traf = f.id_prod_traff'
      'join SHIFTS w on w.id_shift = l.id_shift'
      'join prod_areas a on a.id_p_area = f.id_area'
      'order by l.d_out desc, w.name asc')
    Left = 138
    Top = 142
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pa1'
        ParamType = ptUnknown
      end>
    object qList_PlanD_OUT: TDateField
      FieldName = 'D_OUT'
      Origin = '"PRODUCT_PLANS"."D_OUT"'
    end
    object qList_PlanID_AREA: TIntegerField
      FieldName = 'ID_AREA'
      Origin = '"PRODUCT_TRAFF"."ID_AREA"'
    end
    object qList_PlanNAMEA: TIBStringField
      FieldName = 'NAMEA'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object qList_PlanNAMEWS: TIBStringField
      FieldName = 'NAMEWS'
      Origin = '"SHIFTS"."NAME"'
      Size = 64
    end
  end
  object frxRepList_Plan: TfrxReport
    Version = '3.23.18'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39344.448465555600000000
    ReportOptions.LastChange = 39344.448465555600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 130
    Top = 182
    Datasets = <
      item
        DataSet = frxList_Plan
        DataSetName = 'frxList_Plan'
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
        Height = 22.677180000000000000
        Top = 22.677180000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 79.370130000000000000
          Top = -0.000000000000000108
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1038#1056#1111#1056#1105#1057#1027#1056#1109#1056#1108' '#1057#1027#1057#1107#1057#8218#1056#1109#1057#8225#1056#1029#1057#8249#1057#8230' '#1056#183#1056#176#1056#1169#1056#176#1056#1029#1056#1105#1056#8470' '#1056#1111#1056#1109' ')
        end
        object Memo2: TfrxMemoView
          Left = 272.126160000000000000
          Top = -0.000000000000000108
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          DataField = 'NAMEA'
          DataSet = frxList_Plan
          DataSetName = 'frxList_Plan'
          Memo.UTF8 = (
            '[frxList_Plan."NAMEA"]')
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
        Top = 68.031540000000010000
        Width = 718.110700000000000000
        DataSet = frxList_Plan
        DataSetName = 'frxList_Plan'
        RowCount = 0
        object Memo3: TfrxMemoView
          Top = -0.000000000000003213
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'D_OUT'
          DataSet = frxList_Plan
          DataSetName = 'frxList_Plan'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxList_Plan."D_OUT"]')
        end
        object Memo4: TfrxMemoView
          Left = 79.370130000000000000
          Top = -0.000000000000003213
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DataSet = frxList_Plan
          DataSetName = 'frxList_Plan'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '  [frxList_Plan."NAMEWS"]')
        end
      end
    end
  end
  object frxList_Plan: TfrxDBDataset
    UserName = 'frxList_Plan'
    CloseDataSource = False
    DataSet = qList_Plan
    Left = 210
    Top = 190
  end
  object qObj_Fix: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      
        'select coalesce(coalesce(b.obj_name,i.name)||'#39' - '#39'||coalesce(b.d' +
        'ec_no,'#39#39'),'
      '                coalesce(i.name,'#39#39')) obj_name,'
      
        'o.name oname,p.d_bill,p.d_fix, s.ID_OBJECT, s.ID_BATCH, s.ID_STE' +
        'P,'
      'r.fio,s.id_p,coalesce(r1.fio,'#39#1088#1077#1079#1077#1088#1074#39') id_pFio,'
      'sum(s.AMOUNT) amount'
      
        'from  p_area_bills p join  PA_BILL_POS s on p.id_pa_bill = s.id_' +
        'pa_bill'
      '                                        and p.pa_bill_type = 70'
      
        'join operations o on o.id_operation = s.id_suboper and p.id_p_ar' +
        'ea = o.id_area'
      'join product_objects b on s.id_object = b.id_object'
      'left join items i on i.id_item = b.id_product'
      'left join product_traff t on t.id_prod_traff = s.id_prod_traff'
      'left join personnel r on r.id_p = p.id_fix  '
      'left join personnel r1 on r1.id_p = s.id_p '
      ''
      'where s.id_object = :id_object'
      'group by 1,2,o.name, p.d_bill,'
      'p.d_fix, s.ID_OBJECT, s.ID_BATCH, s.ID_STEP,r.fio,s.id_p,r1.fio'
      '')
    Left = 294
    Top = 377
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_object'
        ParamType = ptUnknown
      end>
    object qObj_FixOBJ_NAME: TIBStringField
      DisplayLabel = #1054#1073#1098#1077#1082#1090
      FieldName = 'OBJ_NAME'
      ProviderFlags = []
      Size = 163
    end
    object qObj_FixONAME: TIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'ONAME'
      ProviderFlags = []
      Size = 30
    end
    object qObj_FixD_BILL: TDateField
      DisplayLabel = #1044#1072#1090#1072' ('#1089'/'#1079')'
      FieldName = 'D_BILL'
      ProviderFlags = []
    end
    object qObj_FixD_FIX: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1076#1096#1080#1074#1082#1080
      FieldName = 'D_FIX'
      ProviderFlags = []
    end
    object qObj_FixID_OBJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_OBJECT'
      ProviderFlags = []
    end
    object qObj_FixID_BATCH: TIntegerField
      DisplayLabel = #1055#1072#1088#1090#1080#1103
      FieldName = 'ID_BATCH'
      ProviderFlags = []
    end
    object qObj_FixID_STEP: TIntegerField
      DisplayLabel = #1064#1072#1075
      FieldName = 'ID_STEP'
      ProviderFlags = []
    end
    object qObj_FixAMOUNT: TIBBCDField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object qObj_FixFIO: TIBStringField
      DisplayLabel = #1060#1048#1054' - '#1091#1090#1074#1077#1088#1076#1080#1083
      FieldName = 'FIO'
      ProviderFlags = []
      Size = 60
    end
    object qObj_FixID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'.'#8470
      FieldName = 'ID_P'
      ProviderFlags = []
    end
    object qObj_FixID_PFIO: TIBStringField
      DisplayLabel = #1059#1095#1072#1089#1090#1085#1080#1082
      FieldName = 'ID_PFIO'
      ProviderFlags = []
      Size = 60
    end
  end
  object dsObj_Fix: TDataSource
    DataSet = qObj_Fix
    Left = 302
    Top = 449
  end
  object qObj_Sum: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select cast(b.d_fix as date) d_fix, sum(s.amount)'
      'from pa_bill_pos s'
      'join p_area_bills b on b.id_pa_bill = s.id_pa_bill'
      'and b.PA_BILL_TYPE = 70'
      'where s.id_prod_traff = :id_prod_traff'
      'group by 1')
    Left = 358
    Top = 345
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_prod_traff'
        ParamType = ptUnknown
      end>
    object qObj_SumD_FIX: TDateField
      DisplayLabel = #1044'/'#1087#1086#1076#1096#1080#1074#1082#1080
      FieldName = 'D_FIX'
      ProviderFlags = []
    end
    object qObj_SumSUM: TIBBCDField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'SUM'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
  end
  object dsObj_Sum: TDataSource
    DataSet = qObj_Sum
    Left = 350
    Top = 457
  end
  object qPlan: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select l.d_out, h.name, l.f_time,'
      'floor(l.f_time) + ((l.f_time - floor(l.f_time))*60)/100 as f_tm,'
      
        'l.amount,l.f_amount,l.p_amount,l.amount - l.f_amount as ost,l.p_' +
        'time,'
      'l.ID_EQUIPMENT,q.pl_name,q.shotname,'
      'f.id_area,l.id_shift,f.id_pa_to,a.name name_areain'
      'from product_plans l join product_traff f on'
      ' l.id_prod_traf = f.id_prod_traff and l.amount >0'
      'left join prod_areas a on a.id_p_area = f.id_pa_to'
      'left join equipments q on q.id_equipment = l.id_equipment'
      'left join shifts h on h.id_shift = l.id_shift'
      'where f.id_prod_traff = :id_prod_traff'
      'order by l.d_out')
    Left = 391
    Top = 437
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_prod_traff'
        ParamType = ptUnknown
      end>
    object qPlanD_OUT: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1083#1072#1085#1072
      FieldName = 'D_OUT'
      Origin = '"PRODUCT_PLANS"."D_OUT"'
    end
    object qPlanNAME: TIBStringField
      DisplayLabel = #1057#1084#1077#1085#1072
      FieldName = 'NAME'
      Origin = '"SHIFTS"."NAME"'
      Size = 64
    end
    object qPlanF_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' ('#1072#1073#1089')'
      FieldName = 'F_TIME'
      Origin = '"PRODUCT_PLANS"."F_TIME"'
    end
    object qPlanF_TM: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' (hh:mm)'
      FieldName = 'F_TM'
      ProviderFlags = []
    end
    object qPlanAMOUNT: TFloatField
      DisplayLabel = #1055#1086' '#1087#1083#1072#1085#1091
      FieldName = 'AMOUNT'
      Origin = '"PRODUCT_PLANS"."AMOUNT"'
    end
    object qPlanF_AMOUNT: TFloatField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1086
      FieldName = 'F_AMOUNT'
      Origin = '"PRODUCT_PLANS"."F_AMOUNT"'
    end
    object qPlanP_AMOUNT: TFloatField
      FieldName = 'P_AMOUNT'
      Origin = '"PRODUCT_PLANS"."P_AMOUNT"'
    end
    object qPlanOST: TFloatField
      DisplayLabel = #1054#1089#1090#1072#1090#1086#1082
      FieldName = 'OST'
      ProviderFlags = []
    end
    object qPlanP_TIME: TFloatField
      FieldName = 'P_TIME'
      Origin = '"PRODUCT_PLANS"."P_TIME"'
    end
    object qPlanID_EQUIPMENT: TIntegerField
      FieldName = 'ID_EQUIPMENT'
      Origin = '"PRODUCT_PLANS"."ID_EQUIPMENT"'
    end
    object qPlanPL_NAME: TIBStringField
      DisplayLabel = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      FieldName = 'PL_NAME'
      Origin = '"EQUIPMENTS"."PL_NAME"'
      Size = 16
    end
    object qPlanSHOTNAME: TIBStringField
      DisplayLabel = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
      FieldName = 'SHOTNAME'
      Origin = '"EQUIPMENTS"."SHOTNAME"'
      Size = 128
    end
    object qPlanID_AREA: TIntegerField
      FieldName = 'ID_AREA'
      Origin = '"PRODUCT_TRAFF"."ID_AREA"'
    end
    object qPlanID_SHIFT: TIntegerField
      FieldName = 'ID_SHIFT'
      Origin = '"PRODUCT_PLANS"."ID_SHIFT"'
    end
    object qPlanID_PA_TO: TIntegerField
      FieldName = 'ID_PA_TO'
      Origin = '"PRODUCT_TRAFF"."ID_PA_TO"'
    end
    object qPlanNAME_AREAIN: TIBStringField
      DisplayLabel = #1050#1091#1076#1072' '#1087#1077#1088#1077#1076#1072#1090#1100
      FieldName = 'NAME_AREAIN'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
  end
  object dsPlan: TDataSource
    DataSet = qPlan
    Left = 399
    Top = 469
  end
  object qSum_Mats_Ord: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select p.n_order,p.name name_ord,I.NAME name_tmc,'
      'p.id_order,m.amount,'
      'i.id_item,  u.name unit_y,'
      'SUM(m.amount * m.waste /100) amount_mats_waste,'
      
        'SUM(m.amount * t.full_amount * m.waste /100) amount_mats_waste_o' +
        'rd,'
      
        'SUM(m.amount * t.prod_amount * m.waste /100)  amount_mats_waste_' +
        'prod,'
      'SUM(m.amount * l.amount * m.waste /100) amount_mats_waste_plan,'
      'SUM(t.prod_amount) prod_amount,'
      'SUM(t.prod_amount * m.amount) amount_mats_prod,'
      'SUM(l.amount) amount_plan,'
      'SUM(l.amount * m.amount) amount_mats_plan,'
      '--avg(t.full_amount) as amount_ord,'
      'SUM(t.full_amount * m.amount) amount_mats_ords'
      'from product_traff_mats M'
      'join ITEMS I on i.ID_ITEM = m.ID_ITEM'
      
        'join product_traff t on t.id_prod_traff = m.id_prod_traff and t.' +
        'id_area = :id_area'
      'join product_oper r on r.id_prod_oper = t.id_prod_oper'
      
        'join project_ords p on p.id_version = r.id_version and p.id_orde' +
        'r = :id_order'
      
        'join product_plans l on l.id_prod_traf = t.id_prod_traff and l.d' +
        '_out = :d_out '
      
        '         and l.id_shift = :id_shift and l.ID_EQUIPMENT= :ID_EQUI' +
        'PMENT'
      'left outer join params_value v on'
      
        '   (v.id_item =  m.id_item and v.id_param = 1 and v.data = '#39'1.01' +
        '.1900'#39')'
      'left outer join units u on u.id_unit = v.smlval'
      ''
      'group by  p.n_order,p.name,I.NAME,p.id_order, m.amount,  '
      'i.id_item,  u.name')
    Left = 130
    Top = 524
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_order'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_shift'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_EQUIPMENT'
        ParamType = ptUnknown
      end>
    object qSum_Mats_OrdN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      ProviderFlags = []
      Size = 16
    end
    object qSum_Mats_OrdNAME_ORD: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
      FieldName = 'NAME_ORD'
      ProviderFlags = []
      Size = 64
    end
    object qSum_Mats_OrdNAME_TMC: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'NAME_TMC'
      ProviderFlags = []
      Size = 128
    end
    object qSum_Mats_OrdID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ID_ORDER'
      ProviderFlags = []
    end
    object qSum_Mats_OrdID_ITEM: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_ITEM'
      ProviderFlags = []
    end
    object qSum_Mats_OrdUNIT_Y: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'. ('#1091')'
      FieldName = 'UNIT_Y'
      ProviderFlags = []
      Size = 16
    end
    object qSum_Mats_OrdAMOUNT_MATS_WASTE: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1090#1077#1093'.'#1086#1090#1093#1086#1076'|'#1085#1072' '#1086#1076#1085#1086' '#1080#1079#1076#1077#1083#1080#1077
      FieldName = 'AMOUNT_MATS_WASTE'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qSum_Mats_OrdAMOUNT_MATS_WASTE_ORD: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1090#1077#1093'.'#1086#1090#1093#1086#1076'|'#1085#1072'  '#1074#1077#1089#1100' '#1079#1072#1082#1072#1079
      FieldName = 'AMOUNT_MATS_WASTE_ORD'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qSum_Mats_OrdAMOUNT_MATS_WASTE_PROD: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1090#1077#1093'.'#1086#1090#1093#1086#1076'|'#1085#1072' '#1073#1088#1072#1082' '#1085#1072' '#1080#1079#1076#1077#1083#1080#1077
      FieldName = 'AMOUNT_MATS_WASTE_PROD'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qSum_Mats_OrdAMOUNT_MATS_WASTE_PLAN: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1090#1077#1093'.'#1086#1090#1093#1086#1076'|'#1085#1072' '#1073#1088#1072#1082' '#1087#1086' '#1087#1083#1072#1085#1091
      FieldName = 'AMOUNT_MATS_WASTE_PLAN'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qSum_Mats_OrdPROD_AMOUNT: TFloatField
      FieldName = 'PROD_AMOUNT'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qSum_Mats_OrdAMOUNT_MATS_PROD: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1074#1082#1083#1102#1095#1072#1103' '#1090#1077#1093'.'#1086#1090#1093#1086#1076'|'#1085#1072' '#1080#1079#1076#1077#1083#1080#1077
      FieldName = 'AMOUNT_MATS_PROD'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qSum_Mats_OrdAMOUNT_PLAN: TFloatField
      FieldName = 'AMOUNT_PLAN'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qSum_Mats_OrdAMOUNT_MATS_PLAN: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1074#1082#1083#1102#1095#1072#1103' '#1090#1077#1093'.'#1086#1090#1093#1086#1076'|'#1087#1086' '#1087#1083#1072#1085#1091
      FieldName = 'AMOUNT_MATS_PLAN'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qSum_Mats_OrdAMOUNT_MATS_ORDS: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1074#1082#1083#1102#1095#1072#1103' '#1090#1077#1093'.'#1086#1090#1093#1086#1076'|'#1085#1072' '#1074#1077#1089#1100' '#1079#1072#1082#1072#1079
      FieldName = 'AMOUNT_MATS_ORDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
  end
  object dsSum_Mats_Ord: TDataSource
    DataSet = qSum_Mats_Ord
    Left = 82
    Top = 492
  end
  object qSum_TMC_Ord: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select p.n_order,p.name name_ord,I.NAME name_tmc,p.id_order,'
      'i.id_item,  u.name unit_y,'
      'SUM(m.amount * m.waste /100) amount_mats_waste,'
      
        'SUM(m.amount * t.full_amount * m.waste /100) amount_mats_waste_o' +
        'rd,'
      
        'SUM(m.amount * t.prod_amount * m.waste /100)  amount_mats_waste_' +
        'prod,'
      'SUM(m.amount * l.amount * m.waste /100) amount_mats_waste_plan,'
      'SUM(t.prod_amount) prod_amount,'
      'SUM(t.prod_amount * m.amount) amount_mats_prod,'
      'SUM(l.amount) amount_plan,'
      'SUM(l.amount * m.amount) amount_mats_plan,'
      '--avg(t.full_amount) as amount_ord,'
      'SUM(t.full_amount * m.amount) amount_mats_ords'
      'from product_traff_mats M'
      'join ITEMS I on i.ID_ITEM = m.ID_ITEM'
      
        'join product_traff t on t.id_prod_traff = m.id_prod_traff and t.' +
        'id_area = :id_area'
      
        'join product_plans l on l.id_prod_traf = t.id_prod_traff and l.d' +
        '_out = :d_out '
      'join product_oper r on r.id_prod_oper = t.id_prod_oper'
      'join project_ords p on p.id_version = r.id_version'
      'left outer join params_value v on'
      '   (v.id_item =  m.id_item and v.id_param = 1 and v.data = :dt)'
      'left outer join units u on u.id_unit = v.smlval'
      ''
      'group by  p.n_order,p.name,I.NAME,p.id_order,i.id_item,  u.name')
    Left = 383
    Top = 373
    ParamData = <
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
        Name = 'dt'
        ParamType = ptUnknown
      end>
    object qSum_TMC_OrdN_ORDER: TIBStringField
      FieldName = 'N_ORDER'
      ProviderFlags = []
      Size = 16
    end
    object qSum_TMC_OrdNAME_ORD: TIBStringField
      FieldName = 'NAME_ORD'
      ProviderFlags = []
      Size = 64
    end
    object qSum_TMC_OrdNAME_TMC: TIBStringField
      FieldName = 'NAME_TMC'
      ProviderFlags = []
      Size = 128
    end
    object qSum_TMC_OrdID_ORDER: TIntegerField
      FieldName = 'ID_ORDER'
      ProviderFlags = []
    end
    object qSum_TMC_OrdAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      ProviderFlags = []
    end
    object qSum_TMC_OrdID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      ProviderFlags = []
    end
    object qSum_TMC_OrdUNIT_Y: TIBStringField
      FieldName = 'UNIT_Y'
      ProviderFlags = []
      Size = 16
    end
    object qSum_TMC_OrdAMOUNT_MATS_WASTE: TFloatField
      FieldName = 'AMOUNT_MATS_WASTE'
      ProviderFlags = []
    end
    object qSum_TMC_OrdAMOUNT_MATS_WASTE_ORD: TFloatField
      FieldName = 'AMOUNT_MATS_WASTE_ORD'
      ProviderFlags = []
    end
    object qSum_TMC_OrdAMOUNT_MATS_WASTE_PROD: TFloatField
      FieldName = 'AMOUNT_MATS_WASTE_PROD'
      ProviderFlags = []
    end
    object qSum_TMC_OrdAMOUNT_MATS_WASTE_PLAN: TFloatField
      FieldName = 'AMOUNT_MATS_WASTE_PLAN'
      ProviderFlags = []
    end
    object qSum_TMC_OrdPROD_AMOUNT: TFloatField
      FieldName = 'PROD_AMOUNT'
      ProviderFlags = []
    end
    object qSum_TMC_OrdAMOUNT_MATS_PROD: TFloatField
      FieldName = 'AMOUNT_MATS_PROD'
      ProviderFlags = []
    end
    object qSum_TMC_OrdAMOUNT_PLAN: TFloatField
      FieldName = 'AMOUNT_PLAN'
      ProviderFlags = []
    end
    object qSum_TMC_OrdAMOUNT_MATS_PLAN: TFloatField
      FieldName = 'AMOUNT_MATS_PLAN'
      ProviderFlags = []
    end
    object qSum_TMC_OrdAMOUNT_MATS_ORDS: TFloatField
      FieldName = 'AMOUNT_MATS_ORDS'
      ProviderFlags = []
    end
  end
  object dsSum_TMC_Ord: TDataSource
    DataSet = qSum_TMC_Ord
    Left = 391
    Top = 421
  end
  object frxSum_TMC_Ord: TfrxDBDataset
    UserName = 'frxSum_TMC_Ord'
    CloseDataSource = False
    DataSet = qSum_TMC_Ord
    Left = 519
    Top = 397
  end
  object qOrd: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      
        'select distinct p.id_version, p.n_order,p.name name_ord,p.id_ord' +
        'er,p.id_constr,s.fio'
      'from product_traff_mats M'
      
        'join product_traff t on t.id_prod_traff = m.id_prod_traff and t.' +
        'id_area = :id_area'
      
        'join product_plans l on l.id_prod_traf = t.id_prod_traff and l.d' +
        '_out = :d_out '
      'and l.id_shift = :id_shift and l.ID_EQUIPMENT= :ID_EQUIPMENT'
      'join product_oper r on r.id_prod_oper = t.id_prod_oper'
      'join project_ords p on p.id_version = r.id_version'
      'left join personnel s on s.id_p = p.id_constr'
      'order by  p.n_order,p.name,p.id_order')
    Left = 666
    Top = 348
    ParamData = <
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
        Name = 'id_shift'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_EQUIPMENT'
        ParamType = ptUnknown
      end>
    object qOrdN_ORDER: TIBStringField
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qOrdNAME_ORD: TIBStringField
      FieldName = 'NAME_ORD'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qOrdID_ORDER: TIntegerField
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS"."ID_ORDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOrdID_CONSTR: TIntegerField
      FieldName = 'ID_CONSTR'
      Origin = '"PROJECT_ORDS"."ID_CONSTR"'
    end
    object qOrdFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qOrdID_VERSION: TIntegerField
      FieldName = 'ID_VERSION'
      Origin = '"PROJECT_ORDS"."ID_VERSION"'
    end
  end
  object dsOrd: TDataSource
    DataSet = qOrd
    Left = 634
    Top = 348
  end
  object frxOrd: TfrxDBDataset
    UserName = 'frxOrd'
    CloseDataSource = False
    DataSet = qOrd
    Left = 706
    Top = 348
  end
  object qRep_ord_Det_TMC: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select * from REP_DAY_JOB(:IDAREA,:D_OUT,:IDSHIFT,:IDEQUIPMENT)'
      'order by id_order,tp')
    Left = 255
    Top = 493
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDAREA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'D_OUT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDSHIFT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDEQUIPMENT'
        ParamType = ptUnknown
      end>
    object qRep_ord_Det_TMCTP: TIntegerField
      FieldName = 'TP'
      Origin = '"REP_DAY_JOB"."TP"'
    end
    object qRep_ord_Det_TMCNM: TIBStringField
      FieldName = 'NM'
      Origin = '"REP_DAY_JOB"."NM"'
      Size = 200
    end
    object qRep_ord_Det_TMCN_ORDER: TIBStringField
      FieldName = 'N_ORDER'
      Origin = '"REP_DAY_JOB"."N_ORDER"'
      Size = 16
    end
    object qRep_ord_Det_TMCNAME_ORD: TIBStringField
      FieldName = 'NAME_ORD'
      Origin = '"REP_DAY_JOB"."NAME_ORD"'
      Size = 64
    end
    object qRep_ord_Det_TMCID_ORDER: TIntegerField
      FieldName = 'ID_ORDER'
      Origin = '"REP_DAY_JOB"."ID_ORDER"'
    end
    object qRep_ord_Det_TMCPOSIT: TIntegerField
      FieldName = 'POSIT'
      Origin = '"REP_DAY_JOB"."POSIT"'
    end
    object qRep_ord_Det_TMCSTEP: TIntegerField
      FieldName = 'STEP'
      Origin = '"REP_DAY_JOB"."STEP"'
    end
    object qRep_ord_Det_TMCID_VERSION: TIntegerField
      FieldName = 'ID_VERSION'
      Origin = '"REP_DAY_JOB"."ID_VERSION"'
    end
    object qRep_ord_Det_TMCID_OBJECT: TIntegerField
      FieldName = 'ID_OBJECT'
      Origin = '"REP_DAY_JOB"."ID_OBJECT"'
    end
    object qRep_ord_Det_TMCAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Origin = '"REP_DAY_JOB"."AMOUNT"'
    end
    object qRep_ord_Det_TMCF_AMOUNT: TFloatField
      FieldName = 'F_AMOUNT'
      Origin = '"REP_DAY_JOB"."F_AMOUNT"'
    end
    object qRep_ord_Det_TMCP_AMOUNT: TFloatField
      FieldName = 'P_AMOUNT'
      Origin = '"REP_DAY_JOB"."P_AMOUNT"'
    end
    object qRep_ord_Det_TMCOST: TFloatField
      FieldName = 'OST'
      Origin = '"REP_DAY_JOB"."OST"'
    end
    object qRep_ord_Det_TMCF_TIME: TFloatField
      FieldName = 'F_TIME'
      Origin = '"REP_DAY_JOB"."F_TIME"'
    end
    object qRep_ord_Det_TMCP_TIME: TFloatField
      FieldName = 'P_TIME'
      Origin = '"REP_DAY_JOB"."P_TIME"'
    end
    object qRep_ord_Det_TMCID_PROD_TRAFF: TIntegerField
      FieldName = 'ID_PROD_TRAFF'
      Origin = '"REP_DAY_JOB"."ID_PROD_TRAFF"'
    end
    object qRep_ord_Det_TMCID_AREA: TIntegerField
      FieldName = 'ID_AREA'
      Origin = '"REP_DAY_JOB"."ID_AREA"'
    end
    object qRep_ord_Det_TMCID_SHIFT: TIntegerField
      FieldName = 'ID_SHIFT'
      Origin = '"REP_DAY_JOB"."ID_SHIFT"'
    end
    object qRep_ord_Det_TMCID_EQUIPMENT: TIntegerField
      FieldName = 'ID_EQUIPMENT'
      Origin = '"REP_DAY_JOB"."ID_EQUIPMENT"'
    end
    object qRep_ord_Det_TMCID_PA_TO: TIntegerField
      FieldName = 'ID_PA_TO'
      Origin = '"REP_DAY_JOB"."ID_PA_TO"'
    end
    object qRep_ord_Det_TMCCOMMENT: TMemoField
      FieldName = 'COMMENT'
      Origin = '"REP_DAY_JOB"."COMMENT"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qRep_ord_Det_TMCREM_PLAN: TMemoField
      FieldName = 'REM_PLAN'
      Origin = '"REP_DAY_JOB"."REM_PLAN"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qRep_ord_Det_TMCREM_OPER: TMemoField
      FieldName = 'REM_OPER'
      Origin = '"REP_DAY_JOB"."REM_OPER"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qRep_ord_Det_TMCREM_TEH: TIBStringField
      FieldName = 'REM_TEH'
      Origin = '"REP_DAY_JOB"."REM_TEH"'
      Size = 80
    end
    object qRep_ord_Det_TMCEQ_PL_NAME: TIBStringField
      FieldName = 'EQ_PL_NAME'
      Origin = '"REP_DAY_JOB"."EQ_PL_NAME"'
      Size = 16
    end
    object qRep_ord_Det_TMCFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"REP_DAY_JOB"."FIO"'
      Size = 60
    end
    object qRep_ord_Det_TMCNAME_AREA_TO: TIBStringField
      FieldName = 'NAME_AREA_TO'
      Origin = '"REP_DAY_JOB"."NAME_AREA_TO"'
      Size = 80
    end
    object qRep_ord_Det_TMCNAME_TMC: TIBStringField
      FieldName = 'NAME_TMC'
      Origin = '"REP_DAY_JOB"."NAME_TMC"'
      Size = 128
    end
    object qRep_ord_Det_TMCID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      Origin = '"REP_DAY_JOB"."ID_ITEM"'
    end
    object qRep_ord_Det_TMCNAME_U: TIBStringField
      FieldName = 'NAME_U'
      Origin = '"REP_DAY_JOB"."NAME_U"'
      Size = 16
    end
    object qRep_ord_Det_TMCAMOUNT_MATS_WASTE: TFloatField
      FieldName = 'AMOUNT_MATS_WASTE'
      Origin = '"REP_DAY_JOB"."AMOUNT_MATS_WASTE"'
    end
    object qRep_ord_Det_TMCAMOUNT_MATS_WASTE_ORD: TFloatField
      FieldName = 'AMOUNT_MATS_WASTE_ORD'
      Origin = '"REP_DAY_JOB"."AMOUNT_MATS_WASTE_ORD"'
    end
    object qRep_ord_Det_TMCAMOUNT_MATS_WASTE_PROD: TFloatField
      FieldName = 'AMOUNT_MATS_WASTE_PROD'
      Origin = '"REP_DAY_JOB"."AMOUNT_MATS_WASTE_PROD"'
    end
    object qRep_ord_Det_TMCAMOUNT_MATS_WASTE_PLAN: TFloatField
      FieldName = 'AMOUNT_MATS_WASTE_PLAN'
      Origin = '"REP_DAY_JOB"."AMOUNT_MATS_WASTE_PLAN"'
    end
    object qRep_ord_Det_TMCPROD_AMOUNT: TFloatField
      FieldName = 'PROD_AMOUNT'
      Origin = '"REP_DAY_JOB"."PROD_AMOUNT"'
    end
    object qRep_ord_Det_TMCAMOUNT_MATS_PROD: TFloatField
      FieldName = 'AMOUNT_MATS_PROD'
      Origin = '"REP_DAY_JOB"."AMOUNT_MATS_PROD"'
    end
    object qRep_ord_Det_TMCAMOUNT_PLAN: TFloatField
      FieldName = 'AMOUNT_PLAN'
      Origin = '"REP_DAY_JOB"."AMOUNT_PLAN"'
    end
    object qRep_ord_Det_TMCAMOUNT_MATS_PLAN: TFloatField
      FieldName = 'AMOUNT_MATS_PLAN'
      Origin = '"REP_DAY_JOB"."AMOUNT_MATS_PLAN"'
    end
    object qRep_ord_Det_TMCAMOUNT_MATS_ORDS: TFloatField
      FieldName = 'AMOUNT_MATS_ORDS'
      Origin = '"REP_DAY_JOB"."AMOUNT_MATS_ORDS"'
    end
  end
  object dsRep_ord_Det_TMC: TDataSource
    DataSet = qRep_ord_Det_TMC
    Left = 255
    Top = 525
  end
  object frxRep_ord_Det_TMC: TfrxDBDataset
    UserName = 'frxRep_ord_Det_TMC'
    CloseDataSource = False
    DataSet = qRep_ord_Det_TMC
    Left = 335
    Top = 485
  end
  object frxRep_ord_Det_TMC_: TfrxReport
    Version = '3.23.18'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39735.598252997680000000
    ReportOptions.LastChange = 39735.598252997680000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 399
    Top = 509
    Datasets = <
      item
        DataSet = frxRep_ord_Det_TMC
        DataSetName = 'frxRep_ord_Det_TMC'
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
      object GroupHeader2: TfrxGroupHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 124.724490000000000000
        ParentFont = False
        Top = 34.015770000000010000
        Width = 718.110700000000000000
        Condition = 'frxRep_ord_Det_TMC."ID_ORDER"'
        StartNewPage = True
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 0.000000000000000496
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[Date] [Time]')
        end
        object Memo2: TfrxMemoView
          Left = 151.181200000000000000
          Top = 0.000000000000000496
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1038#1056#1169#1056#181#1056#187#1056#176#1056#1029#1056#1109' '#1056#183#1056#176' '#1057#1027#1057#1107#1057#8218#1056#1108#1056#1105)
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 616.063390000000000000
          Top = 0.000000000000000496
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'.'#1074#8222#8211' [Page#]')
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 151.181200000000000000
          Top = 22.677179999999990000
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[N_PROD_AREA]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 253.228510000000000000
          Top = 0.000000000000000496
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[D_JOB]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 22.677180000000000000
          Top = 49.133890000000010000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1056#181#1057#1026#1057#1027#1056#1105#1057#1039)
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 94.488250000000000000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1029#1057#1027#1057#8218#1057#1026#1057#1107#1056#1108#1057#8218#1056#1109#1057#1026)
        end
        object Memo8: TfrxMemoView
          Left = 75.590600000000000000
          Top = 94.488250000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          DataField = 'FIO'
          DataSet = frxRep_ord_Det_TMC
          DataSetName = 'frxRep_ord_Det_TMC'
          Memo.UTF8 = (
            '[frxRep_ord_Det_TMC."FIO"]')
        end
        object Memo9: TfrxMemoView
          Left = 75.590600000000000000
          Top = 49.133890000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_VERSION'
          DataSet = frxRep_ord_Det_TMC
          DataSetName = 'frxRep_ord_Det_TMC'
          Memo.UTF8 = (
            '[frxRep_ord_Det_TMC."ID_VERSION"]')
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Top = 71.811069999999970000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#183#1056#176#1056#1108#1056#176#1056#183#1056#176)
        end
        object Memo11: TfrxMemoView
          Left = 75.590600000000000000
          Top = 71.811069999999970000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'N_ORDER'
          DataSet = frxRep_ord_Det_TMC
          DataSetName = 'frxRep_ord_Det_TMC'
          Memo.UTF8 = (
            '[frxRep_ord_Det_TMC."N_ORDER"]')
        end
        object Memo12: TfrxMemoView
          Left = 181.417440000000000000
          Top = 71.811069999999970000
          Width = 510.236550000000000000
          Height = 18.897650000000000000
          DataField = 'NAME_ORD'
          DataSet = frxRep_ord_Det_TMC
          DataSetName = 'frxRep_ord_Det_TMC'
          Memo.UTF8 = (
            '[frxRep_ord_Det_TMC."NAME_ORD"]')
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
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        DataSet = frxRep_ord_Det_TMC
        DataSetName = 'frxRep_ord_Det_TMC'
        RowCount = 0
        Stretched = True
        object Memo13: TfrxMemoView
          Top = -0.000000000000020373
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['
            'IIF('
            
              '      <frxRep_ord_Det_TMC."TP"> = 1,StrToInt(<frxRep_ord_Det_TMC' +
              '."ID_OBJECT">),'
            
              '                                                          StrToI' +
              'nt(<frxRep_ord_Det_TMC."ID_ITEM">)'
            '   )'
            ']')
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 49.133890000000000000
          Top = -0.000000000000020373
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'STEP'
          DataSet = frxRep_ord_Det_TMC
          DataSetName = 'frxRep_ord_Det_TMC'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRep_ord_Det_TMC."STEP"]')
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 68.031540000000010000
          Top = -0.000000000000020373
          Width = 438.425235910000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_ord_Det_TMC
          DataSetName = 'frxRep_ord_Det_TMC'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              '[IIF(<frxRep_ord_Det_TMC."TP"> = 1,<frxRep_ord_Det_TMC."NM">,<fr' +
              'xRep_ord_Det_TMC."NAME_TMC">)]')
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 506.457020000000000000
          Top = -0.000000000000020373
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxRep_ord_Det_TMC."TP"> = 1,'#39#1057#8364#1057#8218#39',<frxRep_ord_Det_TMC."N' +
              'AME_U">)]')
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 544.252320000000100000
          Top = -0.000000000000020373
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_ord_Det_TMC
          DataSetName = 'frxRep_ord_Det_TMC'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['
            ' IIF'
            '   ('
            
              '     <frxRep_ord_Det_TMC."TP"> = 1,StrToInt(<frxRep_ord_Det_TMC.' +
              '"AMOUNT">),'
            
              '                                                          Format' +
              'Float('#39'### ##0.0000'#39',<frxRep_ord_Det_TMC."AMOUNT_MATS_PLAN">)'
            '   )'
            ']'
            '')
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 608.504330000000000000
          Top = -0.000000000000020373
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_ord_Det_TMC
          DataSetName = 'frxRep_ord_Det_TMC'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['
            ' IIF'
            '   ('
            
              '     <frxRep_ord_Det_TMC."TP"> = 1,StrToInt(<frxRep_ord_Det_TMC.' +
              '"F_AMOUNT">),'
            
              '                                                          Format' +
              'Float('#39'### ##0.0000'#39',<frxRep_ord_Det_TMC."AMOUNT_MATS_WASTE_PLAN' +
              '">)'
            '   )'
            ']')
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 661.417750000000000000
          Top = -0.000000000000020373
          Width = 56.692925590000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxRep_ord_Det_TMC
          DataSetName = 'frxRep_ord_Det_TMC'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['
            ' IIF'
            '   ('
            
              '     <frxRep_ord_Det_TMC."TP"> = 1,TimeToStr(0+<frxRep_ord_Det_T' +
              'MC."F_TIME">/24),'#39' '#39
            '   )'
            ']')
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 64.252010000000010000
        ParentFont = False
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'frxRep_ord_Det_TMC."TP"'
        object Memo20: TfrxMemoView
          Left = 7.559060000000000000
          Top = 0.000000000000009756
          Width = 427.086890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              '[IIF(<frxRep_ord_Det_TMC."TP"> = 1,'#39#1056#8221#1056#181#1057#8218#1056#176#1056#187#1056#1105#39','#39#1056#1114#1056#176#1057#8218#1056#181#1057#1026#1056#1105#1056 +
              #176#1056#187#1057#8249#39')]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 49.133890000000000000
          Top = 26.456710000000030000
          Width = 18.897650000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1025#1056#176#1056#1110)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 68.031540000000010000
          Top = 26.456710000000030000
          Width = 438.425480000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxRep_ord_Det_TMC."TP"> = 1,'#39#1056#8221#1056#181#1057#8218#1056#176#1056#187#1057#1034'/'#1056#1115#1056#1111#1056#181#1057#1026#1056#176#1057#8224#1056#1105#1057 +
              #1039#39','#39#1056#1118#1056#1114#1056#166#39')]'
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 608.504330000000000000
          Top = 26.456710000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxRep_ord_Det_TMC."TP"> = 1,'#39#1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1030#1057#8249#1056#1111#1056#1109#1056#187#1056#1029#1056#181#1056#1029 +
              #1056#1109#39','#39#1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#8218#1056#181#1057#8230'.'#1056#1109#1057#8218#1057#8230#1056#1109#1056#1169#39')]'
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 661.417750000000000000
          Top = 26.456710000000030000
          Width = 56.692901180000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxRep_ord_Det_TMC."TP"> = 1,'#39#1056#8217#1057#1026#1056#181#1056#1112#1057#1039' '#1057#8225#1057#8225':'#1056#1112#1056#1112#39','#39#1056#164#1056#176#1056 +
              #1108#1057#8218#39')]'
            ''
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 544.252320000000100000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxRep_ord_Det_TMC."TP"> = 1,'#39#1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1030#1057#8249#1056#1111#1056#1109#1056#187#1056#1029#1056#181#1056#1029 +
              #1056#1109#39','#39#1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1111#1056#187#1056#176#1056#1029' '#1056#1030#1056#1108#1056#187'. '#1057#8218#1056#181#1057#8230'.'#1056#1109#1057#8218#1057#8230#1056#1109#1056#1169#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 506.457020000000000000
          Top = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8226#1056#1169'. '#1056#1105#1056#183#1056#1112'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Top = 26.456710000000030000
          Width = 49.133890000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169' '#1056#1109#1056#177#1057#1033#1056#181#1056#1108#1057#8218#1056#176
            '')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object qIn: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    Left = 482
    Top = 136
  end
  object qObj: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select P.ID_OBJECT, T.NAME, P.OBJ_TYPE, P. AMOUNT, P.REM'
      'from PRODUCT_OBJECTS P join PROD_OBJ_TREE T '
      'on P.ID_OBJECT = T.ID_OBJECT'
      'where P.ID_OBJECT = :obj1')
    Left = 183
    Top = 527
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'obj1'
        ParamType = ptUnknown
      end>
    object qObjID_OBJECT: TIntegerField
      FieldName = 'ID_OBJECT'
      Origin = '"PRODUCT_OBJECTS"."ID_OBJECT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qObjNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROD_OBJ_TREE"."NAME"'
      Size = 128
    end
    object qObjOBJ_TYPE: TIntegerField
      FieldName = 'OBJ_TYPE'
      Origin = '"PRODUCT_OBJECTS"."OBJ_TYPE"'
    end
    object qObjAMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Origin = '"PRODUCT_OBJECTS"."AMOUNT"'
      Precision = 18
      Size = 4
    end
    object qObjREM: TMemoField
      FieldName = 'REM'
      Origin = '"PRODUCT_OBJECTS"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object qLoad_P: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterScroll = qLoad_PAfterScroll
    BeforeOpen = qLoad_PBeforeOpen
    SQL.Strings = (
      
        'select g.id_p_area, g.ID_TEAM , g.ID_P, g.ID_POST, g.NAME , g.LO' +
        'AD_TIME,    g.WORK_TIME, g.NAME_POST'
      'from GET_PA_DAY_LOAD_P(:id_area,:d_work,:kop) g'
      '')
    Left = 815
    Top = 143
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_work'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kop'
        ParamType = ptUnknown
      end>
    object qLoad_PID_P_AREA: TIntegerField
      FieldName = 'ID_P_AREA'
      Origin = '"GET_PA_DAY_LOAD_P"."ID_P_AREA"'
    end
    object qLoad_PID_TEAM: TIntegerField
      FieldName = 'ID_TEAM'
      Origin = '"GET_PA_DAY_LOAD_P"."ID_TEAM"'
    end
    object qLoad_PID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      FieldName = 'ID_P'
      Origin = '"GET_PA_DAY_LOAD_P"."ID_P"'
    end
    object qLoad_PID_POST: TIntegerField
      FieldName = 'ID_POST'
      Origin = '"GET_PA_DAY_LOAD_P"."ID_POST"'
    end
    object qLoad_PNAME: TIBStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'NAME'
      Origin = '"GET_PA_DAY_LOAD_P"."NAME"'
      Size = 64
    end
    object qLoad_PLOAD_TIME: TFloatField
      DisplayLabel = #1055#1083#1072#1085' ('#1085'-'#1095#1072#1089')'
      FieldName = 'LOAD_TIME'
      Origin = '"GET_PA_DAY_LOAD_P"."LOAD_TIME"'
      DisplayFormat = '##0.0000'
    end
    object qLoad_PWORK_TIME: TFloatField
      DisplayLabel = #1056#1077#1089#1091#1088#1089' ('#1085'-'#1095#1072#1089')'
      FieldName = 'WORK_TIME'
      Origin = '"GET_PA_DAY_LOAD_P"."WORK_TIME"'
      DisplayFormat = '##0.0000'
    end
    object qLoad_PNAME_POST: TIBStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'NAME_POST'
      Origin = '"GET_PA_DAY_LOAD_P"."NAME_POST"'
      Size = 50
    end
  end
  object dsLoad_P: TDataSource
    DataSet = qLoad_P
    Left = 823
    Top = 191
  end
  object UpPlan_PP: TIBUpdateSQL
    RefreshSQL.Strings = (
      '')
    ModifySQL.Strings = (
      'update product_plans_p'
      'set '
      '    f_amount = :f_amount,'
      '    f_time = :f_time,'
      '    p_time = :p_time,'
      '    rem = :rem,'
      '    d_in = :d_in,'
      '    d_to = :d_to,'
      '    din = :din,'
      '    tin = :tin,'
      '    dto = :dto,'
      '    tto = :tto'
      'where id_prod_plan_p = :id_prod_plan_p')
    Left = 191
    Top = 287
  end
  object qPlan_P: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterPost = qPlan_PAfterPost
    SQL.Strings = (
      
        'select P.id_prod_plan_p, p.id_prod_plan, p.id_p, p.id_team, p.am' +
        'ount,p.f_amount,p.f_time, '
      'p.id_equipment, p.p_amount, p.p_time, p.rem, p.d_in, p.d_to,'
      'DIN,TIN,DTO,TTO,'
      'e.shotname,P.AMOUNT*T.T_PERSONNEL  T_PERS,l.posit,'
      'p.ID_PROD_PLAN_STOP,r.fio fio_p'
      ''
      'from PRODUCT_PLANS_P P '
      'join PRODUCT_PLANS L on L.ID_PROD_PLAN = P.ID_PROD_PLAN'
      'join PRODUCT_TRAFF T on T.ID_PROD_TRAFF = L.ID_PROD_TRAF'
      'left join equipments e on e.ID_EQUIPMENT = p.ID_EQUIPMENT'
      'left join personnel r on r.id_p = p.id_p'
      'where P.ID_PROD_PLAN = :ID_PROD_PLAN')
    UpdateObject = UpPlan_P
    Left = 88
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_PROD_PLAN'
        ParamType = ptUnknown
        Size = 4
      end>
    object qPlan_PID_PROD_PLAN_P: TIntegerField
      DisplayLabel = #1056#1077#1075'.'#8470' '#1079#1072#1087#1080#1089#1080
      FieldName = 'ID_PROD_PLAN_P'
      Origin = '"PRODUCT_PLANS_P"."ID_PROD_PLAN_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPlan_PID_PROD_PLAN: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1083#1072#1085#1072
      FieldName = 'ID_PROD_PLAN'
      Origin = '"PRODUCT_PLANS_P"."ID_PROD_PLAN"'
    end
    object qPlan_PID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      FieldName = 'ID_P'
      Origin = '"PRODUCT_PLANS_P"."ID_P"'
    end
    object qPlan_PAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1087#1086' '#1087#1083#1072#1085#1091
      FieldName = 'AMOUNT'
      Origin = '"PRODUCT_PLANS_P"."AMOUNT"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qPlan_PID_TEAM: TIntegerField
      FieldName = 'ID_TEAM'
      Origin = '"PRODUCT_PLANS_P"."ID_TEAM"'
    end
    object qPlan_PF_AMOUNT: TFloatField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1086'|'#1050#1086#1083'-'#1074#1086
      FieldName = 'F_AMOUNT'
      Origin = '"PRODUCT_PLANS_P"."F_AMOUNT"'
      DisplayFormat = '##0.0000'
    end
    object qPlan_PF_TIME: TFloatField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1086'|'#1042#1088#1077#1084#1103' '#1072#1073#1089'.'
      FieldName = 'F_TIME'
      Origin = '"PRODUCT_PLANS_P"."F_TIME"'
      DisplayFormat = '0.00'
    end
    object qPlan_PID_EQUIPMENT: TIntegerField
      FieldName = 'ID_EQUIPMENT'
      Origin = '"PRODUCT_PLANS_P"."ID_EQUIPMENT"'
    end
    object qPlan_PP_AMOUNT: TFloatField
      FieldName = 'P_AMOUNT'
      Origin = '"PRODUCT_PLANS_P"."P_AMOUNT"'
    end
    object qPlan_PP_TIME: TFloatField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1086'|'#1042#1088#1077#1084#1103
      FieldName = 'P_TIME'
      Origin = '"PRODUCT_PLANS_P"."P_TIME"'
      DisplayFormat = '0.00'
    end
    object qPlan_PREM: TBlobField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1086'|'#1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'REM'
      Origin = '"PRODUCT_PLANS_P"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qPlan_PD_IN: TDateTimeField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1086'|'#1053#1072#1095#1072#1083#1086
      FieldName = 'D_IN'
      Origin = '"PRODUCT_PLANS_P"."D_IN"'
      DisplayFormat = 'dd.mm.yyyy hh:nn'
      EditMask = '!99/99/0000 !00:00'
    end
    object qPlan_PD_TO: TDateTimeField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1086'|'#1054#1082#1086#1085#1095#1072#1085#1080#1077
      FieldName = 'D_TO'
      Origin = '"PRODUCT_PLANS_P"."D_TO"'
      DisplayFormat = 'dd.mm.yyyy hh:nn'
      EditMask = '!99/99/0000 !00:00'
    end
    object qPlan_PDIN: TDateField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1086'|'#1053#1072#1095#1072#1083#1086'|'#1044#1072#1090#1072
      FieldName = 'DIN'
      Origin = '"PRODUCT_PLANS_P"."DIN"'
      DisplayFormat = 'dd.mm.yyyy'
      EditMask = '!99/99/0000'
    end
    object qPlan_PTIN: TTimeField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1086'|'#1053#1072#1095#1072#1083#1086'|'#1042#1088#1077#1084#1103
      FieldName = 'TIN'
      Origin = '"PRODUCT_PLANS_P"."TIN"'
      DisplayFormat = 'hh:nn'
      EditMask = '!09:99'
    end
    object qPlan_PDTO: TDateField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1086'|'#1054#1082#1086#1085#1095#1072#1085#1080#1077'|'#1044#1072#1090#1072' '
      FieldName = 'DTO'
      Origin = '"PRODUCT_PLANS_P"."DTO"'
      DisplayFormat = 'dd.mm.yyyy'
      EditMask = '!99/99/0000'
    end
    object qPlan_PTTO: TTimeField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1086'|'#1054#1082#1086#1085#1095#1072#1085#1080#1077'|'#1042#1088#1077#1084#1103
      FieldName = 'TTO'
      Origin = '"PRODUCT_PLANS_P"."TTO"'
      DisplayFormat = 'hh:nn'
      EditMask = '!09:99'
    end
    object qPlan_PSHOTNAME: TIBStringField
      FieldName = 'SHOTNAME'
      Origin = '"EQUIPMENTS"."SHOTNAME"'
      Size = 128
    end
    object qPlan_PT_PERS: TFloatField
      DisplayLabel = #1055#1083#1072#1085' ('#1085'-'#1095#1072#1089')'
      FieldName = 'T_PERS'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.0'
    end
    object qPlan_PPOSIT: TIntegerField
      DisplayLabel = #8470' '#1087'/'#1087
      FieldName = 'POSIT'
      Origin = '"PRODUCT_PLANS"."POSIT"'
    end
    object qPlan_PID_PROD_PLAN_STOP: TIntegerField
      FieldName = 'ID_PROD_PLAN_STOP'
      Origin = '"PRODUCT_PLANS_P"."ID_PROD_PLAN_STOP"'
    end
    object qPlan_PFIO_P: TIBStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'FIO_P'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qPlan_PfIO: TStringField
      DisplayLabel = #1060'.'#1048'.'#1054'.'
      FieldKind = fkLookup
      FieldName = 'fIO'
      LookupDataSet = qLoad_P
      LookupKeyFields = 'ID_P'
      LookupResultField = 'NAME'
      KeyFields = 'ID_P'
      Size = 60
      Lookup = True
    end
  end
  object dsPlan_P: TDataSource
    DataSet = qPlan_P
    Left = 87
    Top = 447
  end
  object qRep_Plan_Day: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterScroll = qRep_Plan_DayAfterScroll
    SQL.Strings = (
      ' select per.fio,l1.din+l1.tin din , l1.dto+l1.tto dto,'
      ' coalesce(o.obj_name,i.name)||coalesce(o.dec_no,'#39#39') nm,'
      
        ' p.name name_ord,p.n_order,r.step, s.name  name_oper, ps.name  n' +
        'ame_post, l.id_equipment,'
      
        ' case when (e.id_equipment = 0 or e.id_equipment is null)  then ' +
        #39#39' else e.shotname end shotname,'
      
        ' l1.id_prod_plan_p,l1.id_p,l1.amount ,l1.rem,l1.f_amount,l.d_out' +
        ',l.f_time f_time_p,'
      ' l1.dto+l1.tto dto_,'
      
        ' floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+ ( ((l1.dto+l1.t' +
        'to) -(l1.din+l1.tin))*24'
      ' - floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 tm_ ,'
      
        ' floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+ ( ((l1.dto+l1.t' +
        'to) -(l1.din+l1.tin))*24'
      ' - floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 tm ,'
      ' l1.f_time,l1.p_time ,'
      
        'p.id_version,p.id_project, p.id_order, o.id_object,r.id_prod_ope' +
        'r, o.obj_type,'
      'f.id_operation,l.id_prod_plan, h.name name_shift'
      
        ' from (((((project_ords p join product_objects o on o.id_version' +
        ' = p.id_version)'
      ' join product_oper r on r.id_object = o.id_object)'
      
        ' join product_traff f on f.id_prod_oper = r.id_prod_oper and f.i' +
        'd_area = 239)'
      
        ' join operations s on s.id_area = f.id_area and s.id_operation =' +
        ' f.id_operation)'
      ' join product_plans l on'
      '    l.d_out = '#39'05.12.2008'#39' --and l.ID_SHIFT = 1 '
      '    and  l.id_prod_traf = f.id_prod_traff)'
      ' join product_plans_p l1 on'
      '    l1.id_prod_plan = l.id_prod_plan'
      ' left join items i on i.id_item = o.id_product'
      ' left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT'
      ' left join personnel per on l1.id_p = per.id_p'
      ' left join post ps on per.idpost = ps.idpost'
      ' left join shifts h on h.id_shift = l.id_shift'
      'union'
      
        ' select per.fio, coalesce(l1.din+l1.tin, cast(l.d_out as timesta' +
        'mp)) din ,'
      ' coalesce(l1.dto+l1.tto, cast(l.d_out as timestamp) +'
      ' ( (floor(l.f_time) + (l.f_time - floor(l.f_time))) )/24) dto,'
      ' cast(d.name as varchar(160))  nm,'
      ' cast(d.name as varchar(64)) name_ord,'
      ' coalesce(o.id_order,cast('#39#1041#1077#1079' '#1079#1072#1082#1072#1079#1072#39' as varchar(16))) n_order,'
      ' cast(0 as integer) step,cast('#39'*'#39' as varchar(30)) name_oper,'
      ' ps.name  name_post, l.id_equipment,'
      
        ' case when (l.id_equipment = 0 or l.id_equipment is null)  then ' +
        #39#39' else e.shotname end shotname,'
      ' l1.id_prod_plan_p,l1.id_p,l1.amount ,'
      ' l1.rem,l1.f_amount , l.d_out, l.f_time f_time_p,'
      ' l1.dto+l1.tto dto_,'
      ''
      ' floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+'
      ' ( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24'
      ' - floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 tm_,'
      ' coalesce('
      ' floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+'
      ' ( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24'
      ' - floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 ,'
      
        '  (floor(l.f_time) + (l.f_time - floor(l.f_time)) *60/100)  ) tm' +
        ' ,'
      ' l1.f_time,l1.p_time,'
      ' cast(0 as integer) id_version,'
      ' cast(0 as integer) id_project,'
      ' cast(0 as integer) id_order,'
      ' l.id_dutytype id_object,'
      ' cast(0 as integer) id_prod_oper,'
      ' cast(0 as integer) obj_type ,'
      ' cast(0 as integer) id_operation,'
      ' cast(0 as integer) id_prod_plan,'
      ' cast(h.name as varchar(64)) name_shift'
      ''
      ' from product_plans_stop l'
      
        ' join product_plans_p l1 on  l.id_area = 239 and l.d_out >= '#39'05,' +
        '12,2008'#39
      '   and l.d_out < '#39'06.12.2008'#39' --and l1.id_p = :id_p'
      '   and l1.id_prod_plan_stop = l.id_prod_plan_stop'
      ' left join dutytypes d on d.id_dutytype = l.id_dutytype'
      ' left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT'
      ' left join personnel per on l1.id_p = per.id_p '
      ' left join post ps on per.idpost = ps.idpost'
      ' left join shifts h on h.id_shift = l.id_shift'
      'left join project_ords o on o.id_order = l.id_order')
    Left = 346
    Top = 122
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_p'
        ParamType = ptUnknown
      end>
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
      DisplayLabel = #1042#1088#1077#1084#1103' '#1072#1073#1089'.'
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
  end
  object dsRep_Plan_Day: TDataSource
    DataSet = qRep_Plan_Day
    Left = 356
    Top = 170
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
    Left = 270
    Top = 112
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
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qRepDay_PersID_P: TIntegerField
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
      ' left join items i on i.id_item = o.id_product'
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
    Left = 196
    Top = 114
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
  object qProd_Plan_Stop: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterInsert = qProd_Plan_StopAfterInsert
    AfterScroll = qProd_Plan_StopAfterScroll
    BeforePost = qProd_Plan_StopBeforePost
    OnNewRecord = qProd_Plan_StopNewRecord
    SQL.Strings = (
      'select p.id_prod_plan_stop,p.id_area,'
      
        '      p.d_out,p.id_dutytype,p.id_shift,p.id_equipment,p.f_time,p' +
        '.p_time,'
      '      --p.din,p.tin,p.dto,p.tto,'
      '      ( select min(din) from product_plans_p'
      ' where id_prod_plan_stop = p.id_prod_plan_stop) din,'
      ' ( select min(tin) from product_plans_p'
      ' where id_prod_plan_stop = p.id_prod_plan_stop) tin,'
      ' '
      ' ( select max(dto) from product_plans_p'
      ' where id_prod_plan_stop = p.id_prod_plan_stop) dto,'
      ' ( select max(tto) from product_plans_p'
      ' where id_prod_plan_stop = p.id_prod_plan_stop) tto,'
      
        '       substring  (p.rem from 1 for 1024) rem,p.id_order, o.name' +
        ' name_ord, o.n_order,'
      '      e.pl_name,s.name name_shift,'
      '(      select sum(f_time) from product_plans_p'
      
        ' where id_prod_plan_stop = p.id_prod_plan_stop) f_time_sum, ps.f' +
        'io, p.id_fix'
      '       from product_plans_stop p'
      '       left join equipments e on e.id_equipment = p.id_equipment'
      '   left join shifts s on s.id_shift = p.id_shift'
      '   left join project_ords o on o.id_order = p.id_order'
      '   left join personnel ps on ps.id_p = p.id_fix'
      ''
      '   where p.d_out = :d_out and p.id_area = :id_area')
    UpdateObject = UpProd_Plan_Stop
    GeneratorField.Field = 'ID_PROD_PLAN_STOP'
    GeneratorField.Generator = 'OBJ_ID'
    Left = 40
    Top = 74
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
    object qProd_Plan_StopID_PROD_PLAN_STOP: TIntegerField
      DisplayLabel = #1056#1077#1075'.'#8470
      FieldName = 'ID_PROD_PLAN_STOP'
      Origin = '"PRODUCT_PLANS_STOP"."ID_PROD_PLAN_STOP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProd_Plan_StopID_AREA: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
      FieldName = 'ID_AREA'
      Origin = '"PRODUCT_PLANS_STOP"."ID_AREA"'
    end
    object qProd_Plan_StopD_OUT: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'D_OUT'
      Origin = '"PRODUCT_PLANS_STOP"."D_OUT"'
    end
    object qProd_Plan_StopID_DUTYTYPE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1088#1072#1073#1086#1090
      FieldName = 'ID_DUTYTYPE'
      Origin = '"PRODUCT_PLANS_STOP"."ID_DUTYTYPE"'
    end
    object qProd_Plan_StopID_SHIFT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1089#1084#1077#1085#1099
      FieldName = 'ID_SHIFT'
      Origin = '"PRODUCT_PLANS_STOP"."ID_SHIFT"'
    end
    object qProd_Plan_StopID_EQUIPMENT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
      FieldName = 'ID_EQUIPMENT'
      Origin = '"PRODUCT_PLANS_STOP"."ID_EQUIPMENT"'
    end
    object qProd_Plan_StopF_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' ('#1072#1073#1089')'
      FieldName = 'F_TIME'
      Origin = '"PRODUCT_PLANS_STOP"."F_TIME"'
      DisplayFormat = '0.00'
    end
    object qProd_Plan_StopP_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1095#1095':'#1084#1084
      FieldName = 'P_TIME'
      Origin = '"PRODUCT_PLANS_STOP"."P_TIME"'
      DisplayFormat = '0.00'
    end
    object qProd_Plan_StopDIN: TDateField
      DisplayLabel = #1053#1072#1095#1072#1083#1086'|'#1044#1072#1090#1072
      FieldName = 'DIN'
      Origin = '"PRODUCT_PLANS_STOP"."DIN"'
      DisplayFormat = 'dd.mm.yyyy'
      EditMask = '!99/99/0000'
    end
    object qProd_Plan_StopTIN: TTimeField
      DisplayLabel = #1053#1072#1095#1072#1083#1086'|'#1042#1088#1077#1084#1103
      FieldName = 'TIN'
      Origin = '"PRODUCT_PLANS_STOP"."TIN"'
      DisplayFormat = 'hh:nn'
      EditMask = '!09:99'
    end
    object qProd_Plan_StopDTO: TDateField
      DisplayLabel = #1054#1082#1086#1085#1095#1072#1085#1080#1077'|'#1044#1072#1090#1072
      FieldName = 'DTO'
      Origin = '"PRODUCT_PLANS_STOP"."DTO"'
      DisplayFormat = 'dd.mm.yyyy'
      EditMask = '!99/99/0000'
    end
    object qProd_Plan_StopTTO: TTimeField
      DisplayLabel = #1054#1082#1086#1085#1095#1072#1085#1080#1077'|'#1042#1088#1077#1084#1103
      FieldName = 'TTO'
      Origin = '"PRODUCT_PLANS_STOP"."TTO"'
      DisplayFormat = 'hh:nn'
      EditMask = '!09:99'
    end
    object qProd_Plan_StopPL_NAME: TIBStringField
      DisplayLabel = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      FieldName = 'PL_NAME'
      Origin = '"EQUIPMENTS"."PL_NAME"'
      Size = 16
    end
    object qProd_Plan_StopREM: TIBStringField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'REM'
      ProviderFlags = []
      Size = 1024
    end
    object qProd_Plan_StopNAME_SHIFT: TIBStringField
      DisplayLabel = #1057#1084#1077#1085#1072
      FieldName = 'NAME_SHIFT'
      Origin = '"SHIFTS"."NAME"'
      Size = 64
    end
    object qProd_Plan_Stopn_ID_DUTY_TYPE: TStringField
      DisplayLabel = #1058#1080#1087' '#1088#1072#1073#1086#1090
      FieldKind = fkLookup
      FieldName = 'n_ID_DUTY_TYPE'
      LookupDataSet = dmIS.qDutyType
      LookupKeyFields = 'ID_DUTYTYPE'
      LookupResultField = 'NAME'
      KeyFields = 'ID_DUTYTYPE'
      Size = 32
      Lookup = True
    end
    object qProd_Plan_StopID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ID_ORDER'
      Origin = '"PRODUCT_PLANS_STOP"."ID_ORDER"'
    end
    object qProd_Plan_StopNAME_ORD: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
      FieldName = 'NAME_ORD'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qProd_Plan_StopN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qProd_Plan_StopF_TIME_SUM: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1095#1077#1083'/'#1095#1072#1089#1086#1074
      FieldName = 'F_TIME_SUM'
      ProviderFlags = []
      DisplayFormat = '0.00'
    end
    object qProd_Plan_StopFIO: TStringField
      DisplayWidth = 60
      FieldName = 'FIO'
      Size = 60
    end
    object qProd_Plan_StopFIO_ID: TIntegerField
      FieldName = 'ID_FIX'
    end
  end
  object dsProd_Plan_Stop: TDataSource
    DataSet = qProd_Plan_Stop
    Left = 36
    Top = 138
  end
  object UpProd_Plan_Stop: TIBUpdateSQL
    ModifySQL.Strings = (
      'update product_plans_stop'
      'set '
      '    id_dutytype = :id_dutytype,'
      '    f_time = :f_time,'
      '    p_time = :p_time,'
      '  '
      '    rem = :rem,'
      '    id_order = :id_order,'
      '    id_fix = :id_fix'
      'where id_prod_plan_stop = :id_prod_plan_stop')
    InsertSQL.Strings = (
      
        'insert into product_plans_stop(id_prod_plan_stop, ID_AREA,d_out,' +
        ' id_dutytype, id_shift, id_equipment, f_time, p_time, din, tin, ' +
        'dto, tto, rem,id_order,id_fix)'
      
        'values (:id_prod_plan_stop,:ID_AREA, :d_out, :id_dutytype, :id_s' +
        'hift, :id_equipment, :f_time, :p_time, :din, :tin, :dto, :tto, :' +
        'rem,:id_order,:id_fix)')
    DeleteSQL.Strings = (
      'delete from product_plans_stop'
      'where (id_prod_plan_stop = :id_prod_plan_stop)')
    Left = 100
    Top = 98
  end
  object qPlan_P_Stop: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterOpen = qPlan_P_StopAfterOpen
    AfterPost = qPlan_P_StopAfterPost
    SQL.Strings = (
      'select P.id_prod_plan_p, p.id_p, p.id_team,'
      'p.f_time,p.p_time, p.rem,p.DIN,p.TIN,p.DTO,p.TTO,'
      'p.ID_PROD_PLAN_STOP, r.fio'
      'from PRODUCT_PLANS_P P'
      
        'left join product_plans_stop s on p.id_prod_plan_stop = s.id_pro' +
        'd_plan_stop'
      'left join personnel r on r.id_p = p.id_p'
      'where p.id_prod_plan_stop = :id_prod_plan_stop')
    UpdateObject = UpPlanP_Stop
    Left = 28
    Top = 398
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_prod_plan_stop'
        ParamType = ptUnknown
      end>
    object qPlan_P_StopID_PROD_PLAN_P: TIntegerField
      DisplayLabel = #1056#1077#1075'.'#8470' '#1087#1083#1072#1085' '#1060#1048#1054
      FieldName = 'ID_PROD_PLAN_P'
      Origin = '"PRODUCT_PLANS_P"."ID_PROD_PLAN_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPlan_P_StopID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'.'#8470
      FieldName = 'ID_P'
      Origin = '"PRODUCT_PLANS_P"."ID_P"'
    end
    object qPlan_P_StopID_TEAM: TIntegerField
      FieldName = 'ID_TEAM'
      Origin = '"PRODUCT_PLANS_P"."ID_TEAM"'
    end
    object qPlan_P_StopF_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' ('#1072#1073#1089')'
      FieldName = 'F_TIME'
      Origin = '"PRODUCT_PLANS_P"."F_TIME"'
      DisplayFormat = '0.00'
    end
    object qPlan_P_StopP_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1095#1095':'#1084#1084
      FieldName = 'P_TIME'
      Origin = '"PRODUCT_PLANS_P"."P_TIME"'
      DisplayFormat = '0.00'
    end
    object qPlan_P_StopREM: TBlobField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'REM'
      Origin = '"PRODUCT_PLANS_P"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qPlan_P_StopDIN: TDateField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1086'|'#1053#1072#1095#1072#1083#1086'|'#1044#1072#1090#1072
      FieldName = 'DIN'
      Origin = '"PRODUCT_PLANS_P"."DIN"'
      DisplayFormat = 'dd.mm.yyyy'
      EditMask = '!99/99/0000'
    end
    object qPlan_P_StopTIN: TTimeField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1086'|'#1053#1072#1095#1072#1083#1086'|'#1042#1088#1077#1084#1103
      FieldName = 'TIN'
      Origin = '"PRODUCT_PLANS_P"."TIN"'
      DisplayFormat = 'hh:nn'
      EditMask = '!09:99'
    end
    object qPlan_P_StopDTO: TDateField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1086'|'#1054#1082#1086#1085#1095#1072#1085#1080#1077'|'#1044#1072#1090#1072' '
      FieldName = 'DTO'
      Origin = '"PRODUCT_PLANS_P"."DTO"'
      DisplayFormat = 'dd.mm.yyyy'
      EditMask = '!99/99/0000'
    end
    object qPlan_P_StopTTO: TTimeField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1086'|'#1054#1082#1086#1085#1095#1072#1085#1080#1077'|'#1042#1088#1077#1084#1103
      FieldName = 'TTO'
      Origin = '"PRODUCT_PLANS_P"."TTO"'
      DisplayFormat = 'hh:nn'
      EditMask = '!09:99'
    end
    object qPlan_P_StopID_PROD_PLAN_STOP: TIntegerField
      DisplayLabel = #1056#1077#1075'.'#8470' '#1079#1072#1087#1080#1089#1080
      FieldName = 'ID_PROD_PLAN_STOP'
      Origin = '"PRODUCT_PLANS_P"."ID_PROD_PLAN_STOP"'
    end
    object qPlan_P_StopFIO: TIBStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsPlan_P_Stop: TDataSource
    DataSet = qPlan_P_Stop
    Left = 29
    Top = 455
  end
  object UpPlanP_StopP: TIBUpdateSQL
    RefreshSQL.Strings = (
      '')
    ModifySQL.Strings = (
      'update product_plans_p'
      'set '
      '    f_amount = :f_amount,'
      '    f_time = :f_time,'
      '    p_time = :p_time,'
      '    rem = :rem,'
      '    d_in = :d_in,'
      '    d_to = :d_to,'
      '    din = :din,'
      '    tin = :tin,'
      '    dto = :dto,'
      '    tto = :tto'
      'where id_prod_plan_p = :id_prod_plan_p')
    Left = 47
    Top = 279
  end
  object dsRepDay_Det: TDataSource
    DataSet = qRepDay_Det
    Left = 196
    Top = 162
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
      ' left join items i on i.id_item = o.id_product'
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
    Left = 708
    Top = 146
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
      LookupDataSet = qRepDay_Det
      LookupKeyFields = 'ID_OBJECT'
      LookupResultField = 'nom'
      KeyFields = 'ID_OBJECT'
      Lookup = True
    end
  end
  object dsFio_Det: TDataSource
    DataSet = qFio_Det
    Left = 636
    Top = 170
  end
  object qSTORE_TMS_BATCH: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select * from STORE_TMS_BATCH(:ID_OBJ,:ID_P_AR)')
    Left = 598
    Top = 228
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_OBJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_P_AR'
        ParamType = ptUnknown
      end>
    object qSTORE_TMS_BATCHID_P_AREA: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1089#1082#1083#1072#1076#1072
      FieldName = 'ID_P_AREA'
      Origin = '"STORE_TMS_BATCH"."ID_P_AREA"'
    end
    object qSTORE_TMS_BATCHID_OBJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_OBJECT'
      Origin = '"STORE_TMS_BATCH"."ID_OBJECT"'
    end
    object qSTORE_TMS_BATCHID_BATCH: TIntegerField
      DisplayLabel = #1055#1072#1088#1090#1080#1103
      FieldName = 'ID_BATCH'
      Origin = '"STORE_TMS_BATCH"."ID_BATCH"'
    end
    object qSTORE_TMS_BATCHN_ID_PA_AREA: TIBStringField
      DisplayLabel = #1052#1077#1089#1090#1086' '#1093#1088#1072#1085#1077#1085#1080#1103
      FieldName = 'N_ID_PA_AREA'
      Origin = '"STORE_TMS_BATCH"."N_ID_PA_AREA"'
      Size = 80
    end
    object qSTORE_TMS_BATCHNAME_TMS: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'NAME_TMS'
      Origin = '"STORE_TMS_BATCH"."NAME_TMS"'
      Size = 128
    end
    object qSTORE_TMS_BATCHAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' ('#1091')'
      FieldName = 'AMOUNT'
      Origin = '"STORE_TMS_BATCH"."AMOUNT"'
      DisplayFormat = '### ### ##0.0###'
    end
    object qSTORE_TMS_BATCHSUM_R: TFloatField
      DisplayLabel = #1056#1077#1079#1077#1088#1074' ('#1091')'
      FieldName = 'SUM_R'
      Origin = '"STORE_TMS_BATCH"."SUM_R"'
      DisplayFormat = '### ### ##0.0###'
    end
    object qSTORE_TMS_BATCHOST: TFloatField
      DisplayLabel = #1054#1089#1090#1072#1090#1086#1082' ('#1091')'
      FieldName = 'OST'
      Origin = '"STORE_TMS_BATCH"."OST"'
      DisplayFormat = '### ### ##0.0###'
    end
    object qSTORE_TMS_BATCHID_OBJ_TYPE: TIntegerField
      DisplayLabel = #1058#1080#1087' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_OBJ_TYPE'
      Origin = '"STORE_TMS_BATCH"."ID_OBJ_TYPE"'
    end
    object qSTORE_TMS_BATCHPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
      Origin = '"STORE_TMS_BATCH"."PRICE"'
      DisplayFormat = '### ### ##0.00'
    end
    object qSTORE_TMS_BATCHID_PROD_OPER: TIntegerField
      FieldName = 'ID_PROD_OPER'
      Origin = '"STORE_TMS_BATCH"."ID_PROD_OPER"'
    end
    object qSTORE_TMS_BATCHID_PROD_TRAFF: TIntegerField
      DisplayLabel = #1058#1088#1072#1092#1080#1082
      FieldName = 'ID_PROD_TRAFF'
      Origin = '"STORE_TMS_BATCH"."ID_PROD_TRAFF"'
    end
    object qSTORE_TMS_BATCHNDS: TFloatField
      DisplayLabel = #1053#1044#1057
      FieldName = 'NDS'
      Origin = '"STORE_TMS_BATCH"."NDS"'
    end
  end
  object dsSTORE_TMS_BATCH: TDataSource
    DataSet = qSTORE_TMS_BATCH
    Left = 664
    Top = 232
  end
  object qBILLPOS_BILL70TRAFF: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterScroll = qBILLPOS_BILL70TRAFFAfterScroll
    SQL.Strings = (
      'select * from BILLPOS_BILL70TRAFF(:ID_AR,:D_BIL)')
    Left = 747
    Top = 337
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_AR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'D_BIL'
        ParamType = ptUnknown
      end>
    object qBILLPOS_BILL70TRAFFOBJ_NAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'OBJ_NAME'
      Origin = '"BILLPOS_BILL70TRAFF"."OBJ_NAME"'
      Size = 128
    end
    object qBILLPOS_BILL70TRAFFONAME: TIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'ONAME'
      Origin = '"BILLPOS_BILL70TRAFF"."ONAME"'
      Size = 30
    end
    object qBILLPOS_BILL70TRAFFID_STEP: TIntegerField
      DisplayLabel = #1064#1072#1075
      FieldName = 'ID_STEP'
      Origin = '"BILLPOS_BILL70TRAFF"."ID_STEP"'
    end
    object qBILLPOS_BILL70TRAFFOBJECT_NAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'OBJECT_NAME'
      Origin = '"BILLPOS_BILL70TRAFF"."OBJECT_NAME"'
      Size = 128
    end
    object qBILLPOS_BILL70TRAFFOPERNAME: TIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'OPERNAME'
      Origin = '"BILLPOS_BILL70TRAFF"."OPERNAME"'
      Size = 30
    end
    object qBILLPOS_BILL70TRAFFID_ID_STEP: TIntegerField
      DisplayLabel = #1064#1072#1075
      FieldName = 'ID_ID_STEP'
      Origin = '"BILLPOS_BILL70TRAFF"."ID_ID_STEP"'
    end
    object qBILLPOS_BILL70TRAFFID_AREA: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1091#1095#1072#1089#1090#1082#1072
      FieldName = 'ID_AREA'
      Origin = '"BILLPOS_BILL70TRAFF"."ID_AREA"'
    end
    object qBILLPOS_BILL70TRAFFID_PA_BILL: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      FieldName = 'ID_PA_BILL'
      Origin = '"BILLPOS_BILL70TRAFF"."ID_PA_BILL"'
    end
    object qBILLPOS_BILL70TRAFFNUMBER: TIBStringField
      DisplayLabel = #8470' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      FieldName = 'NUMBER'
      Origin = '"BILLPOS_BILL70TRAFF"."NUMBER"'
      Size = 16
    end
    object qBILLPOS_BILL70TRAFFD_BILL: TDateField
      DisplayLabel = #1044'/'#1085#1072#1082#1083#1072#1076#1085#1086#1081
      FieldName = 'D_BILL'
      Origin = '"BILLPOS_BILL70TRAFF"."D_BILL"'
    end
    object qBILLPOS_BILL70TRAFFD_FIX: TDateTimeField
      DisplayLabel = #1044'/'#1087#1086#1096#1080#1074#1082#1080
      FieldName = 'D_FIX'
      Origin = '"BILLPOS_BILL70TRAFF"."D_FIX"'
    end
    object qBILLPOS_BILL70TRAFFID_PROD_TRAFF: TIntegerField
      DisplayLabel = #1058#1088#1072#1092#1080#1082
      FieldName = 'ID_PROD_TRAFF'
      Origin = '"BILLPOS_BILL70TRAFF"."ID_PROD_TRAFF"'
    end
    object qBILLPOS_BILL70TRAFFID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ID_ORDER'
      Origin = '"BILLPOS_BILL70TRAFF"."ID_ORDER"'
    end
    object qBILLPOS_BILL70TRAFFORDNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ORDNAME'
      Origin = '"BILLPOS_BILL70TRAFF"."ORDNAME"'
      Size = 64
    end
    object qBILLPOS_BILL70TRAFFN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"BILLPOS_BILL70TRAFF"."N_ORDER"'
      Size = 16
    end
    object qBILLPOS_BILL70TRAFFID_PA_BILL_POS: TIntegerField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' ('#1085#1072#1082#1083#1072#1076#1085#1086#1081' 70 '#1090#1080#1087#1072')'
      FieldName = 'ID_PA_BILL_POS'
      Origin = '"BILLPOS_BILL70TRAFF"."ID_PA_BILL_POS"'
    end
    object qBILLPOS_BILL70TRAFFID_OBJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_OBJECT'
      Origin = '"BILLPOS_BILL70TRAFF"."ID_OBJECT"'
    end
    object qBILLPOS_BILL70TRAFFID_BATCH: TIntegerField
      DisplayLabel = #1055#1072#1088#1090#1080#1103
      FieldName = 'ID_BATCH'
      Origin = '"BILLPOS_BILL70TRAFF"."ID_BATCH"'
    end
    object qBILLPOS_BILL70TRAFFAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1076#1077#1090#1072#1083#1077#1081
      FieldName = 'AMOUNT'
      Origin = '"BILLPOS_BILL70TRAFF"."AMOUNT"'
      DisplayFormat = '### ### ##0.00'
    end
    object qBILLPOS_BILL70TRAFFID_ITEM: TIntegerField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1050#1086#1076
      FieldName = 'ID_ITEM'
      Origin = '"BILLPOS_BILL70TRAFF"."ID_ITEM"'
    end
    object qBILLPOS_BILL70TRAFFNAME_TMC: TIBStringField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME_TMC'
      Origin = '"BILLPOS_BILL70TRAFF"."NAME_TMC"'
      Size = 128
    end
    object qBILLPOS_BILL70TRAFFNAME_U: TIBStringField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1045#1076'. '#1080#1079#1084'. ('#1091')'
      FieldName = 'NAME_U'
      Origin = '"BILLPOS_BILL70TRAFF"."NAME_U"'
      Size = 16
    end
    object qBILLPOS_BILL70TRAFFAMOUNT_TMC: TFloatField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1050#1086#1083'-'#1074#1086' '#1074#1082#1083'. '#1090#1077#1093'. '#1086#1090#1093#1086#1076' ('#1091')'
      FieldName = 'AMOUNT_TMC'
      Origin = '"BILLPOS_BILL70TRAFF"."AMOUNT_TMC"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qBILLPOS_BILL70TRAFFAMOUNT_WASTE: TFloatField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1058#1077#1093'. '#1086#1090#1093#1086#1076' ('#1091')'
      FieldName = 'AMOUNT_WASTE'
      Origin = '"BILLPOS_BILL70TRAFF"."AMOUNT_WASTE"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qBILLPOS_BILL70TRAFFAMOUNT_TMC_NOT_WASTE: TFloatField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1050#1086#1083'-'#1074#1086' '#1073#1077#1079' '#1090#1077#1093'. '#1086#1090#1093#1086#1076#1072' ('#1091')'
      FieldName = 'AMOUNT_TMC_NOT_WASTE'
      Origin = '"BILLPOS_BILL70TRAFF"."AMOUNT_TMC_NOT_WASTE"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qBILLPOS_BILL70TRAFFFACTOR: TFloatField
      DisplayLabel = #1050#1086#1101#1092#1092'.'
      FieldName = 'FACTOR'
      Origin = '"BILLPOS_BILL70TRAFF"."FACTOR"'
      DisplayFormat = '### ### ##0.00000000'
    end
    object qBILLPOS_BILL70TRAFFNAME_UP: TIBStringField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1045#1076'. '#1080#1079#1084'. ('#1087')'
      FieldName = 'NAME_UP'
      Origin = '"BILLPOS_BILL70TRAFF"."NAME_UP"'
      Size = 16
    end
    object qBILLPOS_BILL70TRAFFAMOUNT_TMC_P: TFloatField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1050#1086#1083'-'#1074#1086' '#1074#1082#1083'. '#1090#1077#1093'. '#1086#1090#1093#1086#1076' ('#1087')'
      FieldName = 'AMOUNT_TMC_P'
      Origin = '"BILLPOS_BILL70TRAFF"."AMOUNT_TMC_P"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qBILLPOS_BILL70TRAFFAMOUNT_TMC_NOT_WASTE_P: TFloatField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1050#1086#1083'-'#1074#1086' '#1073#1077#1079' '#1090#1077#1093'. '#1086#1090#1093#1086#1076#1072' ('#1087')'
      FieldName = 'AMOUNT_TMC_NOT_WASTE_P'
      Origin = '"BILLPOS_BILL70TRAFF"."AMOUNT_TMC_NOT_WASTE_P"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qBILLPOS_BILL70TRAFFAMOUNT_WASTE_P: TFloatField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1058#1077#1093'. '#1086#1090#1093#1086#1076' ('#1087')'
      FieldName = 'AMOUNT_WASTE_P'
      Origin = '"BILLPOS_BILL70TRAFF"."AMOUNT_WASTE_P"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qBILLPOS_BILL70TRAFFOST: TFloatField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1091#1095#1072#1089#1090#1082#1077' ('#1091')'
      FieldName = 'OST'
      Origin = '"BILLPOS_BILL70TRAFF"."OST"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qBILLPOS_BILL70TRAFFOST_P: TFloatField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1091#1095#1072#1089#1090#1082#1077' ('#1091')'
      FieldName = 'OST_P'
      Origin = '"BILLPOS_BILL70TRAFF"."OST_P"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qBILLPOS_BILL70TRAFFNOM: TIntegerField
      DisplayLabel = #8470' '#1087'/'#1087
      FieldName = 'NOM'
      Origin = '"BILLPOS_BILL70TRAFF"."NOM"'
    end
    object qBILLPOS_BILL70TRAFFEXP: TFloatField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1057#1087#1080#1089#1072#1085#1086' '#1074#1089#1077#1075#1086' '#1087#1086' '#1090#1088#1072#1092#1080#1082#1091' ('#1091')|'#1050#1086#1083'-'#1074#1086' '#1074#1082#1083'. '#1090#1077#1093'. '#1086#1090#1093#1086#1076
      FieldName = 'EXP'
      Origin = '"BILLPOS_BILL70TRAFF"."EXP"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qBILLPOS_BILL70TRAFFEXP_W: TFloatField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1057#1087#1080#1089#1072#1085#1086' '#1074#1089#1077#1075#1086' '#1087#1086' '#1090#1088#1072#1092#1080#1082#1091' ('#1091')|'#1058#1077#1093'. '#1086#1090#1093#1086#1076
      FieldName = 'EXP_W'
      Origin = '"BILLPOS_BILL70TRAFF"."EXP_W"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qBILLPOS_BILL70TRAFFFULL_AMOUNT: TFloatField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1053#1072' '#1090#1080#1088#1072#1078' '#1087#1086' '#1090#1088#1072#1092#1080#1082#1091' ('#1091')|'#1050#1086#1083'-'#1074#1086' '#1074#1082#1083'. '#1090#1077#1093'. '#1086#1090#1093#1086#1076
      FieldName = 'FULL_AMOUNT'
      Origin = '"BILLPOS_BILL70TRAFF"."FULL_AMOUNT"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qBILLPOS_BILL70TRAFFFULL_AMOUNT_NOT_WASTE: TFloatField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1053#1072' '#1090#1080#1088#1072#1078' '#1087#1086' '#1090#1088#1072#1092#1080#1082#1091' ('#1091')|'#1050#1086#1083'-'#1074#1086' '#1073#1077#1079' '#1090#1077#1093'. '#1086#1090#1093#1086#1076#1072
      FieldName = 'FULL_AMOUNT_NOT_WASTE'
      Origin = '"BILLPOS_BILL70TRAFF"."FULL_AMOUNT_NOT_WASTE"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qBILLPOS_BILL70TRAFFFULL_AMOUNT_WASTE: TFloatField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1053#1072' '#1090#1080#1088#1072#1078' '#1087#1086' '#1090#1088#1072#1092#1080#1082#1091' ('#1091')|'#1058#1077#1093'. '#1086#1090#1093#1086#1076
      FieldName = 'FULL_AMOUNT_WASTE'
      Origin = '"BILLPOS_BILL70TRAFF"."FULL_AMOUNT_WASTE"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qBILLPOS_BILL70TRAFFAMOUNT_FIX: TFloatField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1057#1087#1080#1089#1072#1085#1086' '#1087#1086' '#1074#1099#1088#1072#1073#1086#1090#1082#1077' ('#1091')|'#1050#1086#1083'-'#1074#1086' '#1074#1082#1083'. '#1090#1077#1093'. '#1086#1090#1093#1086#1076
      FieldName = 'AMOUNT_FIX'
      Origin = '"BILLPOS_BILL70TRAFF"."AMOUNT_FIX"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qBILLPOS_BILL70TRAFFAMOUNT_W_FIX: TFloatField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1057#1087#1080#1089#1072#1085#1086' '#1087#1086' '#1074#1099#1088#1072#1073#1086#1090#1082#1077' ('#1091')|'#1058#1077#1093'. '#1086#1090#1093#1086#1076
      FieldName = 'AMOUNT_W_FIX'
      Origin = '"BILLPOS_BILL70TRAFF"."AMOUNT_W_FIX"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qBILLPOS_BILL70TRAFFAMOUNT_NOT_FIX: TFloatField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1056#1077#1079#1077#1088#1074' '#1087#1086' '#1074#1099#1088#1072#1073#1086#1090#1082#1077' ('#1091')|'#1050#1086#1083'-'#1074#1086' '#1074#1082#1083'. '#1090#1077#1093'. '#1086#1090#1093#1086#1076
      FieldName = 'AMOUNT_NOT_FIX'
      Origin = '"BILLPOS_BILL70TRAFF"."AMOUNT_NOT_FIX"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qBILLPOS_BILL70TRAFFAMOUNT_W_NOT_FIX: TFloatField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083'|'#1056#1077#1079#1077#1088#1074' '#1087#1086' '#1074#1099#1088#1072#1073#1086#1090#1082#1077' ('#1091')|'#1050#1086#1083'-'#1074#1086' '#1074#1082#1083'. '#1090#1077#1093'. '#1086#1090#1093#1086#1076
      FieldName = 'AMOUNT_W_NOT_FIX'
      Origin = '"BILLPOS_BILL70TRAFF"."AMOUNT_W_NOT_FIX"'
      DisplayFormat = '### ### ##0.0000'
    end
  end
  object dsBILLPOS_BILL70TRAFF: TDataSource
    DataSet = qBILLPOS_BILL70TRAFF
    Left = 752
    Top = 457
  end
  object qIns_Bill: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    Left = 507
    Top = 433
  end
  object qExp: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select e.*,s.description'
      'from ORDER_EXPENCES(:id_order) e'
      
        'join exppos s  on e.id_expos = s.id_exppos and s.id_field = :id_' +
        'field')
    Left = 483
    Top = 361
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_order'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_field'
        ParamType = ptUnknown
      end>
    object qExpID_EXPOS: TIntegerField
      DisplayLabel = #1056#1077#1075'. '#8470' '#1087#1086#1079#1080#1094#1080#1080' '#1091#1089#1083#1091#1075#1080
      FieldName = 'ID_EXPOS'
      Origin = '"ORDER_EXPENCES"."ID_EXPOS"'
    end
    object qExpID_EXPENCE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1091#1089#1083#1091#1075#1080
      FieldName = 'ID_EXPENCE'
      Origin = '"ORDER_EXPENCES"."ID_EXPENCE"'
    end
    object qExpAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"ORDER_EXPENCES"."AMOUNT"'
    end
    object qExpTOTAL_SUM: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'TOTAL_SUM'
      Origin = '"ORDER_EXPENCES"."TOTAL_SUM"'
    end
    object qExpPROC_NDS: TFloatField
      DisplayLabel = #1053#1044#1057
      FieldName = 'PROC_NDS'
      Origin = '"ORDER_EXPENCES"."PROC_NDS"'
    end
    object qExpDEF_SUM: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1076#1077#1092'.'
      FieldName = 'DEF_SUM'
      Origin = '"ORDER_EXPENCES"."DEF_SUM"'
    end
    object qExpRATE: TFloatField
      DisplayLabel = #1050#1091#1088#1089
      FieldName = 'RATE'
      Origin = '"ORDER_EXPENCES"."RATE"'
    end
    object qExpID_UNIT: TIntegerField
      FieldName = 'ID_UNIT'
      Origin = '"ORDER_EXPENCES"."ID_UNIT"'
    end
    object qExpID_SERVICE: TIntegerField
      FieldName = 'ID_SERVICE'
      Origin = '"ORDER_EXPENCES"."ID_SERVICE"'
    end
    object qExpUNAME: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'.'
      FieldName = 'UNAME'
      Origin = '"ORDER_EXPENCES"."UNAME"'
      Size = 16
    end
    object qExpNAME: TIBStringField
      DisplayLabel = #1059#1089#1083#1091#1075#1072
      FieldName = 'NAME'
      Origin = '"ORDER_EXPENCES"."NAME"'
      Size = 64
    end
    object qExpEXPENCE_DATE: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1091#1089#1083#1091#1075#1080
      FieldName = 'EXPENCE_DATE'
      Origin = '"ORDER_EXPENCES"."EXPENCE_DATE"'
    end
    object qExpEXPENCE_NUMBER: TIBStringField
      DisplayLabel = #8470' '#1076#1086#1082'-'#1090#1072' '#1074#1085#1091#1090#1088#1077#1085#1085#1080#1081
      FieldName = 'EXPENCE_NUMBER'
      Origin = '"ORDER_EXPENCES"."EXPENCE_NUMBER"'
      Size = 32
    end
    object qExpID_CURRENCY: TIntegerField
      FieldName = 'ID_CURRENCY'
      Origin = '"ORDER_EXPENCES"."ID_CURRENCY"'
    end
    object qExpNCURR: TIBStringField
      DisplayLabel = #1042#1072#1083#1102#1090#1072
      FieldName = 'NCURR'
      Origin = '"ORDER_EXPENCES"."NCURR"'
      Size = 4
    end
    object qExpID_AGENT: TIntegerField
      FieldName = 'ID_AGENT'
      Origin = '"ORDER_EXPENCES"."ID_AGENT"'
    end
    object qExpN_ID_AGENT: TIBStringField
      DisplayLabel = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      FieldName = 'N_ID_AGENT'
      Origin = '"ORDER_EXPENCES"."N_ID_AGENT"'
      Size = 128
    end
    object qExpDOC_NUMBER: TIBStringField
      DisplayLabel = #8470' '#1076#1086#1082'-'#1090#1072' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      FieldName = 'DOC_NUMBER'
      Origin = '"ORDER_EXPENCES"."DOC_NUMBER"'
      Size = 32
    end
    object qExpDESCRIPTION: TBlobField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077
      FieldName = 'DESCRIPTION'
      Origin = '"EXPPOS"."DESCRIPTION"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object dsExp: TDataSource
    DataSet = qExp
    Left = 435
    Top = 393
  end
  object qDet: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BeforeOpen = qDetBeforeOpen
    DataSource = dsLoad_P
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
      ' cast(0 as integer) step,cast('#39'*'#39' as varchar(30)) name_oper,'
      ' ps.name  name_post, per.fio,l.id_equipment,'
      
        ' case when (l.id_equipment = 0 or l.id_equipment is null)  then ' +
        #39#39' else e.shotname end shotname,'
      ' l1.id_prod_plan_p,l1.id_p,l1.amount ,'
      ' cast(1.0 as double precision)  T_PERS, l1.rem,l1.f_amount ,'
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
      ' left join project_ords o on o.id_order = l.id_order')
    Left = 764
    Top = 144
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
  object dsDet: TDataSource
    DataSet = qDet
    Left = 766
    Top = 194
  end
  object UpPlan_P: TIBUpdateSQL
    ModifySQL.Strings = (
      'update product_plans_p'
      'set '
      '    f_amount = :f_amount,'
      '    f_time = :f_time,'
      '    p_time = :p_time,'
      '    rem = :rem,'
      '    d_in = :d_in,'
      '    d_to = :d_to,'
      '    din = :din,'
      '    tin = :tin,'
      '    dto = :dto,'
      '    tto = :tto'
      'where id_prod_plan_p = :id_prod_plan_p')
    Left = 123
    Top = 289
  end
  object UpPlanP_Stop: TIBUpdateSQL
    ModifySQL.Strings = (
      'update product_plans_p'
      'set '
      '    f_amount = :f_amount,'
      '    f_time = :f_time,'
      '    p_time = :p_time,'
      '    rem = :rem,'
      '    d_in = :d_in,'
      '    d_to = :d_to,'
      '    din = :din,'
      '    tin = :tin,'
      '    dto = :dto,'
      '    tto = :tto'
      'where id_prod_plan_p = :id_prod_plan_p')
    Left = 48
    Top = 336
  end
  object qPPlan: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select po.n_order, o.name oper_name,  wc.name wc_name,'
      'wo.d_begin, wo.d_end, t.amount, t.amount_time, t.full_amount,'
      'po.name name_ord,wo.id_wc_owr'
      'from  wc_ord_work_res  wo'
      'join wc_work_res w on w.id_wc_wr = wo.id_wc_owr'
      'join wc_ms_traff t  on t.id_ms_traff = wo.id_ms_traff'
      'join wcenters wc on wc.id_wcenter = wo.id_wcenter'
      
        'join est_ord_traff pt on pt.id_order = wo.id_order  and pt.id_wc' +
        'enter = wo.id_wcenter'
      
        'join operations o on o.id_operation = pt.id_operation and o.id_a' +
        'rea = pt.id_area'
      'join project_ords po on po.id_order = wo.id_order'
      
        'where wc.id_area = :id_area and wo.d_begin >= :d1 and wo.d_end <' +
        '= :d2')
    Left = 899
    Top = 369
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
      end>
    object qPPlanN_ORDER: TIBStringField
      DisplayLabel = #1047#1072#1082#1072#1079
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qPPlanOPER_NAME: TIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'OPER_NAME'
      Origin = '"OPERATIONS"."NAME"'
      Size = 30
    end
    object qPPlanWC_NAME: TIBStringField
      DisplayLabel = #1056#1072#1073'. '#1062#1077#1085#1090#1088
      FieldName = 'WC_NAME'
      Origin = '"WCENTERS"."NAME"'
      Size = 128
    end
    object qPPlanD_BEGIN: TDateField
      DisplayLabel = #1053#1072#1095#1072#1083#1086
      FieldName = 'D_BEGIN'
      Origin = '"WC_ORD_WORK_RES"."D_BEGIN"'
    end
    object qPPlanD_END: TDateField
      DisplayLabel = #1050#1086#1085#1077#1094
      FieldName = 'D_END'
      Origin = '"WC_ORD_WORK_RES"."D_END"'
    end
    object qPPlanAMOUNT: TFloatField
      DisplayLabel = #1042#1099#1093#1086#1076#1085#1086#1081' '#1090#1080#1088#1072#1078' '#1086#1087#1077#1088#1072#1094#1080#1080
      FieldName = 'AMOUNT'
      Origin = '"WC_MS_TRAFF"."AMOUNT"'
    end
    object qPPlanAMOUNT_TIME: TFloatField
      DisplayLabel = #1058#1088#1091#1076#1086#1077#1084#1082#1086#1089#1090#1100' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' ('#1085#1086#1088#1084#1086'-'#1095#1072#1089' '#1080#1083#1080' '#1084#1072#1096#1080#1085#1086'-'#1095#1072#1089')'
      FieldName = 'AMOUNT_TIME'
      Origin = '"WC_MS_TRAFF"."AMOUNT_TIME"'
    end
    object qPPlanFULL_AMOUNT: TFloatField
      DisplayLabel = #1042#1093#1086#1076#1085#1086#1081' '#1090#1080#1088#1072#1078' '#1086#1087#1077#1088#1072#1094#1080#1080
      FieldName = 'FULL_AMOUNT'
      Origin = '"WC_MS_TRAFF"."FULL_AMOUNT"'
    end
    object qPPlanNAME_ORD: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
      FieldName = 'NAME_ORD'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qPPlanID_WC_OWR: TIntegerField
      DisplayLabel = #1056#1077#1075' '#8470
      FieldName = 'ID_WC_OWR'
      Origin = '"WC_ORD_WORK_RES"."ID_WC_OWR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsPPlan: TDataSource
    DataSet = qPPlan
    Left = 899
    Top = 417
  end
  object qWC: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select wc.id_wcenter, wc.name  from wcenters wc'
      'where wc.id_area = :id_area')
    Left = 907
    Top = 473
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end>
    object qWCID_WCENTER: TIntegerField
      FieldName = 'ID_WCENTER'
      Origin = '"WCENTERS"."ID_WCENTER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qWCNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"WCENTERS"."NAME"'
      Size = 128
    end
  end
  object dsWC: TDataSource
    DataSet = qWC
    Left = 955
    Top = 473
  end
end
