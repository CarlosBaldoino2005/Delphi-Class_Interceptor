object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Cadastro Padr'#227'o'
  ClientHeight = 401
  ClientWidth = 598
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 598
    Height = 401
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 598
      Height = 73
      Align = alTop
      BevelOuter = bvNone
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Padding.Left = 10
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 10
        Top = 0
        Width = 180
        Height = 73
        Align = alLeft
        Caption = 'Cadastro de Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 25
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 73
      Width = 598
      Height = 255
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Label2: TLabel
        Left = 10
        Top = 24
        Width = 43
        Height = 21
        Caption = 'Nome'
      end
      object Label3: TLabel
        Left = 10
        Top = 59
        Width = 27
        Height = 21
        Caption = 'CPF'
      end
      object Label4: TLabel
        Left = 10
        Top = 94
        Width = 64
        Height = 21
        Caption = 'Endere'#231'o'
      end
      object Label5: TLabel
        Left = 10
        Top = 126
        Width = 42
        Height = 21
        Caption = 'Bairro'
      end
      object Label6: TLabel
        Left = 10
        Top = 164
        Width = 48
        Height = 21
        Caption = 'Cidade'
      end
      object Label7: TLabel
        Left = 10
        Top = 199
        Width = 46
        Height = 21
        Caption = 'Estado'
      end
      object Edit1: TEdit
        Left = 85
        Top = 21
        Width = 276
        Height = 29
        TabOrder = 0
        OnExit = Edit1Exit
      end
      object Edit2: TEdit
        Left = 85
        Top = 56
        Width = 276
        Height = 29
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 85
        Top = 91
        Width = 276
        Height = 29
        TabOrder = 2
      end
      object Edit4: TEdit
        Left = 85
        Top = 126
        Width = 276
        Height = 29
        TabOrder = 3
      end
      object Edit5: TEdit
        Left = 85
        Top = 161
        Width = 276
        Height = 29
        Color = clBtnHighlight
        TabOrder = 4
      end
      object Edit6: TEdit
        Left = 85
        Top = 196
        Width = 276
        Height = 29
        TabOrder = 5
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 328
      Width = 598
      Height = 73
      Align = alBottom
      BevelOuter = bvNone
      Color = clSilver
      ParentBackground = False
      TabOrder = 2
      object Button1: TButton
        Left = 398
        Top = 0
        Width = 100
        Height = 73
        Align = alRight
        Caption = 'Salvar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Button2: TButton
        Left = 498
        Top = 0
        Width = 100
        Height = 73
        Align = alRight
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
  end
end
