unit Func;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,shellapi,Shlobj,
  Vcl.ExtCtrls;

  function DelDir(dir: string): Boolean; // 함수 선언
  function GetProgramFilesDir: String;  // 함수 선언

implementation

uses unit1;  //unit1 

function GetProgramFilesDir: String; 
const
    CSIDL_LOCAL_APPDATA           = $001c; // 해당 PC 의 Local Appdata 폴더를 찾아줌
var
   pidl: PItemIDList;
   Path: array [0..MAX_PATH-1] of char;
begin
   if Succeeded(SHGetSpecialFolderLocation(Application.Handle, CSIDL_LOCAL_APPDATA, pidl)) then
   begin
      if SHGetPathFromIDList(pidl, Path) then
         Result := StrPas(path);
   end;
end;

function DelDir(dir: string): Boolean; //File 삭제 함수 
var
  fos: TSHFileOpStruct;
begin
  ZeroMemory(@fos, SizeOf(fos));
  with fos do
  begin
    wFunc  := FO_DELETE;
    fFlags := FOF_SILENT or FOF_NOCONFIRMATION;
    pFrom  := PChar(dir + #0);
  end;
  Result := (0 = ShFileOperation(fos));
end;

end.
