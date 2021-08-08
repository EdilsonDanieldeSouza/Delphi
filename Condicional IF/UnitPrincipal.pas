unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EdtUsuario: TEdit;
    EdtSenha: TEdit;
    BtnLogin: TButton;
    procedure BtnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnLoginClick(Sender: TObject);
begin
  if (EdtUsuario.Text = 'admin') and (EdtSenha.Text = '123') then
    begin
      ShowMessage('Login executado com sucesso');
    end
  else
    begin
      ShowMessage('Dados de login incorreto');
    end;

end;

end.
