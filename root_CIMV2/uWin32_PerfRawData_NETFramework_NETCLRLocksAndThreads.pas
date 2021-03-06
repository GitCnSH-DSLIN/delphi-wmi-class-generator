/// <summary>
/// Unit generated using the Delphi Wmi class generator tool, Copyright Rodrigo Ruz V. 2010-2012
/// Application version 1.0.4674.62299
/// WMI version 7601.17514
/// Creation Date 17-10-2012 18:19:24
/// Namespace root\CIMV2 Class Win32_PerfRawData_NETFramework_NETCLRLocksAndThreads
/// MSDN info about this class http://msdn2.microsoft.com/library/default.asp?url=/library/en-us/wmisdk/wmi/Win32_PerfRawData_NETFramework_NETCLRLocksAndThreads.asp
/// </summary>


unit uWin32_PerfRawData_NETFramework_NETCLRLocksAndThreads;

interface

uses
 Classes,
 Activex,
 Variants,
 ComObj,
 uWmiDelphiClass;

type
  {$REGION 'Documentation'}
  /// <summary>
  /// Stats for CLR Locks and Threads.
  /// </summary>
  {$ENDREGION}
  TWin32_PerfRawData_NETFramework_NETCLRLocksAndThreads=class(TWmiClass)
  private
    FCaption                            : String;
    FContentionRatePersec               : Cardinal;
    FCurrentQueueLength                 : Cardinal;
    FDescription                        : String;
    FFrequency_Object                   : Int64;
    FFrequency_PerfTime                 : Int64;
    FFrequency_Sys100NS                 : Int64;
    FName                               : String;
    FNumberofcurrentlogicalThreads      : Cardinal;
    FNumberofcurrentphysicalThreads     : Cardinal;
    FNumberofcurrentrecognizedthreads   : Cardinal;
    FNumberoftotalrecognizedthreads     : Cardinal;
    FQueueLengthPeak                    : Cardinal;
    FQueueLengthPersec                  : Cardinal;
    FrateofrecognizedthreadsPersec      : Cardinal;
    FTimestamp_Object                   : Int64;
    FTimestamp_PerfTime                 : Int64;
    FTimestamp_Sys100NS                 : Int64;
    FTotalNumberofContentions           : Cardinal;
  public
   constructor Create(LoadWmiData : boolean=True); overload;
   destructor Destroy;Override;
   {$REGION 'Documentation'}
   /// <summary>
   /// A short textual description (one-line string) for the statistic or metric.
   /// </summary>
   {$ENDREGION}
   property Caption : String read FCaption;
   {$REGION 'Documentation'}
   /// <summary>
   /// Rate at which threads in the runtime attempt to acquire a managed lock 
   /// unsuccessfully. Managed locks can be acquired in many ways; by the "lock" 
   /// statement in C# or by calling System.Monitor.Enter or by using 
   /// MethodImplOptions.Synchronized custom attribute.
   /// </summary>
   {$ENDREGION}
   property ContentionRatePersec : Cardinal read FContentionRatePersec;
   {$REGION 'Documentation'}
   /// <summary>
   /// This counter displays the total number of threads currently waiting to acquire 
   /// some managed lock in the application. This counter is not an average over time; 
   /// it displays the last observed value.
   /// </summary>
   {$ENDREGION}
   property CurrentQueueLength : Cardinal read FCurrentQueueLength;
   {$REGION 'Documentation'}
   /// <summary>
   /// A textual description of the statistic or metric.
   /// </summary>
   {$ENDREGION}
   property Description : String read FDescription;
   property Frequency_Object : Int64 read FFrequency_Object;
   property Frequency_PerfTime : Int64 read FFrequency_PerfTime;
   property Frequency_Sys100NS : Int64 read FFrequency_Sys100NS;
   {$REGION 'Documentation'}
   /// <summary>
   /// The Name property defines the label by which the statistic or metric is known. 
   /// When subclassed, the property can be overridden to be a Key property. 
   /// </summary>
   {$ENDREGION}
   property Name : String read FName;
   {$REGION 'Documentation'}
   /// <summary>
   /// This counter displays the number of current .NET thread objects in the 
   /// application. A .NET thread object is created either by new 
   /// System.Threading.Thread or when an unmanaged thread enters the managed 
   /// environment. This counters maintains the count of both running and stopped 
   /// threads. This counter is not an average over time; it just displays the last 
   /// observed value.
   /// </summary>
   {$ENDREGION}
   property NumberofcurrentlogicalThreads : Cardinal read FNumberofcurrentlogicalThreads;
   {$REGION 'Documentation'}
   /// <summary>
   /// This counter displays the number of native OS threads created and owned by the 
   /// CLR to act as underlying threads for .NET thread objects. This counters value 
   /// does not include the threads used by the CLR in its internal operations; it is 
   /// a subset of the threads in the OS process.
   /// </summary>
   {$ENDREGION}
   property NumberofcurrentphysicalThreads : Cardinal read FNumberofcurrentphysicalThreads;
   {$REGION 'Documentation'}
   /// <summary>
   /// This counter displays the number of threads that are currently recognized by 
   /// the CLR; they have a corresponding .NET thread object associated with them. 
   /// These threads are not created by the CLR; they are created outside the CLR but 
   /// have since run inside the CLR at least once. Only unique threads are tracked; 
   /// threads with same thread ID re-entering the CLR or recreated after thread exit 
   /// are not counted twice.
   /// </summary>
   {$ENDREGION}
   property Numberofcurrentrecognizedthreads : Cardinal read FNumberofcurrentrecognizedthreads;
   {$REGION 'Documentation'}
   /// <summary>
   /// This counter displays the total number of threads that have been recognized by 
   /// the CLR since the start of this application; these threads have a corresponding 
   /// .NET thread object associated with them. These threads are not created by the 
   /// CLR; they are created outside the CLR but have since run inside the CLR at 
   /// least once. Only unique threads are tracked; threads with same thread ID re-
   /// entering the CLR or recreated after thread exit are not counted twice.
   /// </summary>
   {$ENDREGION}
   property Numberoftotalrecognizedthreads : Cardinal read FNumberoftotalrecognizedthreads;
   {$REGION 'Documentation'}
   /// <summary>
   /// This counter displays the total number of threads that waited to acquire some 
   /// managed lock since the start of the application.
   /// </summary>
   {$ENDREGION}
   property QueueLengthPeak : Cardinal read FQueueLengthPeak;
   {$REGION 'Documentation'}
   /// <summary>
   /// This counter displays the number of threads per second waiting to acquire some 
   /// lock in the application. This counter is not an average over time; it displays 
   /// the difference between the values observed in the last two samples divided by 
   /// the duration of the sample interval.
   /// </summary>
   {$ENDREGION}
   property QueueLengthPersec : Cardinal read FQueueLengthPersec;
   {$REGION 'Documentation'}
   /// <summary>
   /// This counter displays the number of threads per second that have been 
   /// recognized by the CLR; these threads have a corresponding .NET thread object 
   /// associated with them. These threads are not created by the CLR; they are 
   /// created outside the CLR but have since run inside the CLR at least once. Only 
   /// unique threads are tracked; threads with same thread ID re-entering the CLR or 
   /// recreated after thread exit are not counted twice. This counter is not an 
   /// average over time; it displays the difference between the values observed in 
   /// the last two samples divided by the duration of the sample interval.
   /// </summary>
   {$ENDREGION}
   property rateofrecognizedthreadsPersec : Cardinal read FrateofrecognizedthreadsPersec;
   property Timestamp_Object : Int64 read FTimestamp_Object;
   property Timestamp_PerfTime : Int64 read FTimestamp_PerfTime;
   property Timestamp_Sys100NS : Int64 read FTimestamp_Sys100NS;
   {$REGION 'Documentation'}
   /// <summary>
   /// This counter displays the total number of times threads in the CLR have 
   /// attempted to acquire a managed lock unsuccessfully. Managed locks can be 
   /// acquired in many ways; by the "lock" statement in C# or by calling 
   /// System.Monitor.Enter or by using MethodImplOptions.Synchronized custom 
   /// attribute.
   /// </summary>
   {$ENDREGION}
   property TotalNumberofContentions : Cardinal read FTotalNumberofContentions;
   procedure SetCollectionIndex(Index : Integer); override;
  end;



