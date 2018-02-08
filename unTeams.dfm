object fmTeams: TfmTeams
  Left = 290
  Top = 121
  Width = 621
  Height = 408
  Caption = #1041#1088#1080#1075#1072#1076#1099
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
  object pc1: TPageControl
    Left = 0
    Top = 0
    Width = 613
    Height = 381
    ActivePage = ts3
    Align = alClient
    MultiLine = True
    TabOrder = 0
    TabPosition = tpBottom
    OnChange = pc1Change
    object ts1: TTabSheet
      Caption = #1057#1087#1080#1089#1086#1082' '#1073#1088#1080#1075#1072#1076
      object tlb1: TToolBar
        Left = 0
        Top = 0
        Width = 605
        Height = 24
        AutoSize = True
        Caption = 'tlb1'
        Flat = True
        Images = fmMain.il1
        TabOrder = 0
        object tb1: TToolButton
          Left = 0
          Top = 0
          Hint = #1053#1086#1074#1072#1103' '#1073#1088#1080#1075#1072#1076#1072
          Caption = 'tb1'
          ImageIndex = 1
          ParentShowHint = False
          ShowHint = True
          OnClick = tb1Click
        end
        object tb2: TToolButton
          Left = 23
          Top = 0
          Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
          Caption = 'tb2'
          ImageIndex = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = tb2Click
        end
        object ToolButton1: TToolButton
          Left = 46
          Top = 0
          Width = 51
          Caption = 'ToolButton1'
          ImageIndex = 3
          Style = tbsSeparator
        end
        object tb4: TToolButton
          Left = 97
          Top = 0
          Hint = #1059#1076#1072#1083#1077#1085#1080#1077' '#1073#1088#1080#1075#1072#1076#1099
          Caption = 'tb4'
          ImageIndex = 3
          ParentShowHint = False
          ShowHint = True
          OnClick = tb4Click
        end
        object ToolButton3: TToolButton
          Left = 120
          Top = 0
          Width = 65
          Caption = 'ToolButton3'
          ImageIndex = 4
          Style = tbsSeparator
        end
        object cb1: TCheckBox
          Left = 185
          Top = 0
          Width = 136
          Height = 22
          Caption = #1058#1086#1083#1100#1082#1086' '#1076#1077#1081#1089#1090#1074#1091#1102#1097#1080#1077
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = cb1Click
        end
      end
      object dbn1: TDBNavigator
        Left = 0
        Top = 337
        Width = 605
        Height = 18
        DataSource = dmIS.dsOper
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alBottom
        TabOrder = 1
      end
      object dbg1: TDBGrid
        Left = 0
        Top = 24
        Width = 605
        Height = 313
        Align = alClient
        DataSource = dmIS.dsTeams
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_TEAM'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME'
            Title.Alignment = taCenter
            Width = 160
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rFIO'
            Title.Alignment = taCenter
            Width = 212
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nWSHIFT'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nCONTR_TYPE'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D_OPEN'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D_CLOSE'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
    object ts2: TTabSheet
      Caption = #1050#1072#1088#1090#1086#1095#1082#1072
      ImageIndex = 1
      DesignSize = (
        605
        355)
      object Label2: TLabel
        Left = 8
        Top = 8
        Width = 68
        Height = 13
        Caption = #1050#1086#1076' '#1073#1088#1080#1075#1072#1076#1099':'
      end
      object Label3: TLabel
        Left = 8
        Top = 40
        Width = 125
        Height = 13
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1073#1088#1080#1075#1072#1076#1099':'
      end
      object lb1: TLabel
        Left = 96
        Top = 8
        Width = 14
        Height = 13
        Caption = 'lb1'
      end
      object Label6: TLabel
        Left = 296
        Top = 72
        Width = 51
        Height = 13
        Caption = #1041#1088#1080#1075#1072#1076#1080#1088':'
      end
      object Label1: TLabel
        Left = 8
        Top = 72
        Width = 47
        Height = 13
        Caption = #1054#1090#1082#1088#1099#1090#1072':'
      end
      object Label4: TLabel
        Left = 8
        Top = 112
        Width = 81
        Height = 13
        Caption = #1043#1088#1072#1092#1080#1082' '#1088#1072#1073#1086#1090#1099':'
      end
      object Label5: TLabel
        Left = 8
        Top = 144
        Width = 67
        Height = 13
        Caption = #1042#1080#1076' '#1087#1086#1076#1088#1103#1076#1072':'
      end
      object Label7: TLabel
        Left = 8
        Top = 176
        Width = 73
        Height = 13
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081':'
      end
      object Bevel1: TBevel
        Left = 8
        Top = 255
        Width = 579
        Height = 9
        Anchors = [akLeft, akRight, akBottom]
        Shape = bsTopLine
      end
      object Label8: TLabel
        Left = 8
        Top = 272
        Width = 47
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = #1047#1072#1082#1088#1099#1090#1072':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object p3: TPanel
        Left = 0
        Top = 314
        Width = 605
        Height = 41
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 0
        DesignSize = (
          605
          41)
        object bb1: TBitBtn
          Left = 89
          Top = 8
          Width = 99
          Height = 25
          Hint = #1047#1072#1087#1080#1089#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
          Anchors = [akLeft, akBottom]
          Caption = #1047#1072#1087#1080#1089#1072#1090#1100
          Default = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = bb1Click
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
        end
        object bb2: TBitBtn
          Left = 416
          Top = 8
          Width = 99
          Height = 25
          Hint = #1054#1090#1084#1077#1085#1080#1090#1100
          Anchors = [akRight, akBottom]
          Cancel = True
          Caption = #1054#1090#1084#1077#1085#1072
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bb2Click
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333000033338833333333333333333F333333333333
            0000333911833333983333333388F333333F3333000033391118333911833333
            38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
            911118111118333338F3338F833338F3000033333911111111833333338F3338
            3333F8330000333333911111183333333338F333333F83330000333333311111
            8333333333338F3333383333000033333339111183333333333338F333833333
            00003333339111118333333333333833338F3333000033333911181118333333
            33338333338F333300003333911183911183333333383338F338F33300003333
            9118333911183333338F33838F338F33000033333913333391113333338FF833
            38F338F300003333333333333919333333388333338FFF830000333333333333
            3333333333333333333888330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
        end
      end
      object ed1: TEdit
        Left = 160
        Top = 32
        Width = 385
        Height = 21
        TabOrder = 1
      end
      object lcb1: TDBLookupComboBox
        Left = 376
        Top = 64
        Width = 281
        Height = 21
        DropDownRows = 25
        KeyField = 'ID_P'
        ListField = 'FIO'
        ListSource = dmIS.dsPers
        TabOrder = 2
      end
      object dtp1: TDBDateTimeEditEh
        Left = 72
        Top = 64
        Width = 121
        Height = 21
        EditButtons = <>
        Kind = dtkDateEh
        TabOrder = 3
        Visible = True
      end
      object lcb2: TDBLookupComboBox
        Left = 96
        Top = 104
        Width = 273
        Height = 21
        KeyField = 'WORK_SHIFT'
        ListField = 'NAME'
        ListSource = dmIS.dsWSHIFT
        TabOrder = 4
      end
      object lcb3: TDBLookupComboBox
        Left = 96
        Top = 136
        Width = 273
        Height = 21
        KeyField = 'CONTRACT_TYPE'
        ListField = 'NAME'
        ListSource = dmIS.dsCONTYPE
        TabOrder = 5
      end
      object m1: TMemo
        Left = 8
        Top = 192
        Width = 579
        Height = 49
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          '')
        MaxLength = 128
        TabOrder = 6
      end
      object dtp2: TDBDateTimeEditEh
        Left = 64
        Top = 264
        Width = 121
        Height = 21
        Anchors = [akLeft, akBottom]
        EditButtons = <>
        Kind = dtkDateEh
        TabOrder = 7
        Visible = True
      end
    end
    object ts3: TTabSheet
      Caption = #1057#1086#1089#1090#1072#1074' '#1073#1088#1080#1075#1072#1076#1099
      ImageIndex = 2
      object dbn2: TDBNavigator
        Left = 0
        Top = 337
        Width = 605
        Height = 18
        DataSource = dmIS.dsT_Pers
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
        Align = alBottom
        TabOrder = 0
      end
      object dbg2: TDBGrid
        Left = 0
        Top = 0
        Width = 605
        Height = 337
        Align = alClient
        DataSource = dmIS.dsT_Pers
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
            FieldName = 'ID_P'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FIO'
            Title.Alignment = taCenter
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nPost'
            Title.Alignment = taCenter
            Width = 196
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RATING'
            Title.Alignment = taCenter
            Width = 53
            Visible = True
          end>
      end
    end
  end
end
