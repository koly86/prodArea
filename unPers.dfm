object fmPers: TfmPers
  Left = 491
  Top = 264
  Width = 729
  Height = 480
  Caption = #1055#1077#1088#1089#1086#1085#1072#1083
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 713
    Height = 24
    AutoSize = True
    Caption = 'tlb1'
    Flat = True
    Images = fmMain.il1
    TabOrder = 0
    DesignSize = (
      713
      22)
    object ToolButton2: TToolButton
      Left = 0
      Top = 0
      Width = 50
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object Label3: TLabel
      Left = 50
      Top = 0
      Width = 18
      Height = 22
      Caption = #1043#1086#1076
    end
    object edY: TEdit
      Left = 68
      Top = 0
      Width = 56
      Height = 22
      TabOrder = 2
      Text = '2013'
      OnKeyUp = edYKeyUp
    end
    object ud1: TUpDown
      Left = 124
      Top = 0
      Width = 15
      Height = 22
      Associate = edY
      Min = 1900
      Max = 3000
      Position = 2013
      TabOrder = 3
      Thousands = False
    end
    object Label1: TLabel
      Left = 139
      Top = 0
      Width = 33
      Height = 22
      Caption = #1052#1077#1089#1103#1094
    end
    object cb1: TComboBox
      Left = 172
      Top = 0
      Width = 126
      Height = 21
      DropDownCount = 12
      ItemHeight = 13
      TabOrder = 1
      Text = #1052#1072#1081
      OnCloseUp = cb1CloseUp
      Items.Strings = (
        #1071#1085#1074#1072#1088#1100
        #1060#1077#1074#1088#1072#1083#1100
        #1052#1072#1088#1090
        #1040#1087#1088#1077#1083#1100
        #1052#1072#1081
        #1048#1102#1085#1100
        #1048#1102#1083#1100
        #1040#1074#1075#1091#1089#1090
        #1057#1077#1085#1090#1103#1073#1088#1100
        #1054#1082#1090#1103#1073#1088#1100
        #1053#1086#1103#1073#1088#1100
        #1044#1077#1082#1072#1073#1088#1100)
    end
    object Label2: TLabel
      Left = 298
      Top = 0
      Width = 55
      Height = 22
      Caption = '    '#1053#1072#1081#1090#1080':   '
    end
    object ed1: TEdit
      Left = 353
      Top = 0
      Width = 116
      Height = 22
      Hint = #1054#1073#1088#1072#1079#1077#1094' '#1087#1086#1080#1089#1082#1072
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = #1042#1074#1077#1076#1080#1090#1077' '#1060#1072#1084#1080#1083#1080#1102
      OnClick = ed1Click
      OnKeyUp = ed1KeyUp
    end
  end
  object p1: TPanel
    Left = 0
    Top = 24
    Width = 713
    Height = 418
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object dbn1: TDBNavigator
      Left = 2
      Top = 398
      Width = 709
      Height = 18
      DataSource = dmIS.dsPers
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 0
    end
    object dbg1: TDBGridEh
      Left = 2
      Top = 2
      Width = 709
      Height = 396
      Align = alClient
      DataSource = dmIS.dsPers
      Flat = True
      FooterColor = clMoneyGreen
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ID_P'
          Footers = <
            item
              Value = #1042#1089#1077#1075#1086':'
              ValueType = fvtStaticText
            end>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'FIO'
          Footer.ValueType = fvtCount
          Footers = <
            item
              ValueType = fvtCount
            end>
          Title.Alignment = taCenter
          Width = 308
        end
        item
          EditButtons = <>
          FieldName = 'NAME'
          Footers = <>
          Title.Alignment = taCenter
          Width = 253
        end
        item
          EditButtons = <>
          FieldName = 'IS_WORKER'
          Footers = <>
        end>
    end
  end
end
