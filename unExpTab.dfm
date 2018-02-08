object fmExpTabel: TfmExpTabel
  Left = 699
  Top = 33
  Width = 800
  Height = 825
  Caption = #1042#1099#1075#1088#1091#1079#1082#1072' '#1058#1072#1073#1077#1083#1103
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 787
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1058#1072#1073#1077#1083#1100
      object Panel1: TPanel
        Left = 0
        Top = 689
        Width = 776
        Height = 70
        Align = alBottom
        TabOrder = 0
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 96
          Height = 68
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object sbChekAll: TSpeedButton
            Left = 8
            Top = 20
            Width = 23
            Height = 22
            Hint = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1105
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
              000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
              99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
              0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
              FFFF3FFFFF7F337F333300000307B70FFFFF77777F73FF733F330EEE033000FF
              0FFF7F337FF777337FF30EEE00033FF000FF7F33777F333777FF0EEE0E033300
              000F7FFF7F7FFF77777F00000E00000000007777737773777777330EEE0E0330
              00FF337FFF7F7F3777F33300000E033000FF337777737F3777F333330EEE0330
              00FF33337FFF7FF77733333300000000033F3333777777777333}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = sbChekAllClick
          end
          object sbUnchek: TSpeedButton
            Left = 32
            Top = 20
            Width = 23
            Height = 22
            Hint = #1057#1085#1103#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1077
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
              FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
              990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
              990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
              FFFF3333333333333F333333333FFFFF0FFF3333333333337FF333333333FFF0
              00FF33333333333777FF333333333F00000F33FFFFF33777777F300000333000
              0000377777F33777777730EEE033333000FF37F337F3333777F330EEE0333330
              00FF37F337F3333777F330EEE033333000FF37FFF7F333F77733300000333000
              03FF3777773337777333333333333333333F3333333333333333}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = sbUnchekClick
          end
          object sbInvertChek: TSpeedButton
            Left = 56
            Top = 20
            Width = 23
            Height = 22
            Hint = #1048#1085#1074#1077#1085#1090#1080#1088#1086#1074#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1077
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000003
              33333333777777733333333330CCC03333333333F7777733F3333330330C0330
              33333337337773373333333333303333333333F33337333333F3303333333333
              3033373333333333373333333333333333333F3333333333333F033333333333
              3303733333333333337333333333333333333F3333333333333F033333333333
              3303733333333333FF7333333333333000333FFFFF33333777FF000003333307
              B70377777F333377777F09990333330BBB0377777F333377777F099903333307
              B70377777F3333777773099903333330003377777F3333377733000003333330
              3333777773F3F3F7333333333030303333333333373737333333}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = sbInvertChekClick
          end
        end
        object Panel3: TPanel
          Left = 97
          Top = 1
          Width = 728
          Height = 68
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label7: TLabel
            Left = 477
            Top = 9
            Width = 65
            Height = 13
            Caption = #1058#1080#1087' '#1088#1072#1073#1086#1090#1099': '
          end
          object rg_TP: TRadioGroup
            Left = 0
            Top = 0
            Width = 249
            Height = 68
            Align = alLeft
            Anchors = [akTop]
            Caption = #1042#1099#1073#1086#1088' - '#1095#1072#1089#1099
            Columns = 3
            ItemIndex = 0
            Items.Strings = (
              #1042#1089#1105
              #1056#1072#1073#1086#1095#1080#1077
              #1053#1077' '#1088#1072#1073#1086#1095#1080#1077)
            TabOrder = 0
          end
          object Panel6: TPanel
            Left = 249
            Top = 0
            Width = 216
            Height = 68
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label1: TLabel
              Left = 1
              Top = 8
              Width = 24
              Height = 13
              Caption = #1043#1086#1076': '
            end
            object Label2: TLabel
              Left = 73
              Top = 8
              Width = 36
              Height = 13
              Caption = #1052#1077#1089#1103#1094':'
            end
            object ed1: TEdit
              Left = 24
              Top = 8
              Width = 40
              Height = 21
              MaxLength = 4
              TabOrder = 0
              Text = '2000'
              OnKeyPress = ed1KeyPress
            end
            object cb1: TComboBox
              Left = 110
              Top = 8
              Width = 75
              Height = 21
              DropDownCount = 12
              ItemHeight = 13
              TabOrder = 1
              Text = #1057#1077#1085#1090#1103#1073#1088#1100
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
          end
          object lcb4: TDBLookupComboboxEh
            Left = 540
            Top = 9
            Width = 165
            Height = 21
            DropDownBox.Rows = 30
            DropDownBox.Sizable = True
            DropDownBox.Width = 165
            EditButtons = <>
            KeyField = 'sortofwork'
            ListField = 'sortofwork'
            ListSource = dmIS.dsWorkType
            TabOrder = 2
            Visible = True
          end
          object GroupBox5: TGroupBox
            Left = 272
            Top = 32
            Width = 433
            Height = 33
            TabOrder = 3
            object Label8: TLabel
              Left = 171
              Top = 10
              Width = 24
              Height = 13
              Caption = #1076#1085#1077#1081
            end
            object Label9: TLabel
              Left = 335
              Top = 10
              Width = 12
              Height = 13
              Caption = #1087#1086
            end
            object Label10: TLabel
              Left = 392
              Top = 10
              Width = 29
              Height = 13
              Caption = #1095#1080#1089#1083#1086
            end
            object cb4: TCheckBox
              Left = 8
              Top = 8
              Width = 121
              Height = 17
              Caption = #1059#1095#1080#1090#1099#1074#1072#1090#1100' '#1087#1088#1086#1087#1091#1089#1082
              TabOrder = 0
              OnClick = cb4Click
            end
            object cb5: TCheckBox
              Left = 208
              Top = 8
              Width = 89
              Height = 17
              Caption = #1047#1072' '#1087#1077#1088#1080#1086#1076' '#1089
              Enabled = False
              TabOrder = 1
              OnClick = cb5Click
            end
            object ed4: TSpinEdit
              Left = 128
              Top = 8
              Width = 41
              Height = 22
              Enabled = False
              MaxValue = 31
              MinValue = 1
              TabOrder = 2
              Value = 1
            end
            object ed5: TSpinEdit
              Left = 290
              Top = 8
              Width = 41
              Height = 22
              Enabled = False
              MaxValue = 30
              MinValue = 1
              TabOrder = 3
              Value = 1
            end
            object ed6: TSpinEdit
              Left = 350
              Top = 8
              Width = 41
              Height = 22
              Enabled = False
              MaxValue = 31
              MinValue = 2
              TabOrder = 4
              Value = 31
            end
          end
        end
        object Panel5: TPanel
          Left = 635
          Top = 1
          Width = 140
          Height = 68
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 2
          object sbOrd: TSpeedButton
            Left = 4
            Top = 45
            Width = 23
            Height = 22
            Hint = #1055#1086#1079#1072#1082#1072#1079#1085#1086
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
              FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
              FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
              FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
              FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
              FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
              C8807FF7777777777FF700000000000000007777777777777777333333333333
              3333333333333333333333333333333333333333333333333333}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = sbOrdClick
          end
          object bbExport: TBitBtn
            Left = 34
            Top = 44
            Width = 97
            Height = 25
            Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100
            TabOrder = 0
            OnClick = bbExportClick
            Kind = bkRetry
          end
          object cbAll: TCheckBox
            Left = 8
            Top = 16
            Width = 97
            Height = 17
            Caption = #1042' '#1074#1080#1076#1077' Excel'
            TabOrder = 1
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 22
        Width = 776
        Height = 667
        Align = alClient
        Caption = #1059#1095#1072#1089#1090#1082#1080
        TabOrder = 1
        object dbg1: TDBGridEh
          Left = 2
          Top = 15
          Width = 772
          Height = 650
          Align = alClient
          DataSource = dsPers
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnKeyPress = dbg1KeyPress
          Columns = <
            item
              Checkboxes = True
              EditButtons = <>
              FieldName = 'CHK'
              Footers = <>
              KeyList.Strings = (
                '1'
                '0')
              OnUpdateData = DBGridEh1Columns0UpdateData
            end
            item
              EditButtons = <>
              FieldName = 'ID_P_AREA'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'SHORTNAME'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              Width = 489
            end>
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 776
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object cbClosed: TCheckBox
          Left = 4
          Top = 3
          Width = 385
          Height = 17
          Caption = #1053#1077' '#1087#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1079#1072#1082#1088#1099#1090#1099#1077' '#1091#1095#1072#1089#1090#1082#1080
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = cbClosedClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1074#1086#1076#1085#1099#1081' '#1086#1090#1095#1077#1090
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 185
        Top = 0
        Height = 718
      end
      object Splitter3: TSplitter
        Left = 373
        Top = 0
        Height = 718
      end
      object dbg2: TDBGridEh
        Left = 376
        Top = 0
        Width = 400
        Height = 718
        Align = alClient
        DataSource = dsExp
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'NAME_PROD'
            Footers = <>
            Width = 254
          end
          item
            EditButtons = <>
            FieldName = 'NAME_AREA'
            Footers = <>
            Width = 253
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_ALL'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_BOLNICH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_PERE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_OTPUSK'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_PROGUL'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_SVOY'
            Footers = <>
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 718
        Width = 776
        Height = 41
        Align = alBottom
        TabOrder = 1
        object Label3: TLabel
          Left = 0
          Top = 8
          Width = 24
          Height = 13
          Caption = #1043#1086#1076': '
        end
        object Label4: TLabel
          Left = 81
          Top = 8
          Width = 36
          Height = 13
          Caption = #1052#1077#1089#1103#1094':'
        end
        object SpeedButton1: TSpeedButton
          Left = 208
          Top = 8
          Width = 23
          Height = 22
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777770877777
            7777777778087777777777777700877777777777770B0877777777770000B087
            777777770BBFBB087777777770FB00007777777770BFB08777777700000BFB08
            7777770FBFBFBFB087777770FBFB000077777770BFBFB087777777770BFBFB08
            777777770FFFBFF08777777770FBFFBF08777777700000000077}
          OnClick = SpeedButton1Click
        end
        object ed2: TEdit
          Left = 24
          Top = 8
          Width = 40
          Height = 21
          TabOrder = 0
          Text = '2000'
        end
        object cb2: TComboBox
          Left = 126
          Top = 8
          Width = 75
          Height = 21
          DropDownCount = 12
          ItemHeight = 13
          TabOrder = 1
          Text = #1057#1077#1085#1090#1103#1073#1088#1100
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
        object BitBtn1: TBitBtn
          Left = 832
          Top = 8
          Width = 89
          Height = 25
          Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100
          TabOrder = 2
          OnClick = BitBtn1Click
          Kind = bkRetry
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 185
        Height = 718
        Align = alLeft
        Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072
        TabOrder = 2
        object Splitter2: TSplitter
          Left = 259
          Top = 15
          Height = 701
        end
        object DBGridEh1: TDBGridEh
          Left = 2
          Top = 15
          Width = 257
          Height = 701
          Align = alLeft
          DataSource = dsProd
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyPress = DBGridEh1KeyPress
          Columns = <
            item
              Checkboxes = True
              EditButtons = <>
              FieldName = 'CHK'
              Footers = <>
              KeyList.Strings = (
                '1'
                '0')
            end
            item
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              ReadOnly = True
              Width = 104
            end
            item
              EditButtons = <>
              FieldName = 'ID_P_AREA'
              Footers = <>
            end>
        end
      end
      object GroupBox3: TGroupBox
        Left = 188
        Top = 0
        Width = 185
        Height = 718
        Align = alLeft
        Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
        TabOrder = 3
        object DBGridEh2: TDBGridEh
          Left = 2
          Top = 15
          Width = 181
          Height = 660
          Align = alClient
          DataSource = dsP
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Checkboxes = True
              EditButtons = <>
              FieldName = 'CHK'
              Footers = <>
              KeyList.Strings = (
                '1'
                '0')
            end
            item
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              ReadOnly = True
            end
            item
              EditButtons = <>
              FieldName = 'ID_PATYPE'
              Footers = <>
              ReadOnly = True
            end>
        end
        object Panel8: TPanel
          Left = 2
          Top = 675
          Width = 181
          Height = 41
          Align = alBottom
          TabOrder = 1
          object SpeedButton2: TSpeedButton
            Left = 8
            Top = 8
            Width = 23
            Height = 22
            Hint = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1105
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
              000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
              99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
              0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
              FFFF3FFFFF7F337F333300000307B70FFFFF77777F73FF733F330EEE033000FF
              0FFF7F337FF777337FF30EEE00033FF000FF7F33777F333777FF0EEE0E033300
              000F7FFF7F7FFF77777F00000E00000000007777737773777777330EEE0E0330
              00FF337FFF7F7F3777F33300000E033000FF337777737F3777F333330EEE0330
              00FF33337FFF7FF77733333300000000033F3333777777777333}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton2Click
          end
          object SpeedButton3: TSpeedButton
            Left = 32
            Top = 8
            Width = 23
            Height = 22
            Hint = #1057#1085#1103#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1077
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
              FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
              990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
              990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
              FFFF3333333333333F333333333FFFFF0FFF3333333333337FF333333333FFF0
              00FF33333333333777FF333333333F00000F33FFFFF33777777F300000333000
              0000377777F33777777730EEE033333000FF37F337F3333777F330EEE0333330
              00FF37F337F3333777F330EEE033333000FF37FFF7F333F77733300000333000
              03FF3777773337777333333333333333333F3333333333333333}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton3Click
          end
          object SpeedButton4: TSpeedButton
            Left = 56
            Top = 8
            Width = 23
            Height = 22
            Hint = #1048#1085#1074#1077#1085#1090#1080#1088#1086#1074#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1077
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000003
              33333333777777733333333330CCC03333333333F7777733F3333330330C0330
              33333337337773373333333333303333333333F33337333333F3303333333333
              3033373333333333373333333333333333333F3333333333333F033333333333
              3303733333333333337333333333333333333F3333333333333F033333333333
              3303733333333333FF7333333333333000333FFFFF33333777FF000003333307
              B70377777F333377777F09990333330BBB0377777F333377777F099903333307
              B70377777F3333777773099903333330003377777F3333377733000003333330
              3333777773F3F3F7333333333030303333333333373737333333}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton4Click
          end
        end
      end
    end
    object tsUpr: TTabSheet
      Caption = #1058#1072#1073#1077#1083#1100' ('#1091#1087#1088')'
      ImageIndex = 2
      object dbg3: TDBGridEh
        Left = 185
        Top = 0
        Width = 591
        Height = 718
        Align = alClient
        DataSource = dsTab_List_upr
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'NAME_AREA'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FIO'
            Footers = <>
            Title.EndEllipsis = True
            Width = 236
          end
          item
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.EndEllipsis = True
            Width = 119
          end
          item
            EditButtons = <>
            FieldName = 'shortname_coeff'
            Footers = <>
            Title.EndEllipsis = True
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'TP'
            Footers = <>
            Title.EndEllipsis = True
            Width = 23
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL'
            Footers = <>
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'D1'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D2'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D3'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D4'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D5'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D6'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D7'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D8'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D9'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D10'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D11'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D12'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D13'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D14'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D15'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D16'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D17'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D18'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D19'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D20'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D21'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D22'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D23'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D24'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D25'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D26'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D27'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D28'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D29'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D30'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'D31'
            Footers = <>
            Title.EndEllipsis = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'ID_P'
            Footers = <>
            Title.EndEllipsis = True
          end>
      end
      object Panel9: TPanel
        Left = 0
        Top = 718
        Width = 776
        Height = 41
        Align = alBottom
        TabOrder = 1
        object tbRfr: TSpeedButton
          Left = 864
          Top = 16
          Width = 23
          Height = 22
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777770877777
            7777777778087777777777777700877777777777770B0877777777770000B087
            777777770BBFBB087777777770FB00007777777770BFB08777777700000BFB08
            7777770FBFBFBFB087777770FBFB000077777770BFBFB087777777770BFBFB08
            777777770FFFBFF08777777770FBFFBF08777777700000000077}
          OnClick = tbRfrClick
        end
        object tbExc: TSpeedButton
          Left = 896
          Top = 16
          Width = 23
          Height = 22
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00000000008080000080800000808000008080000080800000808000008080
            000000000000FFFF0000FFFF0000FFFF000000000000FF00FF00FF00FF00FF00
            FF00FF00FF000000000080800000808000008080000080800000808000000000
            0000FFFF0000FFFF0000FFFF000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000000080800000808000008080000000000000FFFF
            0000FFFF0000FFFF0000808000008080000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000008080000000000000FFFF0000FFFF
            0000FFFF000000000000000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF0000FFFF0000FFFF
            00008080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000FFFF0000FFFF0000FFFF00008080
            0000808000008080000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FFFF0000FFFF0000FFFF0000000000008080
            000080800000808000008080000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFF0000FFFF0000FFFF000000000000FF00FF000000
            00008080000080800000808000008080000000000000FF00FF00FF00FF00FF00
            FF000000000080808000808080008080800000000000FF00FF00FF00FF00FF00
            FF000000000080800000808000008080000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          OnClick = tbExcClick
        end
        object Panel10: TPanel
          Left = 1
          Top = 1
          Width = 208
          Height = 39
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object Label5: TLabel
            Left = 0
            Top = 8
            Width = 24
            Height = 13
            Caption = #1043#1086#1076': '
          end
          object Label6: TLabel
            Left = 81
            Top = 8
            Width = 36
            Height = 13
            Caption = #1052#1077#1089#1103#1094':'
          end
          object ed3: TEdit
            Left = 24
            Top = 8
            Width = 40
            Height = 21
            TabOrder = 0
            Text = '2000'
          end
          object cb3: TComboBox
            Left = 126
            Top = 8
            Width = 75
            Height = 21
            DropDownCount = 12
            ItemHeight = 13
            TabOrder = 1
            Text = #1057#1077#1085#1090#1103#1073#1088#1100
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
        end
        object cbSumm: TCheckBox
          Left = 216
          Top = 8
          Width = 185
          Height = 17
          Caption = #1057#1091#1084#1084#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1082#1086#1101#1092#1092'.'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = cbSummClick
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 185
        Height = 718
        Align = alLeft
        Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090
        TabOrder = 2
        object dbgKoeff: TDBGridEh
          Left = 2
          Top = 15
          Width = 181
          Height = 677
          Align = alClient
          DataSource = dsKOeff
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Checkboxes = True
              EditButtons = <>
              FieldName = 'CHK'
              Footers = <>
              KeyList.Strings = (
                '1'
                '0')
            end
            item
              EditButtons = <>
              FieldName = 'SHORTNAME'
              Footers = <>
              Width = 57
            end
            item
              EditButtons = <>
              FieldName = 'ID_TAB_COEFF'
              Footers = <>
            end>
        end
        object Panel11: TPanel
          Left = 2
          Top = 692
          Width = 181
          Height = 24
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object tbKAll: TSpeedButton
            Left = 3
            Top = 2
            Width = 23
            Height = 22
            Hint = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1105
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
              000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
              99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
              0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
              FFFF3FFFFF7F337F333300000307B70FFFFF77777F73FF733F330EEE033000FF
              0FFF7F337FF777337FF30EEE00033FF000FF7F33777F333777FF0EEE0E033300
              000F7FFF7F7FFF77777F00000E00000000007777737773777777330EEE0E0330
              00FF337FFF7F7F3777F33300000E033000FF337777737F3777F333330EEE0330
              00FF33337FFF7FF77733333300000000033F3333777777777333}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = tbKAllClick
          end
          object tbKUnchek: TSpeedButton
            Left = 27
            Top = 2
            Width = 23
            Height = 22
            Hint = #1057#1085#1103#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1077
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
              FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
              990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
              990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
              FFFF3333333333333F333333333FFFFF0FFF3333333333337FF333333333FFF0
              00FF33333333333777FF333333333F00000F33FFFFF33777777F300000333000
              0000377777F33777777730EEE033333000FF37F337F3333777F330EEE0333330
              00FF37F337F3333777F330EEE033333000FF37FFF7F333F77733300000333000
              03FF3777773337777333333333333333333F3333333333333333}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = tbKUnchekClick
          end
          object tbKInvert: TSpeedButton
            Left = 51
            Top = 2
            Width = 23
            Height = 22
            Hint = #1048#1085#1074#1077#1085#1090#1080#1088#1086#1074#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1077
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000003
              33333333777777733333333330CCC03333333333F7777733F3333330330C0330
              33333337337773373333333333303333333333F33337333333F3303333333333
              3033373333333333373333333333333333333F3333333333333F033333333333
              3303733333333333337333333333333333333F3333333333333F033333333333
              3303733333333333FF7333333333333000333FFFFF33333777FF000003333307
              B70377777F333377777F09990333330BBB0377777F333377777F099903333307
              B70377777F3333777773099903333330003377777F3333377733000003333330
              3333777773F3F3F7333333333030303333333333373737333333}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = tbKInvertClick
          end
        end
      end
    end
  end
  object qP_Area: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterEdit = qP_AreaAfterEdit
    BeforeOpen = qP_AreaBeforeOpen
    BeforePost = qP_AreaBeforePost
    CachedUpdates = True
    SQL.Strings = (
      'select cast( :pr as integer) chk,  a.*  from PROD_AREAS a'
      'where a.ID_PATYPE in (5,11)'
      'and'
      '('
      '(cast(:cls as integer) is null)'
      'or'
      '((:cls = 1 ) and (a.d_close is null))'
      ')'
      'order by a.NAME')
    UpdateObject = upP_AREA
    Left = 176
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pr'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cls'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cls'
        ParamType = ptUnknown
      end>
    object qP_AreaCHK: TIntegerField
      DisplayLabel = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      FieldName = 'CHK'
      ProviderFlags = []
    end
    object qP_AreaID_P_AREA: TIntegerField
      DisplayLabel = #1056#1077#1075' '#8470' '#1091#1095#1072#1089#1090#1082#1072
      FieldName = 'ID_P_AREA'
      Origin = '"PROD_AREAS"."ID_P_AREA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qP_AreaSHORTNAME: TIBStringField
      DisplayLabel = #1057#1086#1082#1088'. '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'SHORTNAME'
      Origin = '"PROD_AREAS"."SHORTNAME"'
      Size = 12
    end
    object qP_AreaNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
  end
  object dsP_area: TDataSource
    DataSet = qP_Area
    Left = 232
    Top = 56
  end
  object qExp: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select z.name_prod, z.name_area, z.id_prod, -10,'
      '   z.total_all, z.total_bolnich, z.total_pere, z.total_otpusk,'
      '   z.total_progul, z.total_svoy'
      '   from get_tab_prod(:id,:m_in,:m_out,:ye) z'
      ''
      '   union'
      ''
      '   select '#39#1048#1090#1086#1075#1086#39', '#39#1048#1090#1086#1075#1086' '#1087#1086' '#1074#1089#1077#1084' '#1091#1095#1072#1089#1090#1082#1072#1084#39', -1, 0,'
      '   sum(z.total_all), sum(z.total_bolnich), sum(z.total_pere),'
      '   sum(z.total_otpusk),sum(z.total_progul), sum(z.total_svoy)'
      '   from get_tab_prod(:id,:m_in,:m_out,:ye) z'
      '   union'
      '   select '#39#1048#1090#1086#1075#1086#39', '#39#1048#1090#1086#1075#1086' '#1087#1086' '#39' ||z.name_prod, z.id_prod, 10,'
      '   sum(z.total_all), sum(z.total_bolnich), sum(z.total_pere),'
      '   sum(z.total_otpusk),sum(z.total_progul), sum(z.total_svoy)'
      '   from get_tab_prod(:id,:m_in,:m_out,:ye) z'
      '   group by 2,3'
      '   order by 4, 1')
    Left = 472
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'm_in'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'm_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ye'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'm_in'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'm_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ye'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'm_in'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'm_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ye'
        ParamType = ptUnknown
      end>
    object qExpNAME_PROD: TIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072
      FieldName = 'NAME_PROD'
      Origin = '"GET_TAB_PROD"."NAME_PROD"'
      Size = 80
    end
    object qExpNAME_AREA: TIBStringField
      DisplayLabel = #1059#1095#1072#1089#1090#1086#1082
      FieldName = 'NAME_AREA'
      ProviderFlags = []
      Size = 89
    end
    object qExpTOTAL_ALL: TFloatField
      DisplayLabel = #1048#1090#1086#1075#1086' '#1088#1072#1073#1086#1095#1080#1093' '#1095#1072#1089#1086#1074' '#1087#1086' '#1091#1095#1072#1089#1090#1082#1091
      FieldName = 'TOTAL_ALL'
      Origin = '"GET_TAB_PROD"."TOTAL_ALL"'
    end
    object qExpTOTAL_BOLNICH: TFloatField
      DisplayLabel = #1048#1090#1086#1075#1086' '#1095#1072#1089#1086#1074' '#1073#1086#1083#1100#1085#1080#1095#1085#1086#1075#1086
      FieldName = 'TOTAL_BOLNICH'
      Origin = '"GET_TAB_PROD"."TOTAL_BOLNICH"'
    end
    object qExpTOTAL_PERE: TFloatField
      DisplayLabel = #1048#1090#1086#1075#1086' '#1095#1072#1089#1086#1074' '#1087#1077#1088#1077#1088#1072#1073#1086#1090#1082#1080
      FieldName = 'TOTAL_PERE'
      Origin = '"GET_TAB_PROD"."TOTAL_PERE"'
    end
    object qExpTOTAL_OTPUSK: TFloatField
      DisplayLabel = #1048#1090#1086#1075#1086' '#1095#1072#1089#1086#1074' '#1086#1095#1077#1088#1077#1076#1085#1086#1075#1086' '#1086#1087#1083#1072#1095#1080#1074#1072#1077#1084#1086#1075#1086' '#1086#1090#1087#1091#1089#1082#1072
      FieldName = 'TOTAL_OTPUSK'
      Origin = '"GET_TAB_PROD"."TOTAL_OTPUSK"'
    end
    object qExpTOTAL_PROGUL: TFloatField
      DisplayLabel = #1048#1090#1086#1075#1086' '#1095#1072#1089#1086#1074' '#1087#1088#1086#1075#1091#1083#1086#1074
      FieldName = 'TOTAL_PROGUL'
      Origin = '"GET_TAB_PROD"."TOTAL_PROGUL"'
    end
    object qExpTOTAL_SVOY: TFloatField
      DisplayLabel = #1048#1090#1086#1075#1086' '#1095#1072#1089#1086#1074' '#1079#1072' '#1089#1074#1086#1081' '#1089#1095#1105#1090
      FieldName = 'TOTAL_SVOY'
      Origin = '"GET_TAB_PROD"."TOTAL_SVOY"'
    end
  end
  object upP_AREA: TIBUpdateSQL
    ModifySQL.Strings = (
      'update prod_areas s'
      'set id_c=:id_c'
      'where (s.id_p_area = :id_p_area)')
    Left = 176
    Top = 80
  end
  object qTab_List: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      
        'select * from rep_sors_all(:id_p_area, :d_in, :d_out, :y1, :m1, ' +
        ':sm)')
    Left = 124
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_P_AREA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_in'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'y1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'm1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sm'
        ParamType = ptUnknown
      end>
    object qTab_ListF: TIntegerField
      FieldName = 'F'
      ProviderFlags = []
    end
    object qTab_ListFIO: TIBStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      ProviderFlags = []
      Size = 110
    end
    object qTab_ListNM: TIBStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'NM'
      ProviderFlags = []
      Size = 50
    end
    object qTab_ListKF: TIBStringField
      DisplayLabel = #1050#1086#1101#1092'.'
      DisplayWidth = 6
      FieldName = 'KF'
      ProviderFlags = []
      Size = 6
    end
    object qTab_ListTP: TIntegerField
      DisplayLabel = #1055
      FieldName = 'TP'
    end
    object qTab_ListID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      FieldName = 'ID_P'
      ProviderFlags = []
    end
    object qTab_ListTOTAL: TFloatField
      DisplayLabel = #1048#1090#1086#1075#1086' '#1095#1072#1089#1086#1074
      FieldName = 'TOTAL'
      ProviderFlags = []
      DisplayFormat = '### ### ###0.0'
    end
    object qTab_ListD1: TFloatField
      DisplayLabel = '1'
      FieldName = 'D1'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD2: TFloatField
      DisplayLabel = '2'
      FieldName = 'D2'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD3: TFloatField
      DisplayLabel = '3'
      FieldName = 'D3'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD4: TFloatField
      DisplayLabel = '4'
      FieldName = 'D4'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD5: TFloatField
      DisplayLabel = '5'
      FieldName = 'D5'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD6: TFloatField
      DisplayLabel = '6'
      FieldName = 'D6'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD7: TFloatField
      DisplayLabel = '7'
      FieldName = 'D7'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD8: TFloatField
      DisplayLabel = '8'
      FieldName = 'D8'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD9: TFloatField
      DisplayLabel = '9'
      FieldName = 'D9'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD10: TFloatField
      DisplayLabel = '10'
      FieldName = 'D10'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD11: TFloatField
      DisplayLabel = '11'
      FieldName = 'D11'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD12: TFloatField
      DisplayLabel = '12'
      FieldName = 'D12'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD13: TFloatField
      DisplayLabel = '13'
      FieldName = 'D13'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD14: TFloatField
      DisplayLabel = '14'
      FieldName = 'D14'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD15: TFloatField
      DisplayLabel = '15'
      FieldName = 'D15'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD16: TFloatField
      DisplayLabel = '16'
      FieldName = 'D16'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD17: TFloatField
      DisplayLabel = '17'
      FieldName = 'D17'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD18: TFloatField
      DisplayLabel = '18'
      FieldName = 'D18'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD19: TFloatField
      DisplayLabel = '19'
      FieldName = 'D19'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD20: TFloatField
      DisplayLabel = '20'
      FieldName = 'D20'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD21: TFloatField
      DisplayLabel = '21'
      FieldName = 'D21'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD22: TFloatField
      DisplayLabel = '22'
      FieldName = 'D22'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD23: TFloatField
      DisplayLabel = '23'
      FieldName = 'D23'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD24: TFloatField
      DisplayLabel = '24'
      FieldName = 'D24'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD25: TFloatField
      DisplayLabel = '25'
      FieldName = 'D25'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD26: TFloatField
      DisplayLabel = '26'
      FieldName = 'D26'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD27: TFloatField
      DisplayLabel = '27'
      FieldName = 'D27'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD28: TFloatField
      DisplayLabel = '28'
      FieldName = 'D28'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD29: TFloatField
      DisplayLabel = '29'
      FieldName = 'D29'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD30: TFloatField
      DisplayLabel = '30'
      FieldName = 'D30'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_ListD31: TFloatField
      DisplayLabel = '31'
      FieldName = 'D31'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
  end
  object dsTab_List: TDataSource
    DataSet = qTab_List
    Left = 124
    Top = 248
  end
  object qIns: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      
        'select * from rep_sors_all(:id_p_area, :d_in, :d_out, :y1, :m1, ' +
        ':sm)')
    Left = 216
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_p_area'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_in'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'y1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'm1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sm'
        ParamType = ptUnknown
      end>
  end
  object qAr: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      ''
      
        'select z.id id_p_area, pp.name name_area, t.id_tab from get_str_' +
        'param(:id_p_area_s, '#39','#39') z'
      'join prod_areas pp on pp.id_p_area = z.id'
      
        'left join tabs t on t.id_p_area = z.id AND t.ID_YEAR = :y1 AND t' +
        '.ID_MONTH = :m1')
    Left = 720
    Top = 102
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_p_area_s'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'y1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'm1'
        ParamType = ptUnknown
      end>
    object qArID_P_AREA: TIntegerField
      FieldName = 'ID_P_AREA'
      Origin = '"GET_STR_PARAM"."ID"'
    end
    object qArID_TAB: TIntegerField
      FieldName = 'ID_TAB'
      Origin = '"TABS"."ID_TAB"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qArNAME_AREA: TIBStringField
      FieldName = 'NAME_AREA'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
  end
  object qPers: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsAr
    SQL.Strings = (
      'select distinct p.idprodarea,coalesce(t.id_tab,0) id_tab,'
      '      t.id_year,t.id_month,'
      '      p.id_p,p.fio,o.name,a.name,o.is_worker'
      'from personnel p'
      '      left join  TAB_POS s on s.id_p=p.id_p and'
      '         s.id_tab = :id_tab and s.ID_TAB = :id_tab'
      '      left join tabs t on t.id_tab = s.id_tab'
      '      left join post o on o.idpost = p.idpost'
      '      left join prod_areas a on a.id_p_area = p.idprodarea'
      'where p.idprodarea = :id_p_area'
      
        'and (p.d_dismiss is null or (EXTRACT(MONTH FROM p.d_dismiss)>=t.' +
        'id_month)'
      'and EXTRACT(YEAR FROM p.d_dismiss)>=t.id_year)')
    Left = 736
    Top = 182
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_TAB'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'id_tab'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_p_area'
        ParamType = ptUnknown
      end>
    object qPersID_TAB: TIntegerField
      FieldName = 'ID_TAB'
      Origin = '"TABS"."ID_TAB"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPersID_P_AREA: TIntegerField
      FieldName = 'idprodarea'
      Origin = '"TABS"."idprodarea"'
    end
    object qPersID_YEAR: TSmallintField
      FieldName = 'ID_YEAR'
      Origin = '"TABS"."ID_YEAR"'
    end
    object qPersID_MONTH: TSmallintField
      FieldName = 'ID_MONTH'
      Origin = '"TABS"."ID_MONTH"'
    end
    object qPersID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"TAB_POS"."ID_P"'
    end
    object qPersFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qPersNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"POST"."NAME"'
      Size = 50
    end
    object qPersNAME1: TIBStringField
      FieldName = 'NAME1'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object qPersIS_WORKER: TIntegerField
      FieldName = 'IS_WORKER'
      Origin = '"POST"."IS_WORKER"'
    end
  end
  object dsAr: TDataSource
    DataSet = qAr
    Left = 776
    Top = 110
  end
  object dsPers: TDataSource
    DataSet = qPers
    Left = 800
    Top = 182
  end
  object dsTabs: TDataSource
    DataSet = qTabs
    Left = 776
    Top = 262
  end
  object qTabs: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsPers
    SQL.Strings = (
      'select zxx.*  from rep_tab(:id_tab) zxx where zxx.id_p = :id_p')
    Left = 752
    Top = 238
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_tab'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_p'
        ParamType = ptUnknown
      end>
    object qTabsNAME_AREA: TIBStringField
      FieldName = 'NAME_AREA'
      Origin = '"REP_TAB"."NAME_AREA"'
      Size = 60
    end
    object qTabsNOM: TIntegerField
      FieldName = 'NOM'
      Origin = '"REP_TAB"."NOM"'
    end
    object qTabsID_TAB: TIntegerField
      FieldName = 'ID_TAB'
      Origin = '"REP_TAB"."ID_TAB"'
    end
    object qTabsID_P_AREA: TIntegerField
      FieldName = 'ID_P_AREA'
      Origin = '"REP_TAB"."ID_P_AREA"'
    end
    object qTabsID_YEAR: TSmallintField
      FieldName = 'ID_YEAR'
      Origin = '"REP_TAB"."ID_YEAR"'
    end
    object qTabsID_MONTH: TSmallintField
      FieldName = 'ID_MONTH'
      Origin = '"REP_TAB"."ID_MONTH"'
    end
    object qTabsTAB_DAY: TDateField
      FieldName = 'TAB_DAY'
      Origin = '"REP_TAB"."TAB_DAY"'
    end
    object qTabsNOM_DAY: TSmallintField
      FieldName = 'NOM_DAY'
      Origin = '"REP_TAB"."NOM_DAY"'
    end
    object qTabsID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"REP_TAB"."ID_P"'
    end
    object qTabsID_TAB_COEFF: TIntegerField
      FieldName = 'ID_TAB_COEFF'
      Origin = '"REP_TAB"."ID_TAB_COEFF"'
    end
    object qTabsCOEFF: TFloatField
      FieldName = 'COEFF'
      Origin = '"REP_TAB"."COEFF"'
    end
    object qTabsVAL: TFloatField
      FieldName = 'VAL'
      Origin = '"REP_TAB"."VAL"'
    end
    object qTabsSHORTNAME_COEFF: TIBStringField
      FieldName = 'SHORTNAME_COEFF'
      Origin = '"REP_TAB"."SHORTNAME_COEFF"'
      Size = 4
    end
    object qTabsTP: TIntegerField
      FieldName = 'TP'
      Origin = '"REP_TAB"."TP"'
    end
    object qTabsFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"REP_TAB"."FIO"'
      Size = 60
    end
    object qTabsNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"REP_TAB"."NAME"'
      Size = 50
    end
    object qTabsTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = '"REP_TAB"."TOTAL"'
    end
    object qTabsTOTAL_ALL: TFloatField
      FieldName = 'TOTAL_ALL'
      Origin = '"REP_TAB"."TOTAL_ALL"'
    end
    object qTabsNORM_TIME: TFloatField
      FieldName = 'NORM_TIME'
      Origin = '"REP_TAB"."NORM_TIME"'
    end
    object qTabsD1: TFloatField
      FieldName = 'D1'
      Origin = '"REP_TAB"."D1"'
    end
    object qTabsD2: TFloatField
      FieldName = 'D2'
      Origin = '"REP_TAB"."D2"'
    end
    object qTabsD3: TFloatField
      FieldName = 'D3'
      Origin = '"REP_TAB"."D3"'
    end
    object qTabsD4: TFloatField
      FieldName = 'D4'
      Origin = '"REP_TAB"."D4"'
    end
    object qTabsD5: TFloatField
      FieldName = 'D5'
      Origin = '"REP_TAB"."D5"'
    end
    object qTabsD6: TFloatField
      FieldName = 'D6'
      Origin = '"REP_TAB"."D6"'
    end
    object qTabsD7: TFloatField
      FieldName = 'D7'
      Origin = '"REP_TAB"."D7"'
    end
    object qTabsD8: TFloatField
      FieldName = 'D8'
      Origin = '"REP_TAB"."D8"'
    end
    object qTabsD9: TFloatField
      FieldName = 'D9'
      Origin = '"REP_TAB"."D9"'
    end
    object qTabsD10: TFloatField
      FieldName = 'D10'
      Origin = '"REP_TAB"."D10"'
    end
    object qTabsD11: TFloatField
      FieldName = 'D11'
      Origin = '"REP_TAB"."D11"'
    end
    object qTabsD12: TFloatField
      FieldName = 'D12'
      Origin = '"REP_TAB"."D12"'
    end
    object qTabsD13: TFloatField
      FieldName = 'D13'
      Origin = '"REP_TAB"."D13"'
    end
    object qTabsD14: TFloatField
      FieldName = 'D14'
      Origin = '"REP_TAB"."D14"'
    end
    object qTabsD15: TFloatField
      FieldName = 'D15'
      Origin = '"REP_TAB"."D15"'
    end
    object qTabsD16: TFloatField
      FieldName = 'D16'
      Origin = '"REP_TAB"."D16"'
    end
    object qTabsD17: TFloatField
      FieldName = 'D17'
      Origin = '"REP_TAB"."D17"'
    end
    object qTabsD18: TFloatField
      FieldName = 'D18'
      Origin = '"REP_TAB"."D18"'
    end
    object qTabsD19: TFloatField
      FieldName = 'D19'
      Origin = '"REP_TAB"."D19"'
    end
    object qTabsD20: TFloatField
      FieldName = 'D20'
      Origin = '"REP_TAB"."D20"'
    end
    object qTabsD21: TFloatField
      FieldName = 'D21'
      Origin = '"REP_TAB"."D21"'
    end
    object qTabsD22: TFloatField
      FieldName = 'D22'
      Origin = '"REP_TAB"."D22"'
    end
    object qTabsD23: TFloatField
      FieldName = 'D23'
      Origin = '"REP_TAB"."D23"'
    end
    object qTabsD24: TFloatField
      FieldName = 'D24'
      Origin = '"REP_TAB"."D24"'
    end
    object qTabsD25: TFloatField
      FieldName = 'D25'
      Origin = '"REP_TAB"."D25"'
    end
    object qTabsD26: TFloatField
      FieldName = 'D26'
      Origin = '"REP_TAB"."D26"'
    end
    object qTabsD27: TFloatField
      FieldName = 'D27'
      Origin = '"REP_TAB"."D27"'
    end
    object qTabsD28: TFloatField
      FieldName = 'D28'
      Origin = '"REP_TAB"."D28"'
    end
    object qTabsD29: TFloatField
      FieldName = 'D29'
      Origin = '"REP_TAB"."D29"'
    end
    object qTabsD30: TFloatField
      FieldName = 'D30'
      Origin = '"REP_TAB"."D30"'
    end
    object qTabsD31: TFloatField
      FieldName = 'D31'
      Origin = '"REP_TAB"."D31"'
    end
  end
  object xlTab: TxlReport
    DataExportMode = xdmDDE
    Options = [xroDisplayAlerts, xroAutoOpen]
    DataSources = <
      item
        DataSet = qAr
        Alias = 'a'
        Range = 'areas'
        Options = [xrgoAutoOpen, xrgoPreserveRowHeight]
        Tag = 0
      end
      item
        DataSet = qPers
        Alias = 'p'
        Range = 'pers'
        Options = [xrgoAutoOpen, xrgoPreserveRowHeight]
        Tag = 0
        MasterSourceName = 'a'
      end
      item
        DataSet = qTabs
        Alias = 't'
        Range = 'tabel'
        Options = [xrgoAutoOpen, xrgoPreserveRowHeight]
        Tag = 0
        MasterSourceName = 'p'
      end
      item
        DataSet = qSumTab
        Alias = 's'
        Range = 'frees'
        Options = [xrgoAutoOpen, xrgoPreserveRowHeight]
        Tag = 0
        MasterSourceName = 'p'
      end>
    Preview = False
    Params = <>
    Left = 864
    Top = 254
  end
  object qSumTab: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsPers
    SQL.Strings = (
      
        'select sum(zxx.total) -  coalesce((select zxx1.total  from rep_t' +
        'ab(:id_tab) zxx1'
      '  where zxx1.id_p = :id_p   and zxx1.id_tab_coeff = 4),0) free'
      '  from rep_tab(:id_tab) zxx where zxx.id_p = :id_p')
    Left = 648
    Top = 246
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_TAB'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ID_P'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'id_tab'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id_p'
        ParamType = ptUnknown
      end>
    object qSumTabFREE: TFloatField
      FieldName = 'FREE'
      ProviderFlags = []
    end
  end
  object dsSumTab: TDataSource
    DataSet = qSumTab
    Left = 664
    Top = 326
  end
  object dsExp: TDataSource
    DataSet = qExp
    Left = 484
    Top = 160
  end
  object xlrSvod: TxlReport
    DataExportMode = xdmDDE
    MacroAfter = 'mc1'
    Options = [xroDisplayAlerts, xroAutoOpen]
    DataSources = <
      item
        DataSet = qExp
        Alias = 't'
        Range = 'tab'
        Options = [xrgoAutoOpen, xrgoPreserveRowHeight]
        Tag = 0
      end>
    Preview = False
    Params = <
      item
        Name = 'dt'
      end>
    Left = 564
    Top = 232
  end
  object qProd: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    CachedUpdates = True
    SQL.Strings = (
      
        'select cast( :pr as integer) chk,  a.name, a.id_p_area  from PRO' +
        'D_AREAS a'
      'where a.ID_PATYPE =2'
      'order by a.NAME')
    UpdateObject = upProd
    Left = 100
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pr'
        ParamType = ptUnknown
      end>
    object qProdCHK: TIntegerField
      DisplayLabel = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      FieldName = 'CHK'
      ProviderFlags = []
    end
    object qProdNAME: TIBStringField
      DisplayLabel = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      FieldName = 'NAME'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object qProdID_P_AREA: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_P_AREA'
      Origin = '"PROD_AREAS"."ID_P_AREA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsProd: TDataSource
    DataSet = qProd
    Left = 100
    Top = 112
  end
  object upProd: TIBUpdateSQL
    ModifySQL.Strings = (
      'update prod_areas s'
      'set id_c=:id_c'
      'where (s.id_p_area = :id_p_area)')
    Left = 164
    Top = 144
  end
  object qP: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select cast( :pr as integer) chk,  a.name, a.id_patype'
      'from p_area_types  a'
      'where a.ID_PATYPE >3'
      'order by a.NAME')
    UpdateObject = upP
    Left = 277
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pr'
        ParamType = ptUnknown
      end>
    object qPCHK: TIntegerField
      DisplayLabel = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      FieldName = 'CHK'
      ProviderFlags = []
    end
    object qPNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"P_AREA_TYPES"."NAME"'
      Size = 30
    end
    object qPID_PATYPE: TSmallintField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_PATYPE'
      Origin = '"P_AREA_TYPES"."ID_PATYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsP: TDataSource
    DataSet = qP
    Left = 285
    Top = 200
  end
  object upP: TIBUpdateSQL
    ModifySQL.Strings = (
      ' update p_area_types'
      ' set name = :name'
      ''
      ' where (id_patype = :id_patype)')
    Left = 228
    Top = 152
  end
  object qTab_List_upr: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select * from get_rep_tab_all(:y1, :m1,:koeff , :vid)')
    Left = 356
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'y1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'm1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'koeff'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vid'
        ParamType = ptUnknown
      end>
    object qTab_List_uprNAME_AREA: TIBStringField
      DisplayLabel = #1059#1095#1072#1089#1090#1086#1082
      FieldName = 'NAME_AREA'
      Origin = '"GET_REP_TAB_ALL"."NAME_AREA"'
      Size = 60
    end
    object qTab_List_uprFIO: TIBStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      ProviderFlags = []
      Size = 110
    end
    object qTab_List_uprNM: TIBStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'NAME'
      ProviderFlags = []
      Size = 50
    end
    object qTab_List_uprKF: TIBStringField
      DisplayLabel = #1050#1086#1101#1092'.'
      DisplayWidth = 6
      FieldName = 'shortname_coeff'
      ProviderFlags = []
      Size = 6
    end
    object qTab_List_uprTP: TIntegerField
      DisplayLabel = #1055
      FieldName = 'TP'
      Origin = '"REP_TAB"."TP"'
    end
    object qTab_List_uprID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      FieldName = 'ID_P'
      ProviderFlags = []
    end
    object qTab_List_uprTOTAL: TFloatField
      DisplayLabel = #1048#1090#1086#1075#1086' '#1095#1072#1089#1086#1074
      FieldName = 'TOTAL'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD1: TFloatField
      DisplayLabel = '1'
      FieldName = 'D1'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD2: TFloatField
      DisplayLabel = '2'
      FieldName = 'D2'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD3: TFloatField
      DisplayLabel = '3'
      FieldName = 'D3'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD4: TFloatField
      DisplayLabel = '4'
      FieldName = 'D4'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD5: TFloatField
      DisplayLabel = '5'
      FieldName = 'D5'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD6: TFloatField
      DisplayLabel = '6'
      FieldName = 'D6'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD7: TFloatField
      DisplayLabel = '7'
      FieldName = 'D7'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD8: TFloatField
      DisplayLabel = '8'
      FieldName = 'D8'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD9: TFloatField
      DisplayLabel = '9'
      FieldName = 'D9'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD10: TFloatField
      DisplayLabel = '10'
      FieldName = 'D10'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD11: TFloatField
      DisplayLabel = '11'
      FieldName = 'D11'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD12: TFloatField
      DisplayLabel = '12'
      FieldName = 'D12'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD13: TFloatField
      DisplayLabel = '13'
      FieldName = 'D13'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD14: TFloatField
      DisplayLabel = '14'
      FieldName = 'D14'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD15: TFloatField
      DisplayLabel = '15'
      FieldName = 'D15'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD16: TFloatField
      DisplayLabel = '16'
      FieldName = 'D16'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD17: TFloatField
      DisplayLabel = '17'
      FieldName = 'D17'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD18: TFloatField
      DisplayLabel = '18'
      FieldName = 'D18'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD19: TFloatField
      DisplayLabel = '19'
      FieldName = 'D19'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD20: TFloatField
      DisplayLabel = '20'
      FieldName = 'D20'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD21: TFloatField
      DisplayLabel = '21'
      FieldName = 'D21'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD22: TFloatField
      DisplayLabel = '22'
      FieldName = 'D22'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD23: TFloatField
      DisplayLabel = '23'
      FieldName = 'D23'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD24: TFloatField
      DisplayLabel = '24'
      FieldName = 'D24'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD25: TFloatField
      DisplayLabel = '25'
      FieldName = 'D25'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD26: TFloatField
      DisplayLabel = '26'
      FieldName = 'D26'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD27: TFloatField
      DisplayLabel = '27'
      FieldName = 'D27'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD28: TFloatField
      DisplayLabel = '28'
      FieldName = 'D28'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD29: TFloatField
      DisplayLabel = '29'
      FieldName = 'D29'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD30: TFloatField
      DisplayLabel = '30'
      FieldName = 'D30'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprD31: TFloatField
      DisplayLabel = '31'
      FieldName = 'D31'
      ProviderFlags = []
      DisplayFormat = '### ### ###.0'
    end
    object qTab_List_uprCOEFF: TFloatField
      FieldName = 'COEFF'
      Origin = '"GET_REP_TAB_ALL"."COEFF"'
    end
  end
  object dsTab_List_upr: TDataSource
    DataSet = qTab_List_upr
    Left = 356
    Top = 192
  end
  object qKOeff: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select cast( :pr as integer) chk, k.id_tab_coeff, k.shortname'
      'from tab_coeffs k'
      'where k.tp = 1')
    UpdateObject = upKoeff
    Left = 20
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pr'
        ParamType = ptUnknown
      end>
    object qKOeffCHK: TIntegerField
      DisplayLabel = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      FieldName = 'CHK'
      ProviderFlags = []
    end
    object qKOeffID_TAB_COEFF: TIntegerField
      DisplayLabel = #1056#1077#1075' '#8470
      FieldName = 'ID_TAB_COEFF'
      Origin = '"TAB_COEFFS"."ID_TAB_COEFF"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qKOeffSHORTNAME: TIBStringField
      DisplayLabel = #1050#1086#1101#1092#1092
      FieldName = 'SHORTNAME'
      Origin = '"TAB_COEFFS"."SHORTNAME"'
      Size = 4
    end
  end
  object dsKOeff: TDataSource
    DataSet = qKOeff
    Left = 20
    Top = 120
  end
  object upKoeff: TIBUpdateSQL
    ModifySQL.Strings = (
      'update tab_coeffs k'
      'set k.id_c = :id_c'
      'where k.id_tab_coeff = :id_tab_coeff')
    Left = 20
    Top = 184
  end
  object qWorkDays: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    Left = 324
    Top = 302
    object qWorkDaysID_P: TIntegerField
      FieldName = 'ID_P'
    end
  end
  object qWork1: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      
        'select arean, pr, fio, nm, kf, tp, id_p, total, d1, d2, d3, d4, ' +
        'd5, d6,'
      
        'd7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d2' +
        '0,'
      'd21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31'
      
        'from rep_sors_all_short(:id_p_area_s, :d_in, :d_out, :y1, :m1, :' +
        'sm)')
    Left = 428
    Top = 238
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_p_area_s'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_in'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'y1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'm1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sm'
        ParamType = ptUnknown
      end>
    object qWork1AREAN: TIBStringField
      DisplayLabel = #1059#1095#1072#1089#1090#1086#1082
      FieldName = 'AREAN'
      Origin = '"REP_SORS_ALL_SHORT"."AREAN"'
      Size = 80
    end
    object qWork1PR: TIBStringField
      DisplayLabel = #1055#1088#1080#1079#1085#1072#1082
      FieldName = 'PR'
      Origin = '"REP_SORS_ALL_SHORT"."PR"'
      Size = 1
    end
    object qWork1FIO: TIBStringField
      DisplayLabel = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      FieldName = 'FIO'
      Origin = '"REP_SORS_ALL"."FIO"'
      Size = 110
    end
    object qWork1NM: TIBStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'NM'
      Origin = '"REP_SORS_ALL"."NM"'
      Size = 50
    end
    object qWork1ID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      FieldName = 'ID_P'
      Origin = '"REP_SORS_ALL"."ID_P"'
    end
    object qWork1KF: TIBStringField
      DisplayLabel = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090
      FieldName = 'KF'
      Origin = '"REP_SORS_ALL"."KF"'
      Size = 6
    end
    object qWork1TP: TIntegerField
      DisplayLabel = #1058#1080#1087
      FieldName = 'TP'
      Origin = '"REP_SORS_ALL"."TP"'
    end
    object qWork1TOTAL: TFloatField
      DisplayLabel = #1042#1089#1077#1075#1086
      FieldName = 'TOTAL'
      Origin = '"REP_SORS_ALL"."TOTAL"'
    end
    object qWork1D1: TFloatField
      FieldName = 'D1'
      Origin = '"REP_SORS_ALL"."D1"'
    end
    object qWork1D2: TFloatField
      FieldName = 'D2'
      Origin = '"REP_SORS_ALL"."D2"'
    end
    object qWork1D3: TFloatField
      FieldName = 'D3'
      Origin = '"REP_SORS_ALL"."D3"'
    end
    object qWork1D4: TFloatField
      FieldName = 'D4'
      Origin = '"REP_SORS_ALL"."D4"'
    end
    object qWork1D5: TFloatField
      FieldName = 'D5'
      Origin = '"REP_SORS_ALL"."D5"'
    end
    object qWork1D6: TFloatField
      FieldName = 'D6'
      Origin = '"REP_SORS_ALL"."D6"'
    end
    object qWork1D7: TFloatField
      FieldName = 'D7'
      Origin = '"REP_SORS_ALL"."D7"'
    end
    object qWork1D8: TFloatField
      FieldName = 'D8'
      Origin = '"REP_SORS_ALL"."D8"'
    end
    object qWork1D9: TFloatField
      FieldName = 'D9'
      Origin = '"REP_SORS_ALL"."D9"'
    end
    object qWork1D10: TFloatField
      FieldName = 'D10'
      Origin = '"REP_SORS_ALL"."D10"'
    end
    object qWork1D11: TFloatField
      FieldName = 'D11'
      Origin = '"REP_SORS_ALL"."D11"'
    end
    object qWork1D12: TFloatField
      FieldName = 'D12'
      Origin = '"REP_SORS_ALL"."D12"'
    end
    object qWork1D13: TFloatField
      FieldName = 'D13'
      Origin = '"REP_SORS_ALL"."D13"'
    end
    object qWork1D14: TFloatField
      FieldName = 'D14'
      Origin = '"REP_SORS_ALL"."D14"'
    end
    object qWork1D15: TFloatField
      FieldName = 'D15'
      Origin = '"REP_SORS_ALL"."D15"'
    end
    object qWork1D16: TFloatField
      FieldName = 'D16'
      Origin = '"REP_SORS_ALL"."D16"'
    end
    object qWork1D17: TFloatField
      FieldName = 'D17'
      Origin = '"REP_SORS_ALL"."D17"'
    end
    object qWork1D18: TFloatField
      FieldName = 'D18'
      Origin = '"REP_SORS_ALL"."D18"'
    end
    object qWork1D19: TFloatField
      FieldName = 'D19'
      Origin = '"REP_SORS_ALL"."D19"'
    end
    object qWork1D20: TFloatField
      FieldName = 'D20'
      Origin = '"REP_SORS_ALL"."D20"'
    end
    object qWork1D21: TFloatField
      FieldName = 'D21'
      Origin = '"REP_SORS_ALL"."D21"'
    end
    object qWork1D22: TFloatField
      FieldName = 'D22'
      Origin = '"REP_SORS_ALL"."D22"'
    end
    object qWork1D23: TFloatField
      FieldName = 'D23'
      Origin = '"REP_SORS_ALL"."D23"'
    end
    object qWork1D24: TFloatField
      FieldName = 'D24'
      Origin = '"REP_SORS_ALL"."D24"'
    end
    object qWork1D25: TFloatField
      FieldName = 'D25'
      Origin = '"REP_SORS_ALL"."D25"'
    end
    object qWork1D26: TFloatField
      FieldName = 'D26'
      Origin = '"REP_SORS_ALL"."D26"'
    end
    object qWork1D27: TFloatField
      FieldName = 'D27'
      Origin = '"REP_SORS_ALL"."D27"'
    end
    object qWork1D28: TFloatField
      FieldName = 'D28'
      Origin = '"REP_SORS_ALL"."D28"'
    end
    object qWork1D29: TFloatField
      FieldName = 'D29'
      Origin = '"REP_SORS_ALL"."D29"'
    end
    object qWork1D30: TFloatField
      FieldName = 'D30'
      Origin = '"REP_SORS_ALL"."D30"'
    end
    object qWork1D31: TFloatField
      FieldName = 'D31'
      Origin = '"REP_SORS_ALL"."D31"'
    end
  end
  object qRep_Plan_Day: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      
        '    select (select az. name from prod_areas az  where az.id_p_ar' +
        'ea = f.id_area) arname,'
      '     coalesce(per.fio,'#39#1056#1077#1079#1077#1088#1074#39
      '    ) fio,l1.din+l1.tin din , l1.dto+l1.tto dto,'
      '    coalesce(o.obj_name,i.name)||coalesce(o.dec_no,'#39#39' ) nm,'
      
        '    p.name name_ord,pt.name name_ptype,p.n_order,r.step, s.name ' +
        ' name_oper, ps.name  name_post, l.id_equipment,'
      
        '    case when (e.id_equipment = 0 or e.id_equipment is null)  th' +
        'en '#39#39
      '     else e.shotname end shotname,'
      
        '    l1.id_prod_plan_p,coalesce(l1.id_p,1) id_p,l1.amount ,l1.rem' +
        ',l1.f_amount,l.d_out,l.f_time f_time_p,'
      '    l1.dto+l1.tto dto_,'
      
        '    floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+ ( ((l1.dto+l' +
        '1.tto) -(l1.din+l1.tin))*24'
      
        '    - floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 tm' +
        '_ ,'
      
        '    floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+ ( ((l1.dto+l' +
        '1.tto) -(l1.din+l1.tin))*24'
      
        '    - floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 tm' +
        ' ,'
      '    l1.f_time,l1.p_time ,'
      
        '    p.id_version,p.id_project, p.id_order, o.id_object,r.id_prod' +
        '_oper, o.obj_type,'
      '    f.id_operation,l.id_prod_plan, h.name name_shift'
      
        '     from project_ords p join product_objects o on o.id_version ' +
        '= p.id_version'
      '     join product_oper r on r.id_object = o.id_object'
      
        '     join product_traff f on f.id_prod_oper = r.id_prod_oper and' +
        ' f.id_area in'
      '     /******/'
      '     (select id from get_str_param(:id_p_area_s, '#39','#39'))'
      '     /*****/'
      
        '     join operations s on s.id_area = f.id_area and s.id_operati' +
        'on = f.id_operation'
      
        '     join product_plans l on l.d_out >= :d_in and l.d_out <= :d_' +
        'out and l.amount > 0'
      '     and l.id_prod_traf = f.id_prod_traff'
      '     join product_plans_p l1 on l1.id_prod_plan = l.id_prod_plan'
      '     left join items i on i.id_item = o.id_item'
      '     left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT'
      '     left join personnel per on l1.id_p = per.id_p'
      '     left join post ps on per.idpost = ps.idpost'
      '     left join shifts h on h.id_shift = l.id_shift'
      '     left join ptypes pt on pt.id_ptype = p.id_cptype'
      '      union'
      
        '     select (select az. name from prod_areas az  where az.id_p_a' +
        'rea = l.id_area) arname,'
      '     coalesce(per.fio,'#39#1056#1077#1079#1077#1088#1074#39
      
        '    ) fio, coalesce(l1.din+l1.tin, cast(l.d_out as timestamp)) d' +
        'in ,'
      '    coalesce(l1.dto+l1.tto, cast(l.d_out as timestamp) +'
      
        '    ( (floor(l.f_time) + (l.f_time - floor(l.f_time))) )/24) dto' +
        ','
      '    cast(coalesce(d.name,'#39#1041#1077#1079' '#1090#1080#1087#1072#39' ) as varchar(160))  nm,'
      '    cast(coalesce(o.name,'#39#1041#1077#1079' '#1090#1080#1087#1072#39' ) as varchar(64)) name_ord,'
      
        '    cast(coalesce(pt.name,'#39#1041#1077#1079' '#1090#1080#1087#1072#39' ) as varchar(32)) name_ptyp' +
        'e,'
      ''
      
        '    coalesce(o.n_order,cast('#39#1041#1077#1079' '#1079#1072#1082#1072#1079#1072#39'  as varchar(16))) n_ord' +
        'er,'
      '    cast(0 as integer) step,cast('#39'*'#39'  as varchar(30)) name_oper,'
      '    ps.name  name_post, l.id_equipment,'
      
        '    case when (l.id_equipment = 0 or l.id_equipment is null)  th' +
        'en '#39#39
      '     else e.shotname end shotname,'
      '    l1.id_prod_plan_p,coalesce(l1.id_p,1) id_p,l1.amount ,'
      '    l1.rem,l1.f_amount , l.d_out, l.f_time f_time_p,'
      '    l1.dto+l1.tto dto_,'
      '    floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+'
      '    ( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24'
      
        '    - floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 tm' +
        '_,'
      '    coalesce(floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 )+'
      '    ( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24'
      '    - floor( ((l1.dto+l1.tto) -(l1.din+l1.tin))*24 ) )*60/100 ,'
      
        '     (floor(l.f_time) + (l.f_time - floor(l.f_time)) *60/100)  )' +
        ' tm ,'
      '    l1.f_time,l1.p_time,'
      
        '    cast(0 as integer) id_version, cast(0 as integer) id_project' +
        ', cast(0 as integer) id_order,'
      '     coalesce(l.id_dutytype,1) id_object,'
      
        '    cast(0 as integer) id_prod_oper, cast(0 as integer) obj_type' +
        ' , cast(0 as integer) id_operation,'
      
        '    cast(0 as integer) id_prod_plan, cast(h.name as varchar(64))' +
        ' name_shift'
      '     from product_plans_stop l'
      '     join product_plans_p l1 on  l.id_area in'
      '     /******/'
      '     (select id from get_str_param(:id_p_area_s, '#39','#39'))'
      '     /*****/'
      
        '     and l.d_out >= :d_in and l.d_out <= :d_out and l1.id_prod_p' +
        'lan_stop = l.id_prod_plan_stop'
      '     left join dutytypes d on d.id_dutytype = l.id_dutytype'
      '     left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT'
      '     left join personnel per on l1.id_p = per.id_p'
      '     left join post ps on per.idpost = ps.idpost'
      '     left join shifts h on h.id_shift = l.id_shift'
      '     left join project_ords o on o.id_order = l.id_order'
      '     left join ptypes pt on pt.id_ptype = o.id_cptype')
    Left = 410
    Top = 298
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_p_area_s'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_in'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_p_area_s'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_in'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end>
    object qRep_Plan_DayARNAME: TIBStringField
      DisplayLabel = #1059#1095#1072#1089#1090#1086#1082
      FieldName = 'ARNAME'
      ProviderFlags = []
      Size = 80
    end
    object qRep_Plan_DayFIO: TIBStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qRep_Plan_DayDIN: TDateTimeField
      DisplayLabel = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1086#1077'|'#1053#1072#1095#1072#1083#1086
      FieldName = 'DIN'
      ProviderFlags = []
      DisplayFormat = 'dd.mm.yyyy hh:mm'
    end
    object qRep_Plan_DayDTO: TDateTimeField
      DisplayLabel = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1086#1077'|'#1054#1082#1086#1085#1095#1072#1085#1080#1077
      FieldName = 'DTO'
      ProviderFlags = []
      DisplayFormat = 'dd.mm.yyyy hh:mm'
    end
    object qRep_Plan_DayNM: TIBStringField
      DisplayLabel = #1054#1073#1098#1077#1082#1090
      FieldName = 'NM'
      ProviderFlags = []
      Size = 128
    end
    object qRep_Plan_DayNAME_ORD: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
      FieldName = 'NAME_ORD'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qRep_Plan_DayN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qRep_Plan_DaySTEP: TIntegerField
      DisplayLabel = #1064#1072#1075
      FieldName = 'STEP'
      Origin = '"PRODUCT_OPER"."STEP"'
    end
    object qRep_Plan_DayNAME_OPER: TIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'NAME_OPER'
      Origin = '"OPERATIONS"."NAME"'
      Size = 30
    end
    object qRep_Plan_DayNAME_POST: TIBStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'NAME_POST'
      Origin = '"POST"."NAME"'
      Size = 50
    end
    object qRep_Plan_DaySHOTNAME: TIBStringField
      DisplayLabel = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      FieldName = 'SHOTNAME'
      Origin = '"EQUIPMENTS"."SHOTNAME"'
      Size = 64
    end
    object qRep_Plan_DayID_PROD_PLAN_P: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1083#1072#1085#1072' '#1087#1086' '#1091#1095#1072#1089#1090#1085#1080#1082#1072#1084
      FieldName = 'ID_PROD_PLAN_P'
      Origin = '"PRODUCT_PLANS_P"."ID_PROD_PLAN_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRep_Plan_DayID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      FieldName = 'ID_P'
      Origin = '"PRODUCT_PLANS_P"."ID_P"'
    end
    object qRep_Plan_DayAMOUNT_P: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1079#1072#1087#1083#1072#1085#1080#1088#1086#1074#1072#1085#1086
      FieldName = 'AMOUNT'
      Origin = '"PRODUCT_PLANS_P"."AMOUNT"'
    end
    object qRep_Plan_DayREM_P: TBlobField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'REM'
      Origin = '"PRODUCT_PLANS_P"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qRep_Plan_DayF_AMOUNT: TFloatField
      FieldName = 'F_AMOUNT'
      Origin = '"PRODUCT_PLANS"."F_AMOUNT"'
    end
    object qRep_Plan_DayD_OUT: TDateField
      FieldName = 'D_OUT'
      ProviderFlags = []
    end
    object qRep_Plan_DayF_TIME_P: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' ('#1072#1073#1089'.) - '#1087#1083#1072#1085
      FieldName = 'F_TIME_P'
      Origin = '"PRODUCT_PLANS_P"."F_TIME"'
      DisplayFormat = '0.0000'
    end
    object qRep_Plan_DayDTO_: TDateTimeField
      FieldName = 'DTO_'
      ProviderFlags = []
    end
    object qRep_Plan_DayTM_: TFloatField
      FieldName = 'TM_'
      ProviderFlags = []
    end
    object qRep_Plan_DayTM: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' ('#1095#1095':'#1084#1084') '#1088#1072#1089#1095#1105#1090#1085#1086#1077
      FieldName = 'TM'
      ProviderFlags = []
      DisplayFormat = '0.00'
    end
    object qRep_Plan_DayF_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' ('#1072#1073#1089')'
      FieldName = 'F_TIME'
      Origin = '"PRODUCT_PLANS"."F_TIME"'
    end
    object qRep_Plan_DayP_TIME_P: TFloatField
      DisplayLabel = #1054#1090#1095#1105#1090#1085#1086#1089#1090#1100'|'#1042#1088#1077#1084#1103
      FieldName = 'P_TIME'
      Origin = '"PRODUCT_PLANS_P"."P_TIME"'
      DisplayFormat = '0.00'
    end
    object qRep_Plan_DayID_VERSION: TIntegerField
      DisplayLabel = #1042#1077#1088#1089#1080#1103
      FieldName = 'ID_VERSION'
      Origin = '"PROJECT_ORDS"."ID_VERSION"'
    end
    object qRep_Plan_DayID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS"."ID_ORDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRep_Plan_DayID_OBJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_OBJECT'
      Origin = '"PRODUCT_OBJECTS"."ID_OBJECT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRep_Plan_DayOBJ_TYPE: TIntegerField
      DisplayLabel = #1058#1080#1087' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'OBJ_TYPE'
      Origin = '"PRODUCT_OBJECTS"."OBJ_TYPE"'
    end
    object qRep_Plan_DayID_OPERATION: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1087#1077#1088#1072#1094#1080#1080
      FieldName = 'ID_OPERATION'
      Origin = '"PRODUCT_TRAFF"."ID_OPERATION"'
    end
    object qRep_Plan_DayID_PROD_PLAN: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1083#1072#1085#1072
      FieldName = 'ID_PROD_PLAN'
      Origin = '"PRODUCT_PLANS"."ID_PROD_PLAN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRep_Plan_DayNAME_SHIFT: TIBStringField
      DisplayLabel = #1057#1084#1077#1085#1072
      FieldName = 'NAME_SHIFT'
      ProviderFlags = []
      Size = 64
    end
    object qRep_Plan_DayNAME_PTYPE: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldName = 'NAME_PTYPE'
      ProviderFlags = []
      Size = 32
    end
  end
  object dsRep_Plan_Day: TDataSource
    DataSet = qRep_Plan_Day
    Left = 416
    Top = 340
  end
  object qRepDay_Pers: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      ' select distinct per.fio,per.id_p'
      ' from'
      
        ' product_plans l  join product_plans_p l1 on l1.id_prod_plan = l' +
        '.id_prod_plan '
      '    and l.d_out = :d_out and l.ID_SHIFT = ID_SHIFT'
      
        ' join product_traff f on  l.id_prod_traf = f.id_prod_traff and f' +
        '.id_area = :id_area'
      ' left join personnel per on l1.id_p = per.id_p'
      ' order by per.fio')
    Left = 494
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end>
    object qRepDay_PersFIO: TIBStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qRepDay_PersID_P: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      FieldName = 'ID_P'
      Origin = '"PERSONNEL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qRepDay_Persnom: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'nom'
      Calculated = True
    end
  end
  object dsRepDay_Pers: TDataSource
    DataSet = qRepDay_Pers
    Left = 496
    Top = 348
  end
  object qRepDay_Det: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      ' select distinct o.id_object'
      
        ' from product_objects o  join product_oper r on r.id_object = o.' +
        'id_object'
      
        ' join product_traff f on f.id_prod_oper = r.id_prod_oper and f.i' +
        'd_area = 239'
      ' join product_plans l on'
      '    l.d_out = :d_out and l.ID_SHIFT = 1'
      '    and  l.id_prod_traf = f.id_prod_traff'
      ' join product_plans_p l1 on'
      '    l1.id_prod_plan = l.id_prod_plan '
      ' left join items i on i.id_item = o.id_item'
      ' left join equipments e on e.ID_EQUIPMENT = l1.ID_EQUIPMENT'
      ' left join personnel per on l1.id_p = per.id_p'
      ' left join post ps on per.idpost = ps.idpost'
      ''
      'union'
      ' select distinct l.id_dutytype'
      ' from product_plans_stop l'
      
        ' join product_plans_p l1 on  l.id_area = :id_area and l.d_out >=' +
        ' :d_out'
      '   and l.d_out < :d2 and l1.id_p = :id_p'
      '   and l1.id_prod_plan_stop = l.id_prod_plan_stop'
      ' join dutytypes d on d.id_dutytype = l.id_dutytype'
      ' left join equipments e on e.ID_EQUIPMENT = l.ID_EQUIPMENT'
      ' left join personnel per on l1.id_p = per.id_p '
      ' left join post ps on per.idpost = ps.idpost'
      ' left join shifts h on h.id_shift = l.id_shift')
    Left = 516
    Top = 362
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_area'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_out'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_p'
        ParamType = ptUnknown
      end>
    object qRepDay_DetID_OBJECT: TIntegerField
      FieldName = 'ID_OBJECT'
      Origin = '"PRODUCT_OBJECTS"."ID_OBJECT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRepDay_Detnom: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'nom'
      Calculated = True
    end
  end
end
