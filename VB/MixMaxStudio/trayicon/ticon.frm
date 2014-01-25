VERSION 5.00
Object = "{918E6E43-F23A-11D0-901E-0020AF7543C2}#5.0#0"; "FXIMG50G.OCX"
Begin VB.Form TIcon 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   735
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   1935
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   735
   ScaleWidth      =   1935
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin FXIMG50GLib.FXImage FXImage1 
      Height          =   735
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   1935
      _Version        =   327680
      _ExtentX        =   3413
      _ExtentY        =   1296
      _StockProps     =   65
      BackColor       =   12632256
      Persistence     =   -1  'True
      _StdProps       =   5582274
      ErrStr          =   "JAMHAOMABCGMAHLEKPBJODNAHLDHJIOOKGDFINFBEEGGPH"
      ErrCode         =   1845782454
      ErrInfo         =   -1094336460
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "MixMax Pley"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Left            =   360
         TabIndex        =   3
         Top             =   435
         Width           =   1410
      End
      Begin VB.Image Image3 
         Height          =   360
         Left            =   0
         Picture         =   "TIcon.frx":0000
         Stretch         =   -1  'True
         Top             =   360
         Width           =   360
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "MixMax Studio"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Left            =   360
         TabIndex        =   2
         Top             =   75
         Width           =   1605
      End
      Begin VB.Image Image2 
         Height          =   360
         Left            =   0
         Picture         =   "TIcon.frx":030A
         Stretch         =   -1  'True
         Top             =   0
         Width           =   360
      End
   End
   Begin VB.PictureBox Picture1 
      Height          =   495
      Left            =   4320
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   0
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   4320
      Picture         =   "TIcon.frx":0614
      Top             =   720
      Width           =   480
   End
End
Attribute VB_Name = "TIcon"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim IconIndex As Integer, IntDown As Integer
Dim PX
Dim Mo As POINTAPI
Dim KK As String
Dim L

Private Sub Form_Load()
KK = GetStringValue("HKEY _LOCAL_MACHINE\MMStudio", "PTH")
    
    Dim iData As NOTIFYICONDATA
    iData.cbSize = Len(iData)
    iData.hwnd = Picture1.hwnd
    iData.uID = 1
    iData.uFlags = NIF_MESSAGE + NIF_ICON + NIF_TIP
    iData.uCallbackMessage = WM_LBUTTONDOWN
    iData.hIcon = Image1.Picture
    iData.szTip = ("MixMax Studio")
    
    Result = Shell_NotifyIcon(NIM_ADD, iData)
   Me.Hide
SetWindowLong Me.hwnd, GWL_EXSTYLE, WS_EX_TRANSPARENT
SetWindowPos Me.hwnd, HWND_NOTOPMOST, 0&, 0&, 0&, 0&, SWP_SHOWME
End Sub
Private Sub Form_Unload(Cancel As Integer)
    Dim iData As NOTIFYICONDATA
    
iData.cbSize = Len(iData)
iData.hwnd = Picture1.hwnd
iData.uID = 1
    
Result = Shell_NotifyIcon(NIM_DELETE, iData)

End
End Sub

Private Sub Image2_Click()
On Error Resume Next
KK = KK + "\" + "MMStudio.exe"
L = Shell(KK, vbMaximizedFocus)
End Sub

Private Sub Image2_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
Label1.ForeColor = &HC00000
Label2.ForeColor = &HC0C0C0
End Sub

Private Sub Image3_Click()
On Error Resume Next
KK = KK + "\" + "MMPlay.exe"
L = Shell(KK, vbMaximizedFocus)
End Sub

Private Sub Image3_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
Label2.ForeColor = &HC00000
Label1.ForeColor = &HC0C0C0
End Sub

Private Sub Label1_Click()
On Error Resume Next
KK = KK + "\" + "MMStudio.exe"
L = Shell(KK, vbMaximizedFocus)
End Sub

Private Sub Label1_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
Label1.ForeColor = &HC00000
Label2.ForeColor = &HC0C0C0
End Sub

Private Sub Label2_Click()
On Error Resume Next
KK = KK + "\" + "MMPlay.exe"
L = Shell(KK, vbMaximizedFocus)
End Sub

Private Sub Label2_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
Label2.ForeColor = &HC00000
Label1.ForeColor = &HC0C0C0
End Sub

Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
PX = Screen.TwipsPerPixelX
    Select Case x
        Case TRAY_MSG_MOUSEMOVE

        Case TRAY_MSG_LEFTBTN_DOWN
                TIcon.Hide
        Case TRAY_MSG_LEFTBTN_UP
           
        Case TRAY_MSG_LEFTBTN_DBLCLICK
                Image2.Refresh
                Image3.Refresh
                GetCursorPos Mo
                TIcon.Show
                TIcon.Left = Abs((PX * Mo.x) - 2000)
                TIcon.Top = Abs((PX * Mo.y) - 1000)
        Case TRAY_MSG_RIGHTBTN_DOWN
                Image2.Refresh
                Image3.Refresh
                GetCursorPos Mo
                TIcon.Show
                TIcon.Left = Abs((PX * Mo.x) - 2000)
                TIcon.Top = Abs((PX * Mo.y) - 1000)
        Case TRAY_MSG_RIGHTBTN_UP
            
        Case TRAY_MSG_RIGHTBTN_DBLCLICK
    
    End Select
SetWindowLong Me.hwnd, GWL_EXSTYLE, WS_EX_TRANSPARENT
SetWindowPos Me.hwnd, HWND_NOTOPMOST, 0&, 0&, 0&, 0&, SWP_SHOWME
End Sub



Private Sub Picture2_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
Picture2.BackColor = &HC00000
Picture3.BackColor = &HC0C0C0
End Sub

Private Sub Picture3_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
Picture2.BackColor = &HC0C0C0
Picture3.BackColor = &HC00000
End Sub
