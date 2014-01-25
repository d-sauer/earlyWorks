VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{22D6F304-B0F6-11D0-94AB-0080C74C7E95}#1.0#0"; "MSDXM.OCX"
Begin VB.Form OpenF 
   BorderStyle     =   0  'None
   ClientHeight    =   4575
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5790
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Open.frx":0000
   ScaleHeight     =   4575
   ScaleWidth      =   5790
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CheckBox APlay 
      BackColor       =   &H00000000&
      Caption         =   "Auto Play"
      ForeColor       =   &H00C0C0C0&
      Height          =   195
      Left            =   720
      MaskColor       =   &H00000000&
      TabIndex        =   20
      Top             =   520
      Width           =   975
   End
   Begin MSComctlLib.ListView LV 
      Height          =   2490
      Left            =   2760
      TabIndex        =   16
      Top             =   720
      Visible         =   0   'False
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   4392
      View            =   3
      Arrange         =   2
      LabelEdit       =   1
      Sorted          =   -1  'True
      LabelWrap       =   0   'False
      HideSelection   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   12632256
      BackColor       =   0
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   2
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "File "
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Path"
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.Timer Timer2 
      Left            =   5280
      Top             =   2760
   End
   Begin MSComctlLib.ProgressBar PBar 
      Height          =   255
      Left            =   1680
      TabIndex        =   12
      Top             =   3960
      Visible         =   0   'False
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
      Scrolling       =   1
   End
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   120
      Top             =   3120
   End
   Begin VB.FileListBox FileL 
      Height          =   1455
      Left            =   120
      TabIndex        =   9
      Top             =   1560
      Visible         =   0   'False
      Width           =   255
   End
   Begin MSComctlLib.ListView FileV 
      Height          =   2490
      Left            =   2760
      TabIndex        =   7
      Top             =   720
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   4392
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   0   'False
      HideSelection   =   -1  'True
      _Version        =   393217
      ForeColor       =   12632256
      BackColor       =   0
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   1
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "File "
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.DirListBox Dir 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0C0&
      Height          =   2490
      Left            =   720
      TabIndex        =   6
      Top             =   720
      Width           =   2055
   End
   Begin VB.DriveListBox Drv 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0C0&
      Height          =   330
      Left            =   4080
      TabIndex        =   3
      Top             =   3480
      Width           =   975
   End
   Begin VB.ComboBox Combo1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00808080&
      Height          =   315
      Left            =   3000
      TabIndex        =   2
      Text            =   "All types"
      Top             =   3480
      Width           =   975
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00C0C0C0&
      Height          =   315
      Left            =   720
      TabIndex        =   1
      Text            =   "Davor"
      Top             =   3480
      Width           =   2295
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   5280
      Top             =   0
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   10
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Open.frx":31B0
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Open.frx":3A8C
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Open.frx":4368
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Open.frx":4C44
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Open.frx":5520
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Open.frx":5DFC
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Open.frx":66D8
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Open.frx":6FB4
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Open.frx":7890
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Open.frx":816C
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Left            =   5280
      TabIndex        =   10
      Top             =   720
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
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      Height          =   195
      Left            =   240
      TabIndex        =   21
      Top             =   3960
      Visible         =   0   'False
      Width           =   90
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   165
      Left            =   3480
      TabIndex        =   19
      Top             =   555
      Width           =   75
   End
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "File Size :"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   165
      Left            =   2880
      TabIndex        =   18
      Top             =   555
      Width           =   570
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Drive :"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   5.25
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   120
      Index           =   2
      Left            =   4080
      TabIndex        =   17
      Top             =   3360
      Width           =   315
   End
   Begin VB.Image Image4 
      Height          =   480
      Left            =   3480
      Picture         =   "Open.frx":8A48
      Top             =   3900
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Label lblCount 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   165
      Left            =   4920
      TabIndex        =   15
      Top             =   555
      Width           =   75
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   150
      Index           =   1
      Left            =   3240
      TabIndex        =   14
      Top             =   4200
      Visible         =   0   'False
      Width           =   75
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0.0000"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   150
      Index           =   0
      Left            =   1560
      TabIndex        =   13
      Top             =   4200
      Visible         =   0   'False
      Width           =   405
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "0"
      Height          =   195
      Left            =   240
      TabIndex        =   11
      Top             =   480
      Visible         =   0   'False
      Width           =   90
   End
   Begin VB.Label TRK 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Track 1"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   165
      Left            =   780
      TabIndex        =   8
      Top             =   120
      Width           =   435
   End
   Begin VB.Image Image3 
      Height          =   480
      Left            =   3480
      Picture         =   "Open.frx":8D52
      ToolTipText     =   "Find File"
      Top             =   3900
      Width           =   480
   End
   Begin VB.Image Image5 
      Height          =   480
      Left            =   1080
      Picture         =   "Open.frx":961C
      Top             =   3900
      Width           =   480
   End
   Begin VB.Image Image6 
      Height          =   480
      Left            =   600
      Picture         =   "Open.frx":9EE6
      Top             =   3900
      Width           =   480
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   4680
      Picture         =   "Open.frx":A7B0
      Top             =   3900
      Width           =   480
   End
   Begin VB.Image Image2 
      Height          =   480
      Left            =   4080
      Picture         =   "Open.frx":B07A
      ToolTipText     =   "Back"
      Top             =   3900
      Width           =   480
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Files of type :"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   5.25
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   120
      Index           =   1
      Left            =   3000
      TabIndex        =   5
      Top             =   3360
      Width           =   630
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "File Name :"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   5.25
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   120
      Index           =   0
      Left            =   720
      TabIndex        =   4
      Top             =   3360
      Width           =   525
   End
   Begin VB.Label FileF 
      BackStyle       =   0  'Transparent
      Caption         =   "C:\My Documents"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   165
      Left            =   720
      TabIndex        =   0
      Top             =   270
      Width           =   4380
   End
