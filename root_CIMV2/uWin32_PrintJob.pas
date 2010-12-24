/// <summary>
/// Unit generated using the Delphi Wmi class generator tool, Copyright Rodrigo Ruz V. 2010
/// Application version 0.1.0.116
/// WMI version 7600.16385
/// Creation Date 24-12-2010 08:20:20
/// Namespace root\CIMV2 Class Win32_PrintJob
/// MSDN info about this class http://msdn2.microsoft.com/library/default.asp?url=/library/en-us/wmisdk/wmi/Win32_PrintJob.asp
/// </summary>

{$IFDEF FPC}
 {$MODE DELPHI} {$H+}
 {$DEFINE OLD_DELPHI}
{$ENDIF}

unit uWin32_PrintJob;

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
  {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  /// The Win32_PrintJob class represents a print job generated by a Win32 application. Any unit of work generated by the Print command of an application running on a Win32 system is a descendent (or member) of this class.
  /// Example: A print document created by an Office 97 application
  /// </summary>
  {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
  TWin32_PrintJob=class(TWmiClass)
  private
    FCaption                            : String;
    FColor                              : String;
    FDataType                           : String;
    FDescription                        : String;
    FDocument                           : String;
    FDriverName                         : String;
    FElapsedTime                        : TDateTime;
    FHostPrintQueue                     : String;
    FInstallDate                        : TDateTime;
    FJobId                              : Cardinal;
    FJobStatus                          : String;
    FName                               : String;
    FNotify                             : String;
    FOwner                              : String;
    FPagesPrinted                       : Cardinal;
    FPaperLength                        : Cardinal;
    FPaperSize                          : String;
    FPaperWidth                         : Cardinal;
    FParameters                         : String;
    FPrintProcessor                     : String;
    FPriority                           : Cardinal;
    FSize                               : Cardinal;
    FSizeHigh                           : Cardinal;
    FStartTime                          : TDateTime;
    FStatus                             : String;
    FStatusMask                         : Cardinal;
    FTimeSubmitted                      : TDateTime;
    FTotalPages                         : Cardinal;
    FUntilTime                          : TDateTime;
  public
   constructor Create(LoadWmiData : boolean=True); overload;
   destructor Destroy;Override;
   property Caption : String read FCaption;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The Color property indicates whether the document is to be printed in color or 
   /// monochrome.  Some color printers have the capability to print using true black 
   /// instead of a combination of Yellow, Cyan, and Magenta.  This usually creates 
   /// darker and sharper text for documents.  This option is only useful for color 
   /// printers that support true black printing.
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property Color : String read FColor;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The DataType property indicates the format of the data for this print job. This instructs the printer driver to eithertranslate the data (generic text, PostScript, or PCL) before printing, or to print in a raw format (for graphics and pictures).
   /// Example: TEXT
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property DataType : String read FDataType;
   property Description : String read FDescription;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The Document property specifies the name of the print job. The user sees this name when viewing documents waiting to be printed. 
   /// Example: Microsoft Word - Review.doc
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property Document : String read FDocument;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The DriverName property indicates the name of the printer driver used for the 
   /// print job.
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property DriverName : String read FDriverName;
   property ElapsedTime : TDateTime read FElapsedTime;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The HostPrintQueue property contains the name of the computer on which the 
   /// print job was created.
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property HostPrintQueue : String read FHostPrintQueue;
   property InstallDate : TDateTime read FInstallDate;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The JobId property indicates the identifier number of the job. It is used by 
   /// other methods as a handle to a single job spooling to the printer.
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property JobId : Cardinal read FJobId;
   property JobStatus : String read FJobStatus;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The Name property contains the name of the printer to which the print job is 
   /// being spooled.
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property Name : String read FName;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// User to be notified upon job completion or failure. This property is restricted 
   /// to 16 characters under Windows 9x platforms.
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property Notify : String read FNotify;
   property Owner : String read FOwner;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The PagesPrinted property specifies the number of pages that have been printed. 
   /// This value may be zero if the print job does not contain page delimiting 
   /// information.
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property PagesPrinted : Cardinal read FPagesPrinted;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The PaperLength property indicates the length of the paper.
   /// Example: 2794
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property PaperLength : Cardinal read FPaperLength;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The PaperSize property indicates the size of the paper.
   /// Example: A4 or Letter
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property PaperSize : String read FPaperSize;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The PaperWidth property indicates the width of the paper.
   /// Example: 2159
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property PaperWidth : Cardinal read FPaperWidth;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The Parameters property indicates optional parameters to send to the print 
   /// processor. See the PrintProcessor member for more information.
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property Parameters : String read FParameters;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The PrintProcessor property indicates the print processor service used to 
   /// process the print job. A printer processor works in conjunction with the 
   /// printer driver to provide additional translation of printer data for the 
   /// printer, and can also be used to provide special options such as a title page 
   /// for the job.
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property PrintProcessor : String read FPrintProcessor;
   property Priority : Cardinal read FPriority;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The Size property indicates the size of the print job.
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property Size : Cardinal read FSize;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The SizeHigh property indicates the size of the print job if the Size property 
   /// exceeds 4,294,967,295 bytes.
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property SizeHigh : Cardinal read FSizeHigh;
   property StartTime : TDateTime read FStartTime;
   property Status : String read FStatus;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The StatusMask property specifies a bitmap of the possible statuses relating to 
   /// this print job.
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property StatusMask : Cardinal read FStatusMask;
   property TimeSubmitted : TDateTime read FTimeSubmitted;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The TotalPages property specifies the number of pages required to complete the 
   /// job. This value may be zero if the print job does not contain page-delimiting 
   /// information.
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property TotalPages : Cardinal read FTotalPages;
   property UntilTime : TDateTime read FUntilTime;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The Pause method pauses a job in a print queue. If the job was currently printing, no other job will be printed. If the job wasn't printing yet, another unpaused print job may begin printing. The method can return the following values:
   /// 0 - Success.
   /// 5 - Access denied.
   /// Other - For integer values other than those listed above, refer to the documentation on the Win32 error codes.
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   function Pause: Integer;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The Resume method continues a paused print job. The method can return the following values:
   /// 0 - Success.
   /// 5 - Access denied.
   /// Other - For integer values other than those listed above, refer to the documentation on the Win32 error codes.
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   function Resume: Integer;
   procedure SetCollectionIndex(Index : Integer); override;
  end;


  {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  /// Return the description for the result of the function TWin32_PrintJob.Pause
  /// </summary>
  {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
  function GetResultPauseAsString(const ReturnValue:Integer) : string;
  {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  /// Return the description for the result of the function TWin32_PrintJob.Resume
  /// </summary>
  {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
  function GetResultResumeAsString(const ReturnValue:Integer) : string;

implementation


function GetResultPauseAsString(const ReturnValue:Integer) : string;
begin
Result:='';
  case ReturnValue of
    0 : Result:='Success';
    5 : Result:='Access denied'
    else Result:='Other';
  end;
end;

function GetResultResumeAsString(const ReturnValue:Integer) : string;
begin
Result:='';
  case ReturnValue of
    0 : Result:='Success';
    5 : Result:='Access denied'
    else Result:='Other';
  end;
end;

{TWin32_PrintJob}

constructor TWin32_PrintJob.Create(LoadWmiData : boolean=True);
begin
  inherited Create(LoadWmiData,'root\CIMV2','Win32_PrintJob');
end;

destructor TWin32_PrintJob.Destroy;
begin
  inherited;
end;

procedure TWin32_PrintJob.SetCollectionIndex(Index : Integer);
begin
  if (Index>=0) and (Index<=FWmiCollection.Count-1) and (FWmiCollectionIndex<>Index) then
  begin
    FWmiCollectionIndex:=Index;
    FCaption             := VarStrNull(inherited Value['Caption']);
    FColor               := VarStrNull(inherited Value['Color']);
    FDataType            := VarStrNull(inherited Value['DataType']);
    FDescription         := VarStrNull(inherited Value['Description']);
    FDocument            := VarStrNull(inherited Value['Document']);
    FDriverName          := VarStrNull(inherited Value['DriverName']);
    FElapsedTime         := VarDateTimeNull(inherited Value['ElapsedTime']);
    FHostPrintQueue      := VarStrNull(inherited Value['HostPrintQueue']);
    FInstallDate         := VarDateTimeNull(inherited Value['InstallDate']);
    FJobId               := VarCardinalNull(inherited Value['JobId']);
    FJobStatus           := VarStrNull(inherited Value['JobStatus']);
    FName                := VarStrNull(inherited Value['Name']);
    FNotify              := VarStrNull(inherited Value['Notify']);
    FOwner               := VarStrNull(inherited Value['Owner']);
    FPagesPrinted        := VarCardinalNull(inherited Value['PagesPrinted']);
    FPaperLength         := VarCardinalNull(inherited Value['PaperLength']);
    FPaperSize           := VarStrNull(inherited Value['PaperSize']);
    FPaperWidth          := VarCardinalNull(inherited Value['PaperWidth']);
    FParameters          := VarStrNull(inherited Value['Parameters']);
    FPrintProcessor      := VarStrNull(inherited Value['PrintProcessor']);
    FPriority            := VarCardinalNull(inherited Value['Priority']);
    FSize                := VarCardinalNull(inherited Value['Size']);
    FSizeHigh            := VarCardinalNull(inherited Value['SizeHigh']);
    FStartTime           := VarDateTimeNull(inherited Value['StartTime']);
    FStatus              := VarStrNull(inherited Value['Status']);
    FStatusMask          := VarCardinalNull(inherited Value['StatusMask']);
    FTimeSubmitted       := VarDateTimeNull(inherited Value['TimeSubmitted']);
    FTotalPages          := VarCardinalNull(inherited Value['TotalPages']);
    FUntilTime           := VarDateTimeNull(inherited Value['UntilTime']);
  end;
end;


//not static, OutParams=1, InParams=0
function TWin32_PrintJob.Pause: integer;
var
  ReturnValue : OleVariant;
begin
  ReturnValue := GetInstanceOf.Pause;
  Result      := VarIntegerNull(ReturnValue);
end;

//not static, OutParams=1, InParams=0
function TWin32_PrintJob.Resume: integer;
var
  ReturnValue : OleVariant;
begin
  ReturnValue := GetInstanceOf.Resume;
  Result      := VarIntegerNull(ReturnValue);
end;
end.