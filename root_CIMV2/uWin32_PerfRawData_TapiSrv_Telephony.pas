/// <summary>
/// Unit generated using the Delphi Wmi class generator tool, Copyright Rodrigo Ruz V. 2010
/// Application version 0.1.0.116
/// WMI version 7600.16385
/// Creation Date 24-12-2010 08:20:15
/// Namespace root\CIMV2 Class Win32_PerfRawData_TapiSrv_Telephony
/// MSDN info about this class http://msdn2.microsoft.com/library/default.asp?url=/library/en-us/wmisdk/wmi/Win32_PerfRawData_TapiSrv_Telephony.asp
/// </summary>

{$IFDEF FPC}
 {$MODE DELPHI} {$H+}
 {$DEFINE OLD_DELPHI}
{$ENDIF}

unit uWin32_PerfRawData_TapiSrv_Telephony;

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
  TWin32_PerfRawData_TapiSrv_Telephony=class(TWmiClass)
  private
    FActiveLines                        : Cardinal;
    FActiveTelephones                   : Cardinal;
    FCaption                            : String;
    FClientApps                         : Cardinal;
    FCurrentIncomingCalls               : Cardinal;
    FCurrentOutgoingCalls               : Cardinal;
    FDescription                        : String;
    FFrequency_Object                   : Int64;
    FFrequency_PerfTime                 : Int64;
    FFrequency_Sys100NS                 : Int64;
    FIncomingCallsPersec                : Cardinal;
    FLines                              : Cardinal;
    FName                               : String;
    FOutgoingCallsPersec                : Cardinal;
    FTelephoneDevices                   : Cardinal;
    FTimestamp_Object                   : Int64;
    FTimestamp_PerfTime                 : Int64;
    FTimestamp_Sys100NS                 : Int64;
  public
   constructor Create(LoadWmiData : boolean=True); overload;
   destructor Destroy;Override;
   property ActiveLines : Cardinal read FActiveLines;
   property ActiveTelephones : Cardinal read FActiveTelephones;
   property Caption : String read FCaption;
   property ClientApps : Cardinal read FClientApps;
   property CurrentIncomingCalls : Cardinal read FCurrentIncomingCalls;
   property CurrentOutgoingCalls : Cardinal read FCurrentOutgoingCalls;
   property Description : String read FDescription;
   property Frequency_Object : Int64 read FFrequency_Object;
   property Frequency_PerfTime : Int64 read FFrequency_PerfTime;
   property Frequency_Sys100NS : Int64 read FFrequency_Sys100NS;
   property IncomingCallsPersec : Cardinal read FIncomingCallsPersec;
   property Lines : Cardinal read FLines;
   property Name : String read FName;
   property OutgoingCallsPersec : Cardinal read FOutgoingCallsPersec;
   property TelephoneDevices : Cardinal read FTelephoneDevices;
   property Timestamp_Object : Int64 read FTimestamp_Object;
   property Timestamp_PerfTime : Int64 read FTimestamp_PerfTime;
   property Timestamp_Sys100NS : Int64 read FTimestamp_Sys100NS;
   procedure SetCollectionIndex(Index : Integer); override;
  end;



implementation


{TWin32_PerfRawData_TapiSrv_Telephony}

constructor TWin32_PerfRawData_TapiSrv_Telephony.Create(LoadWmiData : boolean=True);
begin
  inherited Create(LoadWmiData,'root\CIMV2','Win32_PerfRawData_TapiSrv_Telephony');
end;

destructor TWin32_PerfRawData_TapiSrv_Telephony.Destroy;
begin
  inherited;
end;

procedure TWin32_PerfRawData_TapiSrv_Telephony.SetCollectionIndex(Index : Integer);
begin
  if (Index>=0) and (Index<=FWmiCollection.Count-1) and (FWmiCollectionIndex<>Index) then
  begin
    FWmiCollectionIndex:=Index;
    FActiveLines               := VarCardinalNull(inherited Value['ActiveLines']);
    FActiveTelephones          := VarCardinalNull(inherited Value['ActiveTelephones']);
    FCaption                   := VarStrNull(inherited Value['Caption']);
    FClientApps                := VarCardinalNull(inherited Value['ClientApps']);
    FCurrentIncomingCalls      := VarCardinalNull(inherited Value['CurrentIncomingCalls']);
    FCurrentOutgoingCalls      := VarCardinalNull(inherited Value['CurrentOutgoingCalls']);
    FDescription               := VarStrNull(inherited Value['Description']);
    FFrequency_Object          := VarInt64Null(inherited Value['Frequency_Object']);
    FFrequency_PerfTime        := VarInt64Null(inherited Value['Frequency_PerfTime']);
    FFrequency_Sys100NS        := VarInt64Null(inherited Value['Frequency_Sys100NS']);
    FIncomingCallsPersec       := VarCardinalNull(inherited Value['IncomingCallsPersec']);
    FLines                     := VarCardinalNull(inherited Value['Lines']);
    FName                      := VarStrNull(inherited Value['Name']);
    FOutgoingCallsPersec       := VarCardinalNull(inherited Value['OutgoingCallsPersec']);
    FTelephoneDevices          := VarCardinalNull(inherited Value['TelephoneDevices']);
    FTimestamp_Object          := VarInt64Null(inherited Value['Timestamp_Object']);
    FTimestamp_PerfTime        := VarInt64Null(inherited Value['Timestamp_PerfTime']);
    FTimestamp_Sys100NS        := VarInt64Null(inherited Value['Timestamp_Sys100NS']);
  end;
end;

end.