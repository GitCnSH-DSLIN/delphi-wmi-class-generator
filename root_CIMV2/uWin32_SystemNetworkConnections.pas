/// <summary>
/// Unit generated using the Delphi Wmi class generator tool, Copyright Rodrigo Ruz V. 2010
/// Application version 0.1.0.116
/// WMI version 7600.16385
/// Creation Date 24-12-2010 08:20:23
/// Namespace root\CIMV2 Class Win32_SystemNetworkConnections
/// MSDN info about this class http://msdn2.microsoft.com/library/default.asp?url=/library/en-us/wmisdk/wmi/Win32_SystemNetworkConnections.asp
/// </summary>

{$IFDEF FPC}
 {$MODE DELPHI} {$H+}
 {$DEFINE OLD_DELPHI}
{$ENDIF}

unit uWin32_SystemNetworkConnections;

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
  TWin32_SystemNetworkConnections=class(TWmiClass)
  private
    FGroupComponent                     : OleVariant;
    FPartComponent                      : OleVariant;
  public
   constructor Create(LoadWmiData : boolean=True); overload;
   destructor Destroy;Override;
   property GroupComponent : OleVariant read FGroupComponent;
   property PartComponent : OleVariant read FPartComponent;
   procedure SetCollectionIndex(Index : Integer); override;
  end;



implementation


{TWin32_SystemNetworkConnections}

constructor TWin32_SystemNetworkConnections.Create(LoadWmiData : boolean=True);
begin
  inherited Create(LoadWmiData,'root\CIMV2','Win32_SystemNetworkConnections');
end;

destructor TWin32_SystemNetworkConnections.Destroy;
begin
  inherited;
end;

procedure TWin32_SystemNetworkConnections.SetCollectionIndex(Index : Integer);
begin
  if (Index>=0) and (Index<=FWmiCollection.Count-1) and (FWmiCollectionIndex<>Index) then
  begin
    FWmiCollectionIndex:=Index;
    FGroupComponent      := inherited Value['GroupComponent'];
    FPartComponent       := inherited Value['PartComponent'];
  end;
end;

end.