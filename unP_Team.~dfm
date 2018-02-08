object fmP_Team: TfmP_Team
  Left = 545
  Top = 319
  Width = 702
  Height = 480
  Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1073#1088#1080#1075#1072#1076
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
    Left = 331
    Top = 0
    Height = 442
    Align = alRight
  end
  object p2: TPanel
    Left = 334
    Top = 0
    Width = 352
    Height = 442
    Align = alRight
    BevelInner = bvLowered
    TabOrder = 0
    object p4: TPanel
      Left = 2
      Top = 2
      Width = 348
      Height = 79
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 56
        Width = 91
        Height = 13
        Caption = #1053#1072#1081#1090#1080' '#1087#1086' '#1060'.'#1048'.'#1054'. :'
      end
      object lb2: TLabel
        Left = 16
        Top = 32
        Width = 51
        Height = 13
        Caption = #1041#1088#1080#1075#1072#1076#1080#1088':'
      end
      object lcb1: TDBLookupComboBox
        Left = 16
        Top = 4
        Width = 321
        Height = 21
        DropDownRows = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'ID_TEAM'
        ListField = 'NAME'
        ListSource = dmIS.dsTeams
        ParentFont = False
        TabOrder = 0
        OnClick = lcb1Click
      end
      object ed2: TEdit
        Left = 128
        Top = 48
        Width = 169
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyUp = ed2KeyUp
      end
    end
    object dbn2: TDBNavigator
      Left = 2
      Top = 422
      Width = 348
      Height = 18
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 1
    end
    object dbg2: TDBGrid
      Left = 2
      Top = 81
      Width = 348
      Height = 341
      Align = alClient
      DataSource = dmIS.dsT_Pers
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'FIO'
          Title.Alignment = taCenter
          Width = 246
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nPost'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_P'
          Title.Alignment = taCenter
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDPOST'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 331
    Height = 442
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object p3: TPanel
      Left = 299
      Top = 65
      Width = 30
      Height = 375
      Align = alRight
      BevelInner = bvLowered
      TabOrder = 0
      object sb1: TSpeedButton
        Left = 4
        Top = 120
        Width = 23
        Height = 22
        Hint = #1042#1082#1083#1102#1095#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1093' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074' '#1074' '#1089#1086#1089#1090#1072#1074' '#1073#1088#1080#1075#1072#1076#1099
        Caption = '>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = sb1Click
      end
      object sb2: TSpeedButton
        Left = 4
        Top = 144
        Width = 23
        Height = 22
        Hint = #1048#1089#1082#1083#1102#1095#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1093' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074' '#1080#1079' '#1089#1086#1089#1090#1072#1074#1072' '#1073#1088#1080#1075#1072#1076#1099
        Caption = '<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = sb2Click
      end
      object sb4: TSpeedButton
        Left = 4
        Top = 232
        Width = 23
        Height = 22
        Hint = #1059#1076#1072#1083#1080#1090#1100' '#1080#1079' '#1073#1088#1080#1075#1072#1076#1099' '#1074#1089#1077#1093' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
        Caption = '<<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = sb4Click
      end
      object sb3: TSpeedButton
        Left = 4
        Top = 200
        Width = 23
        Height = 22
        Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1073#1088#1080#1075#1072#1076#1091' '#1074#1089#1077#1093' '#1089#1074#1086#1073#1086#1076#1085#1099#1093' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
        Caption = '>>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = sb3Click
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 327
      Height = 63
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 1
      object Label2: TLabel
        Left = 16
        Top = 40
        Width = 91
        Height = 13
        Caption = #1053#1072#1081#1090#1080' '#1087#1086' '#1060'.'#1048'.'#1054'. :'
      end
      object lb1: TLabel
        Left = 16
        Top = 8
        Width = 200
        Height = 13
        Caption = #1053#1077' '#1079#1072#1085#1103#1090#1099#1081' '#1074' '#1073#1088#1080#1075#1072#1076#1072#1093' '#1087#1077#1088#1089#1086#1085#1072#1083
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ed1: TEdit
        Left = 128
        Top = 32
        Width = 169
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyPress = ed1KeyPress
        OnKeyUp = ed1KeyUp
      end
    end
    object p5: TPanel
      Left = 2
      Top = 65
      Width = 297
      Height = 375
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 2
      object dbn1: TDBNavigator
        Left = 2
        Top = 355
        Width = 293
        Height = 18
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alBottom
        TabOrder = 0
      end
      object dbg1: TDBGrid
        Left = 2
        Top = 2
        Width = 293
        Height = 353
        Align = alClient
        DataSource = dmIS.dsF_Pers
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'FIO'
            Title.Alignment = taCenter
            Width = 230
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nPost'
            Title.Alignment = taCenter
            Width = 217
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_P'
            Title.Alignment = taCenter
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDPOST'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
  end
end
