object fmEqp: TfmEqp
  Left = 289
  Top = 163
  Width = 644
  Height = 480
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 636
    Height = 34
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 80
      Height = 13
      Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
    end
    object lcbEqp: TDBLookupComboboxEh
      Left = 96
      Top = 8
      Width = 361
      Height = 21
      DropDownBox.Rows = 30
      DropDownBox.Sizable = True
      EditButtons = <>
      KeyField = 'ID_P_AREA'
      ListField = 'NAME'
      ListSource = dmIS.dsPA
      TabOrder = 0
      Visible = True
      OnClick = lcbEqpClick
      OnCloseUp = lcbEqpCloseUp
    end
  end
  object p1: TPanel
    Left = 0
    Top = 34
    Width = 636
    Height = 412
    Align = alClient
    Caption = 'p1'
    TabOrder = 1
    object dbg1: TDBGridEh
      Left = 1
      Top = 1
      Width = 634
      Height = 410
      Align = alClient
      DataSource = dmIS.dsEqp
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnDblClick = dbg1DblClick
      OnSortMarkingChanged = dbg1SortMarkingChanged
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ID_EQUIPMENT'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'INV_NUMBER'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'PL_NAME'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'SHOTNAME'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 198
        end
        item
          EditButtons = <>
          FieldName = 'NAME'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 322
        end
        item
          EditButtons = <>
          FieldName = 'ID_AREA'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end>
    end
  end
end