End
Attribute VB_Name = "OpenF"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim A
Dim PathH As String
Dim SearchFlag As Integer
Dim SS As Integer ' Used as flag for cancel and other operations.
Dim Kk As ListItem
Dim entry2 As String
Dim Q
Dim Mo As POINTAPI
Dim P
Dim XX
Dim YY
Dim LT As String

Private Sub APlay_Click()
If APlay.Value = 0 Then
S.Stop
S.CurrentPosition = 0
Timer2.Interval = 0
PBar.Visible = False
Label3(0).Visible = False
Label3(1).Visible = False
PBar.Value = 0
PBar.Max = 1
End If
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch1", APlay.Value
End Sub

Private Sub APlay_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Automation play clicked file on file list."
End Sub

Private Sub Combo1_Change()
Timer1.Interval = 5
End Sub

Private Sub Combo1_Click()
Help2.Label1.Caption = "File Type."
FileV.ListItems.Clear
Timer1.Interval = 10
Select Case Combo1.ListIndex
Case 0
FileL.Pattern = "*.mp3;*.wav;*.mid;*.Snd;*.m3u;*.Rmi;*.Asf;*.Aif;*.Asx;*.Au"
Case 1
FileL.Pattern = "*.mp3"
Case 2
FileL.Pattern = "*.wav"
Case 3
FileL.Pattern = "*.Mid"
Case 4
FileL.Pattern = "*.Snd"
Case 5
FileL.Pattern = "*.m3u"
Case 6
FileL.Pattern = "*.Rmi"
Case 7
FileL.Pattern = "*.Asf"
Case 8
FileL.Pattern = "*.Aif"
Case 9
FileL.Pattern = "*.Asx"
Case 10
FileL.Pattern = "*.Au"
End Select
Label2.Caption = Combo1.ListIndex
End Sub

Private Sub Dir_Change()
FileL.Path = Dir.Path
FileV.ListItems.Clear
Timer1.Interval = 1
FileF.Caption = Dir.Path
If SearchFlag = False Then lblCount.Caption = FileL.ListCount
End Sub


Private Sub Dir_Click()
FileF.Caption = Dir.Path
FileV.ListItems.Clear
Timer1.Interval = 1
End Sub

Private Sub Dir_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Folder."
End Sub

Private Sub Drv_Change()
Help2.Label1.Caption = "Change Disk."
On Error GoTo 10
Dir.Path = Drv.Drive
FileL.Path = Dir.Path
Exit Sub
10:
Drv.Drive = "C:\"
End Sub

