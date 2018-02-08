object fmBill_P: TfmBill_P
  Left = 192
  Top = 114
  Width = 727
  Height = 480
  Caption = #1055#1088#1080#1093#1086#1076#1085#1099#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077
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
    Width = 719
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object p2: TPanel
    Left = 0
    Top = 269
    Width = 719
    Height = 184
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 0
    object dbg2: TDBGrid
      Left = 2
      Top = 2
      Width = 715
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
          Width = 172
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME_O'
          Title.Alignment = taCenter
          Width = 151
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
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 719
    Height = 266
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object tlb1: TToolBar
      Left = 2
      Top = 2
      Width = 715
      Height = 24
      AutoSize = True
      Caption = 'tlb1'
      Flat = True
      Images = fmMain.il1
      TabOrder = 0
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
        Width = 99
        Height = 22
        Date = 38951.696894710650000000
        Time = 38951.696894710650000000
        TabOrder = 1
        OnCloseUp = dtp2CloseUp
      end
      object ToolButton4: TToolButton
        Left = 241
        Top = 0
        Width = 58
        Caption = 'ToolButton4'
        ImageIndex = 10
        Style = tbsSeparator
      end
      object tb6: TToolButton
        Left = 299
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
      Width = 715
      Height = 18
      DataSource = dmIS.dsZBill
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 1
    end
    object dbg1: TDBGrid
      Left = 2
      Top = 26
      Width = 715
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
          FieldName = 'D_GET'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nPA'
          Title.Alignment = taCenter
          Width = 185
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
          Width = 87
          Visible = True
        end>
    end
  end
end
