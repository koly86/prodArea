object fmZBills_R: TfmZBills_R
  Left = 273
  Top = 160
  Width = 712
  Height = 477
  Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1093
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 228
    Width = 704
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object p3: TPanel
    Left = 0
    Top = 231
    Width = 704
    Height = 200
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 3
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 700
      Height = 26
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 0
      DesignSize = (
        700
        26)
      object Label7: TLabel
        Left = 9
        Top = 8
        Width = 68
        Height = 13
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':  '
      end
      object SpeedButton1: TSpeedButton
        Left = 664
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
      Width = 700
      Height = 152
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
      Top = 180
      Width = 700
      Height = 18
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 1
    end
  end
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 704
    Height = 228
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object tlb1: TToolBar
      Left = 2
      Top = 2
      Width = 700
      Height = 24
      AutoSize = True
      Caption = 'tlb1'
      Flat = True
      Images = fmMain.il1
      TabOrder = 0
      object tb2: TToolButton
        Left = 0
        Top = 0
        Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
        Caption = 'tb2'
        ImageIndex = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = tb2Click
      end
      object ToolButton3: TToolButton
        Left = 23
        Top = 0
        Width = 43
        Caption = 'ToolButton3'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object tb3: TToolButton
        Left = 66
        Top = 0
        Hint = #1059#1076#1072#1083#1077#1085#1080#1077' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
        Caption = 'tb3'
        ImageIndex = 3
        ParentShowHint = False
        ShowHint = True
        OnClick = tb3Click
      end
      object ToolButton5: TToolButton
        Left = 89
        Top = 0
        Width = 44
        Caption = 'ToolButton5'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object tb5: TToolButton
        Left = 133
        Top = 0
        Hint = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077'/'#1057#1085#1103#1090#1080#1077' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103
        Caption = 'tb5'
        ImageIndex = 20
        ParentShowHint = False
        ShowHint = True
        OnClick = tb5Click
      end
      object ToolButton4: TToolButton
        Left = 156
        Top = 0
        Width = 57
        Caption = 'ToolButton4'
        ImageIndex = 10
        Style = tbsSeparator
      end
      object tb6: TToolButton
        Left = 213
        Top = 0
        Hint = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
        Caption = 'tb6'
        ImageIndex = 13
        ParentShowHint = False
        ShowHint = True
        OnClick = tb6Click
      end
      object ToolButton1: TToolButton
        Left = 236
        Top = 0
        Caption = 'ToolButton1'
        ImageIndex = 32
      end
    end
    object dbn1: TDBNavigator
      Left = 2
      Top = 208
      Width = 700
      Height = 18
      DataSource = dmIS.dsZBill
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
      Align = alBottom
      TabOrder = 1
    end
    object dbg1: TDBGridEh
      Left = 2
      Top = 26
      Width = 700
      Height = 182
      Align = alClient
      DataSource = dmIS.dsZBill
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      SumList.Active = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnGetCellParams = dbg1GetCellParams
      OnKeyUp = dbg1KeyUp
      Columns = <
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
          FieldName = 'D_CONFIRM'
          Footers = <>
          Width = 87
        end
        item
          EditButtons = <>
          FieldName = 'D_FIX'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'D_GET'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'nDES'
          Footers = <>
          Width = 192
        end
        item
          EditButtons = <>
          FieldName = 'PA_BILL_TYPE'
          Footers = <>
          Width = 29
        end
        item
          EditButtons = <>
          FieldName = 'ID_PA_BILL'
          Footers = <>
        end>
    end
  end
  object stb1: TStatusBar
    Left = 0
    Top = 431
    Width = 704
    Height = 19
    Panels = <>
  end
  object p2: TPanel
    Left = 0
    Top = 231
    Width = 704
    Height = 200
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object dbg2: TDBGrid
      Left = 2
      Top = 2
      Width = 673
      Height = 196
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
          FieldName = 'ID_BATCH'
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
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Width = 230
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME_O'
          Title.Alignment = taCenter
          Width = 170
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
          FieldName = 'N_ORDER'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORD_NAME'
          Title.Alignment = taCenter
          Width = 262
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
          FieldName = 'ID_PROD_OPER'
          Title.Alignment = taCenter
          Width = 54
          Visible = True
        end>
    end
    object tlb2: TToolBar
      Left = 675
      Top = 2
      Width = 27
      Height = 196
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
  object qValN: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      '')
    Left = 96
    Top = 104
  end
end
