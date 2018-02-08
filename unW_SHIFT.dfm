object fmWORK_SHIFTS: TfmWORK_SHIFTS
  Left = 257
  Top = 114
  Width = 732
  Height = 372
  Caption = #1043#1088#1072#1092#1080#1082#1080' '#1088#1072#1073#1086#1090#1099' '#1080' '#1091#1089#1076#1086#1074#1080#1103' '#1085#1072#1081#1084#1072
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
    Top = 148
    Width = 724
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 151
    Width = 724
    Height = 194
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 0
    DesignSize = (
      724
      194)
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 93
      Height = 13
      Caption = #1059#1089#1083#1086#1074#1080#1103' '#1085#1072#1081#1084#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbg2: TDBGrid
      Left = 2
      Top = 28
      Width = 720
      Height = 164
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dmIS.dsCONTYPE
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CONTRACT_TYPE'
          Title.Alignment = taCenter
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Width = 182
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMMENT'
          Title.Alignment = taCenter
          Width = 386
          Visible = True
        end>
    end
  end
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 724
    Height = 148
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    DesignSize = (
      724
      148)
    object Label2: TLabel
      Left = 16
      Top = 8
      Width = 99
      Height = 13
      Caption = #1043#1088#1072#1092#1080#1082#1080' '#1088#1072#1073#1086#1090#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 32
      Width = 720
      Height = 107
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dmIS.dsWSHIFT
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'WORK_SHIFT'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIME_BEGIN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIME_END'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WORK_DAYS'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REST_DAYS'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMMENT'
          Width = 250
          Visible = True
        end>
    end
  end
end
