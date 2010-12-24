/// <summary>
/// Unit generated using the Delphi Wmi class generator tool, Copyright Rodrigo Ruz V. 2010
/// Application version 0.1.0.116
/// WMI version 7600.16385
/// Creation Date 24-12-2010 08:20:01
/// Namespace root\CIMV2 Class Win32_PerfRawData_Counters_IPsecAuthIPIPv4
/// MSDN info about this class http://msdn2.microsoft.com/library/default.asp?url=/library/en-us/wmisdk/wmi/Win32_PerfRawData_Counters_IPsecAuthIPIPv4.asp
/// </summary>

{$IFDEF FPC}
 {$MODE DELPHI} {$H+}
 {$DEFINE OLD_DELPHI}
{$ENDIF}

unit uWin32_PerfRawData_Counters_IPsecAuthIPIPv4;

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
  TWin32_PerfRawData_Counters_IPsecAuthIPIPv4=class(TWmiClass)
  private
    FActiveExtendedModeSAs              : Cardinal;
    FActiveMainModeSAs                  : Cardinal;
    FActiveQuickModeSAs                 : Cardinal;
    FCaption                            : String;
    FDescription                        : String;
    FExtendedModeNegotiations           : Cardinal;
    FExtendedModeNegotiationsPersec     : Cardinal;
    FExtendedModeSAsThatUsedImpersonation : Cardinal;
    FFailedExtendedModeNegotiations     : Cardinal;
    FFailedExtendedModeNegotiationsPersec : Cardinal;
    FFailedMainModeNegotiations         : Cardinal;
    FFailedMainModeNegotiationsPersec   : Cardinal;
    FFailedQuickModeNegotiations        : Cardinal;
    FFailedQuickModeNegotiationsPersec  : Cardinal;
    FFrequency_Object                   : Int64;
    FFrequency_PerfTime                 : Int64;
    FFrequency_Sys100NS                 : Int64;
    FMainModeNegotiationRequestsReceived : Cardinal;
    FMainModeNegotiationRequestsReceivedPersec : Cardinal;
    FMainModeNegotiations               : Cardinal;
    FMainModeNegotiationsPersec         : Cardinal;
    FMainModeSAsThatUsedImpersonation   : Cardinal;
    FMainModeSAsThatUsedImpersonationPersec : Cardinal;
    FName                               : String;
    FPendingExtendedModeNegotiations    : Cardinal;
    FPendingMainModeNegotiations        : Cardinal;
    FPendingQuickModeNegotiations       : Cardinal;
    FQuickModeNegotiations              : Cardinal;
    FQuickModeNegotiationsPersec        : Cardinal;
    FSuccessfulExtendedModeNegotiations : Cardinal;
    FSuccessfulExtendedModeNegotiationsPersec : Cardinal;
    FSuccessfulMainModeNegotiations     : Cardinal;
    FSuccessfulMainModeNegotiationsPersec : Cardinal;
    FSuccessfulQuickModeNegotiations    : Cardinal;
    FSuccessfulQuickModeNegotiationsPersec : Cardinal;
    FTimestamp_Object                   : Int64;
    FTimestamp_PerfTime                 : Int64;
    FTimestamp_Sys100NS                 : Int64;
  public
   constructor Create(LoadWmiData : boolean=True); overload;
   destructor Destroy;Override;
   property ActiveExtendedModeSAs : Cardinal read FActiveExtendedModeSAs;
   property ActiveMainModeSAs : Cardinal read FActiveMainModeSAs;
   property ActiveQuickModeSAs : Cardinal read FActiveQuickModeSAs;
   property Caption : String read FCaption;
   property Description : String read FDescription;
   property ExtendedModeNegotiations : Cardinal read FExtendedModeNegotiations;
   property ExtendedModeNegotiationsPersec : Cardinal read FExtendedModeNegotiationsPersec;
   property ExtendedModeSAsThatUsedImpersonation : Cardinal read FExtendedModeSAsThatUsedImpersonation;
   property FailedExtendedModeNegotiations : Cardinal read FFailedExtendedModeNegotiations;
   property FailedExtendedModeNegotiationsPersec : Cardinal read FFailedExtendedModeNegotiationsPersec;
   property FailedMainModeNegotiations : Cardinal read FFailedMainModeNegotiations;
   property FailedMainModeNegotiationsPersec : Cardinal read FFailedMainModeNegotiationsPersec;
   property FailedQuickModeNegotiations : Cardinal read FFailedQuickModeNegotiations;
   property FailedQuickModeNegotiationsPersec : Cardinal read FFailedQuickModeNegotiationsPersec;
   property Frequency_Object : Int64 read FFrequency_Object;
   property Frequency_PerfTime : Int64 read FFrequency_PerfTime;
   property Frequency_Sys100NS : Int64 read FFrequency_Sys100NS;
   property MainModeNegotiationRequestsReceived : Cardinal read FMainModeNegotiationRequestsReceived;
   property MainModeNegotiationRequestsReceivedPersec : Cardinal read FMainModeNegotiationRequestsReceivedPersec;
   property MainModeNegotiations : Cardinal read FMainModeNegotiations;
   property MainModeNegotiationsPersec : Cardinal read FMainModeNegotiationsPersec;
   property MainModeSAsThatUsedImpersonation : Cardinal read FMainModeSAsThatUsedImpersonation;
   property MainModeSAsThatUsedImpersonationPersec : Cardinal read FMainModeSAsThatUsedImpersonationPersec;
   property Name : String read FName;
   property PendingExtendedModeNegotiations : Cardinal read FPendingExtendedModeNegotiations;
   property PendingMainModeNegotiations : Cardinal read FPendingMainModeNegotiations;
   property PendingQuickModeNegotiations : Cardinal read FPendingQuickModeNegotiations;
   property QuickModeNegotiations : Cardinal read FQuickModeNegotiations;
   property QuickModeNegotiationsPersec : Cardinal read FQuickModeNegotiationsPersec;
   property SuccessfulExtendedModeNegotiations : Cardinal read FSuccessfulExtendedModeNegotiations;
   property SuccessfulExtendedModeNegotiationsPersec : Cardinal read FSuccessfulExtendedModeNegotiationsPersec;
   property SuccessfulMainModeNegotiations : Cardinal read FSuccessfulMainModeNegotiations;
   property SuccessfulMainModeNegotiationsPersec : Cardinal read FSuccessfulMainModeNegotiationsPersec;
   property SuccessfulQuickModeNegotiations : Cardinal read FSuccessfulQuickModeNegotiations;
   property SuccessfulQuickModeNegotiationsPersec : Cardinal read FSuccessfulQuickModeNegotiationsPersec;
   property Timestamp_Object : Int64 read FTimestamp_Object;
   property Timestamp_PerfTime : Int64 read FTimestamp_PerfTime;
   property Timestamp_Sys100NS : Int64 read FTimestamp_Sys100NS;
   procedure SetCollectionIndex(Index : Integer); override;
  end;