implementation


{TWin32_PerfRawData_NETFramework_NETCLRLocksAndThreads}

constructor TWin32_PerfRawData_NETFramework_NETCLRLocksAndThreads.Create(LoadWmiData : boolean=True);
begin
  inherited Create(LoadWmiData,'root\CIMV2','Win32_PerfRawData_NETFramework_NETCLRLocksAndThreads');
end;

destructor TWin32_PerfRawData_NETFramework_NETCLRLocksAndThreads.Destroy;
begin
  inherited;
end;

procedure TWin32_PerfRawData_NETFramework_NETCLRLocksAndThreads.SetCollectionIndex(Index : Integer);
begin
  if (Index>=0) and (Index<=FWmiCollection.Count-1) and (FWmiCollectionIndex<>Index) then
  begin
    FWmiCollectionIndex:=Index;
    FCaption                               := VarStrNull(inherited Value['Caption']);
    FContentionRatePersec                  := VarCardinalNull(inherited Value['ContentionRatePersec']);
    FCurrentQueueLength                    := VarCardinalNull(inherited Value['CurrentQueueLength']);
    FDescription                           := VarStrNull(inherited Value['Description']);
    FFrequency_Object                      := VarInt64Null(inherited Value['Frequency_Object']);
    FFrequency_PerfTime                    := VarInt64Null(inherited Value['Frequency_PerfTime']);
    FFrequency_Sys100NS                    := VarInt64Null(inherited Value['Frequency_Sys100NS']);
    FName                                  := VarStrNull(inherited Value['Name']);
    FNumberofcurrentlogicalThreads         := VarCardinalNull(inherited Value['NumberofcurrentlogicalThreads']);
    FNumberofcurrentphysicalThreads        := VarCardinalNull(inherited Value['NumberofcurrentphysicalThreads']);
    FNumberofcurrentrecognizedthreads      := VarCardinalNull(inherited Value['Numberofcurrentrecognizedthreads']);
    FNumberoftotalrecognizedthreads        := VarCardinalNull(inherited Value['Numberoftotalrecognizedthreads']);
    FQueueLengthPeak                       := VarCardinalNull(inherited Value['QueueLengthPeak']);
    FQueueLengthPersec                     := VarCardinalNull(inherited Value['QueueLengthPersec']);
    FrateofrecognizedthreadsPersec         := VarCardinalNull(inherited Value['rateofrecognizedthreadsPersec']);
    FTimestamp_Object                      := VarInt64Null(inherited Value['Timestamp_Object']);
    FTimestamp_PerfTime                    := VarInt64Null(inherited Value['Timestamp_PerfTime']);
    FTimestamp_Sys100NS                    := VarInt64Null(inherited Value['Timestamp_Sys100NS']);
    FTotalNumberofContentions              := VarCardinalNull(inherited Value['TotalNumberofContentions']);
  end;
end;

end.
