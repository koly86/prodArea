object fmTAB_S: TfmTAB_S
  Left = 245
  Top = 156
  Width = 717
  Height = 480
  Caption = 'fmTAB_S'
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
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 701
    Height = 442
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object dbn1: TDBNavigator
      Left = 2
      Top = 422
      Width = 697
      Height = 18
      DataSource = dmIS.dsTAB_S
      Align = alBottom
      TabOrder = 0
    end
    object dbg1: TDBGridEh
      Left = 2
      Top = 2
      Width = 697
      Height = 420
      Align = alClient
      DataSource = dmIS.dsTAB_S
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      SumList.Active = True
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
          FieldName = 'ID_TAB_COEFF'
          Footers = <>
          Width = 27
        end
        item
          EditButtons = <>
          FieldName = 'TAB_DAY'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'COEFF'
          Footers = <>
          Width = 43
        end
        item
          DropDownRows = 15
          DropDownSizing = True
          EditButtons = <>
          FieldName = 'nCOEFF'
          Footers = <>
          Width = 190
          OnUpdateData = DBGridEh1Columns3UpdateData
        end
        item
          EditButtons = <>
          FieldName = 'sN'
          Footers = <>
          Width = 37
        end
        item
          EditButtons = <>
          FieldName = 'VAL'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'COMMENT'
          Footers = <>
          Width = 230
        end
        item
          EditButtons = <>
          FieldName = 'dCOEF'
          Footers = <>
          Width = 48
        end>
    end
  end
end