Private Sub FileF_Change()
On Error Resume Next
Label5.Caption = Format$(FileLen(FileF.Caption), "###,###,###,###") + " b"
If APlay.Value = 0 Then
S.Stop
S.CurrentPosition = 0
Timer2.Interval = 0
PBar.Visible = False
Label3(0).Visible = False
Label3(1).Visible = False
PBar.Value = 0
PBar.Max = 1
End If
If APlay.Value = 1 Then
'Stop
S.Stop
S.CurrentPosition = 0
Timer2.Interval = 0
PBar.Visible = False
Label3(0).Visible = False
Label3(1).Visible = False
PBar.Value = 0
PBar.Max = 1
'Play
S.filename = FileF.Caption
S.Play
PBar.Visible = True
Label3(0).Visible = True
Label3(1).Visible = True
On Error Resume Next
PBar.Max = S.Duration
Label3(1).Caption = Fix(S.Duration)
Timer2.Interval = 10
End If
End Sub

Private Sub FileF_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Sound Path and File name."
End Sub

Private Sub FileV_Click()
Dim G
Dim G1
G1 = Len(Dir.Path)
On Error GoTo 10
If G1 > 3 Then
G = Dir.Path + "\" + FileV.SelectedItem.Text
FileF.Caption = G
End If
If G1 = 3 Then
G = Dir.Path + FileV.SelectedItem.Text
FileF.Caption = G
End If
Text1.Text = FileV.SelectedItem.Text
Exit Sub
10:
End Sub


Private Sub FileV_DblClick()
If Label6.Caption = 0 Then
Call OK
End If
If Label6.Caption = 1 Then
Call OK_2
End If
'Stop
S.Stop
S.CurrentPosition = 0
Timer2.Interval = 0
PBar.Visible = False
Label3(0).Visible = False
Label3(1).Visible = False
PBar.Value = 0
PBar.Max = 1
End Sub

Private Sub FileV_KeyUp(KeyCode As Integer, Shift As Integer)
Dim G
Dim G1
G1 = Len(Dir.Path)
On Error GoTo 10
If G1 > 3 Then
G = Dir.Path + "\" + FileV.SelectedItem.Text
FileF.Caption = G
End If
If G1 = 3 Then
G = Dir.Path + FileV.SelectedItem.Text
FileF.Caption = G
End If
Text1.Text = FileV.SelectedItem.Text
Exit Sub
10:
End Sub

Private Sub FileV_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim G
Dim G1
G1 = Len(Dir.Path)
On Error GoTo 10
If G1 > 3 Then
G = Dir.Path + "\" + FileV.SelectedItem.Text
FileF.Caption = G
End If
If G1 = 3 Then
G = Dir.Path + FileV.SelectedItem.Text
FileF.Caption = G
End If
Text1.Text = FileV.SelectedItem.Text

If Button And 2 Then
Static c
c = c + 1
If c > 1 Then c = 0
Select Case c
Case 1
S.filename = FileF.Caption
S.Play
PBar.Visible = True
Label3(0).Visible = True
Label3(1).Visible = True
PBar.Max = S.Duration
Label3(1).Caption = Fix(S.Duration)
Timer2.Interval = 10
Case 0
S.Stop
S.CurrentPosition = 0
Timer2.Interval = 0
PBar.Visible = False
Label3(0).Visible = False
Label3(1).Visible = False
PBar.Value = 0
PBar.Max = 1
End Select
End If
Exit Sub
10:
End Sub

Private Sub FileV_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Fle list."
End Sub

Private Sub Form_Load()
Dir.Path = PathH
TRK.Caption = GLF.NTrk.Caption
LT = GLF.Label3.Caption
Combo1.AddItem "All types"
Combo1.AddItem "mp3"
Combo1.AddItem "Wav"
Combo1.AddItem "Mid"
Combo1.AddItem "Snd"
Combo1.AddItem "M3u"
Combo1.AddItem "Rmi"
Combo1.AddItem "Asf"
Combo1.AddItem "Aif"
Combo1.AddItem "Asx"
Combo1.AddItem "Au"
FileL.Pattern = "*.mp3;*.wav;*.mid;*.Snd;*.m3u;*.Rmi;*.Asf;*.Aif;*.Asx;*.Au"
APlay.Value = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch1")
End Sub

