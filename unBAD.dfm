object fmBAD: TfmBAD
  Left = 243
  Top = 126
  Width = 696
  Height = 480
  Caption = #1041#1088#1072#1082' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072' ('#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074')'
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
    Top = 237
    Width = 688
    Height = 2
    Cursor = crVSplit
    Align = alBottom
  end
  object p3: TPanel
    Left = 0
    Top = 24
    Width = 688
    Height = 213
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 4
    object SpeedButton1: TSpeedButton
      Left = 648
      Top = 8
      Width = 23
      Height = 22
      Hint = #1047#1072#1082#1088#1099#1090#1100
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 38
      Height = 13
      Caption = #1056#1077#1075'. '#8470':'
    end
    object dbt1: TDBText
      Left = 48
      Top = 8
      Width = 65
      Height = 17
      DataField = 'ID_PA_BILL'
      DataSource = dmIS.dsZBill
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 48
      Width = 29
      Height = 13
      Caption = #1044#1072#1090#1072':'
    end
    object dtp1: TDBDateTimeEditEh
      Left = 56
      Top = 40
      Width = 145
      Height = 21
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 0
      Visible = True
    end
  end
  object stb1: TStatusBar
    Left = 0
    Top = 434
    Width = 688
    Height = 19
    Panels = <>
  end
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 688
    Height = 24
    AutoSize = True
    Caption = 'tlb1'
    Flat = True
    Images = fmMain.il1
    TabOrder = 0
    object ToolButton2: TToolButton
      Left = 0
      Top = 0
      Width = 33
      Caption = 'ToolButton2'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object tb5: TToolButton
      Left = 33
      Top = 0
      Hint = #1055#1086#1076#1096#1080#1074#1082#1072
      Caption = 'tb5'
      ImageIndex = 8
      ParentShowHint = False
      ShowHint = True
      OnClick = tb5Click
    end
    object ToolButton3: TToolButton
      Left = 56
      Top = 0
      Width = 57
      Caption = 'ToolButton3'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object tb6: TToolButton
      Left = 113
      Top = 0
      Caption = 'tb6'
      ImageIndex = 13
    end
  end
  object p1: TPanel
    Left = 0
    Top = 24
    Width = 688
    Height = 213
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object dbn1: TDBNavigator
      Left = 2
      Top = 193
      Width = 684
      Height = 18
      DataSource = dmIS.dsZBAD
      Align = alBottom
      TabOrder = 0
    end
    object dbg1: TDBGrid
      Left = 2
      Top = 2
      Width = 684
      Height = 191
      Align = alClient
      DataSource = dmIS.dsZBAD
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PA_BILL'
          ReadOnly = True
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'D_BILL'
          Title.Alignment = taCenter
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
  object p2: TPanel
    Left = 0
    Top = 239
    Width = 688
    Height = 195
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object dbn2: TDBNavigator
      Left = 2
      Top = 175
      Width = 684
      Height = 18
      DataSource = dmIS.dsZB_S
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 0
    end
    object dbg2: TDBGrid
      Left = 2
      Top = 2
      Width = 657
      Height = 173
      Align = alClient
      DataSource = dmIS.dsZB_S
      TabOrder = 1
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
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_OBJECT'
          Title.Alignment = taCenter
          Width = 58
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
          FieldName = 'nOper'
          Title.Alignment = taCenter
          Width = 141
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
          FieldName = 'ID_BATCH'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_PROD_OPER'
          Title.Alignment = taCenter
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
          FieldName = 'ID_PROJECT'
          Title.Alignment = taCenter
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PR_NAME'
          Title.Alignment = taCenter
          Width = 326
          Visible = True
        end>
    end
    object tlb2: TToolBar
      Left = 659
      Top = 2
      Width = 27
      Height = 173
      Align = alRight
      AutoSize = True
      BorderWidth = 1
      Caption = 'tlb2'
      Flat = True
      Images = fmMain.il1
      TabOrder = 2
      object tb21: TToolButton
        Left = 0
        Top = 0
        Hint = #1044#1086#1073#1072#1074#1080#1090#1100
        Caption = 'tb21'
        ImageIndex = 1
        ParentShowHint = False
        Wrap = True
        ShowHint = True
        OnClick = tb21Click
      end
      object tb22: TToolButton
        Left = 0
        Top = 22
        Hint = #1048#1079#1084#1077#1085#1080#1090#1100
        Caption = 'tb22'
        ImageIndex = 2
        ParentShowHint = False
        Wrap = True
        ShowHint = True
        OnClick = tb22Click
      end
      object tb23: TToolButton
        Left = 0
        Top = 44
        Hint = #1059#1076#1072#1083#1080#1090#1100
        Caption = 'tb23'
        ImageIndex = 3
        ParentShowHint = False
        ShowHint = True
        OnClick = tb23Click
      end
    end
  end
end