implementation


{TWin32_PerfRawData_Counters_IPsecAuthIPIPv4}

constructor TWin32_PerfRawData_Counters_IPsecAuthIPIPv4.Create(LoadWmiData : boolean=True);
begin
  inherited Create(LoadWmiData,'root\CIMV2','Win32_PerfRawData_Counters_IPsecAuthIPIPv4');
end;

destructor TWin32_PerfRawData_Counters_IPsecAuthIPIPv4.Destroy;
begin
  inherited;
end;

procedure TWin32_PerfRawData_Counters_IPsecAuthIPIPv4.SetCollectionIndex(Index : Integer);
begin
  if (Index>=0) and (Index<=FWmiCollection.Count-1) and (FWmiCollectionIndex<>Index) then
  begin
    FWmiCollectionIndex:=Index;
    FActiveExtendedModeSAs                          := VarCardinalNull(inherited Value['ActiveExtendedModeSAs']);
    FActiveMainModeSAs                              := VarCardinalNull(inherited Value['ActiveMainModeSAs']);
    FActiveQuickModeSAs                             := VarCardinalNull(inherited Value['ActiveQuickModeSAs']);
    FCaption                                        := VarStrNull(inherited Value['Caption']);
    FDescription                                    := VarStrNull(inherited Value['Description']);
    FExtendedModeNegotiations                       := VarCardinalNull(inherited Value['ExtendedModeNegotiations']);
    FExtendedModeNegotiationsPersec                 := VarCardinalNull(inherited Value['ExtendedModeNegotiationsPersec']);
    FExtendedModeSAsThatUsedImpersonation           := VarCardinalNull(inherited Value['ExtendedModeSAsThatUsedImpersonation']);
    FFailedExtendedModeNegotiations                 := VarCardinalNull(inherited Value['FailedExtendedModeNegotiations']);
    FFailedExtendedModeNegotiationsPersec           := VarCardinalNull(inherited Value['FailedExtendedModeNegotiationsPersec']);
    FFailedMainModeNegotiations                     := VarCardinalNull(inherited Value['FailedMainModeNegotiations']);
    FFailedMainModeNegotiationsPersec               := VarCardinalNull(inherited Value['FailedMainModeNegotiationsPersec']);
    FFailedQuickModeNegotiations                    := VarCardinalNull(inherited Value['FailedQuickModeNegotiations']);
    FFailedQuickModeNegotiationsPersec              := VarCardinalNull(inherited Value['FailedQuickModeNegotiationsPersec']);
    FFrequency_Object                               := VarInt64Null(inherited Value['Frequency_Object']);
    FFrequency_PerfTime                             := VarInt64Null(inherited Value['Frequency_PerfTime']);
    FFrequency_Sys100NS                             := VarInt64Null(inherited Value['Frequency_Sys100NS']);
    FMainModeNegotiationRequestsReceived            := VarCardinalNull(inherited Value['MainModeNegotiationRequestsReceived']);
    FMainModeNegotiationRequestsReceivedPersec      := VarCardinalNull(inherited Value['MainModeNegotiationRequestsReceivedPersec']);
    FMainModeNegotiations                           := VarCardinalNull(inherited Value['MainModeNegotiations']);
    FMainModeNegotiationsPersec                     := VarCardinalNull(inherited Value['MainModeNegotiationsPersec']);
    FMainModeSAsThatUsedImpersonation               := VarCardinalNull(inherited Value['MainModeSAsThatUsedImpersonation']);
    FMainModeSAsThatUsedImpersonationPersec         := VarCardinalNull(inherited Value['MainModeSAsThatUsedImpersonationPersec']);
    FName                                           := VarStrNull(inherited Value['Name']);
    FPendingExtendedModeNegotiations                := VarCardinalNull(inherited Value['PendingExtendedModeNegotiations']);
    FPendingMainModeNegotiations                    := VarCardinalNull(inherited Value['PendingMainModeNegotiations']);
    FPendingQuickModeNegotiations                   := VarCardinalNull(inherited Value['PendingQuickModeNegotiations']);
    FQuickModeNegotiations                          := VarCardinalNull(inherited Value['QuickModeNegotiations']);
    FQuickModeNegotiationsPersec                    := VarCardinalNull(inherited Value['QuickModeNegotiationsPersec']);
    FSuccessfulExtendedModeNegotiations             := VarCardinalNull(inherited Value['SuccessfulExtendedModeNegotiations']);
    FSuccessfulExtendedModeNegotiationsPersec       := VarCardinalNull(inherited Value['SuccessfulExtendedModeNegotiationsPersec']);
    FSuccessfulMainModeNegotiations                 := VarCardinalNull(inherited Value['SuccessfulMainModeNegotiations']);
    FSuccessfulMainModeNegotiationsPersec           := VarCardinalNull(inherited Value['SuccessfulMainModeNegotiationsPersec']);
    FSuccessfulQuickModeNegotiations                := VarCardinalNull(inherited Value['SuccessfulQuickModeNegotiations']);
    FSuccessfulQuickModeNegotiationsPersec          := VarCardinalNull(inherited Value['SuccessfulQuickModeNegotiationsPersec']);
    FTimestamp_Object                               := VarInt64Null(inherited Value['Timestamp_Object']);
    FTimestamp_PerfTime                             := VarInt64Null(inherited Value['Timestamp_PerfTime']);
    FTimestamp_Sys100NS                             := VarInt64Null(inherited Value['Timestamp_Sys100NS']);
  end;
end;

end.