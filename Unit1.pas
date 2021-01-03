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

//2019년도에 작동하던 언벤 방식이므로, 현재 2021년엔 언벤이 성공적으로 이루어지지 않으며 그저 아이디 로그아웃기능 정도로만 사용할 수 있습니다.
procedure TForm1.Button1Click(Sender: TObject);
begin
 if DelDir(''+GetProgramFilesDir+'\DigitalEntitlements') = True then //가져온 Local Appdata 폴더내에 \DigitalEntitlements 폴더가 있다면 삭제
    ShowMessage('Unban ! '+ #13#10 +'FiveM을 재실행 해주세요.');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
ShowMessage ('디스코드 : 먕?#2461');
end;

end.
