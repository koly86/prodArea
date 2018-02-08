object fmZStore: TfmZStore
  Left = 192
  Top = 114
  Width = 715
  Height = 480
  Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1093' '#1085#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1077' '#1089#1086' '#1089#1082#1083#1072#1076#1072
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
    Top = 266
    Width = 707
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object p3: TPanel
    Left = 0
    Top = 0
    Width = 707
    Height = 266
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 703
      Height = 26
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 0
      DesignSize = (
        703
        26)
      object Label7: TLabel
        Left = 9
        Top = 8
        Width = 68
        Height = 13
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':  '
      end
      object SpeedButton1: TSpeedButton
        Left = 667
        Top = 2
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object ed2: TEdit
        Left = 81
        Top = 2
        Width = 67
        Height = 21
        TabOrder = 0
        OnKeyUp = ed2KeyUp
      end
    end
    object dbg3: TDBGrid
      Left = 2
      Top = 28
      Width = 703
      Height = 218
      Align = alClient
      DataSource = dmIS.dsBState
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
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
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_OBJECT'
          Title.Alignment = taCenter
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Width = 242
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIT1'
          Title.Alignment = taCenter
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_BATCH'
          Title.Alignment = taCenter
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMOUNT'
          Title.Alignment = taCenter
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fAMOUNT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nOPER'
          Title.Alignment = taCenter
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
          Expanded = False
          FieldName = 'ID_PROD_OPER'
          Title.Alignment = taCenter
          Width = 51
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
          FieldName = 'ID_OBJECT_TYPE'
          Title.Alignment = taCenter
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_PA_STATE'
          Title.Alignment = taCenter
          Width = 52
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 246
      Width = 703
      Height = 18
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 1
    end
  end
  object p2: TPanel
    Left = 0
    Top = 269
    Width = 707
    Height = 184
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 0
    object dbg2: TDBGrid
      Left = 2
      Top = 2
      Width = 676
      Height = 180
      Align = alClient
      DataSource = dmIS.dsZBill_S
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbg2DblClick
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
          Width = 234
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nOPER'
          Title.Alignment = taCenter
          Width = 178
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_BATCH'
          Title.Alignment = taCenter
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
          FieldName = 'ID_PA_BILL_POS'
          Title.Alignment = taCenter
          Width = 52
          Visible = True
        end>
    end
    object tlb2: TToolBar
      Left = 678
      Top = 2
      Width = 27
      Height = 180
      Align = alRight
      AutoSize = True
      BorderWidth = 1
      Caption = 'tlb2'
      Flat = True
      Images = fmMain.il1
      TabOrder = 1
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
  end
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 707
    Height = 266
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object tlb1: TToolBar
      Left = 2
      Top = 2
      Width = 703
      Height = 24
      AutoSize = True
      Caption = 'tlb1'
      Flat = True
      Images = fmMain.il1
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 43
        Height = 22
        Caption = '  '#1057#1082#1083#1072#1076': '
      end
      object lcb1: TDBLookupComboBox
        Left = 43
        Top = 0
        Width = 254
        Height = 21
        KeyField = 'ID_P_AREA'
        ListField = 'NAME'
        ListSource = dmIS.dsStores
        TabOrder = 0
        OnCloseUp = lcb1CloseUp
      end
      object ToolButton1: TToolButton
        Left = 297
        Top = 0
        Width = 32
        Caption = 'ToolButton1'
        ImageIndex = 14
        Style = tbsSeparator
      end
      object tb2: TToolButton
        Left = 329
        Top = 0
        Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
        Caption = 'tb2'
        ImageIndex = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = tb2Click
      end
      object ToolButton3: TToolButton
        Left = 352
        Top = 0
        Width = 25
        Caption = 'ToolButton3'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object tb3: TToolButton
        Left = 377
        Top = 0
        Hint = #1059#1076#1072#1083#1077#1085#1080#1077' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
        Caption = 'tb3'
        ImageIndex = 3
        ParentShowHint = False
        ShowHint = True
        OnClick = tb3Click
      end
      object ToolButton5: TToolButton
        Left = 400
        Top = 0
        Width = 25
        Caption = 'ToolButton5'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object tb5: TToolButton
        Left = 425
        Top = 0
        Hint = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077
        Caption = 'tb5'
        ImageIndex = 20
        ParentShowHint = False
        ShowHint = True
        OnClick = tb5Click
      end
      object ToolButton4: TToolButton
        Left = 448
        Top = 0
        Width = 33
        Caption = 'ToolButton4'
        ImageIndex = 10
        Style = tbsSeparator
      end
      object tb6: TToolButton
        Left = 481
        Top = 0
        Hint = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
        Caption = 'tb6'
        ImageIndex = 13
        ParentShowHint = False
        ShowHint = True
        OnClick = tb6Click
      end
    end
    object dbn1: TDBNavigator
      Left = 2
      Top = 246
      Width = 703
      Height = 18
      DataSource = dmIS.dsZBill
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
      Align = alBottom
      TabOrder = 1
    end
    object dbg1: TDBGrid
      Left = 2
      Top = 26
      Width = 703
      Height = 220
      Align = alClient
      DataSource = dmIS.dsZBill
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PA_BILL'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'D_BILL'
          Title.Alignment = taCenter
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'D_FIX'
          Title.Alignment = taCenter
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PA_BILL_TYPE'
          Title.Alignment = taCenter
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMBER'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
end
