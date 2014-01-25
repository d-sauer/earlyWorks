Attribute VB_Name = "sve"
Option Explicit

Public Type pointApi
    x As Long
    y As Long
End Type


Public Declare Function GetCursorPos Lib "user32" (lpPoint As pointApi) As Long


Public g_fIsWinNT As Boolean
Declare Function GetVersionEx Lib "kernel32" Alias "GetVersionExA" _
                            (lpVersionInformation As OSVERSIONINFO) As Long
                                  
Type OSVERSIONINFO
  dwOSVersionInfoSize As Long
  dwMajorVersion As Long
  dwMinorVersion As Long
  dwBuildNumber As Long
  dwPlatformId As Long
  szCSDVersion As String * 128
End Type

Const VER_PLATFORM_WIN32s = 0
Const VER_PLATFORM_WIN32_WINDOWS = 1
Const VER_PLATFORM_WIN32_NT = 2
Declare Sub MoveMemory Lib "kernel32" Alias "RtlMoveMemory" _
                      (pDest As Any, _
                      pSource As Any, _
                      ByVal ByteLen As Long)
Declare Function IsTextUnicode Lib "advapi32" _
                            (lpBuffer As Any, _
                            ByVal cb As Long, _
                            lpi As Long) As Long
                            
Public Const IS_TEXT_UNICODE_ASCII16 = &H1
Public Const IS_TEXT_UNICODE_REVERSE_ASCII16 = &H10

Public Const IS_TEXT_UNICODE_STATISTICS = &H2
Public Const IS_TEXT_UNICODE_REVERSE_STATISTICS = &H20

Public Const IS_TEXT_UNICODE_CONTROLS = &H4
Public Const IS_TEXT_UNICODE_REVERSE_CONTROLS = &H40

Public Const IS_TEXT_UNICODE_SIGNATURE = &H8
Public Const IS_TEXT_UNICODE_REVERSE_SIGNATURE = &H80

Public Const IS_TEXT_UNICODE_ILLEGAL_CHARS = &H100
Public Const IS_TEXT_UNICODE_ODD_LENGTH = &H200
Public Const IS_TEXT_UNICODE_DBCS_LEADBYTE = &H400
Public Const IS_TEXT_UNICODE_NULL_BYTES = &H1000

Public Const IS_TEXT_UNICODE_UNICODE_MASK = &HF
Public Const IS_TEXT_UNICODE_REVERSE_MASK = &HF0
Public Const IS_TEXT_UNICODE_NOT_UNICODE_MASK = &HF00
Public Const IS_TEXT_UNICODE_NOT_ASCII_MASK = &HF000

Declare Function SHRestartSystemMB Lib "shell32" Alias "#59" _
                            (ByVal hOwner As Long, _
                            ByVal sPrompt As String, _
                            ByVal uFlags As Long) As Long
Public Const EWX_LOGOFF = 0
Public Const EWX_SHUTDOWN = 1
Public Const EWX_REBOOT = 2
Public Const EWX_FORCE = 4
Public Const EWX_POWEROFF = 8

Public Const shrsExitNoDefPrompt = 1

Public Const shrsRebootSystem = 2

Declare Function SHShutDownDialog Lib "shell32" Alias "#60" _
                            (ByVal YourGuess As Long) As Long
Declare Function SHRunDialog Lib "shell32" Alias "#61" _
                            (ByVal hOwner As Long, _
                             ByVal Unknown1 As Long, _
                             ByVal Unknown2 As Long, _
                             ByVal szTitle As String, _
                             ByVal szPrompt As String, _
                             ByVal uFlags As Long) As Long
Public Const shrdNoMRUString = &H2
Declare Function SHChangeIconDialog Lib "shell32" Alias "#62" _
                            (ByVal hOwner As Long, _
                            ByVal szFilename As String, _
                            ByVal Reserved As Long, _
                            lpIconIndex As Long) As Long
Declare Function SHGetExtension Lib "shell32" Alias "#31" _
                            (ByVal szPath As String) As Long
Declare Function SHAddBackslash Lib "shell32" Alias "#32" _
                            (ByVal szPath As String) As Long
Declare Function SHGetFileName Lib "shell32" Alias "#34" _
                            (ByVal szPath As String) As Long
Declare Function SHPathIsRelative Lib "shell32" Alias "#40" _
                            (ByVal szPath As String) As Long
Declare Function SHPathIsExe Lib "shell32" Alias "#43" _
                            (ByVal szPath As String) As Long
Declare Function SHFileExists Lib "shell32" Alias "#45" _
                            (ByVal szPath As String) As Long
Declare Function SHGetPathArgs Lib "shell32" Alias "#52" _
                            (ByVal szPath As String) As Long
Declare Function SHGetShortPathName Lib "shell32" Alias "#92" _
                            (ByVal szPath As String) As Long
Public Const MAX_PATH = 260
Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" _
                            (ByVal lpBuffer As String, _
                            ByVal nSize As Long) As Long

