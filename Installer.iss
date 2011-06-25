; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
[Files]
Source: Extras\ISSkin.dll; DestDir: {app}; Flags: dontcopy
Source: Extras\Office2007.cjstyles; DestDir: {tmp}; Flags: dontcopy
Source: DelphiWmiClassGen.exe; DestDir: {app}
Source: uWmiDelphiClass.pas; DestDir: {app}
Source: WbemScripting_TLB.pas; DestDir: {app}
[Setup]
UsePreviousLanguage=no
AppName=Delphi WMI Class Generator
AppPublisher=The Road To Delphi
AppVerName=Delphi WMI Class Generator - The Road To Delphi
AppPublisherURL=http://theroadtodelphi.wordpress.com/
AppSupportURL=http://theroadtodelphi.wordpress.com/
AppUpdatesURL=http://theroadtodelphi.wordpress.com/
DefaultDirName={pf}\TheRoadToDelphi\Delphi WMI Class Generator
OutputBaseFileName=Setup
DisableDirPage=true
Compression=lzma
SolidCompression=true
UsePreviousAppDir=false
AppendDefaultDirName=true
PrivilegesRequired=admin
WindowVisible=false
WizardSmallImageFile=compiler:WizModernSmallImage-IS.bmp
WizardImageFile=Extras\Office2007Gray.bmp
AppContact=theroadtodelphi@gmail.com
DisableProgramGroupPage=false
AppID=Delphi.WMI.Class.Generator
SetupIconFile=Images\Icon.ico
DefaultGroupName=Delphi WMI Class Generator
MinVersion=,5.01.2600
[Code]
procedure LoadSkin(lpszPath: String; lpszIniFileName: String); external 'LoadSkin@files:isskin.dll stdcall';
procedure UnloadSkin(); external 'UnloadSkin@files:isskin.dll stdcall';
function  ShowWindow(hWnd: Integer; uType: Integer): Integer; external 'ShowWindow@user32.dll stdcall';

function InitializeSetup(): Boolean;
begin
   ExtractTemporaryFile('Office2007.cjstyles');
   LoadSkin(ExpandConstant('{tmp}\Office2007.cjstyles'), 'NormalBlack.ini');
   Result:=True;
end;

procedure DeinitializeSetup();
begin
	ShowWindow(StrToInt(ExpandConstant('{wizardhwnd}')), 0);
	UnloadSkin();
end;

[Icons]
Name: {group}\Delphi WMI Class Generator; Filename: {app}\DelphiWmiClassGen.exe; WorkingDir: {app}
Name: {userdesktop}\Delphi WMI Class Generator; Filename: {app}\DelphiWmiClassGen.exe; WorkingDir: {app}
