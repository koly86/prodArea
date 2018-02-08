object fmZJob: TfmZJob
  Left = 234
  Top = 130
  Width = 789
  Height = 606
  Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1088#1072#1073#1086#1090
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
  object Splitter1: TSplitter
    Left = 0
    Top = 308
    Width = 781
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 781
    Height = 308
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object tlb1: TToolBar
      Left = 2
      Top = 2
      Width = 777
      Height = 65
      AutoSize = True
      Caption = 'tlb1'
      Flat = True
      Images = fmMain.il1
      TabOrder = 0
      object tb1: TToolButton
        Left = 0
        Top = 0
        Hint = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1086#1090#1095#1077#1090#1072
        Caption = 'tb1'
        ImageIndex = 8
        ParentShowHint = False
        ShowHint = True
        OnClick = tb1Click
      end
      object ToolButton1: TToolButton
        Left = 23
        Top = 0
        Width = 34
        Caption = 'ToolButton1'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object Label2: TLabel
        Left = 57
        Top = 0
        Width = 19
        Height = 22
        Caption = #1054#1090': '
      end
      object dtp1: TDateTimePicker
        Left = 76
        Top = 0
        Width = 96
        Height = 22
        Date = 38951.480789201400000000
        Time = 38951.480789201400000000
        TabOrder = 2
        OnCloseUp = dtp1CloseUp
      end
      object ToolButton2: TToolButton
        Left = 172
        Top = 0
        Width = 34
        Caption = 'ToolButton2'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object tb2: TToolButton
        Left = 206
        Top = 0
        Hint = #1055#1086' '#1091#1095#1072#1089#1090#1082#1091
        Caption = 'tb2'
        Down = True
        Grouped = True
        ImageIndex = 10
        ParentShowHint = False
        ShowHint = True
        Style = tbsCheck
        OnClick = tb2Click
      end
      object tb3: TToolButton
        Left = 229
        Top = 0
        Hint = #1055#1077#1088#1089#1086#1085#1072#1083#1100#1085#1086
        Caption = 'tb3'
        Grouped = True
        ImageIndex = 25
        ParentShowHint = False
        ShowHint = True
        Style = tbsCheck
        OnClick = tb3Click
      end
      object tb4: TToolButton
        Left = 252
        Top = 0
        Hint = #1055#1086' '#1073#1088#1080#1075#1072#1076#1072#1084
        Caption = 'tb4'
        Grouped = True
        ImageIndex = 26
        ParentShowHint = False
        ShowHint = True
        Style = tbsCheck
        OnClick = tb4Click
      end
      object ToolButton3: TToolButton
        Left = 0
        Top = 0
        Width = 19
        Caption = 'ToolButton3'
        ImageIndex = 27
        Wrap = True
        Style = tbsSeparator
      end
      object tb5: TToolButton
        Left = 0
        Top = 41
        Hint = #1055#1077#1095#1072#1090#1100' '#1086#1090#1095#1077#1090#1072
        Caption = 'tb5'
        ImageIndex = 13
        ParentShowHint = False
        ShowHint = True
        OnClick = tb5Click
      end
      object tb6: TToolButton
        Left = 23
        Top = 41
        Hint = #1042#1089#1077#1075#1086
        Caption = 'tb6'
        ImageIndex = 13
        ParentShowHint = False
        ShowHint = True
        OnClick = tb6Click
      end
      object lcb1: TDBLookupComboBox
        Left = 46
        Top = 41
        Width = 279
        Height = 21
        DropDownRows = 40
        KeyField = 'ID_P'
        ListField = 'FIO'
        ListSource = dmIS.dsPers
        TabOrder = 0
      end
      object lcb2: TDBLookupComboBox
        Left = 325
        Top = 41
        Width = 193
        Height = 21
        KeyField = 'ID_TEAM'
        ListField = 'NAME'
        ListSource = dmIS.dsTeams
        TabOrder = 1
      end
    end
    object pc1: TPageControl
      Left = 2
      Top = 93
      Width = 777
      Height = 213
      ActivePage = ts1
      Align = alClient
      TabOrder = 1
      TabPosition = tpBottom
      object ts1: TTabSheet
        Caption = #1054#1087#1077#1088#1072#1094#1080#1103
        object Splitter2: TSplitter
          Left = 407
          Top = 0
          Height = 187
        end
        object dbg2: TDBGrid
          Left = 410
          Top = 0
          Width = 359
          Height = 187
          Align = alClient
          DataSource = dmIS.dsNew_Oper
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'STEP'
              Title.Alignment = taCenter
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NAME'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_PROD_OPER'
              Title.Alignment = taCenter
              Visible = True
            end>
        end
        object p3: TPanel
          Left = 0
          Top = 0
          Width = 407
          Height = 187
          Align = alLeft
          BevelInner = bvLowered
          TabOrder = 1
          object dbn1: TDBNavigator
            Left = 2
            Top = 167
            Width = 403
            Height = 18
            DataSource = dmIS.dsBState
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alBottom
            TabOrder = 0
          end
          object dbg1: TDBGrid
            Left = 2
            Top = 2
            Width = 403
            Height = 165
            Align = alClient
            DataSource = dmIS.dsBState
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = dbg1DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'N_ORDER'
                Title.Alignment = taCenter
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NAME'
                Title.Alignment = taCenter
                Width = 180
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nOPER'
                Title.Alignment = taCenter
                Width = 110
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AMOUNT'
                Title.Alignment = taCenter
                Width = 49
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'jAMOUNT'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'jfAmount'
                Title.Alignment = taCenter
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_STEP'
                Title.Alignment = taCenter
                Width = 28
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_OBJECT_TYPE'
                Title.Alignment = taCenter
                Width = 28
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_ITEM'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_BATCH'
                Title.Alignment = taCenter
                Visible = True
              end>
          end
        end
      end
      object ts2: TTabSheet
        Caption = #1053#1086#1074#1099#1077
        ImageIndex = 1
        object Splitter3: TSplitter
          Left = 361
          Top = 0
          Height = 187
        end
        object DBGrid1: TDBGrid
          Left = 364
          Top = 0
          Width = 405
          Height = 187
          Align = alClient
          DataSource = dmIS.dsC_Oper
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PNAME'
              Title.Alignment = taCenter
              Width = 166
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NAME'
              Title.Alignment = taCenter
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_PROD_OPER'
              Title.Alignment = taCenter
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_OBJECT'
              Title.Alignment = taCenter
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_VERSION'
              Visible = True
            end>
        end
        object p4: TPanel
          Left = 0
          Top = 0
          Width = 361
          Height = 187
          Align = alLeft
          BevelInner = bvLowered
          TabOrder = 1
          object dbn2: TDBNavigator
            Left = 2
            Top = 167
            Width = 357
            Height = 18
            DataSource = dmIS.dsC_PROJECT
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alBottom
            TabOrder = 0
          end
          object DBGrid3: TDBGrid
            Left = 2
            Top = 2
            Width = 357
            Height = 165
            Align = alClient
            DataSource = dmIS.dsC_PROJECT
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = DBGrid3DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'N_ORDER'
                Title.Alignment = taCenter
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NAME'
                Title.Alignment = taCenter
                Width = 228
                Visible = True
              end>
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 67
      Width = 777
      Height = 26
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 2
      object Label1: TLabel
        Left = 9
        Top = 8
        Width = 68
        Height = 13
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':  '
      end
      object ed1: TEdit
        Left = 81
        Top = 2
        Width = 67
        Height = 21
        TabOrder = 0
        OnKeyUp = ed1KeyUp
      end
    end
  end
  object p2: TPanel
    Left = 0
    Top = 311
    Width = 781
    Height = 268
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object pc2: TPageControl
      Left = 2
      Top = 2
      Width = 777
      Height = 264
      ActivePage = ts11
      Align = alClient
      TabOrder = 0
      TabPosition = tpBottom
      object ts11: TTabSheet
        Caption = #1055#1086' '#1087#1072#1088#1090#1080#1103#1084
        object tlb2: TToolBar
          Left = 742
          Top = 0
          Width = 27
          Height = 238
          Align = alRight
          AutoSize = True
          BorderWidth = 1
          Caption = 'tlb2'
          Flat = True
          Images = fmMain.il1
          TabOrder = 0
          object tb23: TToolButton
            Left = 0
            Top = 0
            Hint = #1059#1076#1072#1083#1080#1090#1100
            Caption = 'tb23'
            ImageIndex = 3
            ParentShowHint = False
            ShowHint = True
            OnClick = tb23Click
          end
        end
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 742
          Height = 238
          Align = alClient
          DataSource = dmIS.dsZBill_S
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
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
              Width = 54
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'NAME'
              Title.Alignment = taCenter
              Width = 189
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NAME_O'
              Title.Alignment = taCenter
              Width = 135
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'oldOPER'
              Title.Alignment = taCenter
              Width = 127
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_BATCH'
              Title.Alignment = taCenter
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_STEP'
              Title.Alignment = taCenter
              Width = 37
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'AMOUNT'
              Title.Alignment = taCenter
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FIO'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NTEAM'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_PA_BILL_POS'
              Title.Alignment = taCenter
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'N_ORDER'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ORD_NAME'
              Visible = True
            end>
        end
      end
      object ts12: TTabSheet
        Caption = #1042#1089#1077#1075#1086
        ImageIndex = 1
        object DBGrid4: TDBGrid
          Left = 0
          Top = 0
          Width = 810
          Height = 238
          Align = alClient
          DataSource = dmIS.dsSBill_s
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_OBJECT'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NAME'
              Title.Alignment = taCenter
              Width = 213
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_PROD_OPER'
              Title.Alignment = taCenter
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nOper'
              Title.Alignment = taCenter
              Width = 157
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'oldOper'
              Title.Alignment = taCenter
              Width = 149
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_STEP'
              Title.Alignment = taCenter
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUM'
              Title.Alignment = taCenter
              Width = 87
              Visible = True
            end>
        end
      end
    end
  end
end
