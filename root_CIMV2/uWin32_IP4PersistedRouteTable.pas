/// <summary>
/// Unit generated using the Delphi Wmi class generator tool, Copyright Rodrigo Ruz V. 2010
/// Application version 0.1.0.116
/// WMI version 7600.16385
/// Creation Date 24-12-2010 08:19:39
/// Namespace root\CIMV2 Class Win32_IP4PersistedRouteTable
/// MSDN info about this class http://msdn2.microsoft.com/library/default.asp?url=/library/en-us/wmisdk/wmi/Win32_IP4PersistedRouteTable.asp
/// </summary>

{$IFDEF FPC}
 {$MODE DELPHI} {$H+}
 {$DEFINE OLD_DELPHI}
{$ENDIF}

unit uWin32_IP4PersistedRouteTable;

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
  TWin32_IP4PersistedRouteTable=class(TWmiClass)
  private
    FCaption                            : String;
    FDescription                        : String;
    FDestination                        : String;
    FInstallDate                        : TDateTime;
    FMask                               : String;
    FMetric1                            : Integer;
    FName                               : String;
    FNextHop                            : String;
    FStatus                             : String;
  public
   constructor Create(LoadWmiData : boolean=True); overload;
   destructor Destroy;Override;
   property Caption : String read FCaption;
   property Description : String read FDescription;
   property Destination : String read FDestination;
   property InstallDate : TDateTime read FInstallDate;
   property Mask : String read FMask;
   property Metric1 : Integer read FMetric1;
   property Name : String read FName;
   property NextHop : String read FNextHop;
   property Status : String read FStatus;
   procedure SetCollectionIndex(Index : Integer); override;
  end;



implementation


{TWin32_IP4PersistedRouteTable}

constructor TWin32_IP4PersistedRouteTable.Create(LoadWmiData : boolean=True);
begin
  inherited Create(LoadWmiData,'root\CIMV2','Win32_IP4PersistedRouteTable');
end;

destructor TWin32_IP4PersistedRouteTable.Destroy;
begin
  inherited;
end;

procedure TWin32_IP4PersistedRouteTable.SetCollectionIndex(Index : Integer);
begin
  if (Index>=0) and (Index<=FWmiCollection.Count-1) and (FWmiCollectionIndex<>Index) then
  begin
    FWmiCollectionIndex:=Index;
    FCaption          := VarStrNull(inherited Value['Caption']);
    FDescription      := VarStrNull(inherited Value['Description']);
    FDestination      := VarStrNull(inherited Value['Destination']);
    FInstallDate      := VarDateTimeNull(inherited Value['InstallDate']);
    FMask             := VarStrNull(inherited Value['Mask']);
    FMetric1          := VarIntegerNull(inherited Value['Metric1']);
    FName             := VarStrNull(inherited Value['Name']);
    FNextHop          := VarStrNull(inherited Value['NextHop']);
    FStatus           := VarStrNull(inherited Value['Status']);
  end;
end;

end.