Declare Function ExtractIconEx Lib "shell32.dll" Alias "ExtractIconExA" _
                            (ByVal lpszFile As String, _
                            ByVal nIconIndex As Long, _
                            phiconLarge As Long, _
                            phiconSmall As Long, _
                            ByVal nIcons As Long) As Long

Declare Function DrawIconEx Lib "user32" _
                            (ByVal hDC As Long, _
                             ByVal xLeft As Long, _
                             ByVal yTop As Long, _
                             ByVal hIcon As Long, _
                             ByVal cxWidth As Long, _
                             ByVal cyWidth As Long, _
                             ByVal istepIfAniCur As Long, _
                             ByVal hbrFlickerFreeDraw As Long, _
                             ByVal diFlags As Long) As Boolean


Public Const DI_MASK = &H1
Public Const DI_IMAGE = &H2
Public Const DI_NORMAL = &H3
Public Const DI_COMPAT = &H4
Public Const DI_DEFAULTSIZE = &H8

Declare Function DestroyIcon Lib "user32" _
                            (ByVal hIcon As Long) As Long




Public Function IsWinNT() As Boolean
  Dim osvi As OSVERSIONINFO
  osvi.dwOSVersionInfoSize = Len(osvi)
  GetVersionEx osvi
  IsWinNT = (osvi.dwPlatformId = VER_PLATFORM_WIN32_NT)
End Function
Public Function GetStrFromPtr(lpszStr As Long, nBytes As Integer) As String
  ReDim ab(nBytes) As Byte   ' zero-based (nBytes + 1 elements)
  MoveMemory ab(0), ByVal lpszStr, nBytes
  GetStrFromPtr = GetStrFromBuffer(StrConv(ab(), vbUnicode))
End Function
Public Function GetStrFromBuffer(szStr As String) As String
  If IsUnicodeStr(szStr) Then szStr = StrConv(szStr, vbFromUnicode)
  If InStr(szStr, vbNullChar) Then
    GetStrFromBuffer = Left$(szStr, InStr(szStr, vbNullChar) - 1)
  Else
    GetStrFromBuffer = szStr
  End If
End Function
Public Function IsUnicodeStr(sBuffer As String) As Boolean
  Dim dwRtnFlags As Long
  dwRtnFlags = IS_TEXT_UNICODE_UNICODE_MASK
  IsUnicodeStr = IsTextUnicode(ByVal sBuffer, Len(sBuffer), dwRtnFlags)
End Function



Public Function MakeMaxPath(ByVal sPath As String) As String
  MakeMaxPath = sPath & String$(MAX_PATH - Len(sPath), 0)
End Function
Public Function GetExtension(sPathIn) As String
  Dim sPathOut As String
  sPathOut = MakeMaxPath(sPathIn)
  If g_fIsWinNT Then sPathOut = StrConv(sPathOut, vbUnicode)
  GetExtension = GetStrFromPtr(SHGetExtension(sPathOut), Len(sPathOut))
End Function

Public Function NormalizePath(sPathIn As String) As String
  Dim sPathOut As String
  sPathOut = sPathIn & vbNullChar
  If g_fIsWinNT Then sPathOut = StrConv(sPathOut, vbUnicode)
  SHAddBackslash sPathOut
  NormalizePath = GetStrFromBuffer(sPathOut)
End Function

Public Function GetFileName(sPathIn As String) As String
  Dim sPathOut As String
  sPathOut = MakeMaxPath(sPathIn)
  If g_fIsWinNT Then sPathOut = StrConv(sPathOut, vbUnicode)
  GetFileName = GetStrFromPtr(SHGetFileName(sPathOut), MAX_PATH)
End Function

Public Function IsPathRelative(sPath As String) As Boolean
  If g_fIsWinNT Then
    IsPathRelative = SHPathIsRelative(StrConv(sPath, vbUnicode))
  Else
    IsPathRelative = SHPathIsRelative(sPath)
  End If
End Function

Public Function IsPathExe(sPath As String) As Boolean
  If g_fIsWinNT Then
    IsPathExe = SHPathIsExe(StrConv(sPath, vbUnicode))
  Else
    IsPathExe = SHPathIsExe(sPath)
  End If
End Function

Public Function FileExists(sPath As String) As Boolean
  If g_fIsWinNT Then
    FileExists = SHFileExists(StrConv(sPath, vbUnicode))
  Else
    FileExists = SHFileExists(sPath)
  End If
End Function

Public Function GetArgs(sPathIn As String) As String
  Dim sPathOut As String
  sPathOut = MakeMaxPath(sPathIn)
  If g_fIsWinNT Then sPathOut = StrConv(sPathOut, vbUnicode)
  GetArgs = GetStrFromPtr(SHGetPathArgs(sPathOut), Len(sPathOut))
End Function

Public Function GetShortPath(sPathIn As String) As String
  Dim sPathOut As String
  sPathOut = MakeMaxPath(sPathIn)
  If g_fIsWinNT Then sPathOut = StrConv(sPathOut, vbUnicode)
  SHGetShortPathName sPathOut
  GetShortPath = GetStrFromBuffer(sPathOut)
End Function
