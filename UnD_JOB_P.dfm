object fmD_JOB_P: TfmD_JOB_P
  Left = 226
  Top = 162
  Width = 696
  Height = 329
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1092#1072#1082#1090#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 302
    Align = alClient
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 121
      Width = 686
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object dbg1: TDBGridEh
      Left = 1
      Top = 1
      Width = 686
      Height = 120
      Align = alTop
      DataSource = dmIS.dsD_JOB
      DrawMemoText = True
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
          FieldName = 'N_ORDER'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'ID_VERSION'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'OBJ_TYPE'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'NM'
          Footers = <>
          Width = 185
        end
        item
          EditButtons = <>
          FieldName = 'STEP'
          Footers = <>
          Width = 36
        end
        item
          EditButtons = <>
          FieldName = 'ONAME'
          Footers = <>
        end
        item
          Color = clWhite
          EditButtons = <>
          FieldName = 'AMOUNT'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'F_AMOUNT'
          Footers = <>
        end
        item
          ButtonStyle = cbsEllipsis
          Color = 16776176
          EditButtons = <>
          FieldName = 'P_AMOUNT'
          Footers = <>
        end
        item
          Color = 16776176
          EditButtons = <>
          FieldName = 'F_TIME'
          Footers = <>
        end
        item
          Color = clMoneyGreen
          EditButtons = <>
          FieldName = 'OST'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'T_PERSONNEL'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'SUM_PERS'
          Footers = <>
        end>
    end
    object dbg2: TDBGridEh
      Left = 1
      Top = 124
      Width = 686
      Height = 177
      Align = alClient
      DataSource = dmIS.dsPlans_P
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'AMOUNT'
          Footers = <>
          Title.EndEllipsis = True
        end
        item
          Color = 16776176
          EditButtons = <>
          FieldName = 'ID_TEAM'
          Footers = <>
          Title.EndEllipsis = True
        end
        item
          ButtonStyle = cbsEllipsis
          Color = 16776176
          EditButtons = <>
          FieldName = 'ID_P'
          Footers = <>
          Title.EndEllipsis = True
          Width = 309
        end
        item
          Color = 16776176
          EditButtons = <>
          FieldName = 'F_AMOUNT'
          Footers = <>
          Title.EndEllipsis = True
        end
        item
          Color = 16776176
          EditButtons = <>
          FieldName = 'F_TIME'
          Footers = <>
          Title.EndEllipsis = True
        end
        item
          EditButtons = <>
          FieldName = 'ID_PROD_PLAN'
          Footers = <>
          Title.EndEllipsis = True
        end
        item
          EditButtons = <>
          FieldName = 'ID_PROD_PLAN_P'
          Footers = <>
          Title.EndEllipsis = True
        end>
    end
  end
end