Private Sub Image4_Click()
Static T
T = T + 1
If T > 1 Then T = 0
Select Case T
Case 0
Image4.Visible = False
FileV.Visible = True
LV.Visible = False
Case 1
SearchFlag = False
End Select
End Sub

Private Sub Image4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Stop search or remove search list."
End Sub

Private Sub Image6_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image6.Picture = ImageList1.ListImages(10).Picture
A = 1
End Sub

Private Sub Image6_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Play Sound."
If A = 1 Then
If X > 0 Then Image6.Picture = ImageList1.ListImages(10).Picture
If Y > 0 Then Image6.Picture = ImageList1.ListImages(10).Picture
If X > 420 Then Image6.Picture = ImageList1.ListImages(9).Picture
If Y > 420 Then Image6.Picture = ImageList1.ListImages(9).Picture
If X < 0 Then Image6.Picture = ImageList1.ListImages(9).Picture
If Y < 0 Then Image6.Picture = ImageList1.ListImages(9).Picture
End If
End Sub

Private Sub Image6_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
If Image6.Picture = ImageList1.ListImages(10).Picture Then
S.filename = FileF.Caption
S.Play
PBar.Visible = True
Label3(0).Visible = True
Label3(1).Visible = True
On Error Resume Next
PBar.Max = S.Duration
Label3(1).Caption = Fix(S.Duration)
Timer2.Interval = 10
End If
Image6.Picture = ImageList1.ListImages(9).Picture
A = 0
End Sub

Private Sub Image5_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image5.Picture = ImageList1.ListImages(8).Picture
A = 1
End Sub

Private Sub Image5_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Stop Sound."
If A = 1 Then
If X > 0 Then Image5.Picture = ImageList1.ListImages(8).Picture
If Y > 0 Then Image5.Picture = ImageList1.ListImages(8).Picture
If X > 420 Then Image5.Picture = ImageList1.ListImages(7).Picture
If Y > 420 Then Image5.Picture = ImageList1.ListImages(7).Picture
If X < 0 Then Image5.Picture = ImageList1.ListImages(7).Picture
If Y < 0 Then Image5.Picture = ImageList1.ListImages(7).Picture
End If
End Sub

Private Sub Image5_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image5.Picture = ImageList1.ListImages(8).Picture Then
S.Stop
S.CurrentPosition = 0
Timer2.Interval = 0
PBar.Visible = False
Label3(0).Visible = False
Label3(1).Visible = False
PBar.Value = 0
PBar.Max = 1
End If
Image5.Picture = ImageList1.ListImages(7).Picture
A = 0
End Sub

Private Sub Image2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image2.Picture = ImageList1.ListImages(4).Picture
A = 1
End Sub

Private Sub Image2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Back."
If A = 1 Then
If X > 0 Then Image2.Picture = ImageList1.ListImages(4).Picture
If Y > 0 Then Image2.Picture = ImageList1.ListImages(4).Picture
If X > 420 Then Image2.Picture = ImageList1.ListImages(3).Picture
If Y > 420 Then Image2.Picture = ImageList1.ListImages(3).Picture
If X < 0 Then Image2.Picture = ImageList1.ListImages(3).Picture
If Y < 0 Then Image2.Picture = ImageList1.ListImages(3).Picture
End If
End Sub

Private Sub Image2_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
If Image2.Picture = ImageList1.ListImages(4).Picture Then
S.Stop
S.CurrentPosition = 0
Timer2.Interval = 0
PBar.Visible = False
Label3(0).Visible = False
Label3(1).Visible = False
PBar.Value = 0
PBar.Max = 1
GLF.Timer1.Interval = 250
PathH = Dir.Path
Unload OpenF
End If
Image2.Picture = ImageList1.ListImages(3).Picture
A = 0
End Sub

Private Sub Image1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image1.Picture = ImageList1.ListImages(2).Picture
A = 1
End Sub

