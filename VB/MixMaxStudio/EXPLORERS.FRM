VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{22D6F304-B0F6-11D0-94AB-0080C74C7E95}#1.0#0"; "MSDXM.OCX"
Begin VB.Form ExS 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   9000
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9000
   ScaleWidth      =   12000
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame2 
      BackColor       =   &H00000000&
      Caption         =   "Folder Name"
      ForeColor       =   &H00C0C0C0&
      Height          =   615
      Left            =   9120
      TabIndex        =   30
      Top             =   3720
      Visible         =   0   'False
      Width           =   2415
      Begin VB.TextBox Text1 
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFF00&
         Height          =   285
         Left            =   120
         TabIndex        =   31
         Top             =   240
         Width           =   1575
      End
      Begin VB.Image Image9 
         Height          =   480
         Left            =   1800
         Picture         =   "ExplorerS.frx":0000
         Top             =   120
         Width           =   480
      End
   End
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   105
      Left            =   10635
      TabIndex        =   27
      Top             =   4875
      Width           =   765
      _ExtentX        =   1349
      _ExtentY        =   185
      _Version        =   393216
      BorderStyle     =   1
      Appearance      =   0
      Min             =   1
      Max             =   35
      Scrolling       =   1
   End
   Begin VB.Timer Timer2 
      Interval        =   10
      Left            =   9120
      Top             =   4680
   End
   Begin VB.CheckBox APlay 
      BackColor       =   &H00000000&
      Caption         =   "Auto Play"
      ForeColor       =   &H00C0C0C0&
      Height          =   255
      Left            =   8520
      TabIndex        =   18
      Top             =   2040
      Width           =   1095
   End
   Begin VB.Timer Timer1 
      Left            =   240
      Top             =   6480
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      Caption         =   "Track Information"
      ForeColor       =   &H0000FF00&
      Height          =   1215
      Left            =   8520
      TabIndex        =   6
      Top             =   720
      Width           =   3015
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         ForeColor       =   &H00FFFF00&
         Height          =   195
         Left            =   1080
         TabIndex        =   13
         Top             =   840
         Width           =   90
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         ForeColor       =   &H00FFFF00&
         Height          =   195
         Left            =   960
         TabIndex        =   12
         Top             =   600
         Width           =   90
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         ForeColor       =   &H00FFFF00&
         Height          =   195
         Left            =   600
         TabIndex        =   10
         Top             =   360
         Width           =   90
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Track Long :"
         ForeColor       =   &H00C0C0C0&
         Height          =   195
         Index           =   2
         Left            =   120
         TabIndex        =   9
         Top             =   840
         Width           =   915
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "File Name :"
         ForeColor       =   &H00C0C0C0&
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   8
         Top             =   600
         Width           =   795
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Size :"
         ForeColor       =   &H00C0C0C0&
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   7
         Top             =   360
         Width           =   390
      End
   End
   Begin MSComctlLib.ProgressBar PBar 
      Height          =   255
      Left            =   480
      TabIndex        =   5
      Top             =   7080
      Width           =   11055
      _ExtentX        =   19500
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
      Scrolling       =   1
   End
   Begin MSComctlLib.ListView LF 
      Height          =   5655
      Left            =   4320
      TabIndex        =   4
      Top             =   720
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   9975
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   393217
      ForeColor       =   16777215
      BackColor       =   0
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
   Begin VB.FileListBox FileL 
      Height          =   1455
      Left            =   0
      TabIndex        =   3
      Top             =   1920
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.DirListBox Dir1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00E0E0E0&
      Height          =   5265
      Left            =   480
      TabIndex        =   1
      Top             =   1080
      Width           =   3735
   End
   Begin VB.DriveListBox Drive1 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FFFF&
      Height          =   315
      Left            =   480
      TabIndex        =   0
      Top             =   720
      Width           =   3735
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   2160
      Top             =   6480
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   16
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ExplorerS.frx":030A
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ExplorerS.frx":0BE6
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ExplorerS.frx":14C2
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ExplorerS.frx":1D9E
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ExplorerS.frx":267A
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ExplorerS.frx":2F56
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ExplorerS.frx":3832
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ExplorerS.frx":410E
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ExplorerS.frx":49EA
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ExplorerS.frx":4D06
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ExplorerS.frx":5022
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ExplorerS.frx":5346
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ExplorerS.frx":5662
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ExplorerS.frx":597E
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ExplorerS.frx":5C9A
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ExplorerS.frx":5FB6
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Image Bl 
      Height          =   225
      Left            =   9600
      Picture         =   "ExplorerS.frx":62D2
      Top             =   5880
      Width           =   1440
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Left            =   11040
      TabIndex        =   2
      Top             =   6600
      Visible         =   0   'False
      Width           =   255
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   0   'False
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   5
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   2000
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   0   'False
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   0   'False
      ShowStatusBar   =   0   'False
      ShowTracker     =   0   'False
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
   Begin VB.Image Image8 
      Height          =   480
      Left            =   8520
      Picture         =   "ExplorerS.frx":73F4
      ToolTipText     =   "Create Folder"
      Top             =   3720
      Width           =   480
   End
   Begin VB.Label Label16 
      Caption         =   "Label16"
      Height          =   255
      Left            =   10080
      TabIndex        =   29
      Top             =   2040
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label Label15 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "10"
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Left            =   10875
      TabIndex        =   28
      Top             =   5040
      Width           =   180
   End
   Begin VB.Image Image7 
      Height          =   225
      Left            =   10560
      Picture         =   "ExplorerS.frx":76FE
      Top             =   4800
      Width           =   930
   End
   Begin VB.Label Label14 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Left            =   10800
      TabIndex        =   26
      Top             =   2880
      Visible         =   0   'False
      Width           =   105
   End
   Begin VB.Label Label13 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   10800
      TabIndex        =   25
      Top             =   2640
      Visible         =   0   'False
      Width           =   90
   End
   Begin VB.Line lin 
      BorderColor     =   &H000000FF&
      X1              =   9840
      X2              =   9960
      Y1              =   4920
      Y2              =   5040
   End
   Begin VB.Image ImageVol 
      Height          =   480
      Left            =   9600
      Picture         =   "ExplorerS.frx":7A78
      Top             =   4680
      Width           =   480
   End
   Begin VB.Label Label12 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H000000C0&
      Height          =   195
      Left            =   10280
      TabIndex        =   24
      Top             =   5640
      Width           =   90
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Left"
      ForeColor       =   &H00E0E0E0&
      Height          =   195
      Index           =   6
      Left            =   9240
      TabIndex        =   23
      Top             =   5880
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Right"
      ForeColor       =   &H00E0E0E0&
      Height          =   195
      Index           =   7
      Left            =   11160
      TabIndex        =   22
      Top             =   5880
      Width           =   375
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Centered"
      ForeColor       =   &H00E0E0E0&
      Height          =   195
      Index           =   8
      Left            =   9960
      TabIndex        =   21
      Top             =   6240
      Width           =   645
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      Caption         =   "Label11"
      Height          =   195
      Left            =   10800
      TabIndex        =   20
      Top             =   2400
      Visible         =   0   'False
      Width           =   570
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      Caption         =   "Label10"
      Height          =   195
      Left            =   10800
      TabIndex        =   19
      Top             =   2040
      Visible         =   0   'False
      Width           =   570
   End
   Begin VB.Image Image4 
      Height          =   480
      Left            =   8520
      Picture         =   "ExplorerS.frx":7D82
      ToolTipText     =   "Delete"
      Top             =   4440
      Width           =   480
   End
   Begin VB.Image Image3 
      Height          =   480
      Left            =   8520
      Picture         =   "ExplorerS.frx":808C
      ToolTipText     =   "Paste"
      Top             =   3120
      Width           =   480
   End
   Begin VB.Image Image2 
      Height          =   480
      Left            =   8520
      Picture         =   "ExplorerS.frx":8396
      ToolTipText     =   "Copy"
      Top             =   2640
      Width           =   480
   End
   Begin VB.Image Image6 
      Height          =   480
      Left            =   8520
      Picture         =   "ExplorerS.frx":86A0
      Top             =   5280
      Width           =   480
   End
   Begin VB.Image Image5 
      Height          =   480
      Left            =   8520
      Picture         =   "ExplorerS.frx":8F6A
      Top             =   5880
      Width           =   480
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Left            =   5880
      TabIndex        =   17
      Top             =   7320
      Width           =   90
   End
   Begin VB.Label Label7 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H0000FFFF&
      Height          =   195
      Left            =   11430
      TabIndex        =   16
      Top             =   7320
      Width           =   90
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H0000FFFF&
      Height          =   195
      Left            =   360
      TabIndex        =   15
      Top             =   7320
      Width           =   90
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "×"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   11400
      TabIndex        =   14
      Top             =   240
      Width           =   180
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H00000000&
      Height          =   195
      Left            =   480
      TabIndex        =   11
      Top             =   360
      Width           =   90
   End
   Begin VB.Image Image1 
      Height          =   8565
      Left            =   120
      Picture         =   "ExplorerS.frx":9834
      Top             =   120
      Width           =   11730
   End
