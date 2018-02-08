object fmSpec: TfmSpec
  Left = 232
  Top = 121
  Width = 742
  Height = 253
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
  object p2: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 226
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 206
      Width = 620
      Height = 18
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 0
    end
    object dbg3: TDBGrid
      Left = 2
      Top = 2
      Width = 620
      Height = 204
      Align = alClient
      DataSource = dmIS.dsBState
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
  end
  object p1: TPanel
    Left = 624
    Top = 0
    Width = 110
    Height = 226
    Align = alRight
    BevelInner = bvLowered
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 62
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
    end
    object ed2: TEdit
      Left = 8
      Top = 40
      Width = 89
      Height = 21
      TabOrder = 0
      OnKeyUp = ed2KeyUp
    end
    object bb2: TBitBtn
      Left = 8
      Top = 83
      Width = 89
      Height = 25
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100
      TabOrder = 1
      OnClick = bb2Click
    end
  end
end
