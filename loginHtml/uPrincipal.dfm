object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 810
  ClientWidth = 1303
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object wbLogin: TWebBrowser
    Left = 0
    Top = 41
    Width = 1303
    Height = 769
    Align = alClient
    TabOrder = 0
    OnStatusTextChange = wbLoginStatusTextChange
    OnProgressChange = wbLoginProgressChange
    OnCommandStateChange = wbLoginCommandStateChange
    OnPropertyChange = wbLoginPropertyChange
    OnNewProcess = wbLoginNewProcess
    OnBeforeScriptExecute = wbLoginBeforeScriptExecute
    ExplicitLeft = 88
    ExplicitTop = 120
    ExplicitWidth = 385
    ExplicitHeight = 193
    ControlData = {
      4C000000AB8600007A4F00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E12620C000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1303
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 176
    ExplicitTop = 120
    ExplicitWidth = 185
    object lblMensagem: TLabel
      Left = 112
      Top = 1
      Width = 1190
      Height = 39
      Align = alRight
      AutoSize = False
      Layout = tlCenter
      WordWrap = True
    end
    object Button1: TButton
      Left = 9
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
    end
  end
end