End
Attribute VB_Name = "ExS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim N
Dim J
Dim K
Dim L
Dim F As String
Dim A
Dim PP
Dim B
Dim XX
Sub IN_Sec()
N = S.Duration
J = Fix(N / 60)
K = J
J = N - (J * 60)
L = J
Label5.Caption = K & ":" & L
End Sub

Private Sub Dir1_Change()
LF.ListItems.Clear
FileL.Path = Dir1.Path
Label3.Caption = Dir1.Path
For O = 0 To FileL.ListCount
LF.ListItems.Add , , FileL.List(O)
Next O
End Sub

Private Sub Dir1_Click()
LF.ListItems.Clear
FileL.Path = Dir1.Path
For O = 0 To FileL.ListCount
LF.ListItems.Add , , FileL.List(O)
Next O
End Sub

Private Sub Bl_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
A = 1
End Sub

Private Sub Bl_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
Dim Q
Dim E
If A = 1 Then
Label12.Caption = 2 * (X - 720)
S.Balance = (2 * (X - 720))
End If
End Sub

Private Sub Bl_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
A = 0
End Sub

Private Sub Drive1_Change()
On Error GoTo 10
Dim O
Dir1.Path = Drive1.Drive
FileL.Path = Dir1.Path
LF.ListItems.Clear
For O = 0 To FileL.ListCount
LF.ListItems.Add , , FileL.List(O)
Next O
Exit Sub
10:
Drive1.Drive = "C:\"
End Sub

