unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ree: TLabel;
    EdtNumero1: TEdit;
    EdtNumero2: TEdit;
    EdtResultado: TEdit;
    BtnSalvar: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure BtnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnSalvarClick(Sender: TObject);
var
  numero1, numero2, resultado: Real;
begin
  numero1:= StrToFloat(EdtNumero1.Text);
  numero2 := StrToFloat(EdtNumero2.Text);
  resultado := numero1 + numero2;

  EdtResultado.Text := FloatToStr(resultado)
end;

end.
