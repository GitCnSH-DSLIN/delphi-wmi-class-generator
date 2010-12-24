/// <summary>
/// Unit generated using the Delphi Wmi class generator tool, Copyright Rodrigo Ruz V. 2010
/// Application version 0.1.0.116
/// WMI version 7600.16385
/// Creation Date 24-12-2010 08:19:39
/// Namespace root\CIMV2 Class Win32_InstalledSoftwareElement
/// MSDN info about this class http://msdn2.microsoft.com/library/default.asp?url=/library/en-us/wmisdk/wmi/Win32_InstalledSoftwareElement.asp
/// </summary>

{$IFDEF FPC}
 {$MODE DELPHI} {$H+}
 {$DEFINE OLD_DELPHI}
{$ENDIF}

unit uWin32_InstalledSoftwareElement;

interface

uses
 Classes,
 Activex,
 Variants,
 ComObj,
 uWmiDelphiClass;

type
{$IFDEF FPC}
  Cardinal=Longint;
  Int64=Integer;
  Word=Longint;
{$ENDIF}
{$IFNDEF FPC}
  {$IF CompilerVersion <= 15}
    {$DEFINE OLD_DELPHI}
  {$IFEND}
{$ENDIF}
  TWin32_InstalledSoftwareElement=class(TWmiClass)
  private
    FSoftware                           : OleVariant;
    FSystem                             : OleVariant;
  public
   constructor Create(LoadWmiData : boolean=True); overload;
   destructor Destroy;Override;
   property Software : OleVariant read FSoftware;
   property System : OleVariant read FSystem;
   procedure SetCollectionIndex(Index : Integer); override;
  end;



implementation


{TWin32_InstalledSoftwareElement}

constructor TWin32_InstalledSoftwareElement.Create(LoadWmiData : boolean=True);
begin
  inherited Create(LoadWmiData,'root\CIMV2','Win32_InstalledSoftwareElement');
end;

destructor TWin32_InstalledSoftwareElement.Destroy;
begin
  inherited;
end;

procedure TWin32_InstalledSoftwareElement.SetCollectionIndex(Index : Integer);
begin
  if (Index>=0) and (Index<=FWmiCollection.Count-1) and (FWmiCollectionIndex<>Index) then
  begin
    FWmiCollectionIndex:=Index;
    FSoftware      := inherited Value['Software'];
    FSystem        := inherited Value['System'];
  end;
end;

end.