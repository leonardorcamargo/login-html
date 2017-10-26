unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.OleCtrls, SHDocVw,
  Vcl.StdCtrls, System.Threading, System.Classes, MSHTML;

type
  TForm1 = class(TForm)
    wbLogin: TWebBrowser;
    Panel1: TPanel;
    Button1: TButton;
    lblMensagem: TLabel;
    procedure FormShow(Sender: TObject);
    procedure wbLoginStatusTextChange(ASender: TObject; const Text: WideString);
    procedure wbLoginBeforeScriptExecute(ASender: TObject;
      const pDispWindow: IDispatch);
    procedure wbLoginCommandStateChange(ASender: TObject; Command: Integer;
      Enable: WordBool);
    procedure wbLoginNewProcess(ASender: TObject; lCauseFlag: Integer;
      const pWB2: IDispatch; var Cancel: WordBool);
    procedure wbLoginPropertyChange(ASender: TObject;
      const szProperty: WideString);
    procedure wbLoginProgressChange(ASender: TObject; Progress,
      ProgressMax: Integer);
  private
    procedure ShowMessage(AMessage: string);
    function getUsuario: string;
    function getSenha: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  wbLogin.Navigate('https://leonardorcamargo.github.io/login-html/');
  ShowMessage('Acessando https://leonardorcamargo.github.io/login-html/');
end;

procedure TForm1.ShowMessage(AMessage : string);
var vThread : ITask;
begin
  lblMensagem.Caption := AMessage;
  vThread := TTask.Create(procedure ()
    var vTime : Double;
    begin
      vTime := now;
      while now - vTime < 0.00005 do
        Continue;
      lblMensagem.Caption := EmptyStr;
    end);
  vThread.Start;
end;

procedure TForm1.wbLoginBeforeScriptExecute(ASender: TObject;
  const pDispWindow: IDispatch);
begin
//  ShowMessage('wbLoginBeforeScriptExecute Usuário: '+getUsuario+' Senha: '+getSenha);
end;

procedure TForm1.wbLoginCommandStateChange(ASender: TObject; Command: Integer;
  Enable: WordBool);
begin
//  ShowMessage('wbLoginCommandStateChange Usuário: '+getUsuario+' Senha: '+getSenha+' '+Command.ToString);
end;

procedure TForm1.wbLoginNewProcess(ASender: TObject; lCauseFlag: Integer;
  const pWB2: IDispatch; var Cancel: WordBool);
begin
//  ShowMessage('wbLoginNewProcess Usuário: '+getUsuario+' Senha: '+getSenha);
end;

procedure TForm1.wbLoginProgressChange(ASender: TObject; Progress,
  ProgressMax: Integer);
begin
//  ShowMessage('wbLoginProgressChange Usuário: '+getUsuario+' Senha: '+getSenha);
end;

procedure TForm1.wbLoginPropertyChange(ASender: TObject;
  const szProperty: WideString);
begin
//  ShowMessage('wbLoginPropertyChange Usuário: '+getUsuario+' Senha: '+getSenha);
end;

procedure TForm1.wbLoginStatusTextChange(ASender: TObject;
  const Text: WideString);
begin
//funcionou
//  ShowMessage('wbLoginStatusTextChange Usuário: '+getUsuario+' Senha: '+getSenha);
end;

function TForm1.getUsuario : string;
begin
  if Assigned((wbLogin.Document as IHTMLDocument3)) then
    if Assigned((wbLogin.Document as IHTMLDocument3).getElementById('idLogin')) then
      if Assigned(((wbLogin.Document as IHTMLDocument3).getElementById('idLogin') as IHTMLInputTextElement)) then
        Result := ((wbLogin.Document as IHTMLDocument3).getElementById('idLogin') as IHTMLInputTextElement).value;
end;

function TForm1.getSenha : string;
begin
  if Assigned((wbLogin.Document as IHTMLDocument3)) then
    if Assigned((wbLogin.Document as IHTMLDocument3).getElementById('idPassword')) then
      if Assigned(((wbLogin.Document as IHTMLDocument3).getElementById('idPassword') as IHTMLInputTextElement)) then
        Result := ((wbLogin.Document as IHTMLDocument3).getElementById('idPassword') as IHTMLInputTextElement).value;
end;


end.