Private Sub Image1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Ok."
If A = 1 Then
If X > 0 Then Image1.Picture = ImageList1.ListImages(2).Picture
If Y > 0 Then Image1.Picture = ImageList1.ListImages(2).Picture
If X > 420 Then Image1.Picture = ImageList1.ListImages(1).Picture
If Y > 420 Then Image1.Picture = ImageList1.ListImages(1).Picture
If X < 0 Then Image1.Picture = ImageList1.ListImages(1).Picture
If Y < 0 Then Image1.Picture = ImageList1.ListImages(1).Picture
End If
End Sub

Private Sub Image1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image1.Picture = ImageList1.ListImages(2).Picture Then
If Label6.Caption = 0 Then
Call OK
End If
If Label6.Caption = 1 Then
Call OK_2
End If
End If
Image1.Picture = ImageList1.ListImages(1).Picture
A = 0
End Sub

Private Sub Image3_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image3.Picture = ImageList1.ListImages(6).Picture
A = 1
End Sub

Private Sub Image3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Start search."
If A = 1 Then
If X > 0 Then Image3.Picture = ImageList1.ListImages(6).Picture
If Y > 0 Then Image3.Picture = ImageList1.ListImages(6).Picture
If X > 420 Then Image3.Picture = ImageList1.ListImages(5).Picture
If Y > 420 Then Image3.Picture = ImageList1.ListImages(5).Picture
If X < 0 Then Image3.Picture = ImageList1.ListImages(5).Picture
If Y < 0 Then Image3.Picture = ImageList1.ListImages(5).Picture
End If
End Sub

Private Sub Image3_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
If Image3.Picture = ImageList1.ListImages(6).Picture Then
Image4.Visible = True
FileV.Visible = False
LV.Visible = True
FileV.ListItems.Clear
LV.ListItems.Clear
Dim FirstPath As String, DirCount As Integer, NumFiles As Integer
Dim result As Integer
    If Dir.Path <> Dir.List(Dir.ListIndex) Then
        Dir.Path = Dir.List(Dir.ListIndex)
        Exit Sub         ' Exit so user can take a look before searching.
    End If
    FileL.Pattern = Text1.Text
    FirstPath = Dir.Path
    DirCount = Dir.ListCount

    ' Start recursive direcory search.
    NumFiles = 0                       ' Reset found files indicator.
    result = DirDiver(FirstPath, DirCount, "")
    FileL.Path = Dir.Path
SearchFlag = False
End If
Image3.Picture = ImageList1.ListImages(5).Picture
A = 0
End Sub

Private Sub Label1_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "File Type or drive list."
End Sub

Private Sub Label4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "File Size."
End Sub

Private Sub Label5_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "File Size."
End Sub

Private Sub lblCount_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "File number on list."
End Sub

Private Sub LV_Click()
FileF.Caption = LV.SelectedItem.SubItems(1)
End Sub

Private Sub LV_DblClick()
If Label6.Caption = 0 Then
Call OK
End If
If Label6.Caption = 1 Then
Call OK_2
End If
End Sub

Private Sub LV_KeyUp(KeyCode As Integer, Shift As Integer)
FileF.Caption = LV.SelectedItem.SubItems(1)
End Sub

Private Sub LV_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
FileF.Caption = LV.SelectedItem.SubItems(1)
If Button And 2 Then
Static c
c = c + 1
If c > 1 Then c = 0
Select Case c
Case 1
S.filename = FileF.Caption
S.Play
PBar.Visible = True
Label3(0).Visible = True
Label3(1).Visible = True
PBar.Max = S.Duration
Label3(1).Caption = Fix(S.Duration)
Timer2.Interval = 10
Case 0
S.Stop
S.CurrentPosition = 0
Timer2.Interval = 0
PBar.Visible = False
Label3(0).Visible = False
Label3(1).Visible = False
PBar.Value = 0
PBar.Max = 1
End Select
End If
End Sub

Private Sub LV_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Find File."
End Sub

Private Sub Pbar_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Seek bar."
On Error Resume Next
Dim M
Dim M1
M = S.Duration
M1 = X / (1575 / M)
PBar.ToolTipText = M1
End Sub

