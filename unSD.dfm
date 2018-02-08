object fmSD: TfmSD
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Caption = 'fmSD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 245
    Width = 688
    Height = 3
    Cursor = crVSplit
    Align = alBottom
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
    object tb1: TToolButton
      Left = 0
      Top = 0
      Hint = #1053#1086#1074#1072#1103' '#1074#1099#1073#1086#1088#1082#1072
      Caption = 'tb1'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
    end
  end
  object p1: TPanel
    Left = 0
    Top = 24
    Width = 688
    Height = 221
    Align = alClient
    AutoSize = True
    BevelInner = bvLowered
    TabOrder = 1
    object dbn1: TDBNavigator
      Left = 2
      Top = 201
      Width = 684
      Height = 18
      DataSource = dmIS.dsBARG
      Align = alBottom
      TabOrder = 0
    end
    object dbg1: TDBGrid
      Left = 2
      Top = 2
      Width = 684
      Height = 199
      Align = alClient
      DataSource = dmIS.dsBARG
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_BARGAIN'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_AREA'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'D_BASIC'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'D_CONFIRM'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CONFIRM'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'D_FIX'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_FIX'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nAREA'
          Title.Alignment = taCenter
          Width = 296
          Visible = True
        end>
    end
  end
  object p2: TPanel
    Left = 0
    Top = 248
    Width = 688
    Height = 198
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
  end
end