Private Sub Drive1_Scroll()
On Error GoTo 10
Dim O
LF.ListItems.Clear
Dir1.Path = Drive1.Drive
FileL.Path = Dir1.Path
For O = 0 To FileL.ListCount
LF.ListItems.Add , , FileL.List(O)
Next O
Exit Sub
10:
Drive1.Drive = "C:\"
End Sub

Private Sub Form_Load()
ExS.Width = Screen.Width
ExS.Height = Screen.Height
ExS.WindowState = 2
Image1.Left = 120
Image1.Top = 120
LF.ColumnHeaders.Add , , ""
FileL.Pattern = "*.mp3;*.wav;*.mid;*.Snd;*.m3u;*.Rmi;*.Asf;*.Aif;*.Asx;*.Au"
APlay.Value = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch1")
ProgressBar1.Value = 10
End Sub



Private Sub Image9_Click()
Dim DR As String
DR = Dir1.Path + "\" + Text1.Text
MkDir DR
Dir1.Refresh
Frame2.Visible = False
End Sub

Private Sub ImageVol_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
A = 1
End Sub

Private Sub ImageVol_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
A = 0
End Sub

Private Sub Label1_Click(Index As Integer)
Select Case Index
Case 6
S.Balance = 1500
Label12.Caption = -1500
Case 8
S.Balance = 0
Label12.Caption = 0
Case 7
S.Balance = -1500
Label12.Caption = 1500
End Select
End Sub

Private Sub Label14_Click()
S.Volume = -600
End Sub

Private Sub Label15_Click()
Label15.Caption = "10"
ProgressBar1.Value = 10
S.Rate = 1
End Sub

Private Sub Label9_Click()
Unload Me
End Sub

Private Sub LF_Click()
Dim G
Dim G1
On Error Resume Next
G1 = Len(Dir1.Path)
If G1 > 3 Then
G = Dir1.Path + "\" + LF.SelectedItem.Text
PP = Dir1.Path + "\"
Label3.Caption = G
End If
If G1 = 3 Then
G = Dir1.Path + LF.SelectedItem.Text
Label3.Caption = G
PP = Dir1.Path
End If
F = Label3.Caption
Label2.Caption = Format$(FileLen(F), "###,###,###,###") + " b"
Label4.Caption = LF.SelectedItem.Text
S.FileName = F
'File Len In Sec
N = S.Duration
Call IN_Sec
'Dalje
If APlay.Value = 0 Then S.Stop: S.CurrentPosition = 0
If APlay.Value = 1 Then PBar.Max = S.Duration: S.Play: Timer1.Interval = 1: Label7.Caption = S.Duration
End Sub

