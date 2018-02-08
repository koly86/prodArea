object fmPROJECTS: TfmPROJECTS
  Left = 256
  Top = 190
  Width = 760
  Height = 406
  Caption = #1047#1072#1082#1072#1079#1099
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
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 752
    Height = 29
    AutoSize = True
    Caption = 'tlb1'
    Flat = True
    Images = fmMain.il1
    TabOrder = 0
  end
  object p3: TPanel
    Left = 504
    Top = 29
    Width = 248
    Height = 350
    Align = alRight
    BevelInner = bvLowered
    TabOrder = 1
    object dbg3: TDBGrid
      Left = 2
      Top = 2
      Width = 244
      Height = 346
      Align = alClient
      DataSource = dmIS.dsPLAN
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'D_OUT'
          Title.Alignment = taCenter
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMOUNT'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'F_AMOUNT'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object p4: TPanel
    Left = 0
    Top = 29
    Width = 504
    Height = 350
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 2
      Top = 209
      Width = 500
      Height = 2
      Cursor = crVSplit
      Align = alBottom
    end
    object p2: TPanel
      Left = 2
      Top = 211
      Width = 500
      Height = 137
      Align = alBottom
      BevelInner = bvLowered
      TabOrder = 0
      object dbg2: TDBGrid
        Left = 2
        Top = 2
        Width = 496
        Height = 133
        Align = alClient
        DataSource = dmIS.dsP_OBJ
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = dbg2DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_OBJECT'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nOBJ'
            Title.Alignment = taCenter
            Width = 234
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_OPERATION'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STEP'
            Title.Alignment = taCenter
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
    object p1: TPanel
      Left = 2
      Top = 2
      Width = 500
      Height = 207
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 1
      object dbg1: TDBGrid
        Left = 2
        Top = 2
        Width = 496
        Height = 203
        Align = alClient
        DataSource = dmIS.dsP_PR
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = dbg1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'N_ORDER'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME'
            Title.Alignment = taCenter
            Width = 295
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_ORDER'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FIO'
            Visible = True
          end>
      end
    end
  end
end
