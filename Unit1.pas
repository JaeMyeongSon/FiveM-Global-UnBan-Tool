unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,shellapi,Winhttp_TLB,Shlobj,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
      uses Func;
{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
begin
 if DelDir(''+GetProgramFilesDir+'\DigitalEntitlements') = True then
    ShowMessage('AntiBan ! '+ #13#10 +'FiveM을 재실행 해주세요.');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
ShowMessage ('디스코드 : 먕?#8689');
end;

end.
