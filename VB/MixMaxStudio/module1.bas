Attribute VB_Name = "Module2"
Option Explicit

Public Type POINTAPI
  x As Long
  y As Long
End Type

Public Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long

'Win Path
Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Declare Function GetSystemDirectory Lib "kernel32" Alias "GetSystemDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Declare Function GetDiskFreeSpace Lib "kernel32" Alias "GetDiskFreeSpaceA" (ByVal lpRootPathName As String, lpSectorsPerCluster As Long, lpBytesPerSector As Long, lpNumberOfFreeClusters As Long, lpTtoalNumberOfClusters As Long) As Long

Public Const MAX_PATH = 260
   
Public WinPath As String
Public WinSysPath As String

Public Const BITSPIXEL = 12
Public Const HORZRES = 8
Public Const VERTRES = 10
Public Const PLANES = 14
Global hdesktopwnd
Global hdccaps

Declare Function WavPlay Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long

Global Const SND_ASYNC = &H1

Public Const GWL_EXSTYLE = (-20)
Public Const WS_EX_TRANSPARENT = &H20&
Public Const SWP_FRAMECHANGED = &H20
Public Const SWP_NOMOVE = &H2
Public Const SWP_NOSIZE = &H1
Public Const SWP_SHOWME = SWP_FRAMECHANGED Or _
SWP_NOMOVE Or SWP_NOSIZE
Public Const HWND_NOTOPMOST = -2

Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long

Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long




