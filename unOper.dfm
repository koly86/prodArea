object fmOper: TfmOper
  Left = 645
  Top = 469
  Width = 611
  Height = 403
  Caption = #1054#1087#1077#1088#1072#1094#1080#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 595
    Height = 365
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object dbn1: TDBNavigator
      Left = 2
      Top = 345
      Width = 591
      Height = 18
      DataSource = dmIS.dsOper
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 0
    end
    object dbg1: TDBGrid
      Left = 2
      Top = 2
      Width = 591
      Height = 343
      Align = alClient
      DataSource = dmIS.dsOper
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_OPERATION'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SHORTNAME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_EQUIPMENT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COST'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nUNIT'
          Visible = True
        end>
    end
  end
end