Private Sub LF_KeyUp(KeyCode As Integer, Shift As Integer)
Dim G
Dim G1
On Error Resume Next
G1 = Len(Dir1.Path)
If G1 > 3 Then
G = Dir1.Path + "\" + LF.SelectedItem.Text
PP = Dir1.Path + "\"
Label3.Caption = G
End If
If G1 = 3 Then
G = Dir1.Path + LF.SelectedItem.Text
Label3.Caption = G
PP = Dir1.Path
End If
F = Label3.Caption
Label2.Caption = Format$(FileLen(F), "###,###,###,###") + " b"
Label4.Caption = LF.SelectedItem.Text
S.FileName = F
'File Len In Sec
N = S.Duration
Call IN_Sec
'Dalje
If APlay.Value = 0 Then S.Stop: S.CurrentPosition = 0
If APlay.Value = 1 Then PBar.Max = S.Duration: S.Play: Timer1.Interval = 1: Label7.Caption = S.Duration
End Sub

Private Sub Pbar_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
Dim M
Dim M1
M = S.Duration
M1 = X / (11055 / M)
Label8.Caption = M1
End Sub

Private Sub Pbar_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
Dim M
Dim M1
M = S.Duration
M1 = X / (11055 / M)
On Error GoTo 10
S.CurrentPosition = M1
Exit Sub
10:
S.CurrentPosition = 0
End Sub

Private Sub Image6_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image6.Picture = ImageList1.ListImages(8).Picture
A = 1
End Sub

Private Sub Image6_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If A = 1 Then
If X > 0 Then Image6.Picture = ImageList1.ListImages(8).Picture
If Y > 0 Then Image6.Picture = ImageList1.ListImages(8).Picture
If X > 420 Then Image6.Picture = ImageList1.ListImages(7).Picture
If Y > 420 Then Image6.Picture = ImageList1.ListImages(7).Picture
If X < 0 Then Image6.Picture = ImageList1.ListImages(7).Picture
If Y < 0 Then Image6.Picture = ImageList1.ListImages(7).Picture
End If
End Sub

Private Sub Image6_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
If Image6.Picture = ImageList1.ListImages(8).Picture Then
PBar.Max = S.Duration
S.Play
Timer1.Interval = 1
Label7.Caption = S.Duration
End If
Image6.Picture = ImageList1.ListImages(7).Picture
A = 0
End Sub

Private Sub Image5_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image5.Picture = ImageList1.ListImages(6).Picture
A = 1
End Sub

Private Sub Image5_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If A = 1 Then
If X > 0 Then Image5.Picture = ImageList1.ListImages(6).Picture
If Y > 0 Then Image5.Picture = ImageList1.ListImages(6).Picture
If X > 420 Then Image5.Picture = ImageList1.ListImages(5).Picture
If Y > 420 Then Image5.Picture = ImageList1.ListImages(5).Picture
If X < 0 Then Image5.Picture = ImageList1.ListImages(5).Picture
If Y < 0 Then Image5.Picture = ImageList1.ListImages(5).Picture
End If
End Sub

Private Sub Image5_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image5.Picture = ImageList1.ListImages(6).Picture Then
S.Stop
S.CurrentPosition = 0
Timer1.Interval = 0
PBar.Value = 0
End If
Image5.Picture = ImageList1.ListImages(5).Picture
A = 0
End Sub

Private Sub ProgressBar1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
Dim MW
Dim MW1
MW1 = Fix(X / 20)
ProgressBar1.Value = MW1
Label15.Caption = MW1
S.Rate = Abs(MW1 / 10)
On Error GoTo 10
Exit Sub
10:
S.CurrentPosition = 0
End Sub

Private Sub Timer1_Timer()
On Error Resume Next
PBar.Value = S.CurrentPosition
Label6.Caption = S.CurrentPosition
End Sub
Private Sub Image2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image2.Picture = ImageList1.ListImages(10).Picture
A = 1
End Sub

Private Sub Image2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If A = 1 Then
If X > 0 Then Image2.Picture = ImageList1.ListImages(10).Picture
If Y > 0 Then Image2.Picture = ImageList1.ListImages(10).Picture
If X > 480 Then Image2.Picture = ImageList1.ListImages(9).Picture
If Y > 480 Then Image2.Picture = ImageList1.ListImages(9).Picture
If X < 0 Then Image2.Picture = ImageList1.ListImages(9).Picture
If Y < 0 Then Image2.Picture = ImageList1.ListImages(9).Picture
End If
End Sub

Private Sub Image2_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
If Image2.Picture = ImageList1.ListImages(10).Picture Then
Label10.Caption = Label3.Caption
Label11.Caption = LF.SelectedItem.Text
End If
Image2.Picture = ImageList1.ListImages(9).Picture
A = 0
End Sub