Private Sub Pbar_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
Dim M
Dim M1
M = S.Duration
M1 = X / (1575 / M)
On Error GoTo 10
S.CurrentPosition = M1
Exit Sub
10:
S.CurrentPosition = 0
End Sub

Private Sub Text1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "File name of file name to search."
End Sub

Private Sub Timer1_Timer()
Dim FL As String
Dim M
Dim K
M = FileL.ListCount
For K = 0 To M - 1
FileV.ListItems.Add , , FileL.List(K)
Timer1.Interval = 0
Next K
End Sub
Sub OK()
Dim I
On Error Resume Next
PathH = Dir.Path
'Stop
S.Stop
S.CurrentPosition = 0
Timer2.Interval = 0
PBar.Visible = False
Label3(0).Visible = False
Label3(1).Visible = False
PBar.Value = 0
PBar.Max = 1
'Send Information
S.filename = FileF.Caption
I = GLF.Label2.Caption
GLF.S(I).filename = FileF.Caption
GLF.Too(I).Caption = S.Duration
GLF.Sp(I).Caption = "1"
GLF.Bal(I).Caption = "0"
OP.Timer1.Interval = 20
GLF.Space(I).Caption = "0"
GLF.Timer1.Interval = 300
Unload OpenF
End Sub

Private Sub Timer2_Timer()
On Error Resume Next
PBar.Value = S.CurrentPosition
Label3(0).Caption = S.CurrentPosition
End Sub

Private Function DirDiver(NewPath As String, DirCount As Integer, BackUp As String) As Integer
On Error Resume Next
Static FirstErr As Integer
Dim DirsToPeek As Integer, AbandonSearch As Integer, ID As Integer
Dim OldPath As String, ThePath As String, Entry As String
Dim retval As Integer
    SearchFlag = True           ' Set flag so the user can interrupt.
    DirDiver = False            ' Set to True if there is an error.
    retval = DoEvents()         ' Check for events (for instance, if the user chooses Cancel).
    If SearchFlag = False Then
        DirDiver = True
        Exit Function
    End If
    On Local Error GoTo DirDriverHandler
    DirsToPeek = Dir.ListCount                  ' How many directories below this?
    Do While DirsToPeek > 0 And SearchFlag = True
        OldPath = Dir.Path                      ' Save old path for next recursion.
        Dir.Path = NewPath
        If Dir.ListCount > 0 Then
            ' Get to the node bottom.
            Dir.Path = Dir.List(DirsToPeek - 1)
            AbandonSearch = DirDiver((Dir.Path), DirCount%, OldPath)
        End If
        ' Go up one level in directories.
        DirsToPeek = DirsToPeek - 1
        If AbandonSearch = True Then Exit Function
    Loop
    ' Call function to enumerate files.
    If FileL.ListCount Then
        If Len(Dir.Path) <= 3 Then             ' Check for 2 bytes/character
            ThePath = Dir.Path                  ' If at root level, leave as is...
        Else
            ThePath = Dir.Path + "\"            ' Otherwise put "\" before the filename.
        End If
For ID = 0 To FileL.ListCount - 1
Set Kk = LV.ListItems.Add(, , FileL.List(ID))
Entry = ThePath + FileL.List(ID)
Kk.SubItems(1) = Entry
lblCount.Caption = Str(Val(LV.ListItems.Count))
Next ID
    End If
    If BackUp <> "" Then        ' If there is a superior directory, move it.
        Dir.Path = BackUp
    End If
    Exit Function
DirDriverHandler:
End Function



Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Q = 1
P = Screen.TwipsPerPixelX
XX = X
YY = Y
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Q = 1 Then
GetCursorPos Mo
OpenF.Left = (P * Mo.X) - XX
OpenF.Top = (P * Mo.Y) - YY
End If
End Sub

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Q = 0
P = Screen.TwipsPerPixelX
XX = X
YY = Y
End Sub

Sub OK_2()
Label6.Caption = "0"
OSM.Text2.Text = FileF.Caption
OSM.List1.RemoveItem (OSM.Label13 - 1)
OSM.List1.AddItem OSM.Text2.Text, (OSM.Label13 - 1)
OSM.Label12.Caption = Len(OSM.Text2.Text)
Unload Me
End Sub

Private Sub TRK_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Active Track."
End Sub
