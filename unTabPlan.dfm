object fmTabPlan: TfmTabPlan
  Left = 235
  Top = 159
  Width = 765
  Height = 480
  Caption = #1055#1083#1072#1085'-'#1090#1072#1073#1077#1083#1100
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
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 757
    Height = 453
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object sg1: TStringGrid
      Left = 2
      Top = 26
      Width = 753
      Height = 425
      Align = alClient
      ColCount = 31
      RowCount = 10
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goTabs]
      TabOrder = 0
      OnDrawCell = sg1DrawCell
      OnKeyUp = sg1KeyUp
      OnMouseDown = sg1MouseDown
      OnMouseWheelDown = sg1MouseWheelDown
      OnMouseWheelUp = sg1MouseWheelDown
      OnSelectCell = sg1SelectCell
    end
    object tlb1: TToolBar
      Left = 2
      Top = 2
      Width = 753
      Height = 24
      AutoSize = True
      Caption = 'tlb1'
      Flat = True
      Images = fmMain.il1
      TabOrder = 1
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 30
        Height = 22
        Caption = #1043#1086#1076':   '
      end
      object ed1: TEdit
        Left = 30
        Top = 0
        Width = 56
        Height = 22
        TabOrder = 0
        Text = '2000'
        OnKeyUp = ed1KeyUp
      end
      object ud1: TUpDown
        Left = 86
        Top = 0
        Width = 17
        Height = 22
        Associate = ed1
        Min = 1900
        Max = 3000
        Position = 2000
        TabOrder = 1
        Thousands = False
        OnClick = ud1Click
      end
      object ToolButton1: TToolButton
        Left = 103
        Top = 0
        Width = 10
        Caption = 'ToolButton1'
        Style = tbsSeparator
      end
      object Label2: TLabel
        Left = 113
        Top = 0
        Width = 42
        Height = 22
        Caption = #1052#1077#1089#1103#1094':  '
      end
      object cb1: TComboBox
        Left = 155
        Top = 0
        Width = 126
        Height = 21
        DropDownCount = 12
        ItemHeight = 13
        TabOrder = 2
        Text = #1071#1085#1074#1072#1088#1100
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
          #1085#1086#1103#1073#1088#1100
          #1044#1077#1082#1072#1073#1088#1100)
      end
      object ToolButton2: TToolButton
        Left = 281
        Top = 0
        Width = 16
        Caption = 'ToolButton2'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object chb1: TCheckBox
        Left = 297
        Top = 0
        Width = 24
        Height = 22
        TabOrder = 3
      end
      object ed2: TEdit
        Left = 321
        Top = 0
        Width = 24
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object ToolButton3: TToolButton
        Left = 345
        Top = 0
        Width = 40
        Caption = 'ToolButton3'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object Label3: TLabel
        Left = 385
        Top = 0
        Width = 84
        Height = 22
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      end
      object edDay: TEdit
        Left = 469
        Top = 0
        Width = 25
        Height = 22
        TabOrder = 5
        Text = '4'
        OnKeyDown = edDayKeyDown
      end
      object Label4: TLabel
        Left = 494
        Top = 0
        Width = 15
        Height = 22
        Caption = #1076#1085'.'
      end
    end
  end
end
