Attribute VB_Name = "Module2"
Option Explicit

#If Win32 Then
   Public Declare Function Shell_NotifyIcon _
           Lib "shell32.dll" _
           Alias "Shell_NotifyIconA" _
           (ByVal dwMessage As Long, _
           lpData As NOTIFYICONDATA) As Long
#End If
   
#If Win16 Then
    
    Global idShell_Notify As Long
    
    Public Declare Function Declare32 _
           Lib "call32.dll" (ByVal Func$, _
           ByVal Library$, ByVal Args$) As Long
   
    Public Declare Function Shell_NotifyIcon _
           Lib "call32.dll" Alias "Call32" _
           (ByVal dwMessage As Long, _
           lpData As NOTIFYICONDATA, _
           ByVal id As Long) As Long
#End If
   
   Public Type NOTIFYICONDATA
        cbSize As Long
        hWnd As Long
        uID As Long
        uFlags As Long
        uCallbackMessage As Long
        hIcon As Long
        szTip As String * 64
   End Type
   
   Global t As NOTIFYICONDATA
   
   Global Const NIM_ADD = &H0
   Global Const NIM_MODIFY = &H1
   Global Const NIM_DELETE = &H2
   Global Const NIF_MESSAGE = &H1
   Global Const NIF_ICON = &H2
   Global Const NIF_TIP = &H4
   Global Const WM_MOUSEMOVE = &H200
   





