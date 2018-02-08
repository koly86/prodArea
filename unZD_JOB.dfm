object fmZD_JOB: TfmZD_JOB
  Left = 248
  Top = 114
  Width = 821
  Height = 480
  Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1089#1091#1090#1086#1095#1085#1086#1075#1086' '#1079#1072#1076#1072#1085#1080#1103
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
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 813
    Height = 24
    AutoSize = True
    Flat = True
    Images = fmMain.il1
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 51
      Height = 22
      Caption = ' '#1053#1072' '#1076#1072#1090#1091':  '
    end
    object dtp1: TDateTimePicker
      Left = 51
      Top = 0
      Width = 97
      Height = 22
      Date = 38961.596051423620000000
      Time = 38961.596051423620000000
      DateFormat = dfLong
      TabOrder = 0
      OnCloseUp = dtp1CloseUp
    end
    object ToolButton1: TToolButton
      Left = 148
      Top = 0
      Width = 21
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object tb1: TToolButton
      Left = 169
      Top = 0
      Hint = #1055#1077#1088#1089#1086#1085#1072#1083#1100#1085#1086
      Caption = 'tb1'
      Down = True
      Grouped = True
      ImageIndex = 25
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
      OnClick = tb1Click
    end
    object tb2: TToolButton
      Left = 192
      Top = 0
      Hint = #1055#1086' '#1073#1088#1080#1075#1072#1076#1072#1084
      Caption = 'tb2'
      Grouped = True
      ImageIndex = 26
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
      OnClick = tb1Click
    end
    object ToolButton4: TToolButton
      Left = 215
      Top = 0
      Width = 42
      Caption = 'ToolButton4'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object tb3: TToolButton
      Left = 257
      Top = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Caption = 'tb3'
      ImageIndex = 13
      ParentShowHint = False
      ShowHint = True
    end
  end
  object p1: TPanel
    Left = 0
    Top = 24
    Width = 813
    Height = 429
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object dbn1: TDBNavigator
      Left = 2
      Top = 409
      Width = 809
      Height = 18
      DataSource = dmIS.dsZD_JOB
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alBottom
      TabOrder = 0
    end
    object dbg1: TDBGrid
      Left = 2
      Top = 2
      Width = 809
      Height = 407
      Align = alClient
      DataSource = dmIS.dsZD_JOB
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'N_ORDER'
          Title.Alignment = taCenter
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBJ_NAME'
          Title.Alignment = taCenter
          Width = 183
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ONAME'
          Title.Alignment = taCenter
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P_AMOUNT'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'F_AMOUNT'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P_WORK_TIME'
          Title.Alignment = taCenter
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'F_TIME'
          Title.Alignment = taCenter
          Width = 53
          Visible = True
        end>
    end
  end
end
