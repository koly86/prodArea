object fmJState: TfmJState
  Left = 229
  Top = 114
  Width = 795
  Height = 480
  Caption = #1046#1091#1088#1085#1072#1083' '#1089#1086#1089#1090#1086#1103#1085#1080#1103' '#1091#1095#1072#1089#1090#1082#1072
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
    Top = 220
    Width = 787
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 787
    Height = 29
    AutoSize = True
    Caption = 'tlb1'
    Flat = True
    Images = fmMain.il1
    TabOrder = 0
  end
  object p1: TPanel
    Left = 0
    Top = 29
    Width = 787
    Height = 191
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object dbn1: TDBNavigator
      Left = 2
      Top = 171
      Width = 783
      Height = 18
      DataSource = dmIS.dsJHead
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 0
    end
    object dbg1: TDBGrid
      Left = 2
      Top = 2
      Width = 783
      Height = 169
      Align = alClient
      DataSource = dmIS.dsJHead
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
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P_NAME'
          Title.Alignment = taCenter
          Width = 229
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_OBJECT'
          Title.Alignment = taCenter
          Width = 54
          Visible = True
        end>
    end
  end
  object p2: TPanel
    Left = 0
    Top = 223
    Width = 787
    Height = 230
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object dbn2: TDBNavigator
      Left = 2
      Top = 210
      Width = 783
      Height = 18
      DataSource = dmIS.dsJState
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 0
    end
    object dbg2: TDBGrid
      Left = 2
      Top = 2
      Width = 783
      Height = 208
      Align = alClient
      DataSource = dmIS.dsJState
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PROD_OPER'
          Title.Alignment = taCenter
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
          FieldName = 'ID_BATCH'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DFIX'
          Title.Alignment = taCenter
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC'
          Title.Alignment = taCenter
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXP'
          Title.Alignment = taCenter
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REST'
          Title.Alignment = taCenter
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PA_BILL_TYPE'
          Title.Alignment = taCenter
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_PA_BILL'
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end>
    end
  end
end