Private Sub Image3_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image3.Picture = ImageList1.ListImages(12).Picture
A = 1
End Sub

Private Sub Image3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If A = 1 Then
If X > 0 Then Image3.Picture = ImageList1.ListImages(12).Picture
If Y > 0 Then Image3.Picture = ImageList1.ListImages(12).Picture
If X > 480 Then Image3.Picture = ImageList1.ListImages(11).Picture
If Y > 480 Then Image3.Picture = ImageList1.ListImages(11).Picture
If X < 0 Then Image3.Picture = ImageList1.ListImages(11).Picture
If Y < 0 Then Image3.Picture = ImageList1.ListImages(11).Picture
End If
End Sub

Private Sub Image3_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
If Image3.Picture = ImageList1.ListImages(12).Picture Then
Dim SA As String
Dim SQ As String
SA = Label10.Caption
SQ = PP + Label11.Caption
FileCopy SA, SQ
Dir1.Refresh
FileL.Refresh
LF.Refresh
LF.ListItems.Clear
FileL.Path = Dir1.Path
For O = 0 To FileL.ListCount
LF.ListItems.Add , , FileL.List(O)
Next O
End If
Image3.Picture = ImageList1.ListImages(11).Picture
A = 0
End Sub


Private Sub Image4_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image4.Picture = ImageList1.ListImages(14).Picture
A = 1
End Sub

Private Sub Image4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If A = 1 Then
If X > 0 Then Image4.Picture = ImageList1.ListImages(14).Picture
If Y > 0 Then Image4.Picture = ImageList1.ListImages(14).Picture
If X > 480 Then Image4.Picture = ImageList1.ListImages(13).Picture
If Y > 480 Then Image4.Picture = ImageList1.ListImages(13).Picture
If X < 0 Then Image4.Picture = ImageList1.ListImages(13).Picture
If Y < 0 Then Image4.Picture = ImageList1.ListImages(13).Picture
End If
End Sub

Private Sub Image4_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image4.Picture = ImageList1.ListImages(14).Picture Then
Dim TZ
TZ = MsgBox("Are your Shure to Delete this file.", 4, "Delete")
Select Case TZ
Case 6
S.FileName = ""
On Error Resume Next
Kill Label3.Caption
FileL.Refresh
LF.ListItems.Clear
FileL.Path = Dir1.Path
For O = 0 To FileL.ListCount
LF.ListItems.Add , , FileL.List(O)
Next O
Case 7
LF.Refresh
End Select
End If
Image4.Picture = ImageList1.ListImages(13).Picture
A = 0
End Sub


Private Sub ImageVol_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If A = 1 Then
XX = Y * 10
Timer2.Interval = 1
End If
End Sub

Private Sub Timer2_Timer()
On Error Resume Next
Scale (-4.5, 1.2)-(1, -1)
Dim Angle
Dim V
    Angle = 0.001 * (-XX)
    lin.X1 = 0
    lin.Y1 = 0
    lin.X2 = 0.09 * Cos(Angle)
    lin.Y2 = 0.05 * Sin(Angle)
V = Fix(Angle * 100)
If V > 2000 Or V > -2000 Then Timer2.Interval = 0
Label13.Caption = Abs(V - 2000)
Label14.Caption = Abs(V) * (-1)
S.Volume = Abs(V) * (-1)
Label14.Caption = Abs(Label14)
Timer2.Interval = 0
End Sub

Private Sub Image8_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image8.Picture = ImageList1.ListImages(16).Picture
A = 1
End Sub

Private Sub Image8_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If A = 1 Then
If X > 0 Then Image8.Picture = ImageList1.ListImages(16).Picture
If Y > 0 Then Image8.Picture = ImageList1.ListImages(16).Picture
If X > 420 Then Image8.Picture = ImageList1.ListImages(15).Picture
If Y > 420 Then Image8.Picture = ImageList1.ListImages(15).Picture
If X < 0 Then Image8.Picture = ImageList1.ListImages(15).Picture
If Y < 0 Then Image8.Picture = ImageList1.ListImages(15).Picture
End If
End Sub

Private Sub Image8_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image8.Picture = ImageList1.ListImages(16).Picture Then
Static O
O = O + 1
If O > 1 Then O = 0
Select Case O
Case 0
Frame2.Visible = False
Case 1
Frame2.Visible = True
End Select
End If
Image8.Picture = ImageList1.ListImages(15).Picture
A = 0
End Sub

