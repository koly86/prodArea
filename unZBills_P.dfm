object fmZBills_P: TfmZBills_P
  Left = 258
  Top = 172
  Width = 696
  Height = 480
  Caption = #1055#1088#1080#1093#1086#1076
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
    Width = 688
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 266
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object tlb1: TToolBar
      Left = 2
      Top = 2
      Width = 684
      Height = 24
      AutoSize = True
      Caption = 'tlb1'
      Flat = True
      Images = fmMain.il1
      TabOrder = 0
      object tb5: TToolButton
        Left = 0
        Top = 0
        Hint = #1055#1086#1076#1096#1080#1074#1082#1072
        Caption = 'tb5'
        ImageIndex = 8
        ParentShowHint = False
        ShowHint = True
        OnClick = tb5Click
      end
      object ToolButton4: TToolButton
        Left = 23
        Top = 0
        Width = 58
        Caption = 'ToolButton4'
        ImageIndex = 10
        Style = tbsSeparator
      end
      object tb6: TToolButton
        Left = 81
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
      Width = 684
      Height = 18
      DataSource = dmIS.dsZBill
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 1
    end
    object dbg1: TDBGrid
      Left = 2
      Top = 26
      Width = 684
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
          FieldName = 'nPA'
          Title.Alignment = taCenter
          Width = 246
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
  object p2: TPanel
    Left = 0
    Top = 269
    Width = 688
    Height = 184
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object dbg2: TDBGrid
      Left = 2
      Top = 2
      Width = 657
      Height = 180
      Align = alClient
      DataSource = dmIS.dsZBill_S
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
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
          Width = 234
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME_O'
          Title.Alignment = taCenter
          Width = 178
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORD_NAME'
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
      Left = 659
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
      object tb22: TToolButton
        Left = 0
        Top = 0
        Hint = #1048#1079#1084#1077#1085#1080#1090#1100
        Caption = 'tb22'
        ImageIndex = 2
        ParentShowHint = False
        Wrap = True
        ShowHint = True
        OnClick = tb22Click
      end
    end
  end
end
