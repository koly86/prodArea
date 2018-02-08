object fmJob: TfmJob
  Left = 210
  Top = 114
  Width = 733
  Height = 480
  Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077' '#1088#1072#1073#1086#1090#1099
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
    Top = 252
    Width = 725
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object p1: TPanel
    Left = 0
    Top = 24
    Width = 725
    Height = 228
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object dbg1: TDBGrid
      Left = 2
      Top = 2
      Width = 721
      Height = 224
      Align = alClient
      DataSource = dmIS.dsZBill
      TabOrder = 0
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
          Width = 119
          Visible = True
        end>
    end
  end
  object p2: TPanel
    Left = 0
    Top = 255
    Width = 725
    Height = 198
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 2
      Top = 2
      Width = 721
      Height = 194
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
          FieldName = 'ID_OBJECT'
          Title.Alignment = taCenter
          Width = 59
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
          FieldName = 'nOPER'
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
          FieldName = 'ID_PA_BILL_POS'
          Title.Alignment = taCenter
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FIO'
          Title.Alignment = taCenter
          Width = 316
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NTEAM'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 725
    Height = 24
    AutoSize = True
    Caption = 'tlb1'
    Flat = True
    Images = fmMain.il1
    TabOrder = 2
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 19
      Height = 22
      Caption = '  C  '
    end
    object dtp1: TDateTimePicker
      Left = 19
      Top = 0
      Width = 94
      Height = 22
      Date = 38951.696537719910000000
      Time = 38951.696537719910000000
      TabOrder = 0
      OnCloseUp = dtp1CloseUp
    end
    object Label2: TLabel
      Left = 113
      Top = 0
      Width = 29
      Height = 22
      Caption = '   '#1055#1086'  '
    end
    object dtp2: TDateTimePicker
      Left = 142
      Top = 0
      Width = 91
      Height = 22
      Date = 38951.696894710650000000
      Time = 38951.696894710650000000
      TabOrder = 1
      OnCloseUp = dtp1CloseUp
    end
    object ToolButton1: TToolButton
      Left = 233
      Top = 0
      Width = 65
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object tb1: TToolButton
      Left = 298
      Top = 0
      Hint = #1054#1090#1095#1077#1090
      Caption = 'tb1'
      Down = True
      Grouped = True
      ImageIndex = 7
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
      OnClick = tb1Click
    end
    object tb2: TToolButton
      Left = 321
      Top = 0
      Hint = #1055#1077#1088#1089#1086#1085#1072#1083#1100#1085#1086
      Caption = 'tb2'
      Grouped = True
      ImageIndex = 25
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
      OnClick = tb1Click
    end
    object tb3: TToolButton
      Left = 344
      Top = 0
      Hint = #1055#1086' '#1073#1088#1080#1075#1072#1076#1072#1084
      Caption = 'tb3'
      Grouped = True
      ImageIndex = 26
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
      OnClick = tb1Click
    end
    object tb4: TToolButton
      Left = 367
      Top = 0
      Hint = #1042#1089#1077#1075#1086
      Caption = 'tb4'
      Grouped = True
      ImageIndex = 10
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
    end
  end
end
