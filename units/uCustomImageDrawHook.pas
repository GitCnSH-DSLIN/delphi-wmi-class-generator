//**************************************************************************************************
//                                                                                                  
// Unit uCustomImageDrawHook                                                                        
// Unit for the WMI Delphi Code Creator                                                             
// https://github.com/RRUZ/delphi-wmi-class-generator                                               
//                                                                                                  
// The contents of this file are subject to the Mozilla Public License Version 1.1 (the "License"); 
// you may not use this file except in compliance with the License. You may obtain a copy of the    
// License at http://www.mozilla.org/MPL/                                                           
//                                                                                                  
// Software distributed under the License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF   
// ANY KIND, either express or implied. See the License for the specific language governing rights  
// and limitations under the License.                                                               
//                                                                                                  
// The Original Code is uCustomImageDrawHook.pas.                                                   
//                                                                                                  
// The Initial Developer of the Original Code is Rodrigo Ruz V.                                     
// Portions created by Rodrigo Ruz V. are Copyright (C) 2011-2015 Rodrigo Ruz V.                    
// All Rights Reserved.                                                                             
//                                                                                                  
//**************************************************************************************************

unit uCustomImageDrawHook;

interface

uses
  Windows,
  SysUtils,
  Graphics,
  ImgList,
  CommCtrl,
  Math;

implementation

type
  TJumpOfs = integer;
  PPointer = ^Pointer;

  PXRedirCode = ^TXRedirCode;

  TXRedirCode = packed record
    Jump:   byte;
    Offset: TJumpOfs;
  end;

  PAbsoluteIndirectJmp = ^TAbsoluteIndirectJmp;

  TAbsoluteIndirectJmp = packed record
    OpCode: word;
    Addr:   PPointer;
  end;

  TCustomImageListHack = class(TCustomImageList);

var
  DoDrawBackup: TXRedirCode;

function GetActualAddr(Proc: Pointer): Pointer;
begin
  if Proc <> nil then
  begin
    if (Win32Platform = VER_PLATFORM_WIN32_NT) and
      (PAbsoluteIndirectJmp(Proc).OpCode = $25FF) then
      Result := PAbsoluteIndirectJmp(Proc).Addr^
    else
      Result := Proc;
  end
  else
    Result := nil;
end;

procedure HookProc(Proc, Dest: Pointer; var BackupCode: TXRedirCode);
var
  lpNumberOfBytesRead:    SIZE_T;
  Code: TXRedirCode;
begin
  Proc := GetActualAddr(Proc);
  Assert(Proc <> nil);
  if ReadProcessMemory(GetCurrentProcess, Proc, @BackupCode, SizeOf(BackupCode), lpNumberOfBytesRead) then
  begin
    Code.Jump   := $E9;
    Code.Offset := PAnsiChar(Dest) - PAnsiChar(Proc) - SizeOf(Code);
    WriteProcessMemory(GetCurrentProcess, Proc, @Code, SizeOf(Code), lpNumberOfBytesRead);
  end;
end;

procedure UnhookProc(Proc: Pointer; var BackupCode: TXRedirCode);
var
  lpNumberOfBytesWritten: SIZE_T;
begin
  if (BackupCode.Jump <> 0) and (Proc <> nil) then
  begin
    Proc := GetActualAddr(Proc);
    Assert(Proc <> nil);
    WriteProcessMemory(GetCurrentProcess, Proc, @BackupCode, SizeOf(BackupCode), lpNumberOfBytesWritten);
    BackupCode.Jump := 0;
  end;
end;


type
  TCustomImageListClass = class(TCustomImageList);

procedure DoDrawGrayImage(hdcDst: HDC; himl: HIMAGELIST; ImageIndex, X, Y: Integer);
var
  pimldp: TImageListDrawParams;
begin
  FillChar(pimldp, SizeOf(pimldp), #0);
  pimldp.fState := ILS_SATURATE;
  pimldp.cbSize := SizeOf(pimldp);
  pimldp.hdcDst := hdcDst;
  pimldp.himl := himl;
  pimldp.i := ImageIndex;
  pimldp.x := X;
  pimldp.y := Y;
  ImageList_DrawIndirect(@pimldp);
end;

function GetRGBColor(Value: TColor): DWORD;
begin
  Result := ColorToRGB(Value);
  case Result of
    clNone    :  Result := CLR_NONE;
    clDefault :  Result := CLR_DEFAULT;
  end;
end;

procedure Detour_TCustomImageList_DoDraw(Self: TObject; Index: Integer; Canvas: TCanvas; X, Y: Integer; Style: Cardinal; Enabled: Boolean);
var
  LImageList : TCustomImageListClass;
begin
  LImageList:=TCustomImageListClass(Self);
  if not LImageList.HandleAllocated then Exit;
  if Enabled then
    ImageList_DrawEx(LImageList.Handle, Index, Canvas.Handle, X, Y, 0, 0, GetRGBColor(LImageList.BkColor), GetRGBColor(LImageList.BlendColor), Style)
  else
    DoDrawGrayImage(Canvas.Handle, LImageList.Handle, Index, X, Y);
end;

procedure HookDraw;
begin
  HookProc(@TCustomImageListHack.DoDraw, @Detour_TCustomImageList_DoDraw, DoDrawBackup);
end;

procedure UnHookDraw;
begin
  UnhookProc(@TCustomImageListHack.DoDraw, DoDrawBackup);
end;


initialization
  HookDraw;

finalization
  UnHookDraw;
end.
