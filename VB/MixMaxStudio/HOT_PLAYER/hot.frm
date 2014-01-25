VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{22D6F304-B0F6-11D0-94AB-0080C74C7E95}#1.0#0"; "MSDXM.OCX"
Object = "{784B8A28-DF18-11D3-A44A-8C0C4C6F500A}#4.0#0"; "OCI.OCX"
Begin VB.Form glavna 
   BorderStyle     =   0  'None
   Caption         =   "Mix Max Studio Player"
   ClientHeight    =   1740
   ClientLeft      =   150
   ClientTop       =   435
   ClientWidth     =   4125
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "hot.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "hot.frx":030A
   ScaleHeight     =   1740
   ScaleWidth      =   4125
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.ProgressBar tempo 
      Height          =   90
      Left            =   2880
      TabIndex        =   20
      Top             =   1575
      Width           =   1140
      _ExtentX        =   2011
      _ExtentY        =   159
      _Version        =   393216
      Appearance      =   0
      Min             =   1e-4
      Max             =   220
      Scrolling       =   1
   End
   Begin Oci.Eyes Eyes1 
      Height          =   495
      Left            =   615
      TabIndex        =   18
      Top             =   390
      Width           =   705
      _ExtentX        =   1244
      _ExtentY        =   873
      BackColor       =   0
      Interval        =   0
   End
   Begin MSComctlLib.Slider Slider1 
      Height          =   60
      Left            =   2565
      TabIndex        =   9
      Top             =   930
      Width           =   675
      _ExtentX        =   1191
      _ExtentY        =   106
      _Version        =   393216
      Min             =   -25
      Max             =   25
      TickStyle       =   3
      TextPosition    =   1
   End
   Begin MSComctlLib.ProgressBar vol 
      Height          =   75
      Left            =   1680
      TabIndex        =   8
      Top             =   930
      Width           =   780
      _ExtentX        =   1376
      _ExtentY        =   132
      _Version        =   393216
      Appearance      =   0
      Min             =   1
      Max             =   2500
      Scrolling       =   1
   End
   Begin VB.Timer Timer1 
      Left            =   2115
      Top             =   2190
   End
   Begin MSComDlg.CommonDialog O 
      Left            =   1455
      Top             =   2160
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      DialogTitle     =   "Open"
      Filter          =   $"hot.frx":17A7C
   End
   Begin MSComctlLib.ProgressBar PB 
      Height          =   300
      Left            =   150
      TabIndex        =   7
      Top             =   1800
      Visible         =   0   'False
      Width           =   3690
      _ExtentX        =   6509
      _ExtentY        =   529
      _Version        =   393216
      BorderStyle     =   1
      Appearance      =   0
      Min             =   1e-4
      Max             =   1
      Scrolling       =   1
   End
   Begin VB.Label text1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "100%"
      BeginProperty Font 
         Name            =   "SansSerif"
         Size            =   8.25
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   180
      Left            =   3240
      TabIndex        =   21
      Top             =   1365
      Width           =   420
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "H"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Index           =   0
      Left            =   105
      TabIndex        =   19
      Top             =   375
      Width           =   135
   End
   Begin VB.Label Label2 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   555
      Left            =   330
      TabIndex        =   17
      Top             =   360
      Width           =   1200
   End
   Begin VB.Label broj 
      Height          =   240
      Left            =   2820
      TabIndex        =   16
      Top             =   2280
      Width           =   615
   End
   Begin VB.Image Image8 
      Height          =   165
      Left            =   3555
      Picture         =   "hot.frx":17B59
      Top             =   855
      Width           =   360
   End
   Begin VB.Image Image7 
      Height          =   180
      Left            =   3555
      Picture         =   "hot.frx":17EB3
      Top             =   855
      Width           =   360
   End
   Begin VB.Label Label11 
      BackStyle       =   0  'Transparent
      Height          =   150
      Left            =   3510
      TabIndex        =   15
      Top             =   30
      Width           =   195
   End
   Begin VB.Label Label10 
      BackStyle       =   0  'Transparent
      Height          =   150
      Left            =   3690
      TabIndex        =   14
      Top             =   45
      Width           =   195
   End
   Begin VB.Label Label9 
      BackStyle       =   0  'Transparent
      Height          =   150
      Left            =   3870
      TabIndex        =   13
      Top             =   30
      Width           =   195
   End
   Begin VB.Label Label8 
      BackColor       =   &H00000000&
      Height          =   420
      Left            =   1620
      TabIndex        =   12
      Top             =   360
      Width           =   60
   End
   Begin VB.Label Label7 
      BackColor       =   &H00000000&
      Height          =   420
      Left            =   3960
      TabIndex        =   11
      Top             =   360
      Width           =   60
   End
   Begin VB.Label Label6 
      BackColor       =   &H00000000&
      Height          =   60
      Left            =   1620
      TabIndex        =   10
      Top             =   720
      Width           =   2400
   End
   Begin VB.Image Image6 
      Height          =   210
      Left            =   2520
      Picture         =   "hot.frx":18255
      Stretch         =   -1  'True
      Top             =   855
      Width           =   750
   End
   Begin VB.Image Image5 
      Height          =   210
      Left            =   1620
      Picture         =   "hot.frx":18DF7
      Stretch         =   -1  'True
      Top             =   855
      Width           =   885
   End
   Begin VB.Image pos 
      Height          =   150
      Left            =   240
      Picture         =   "hot.frx":19999
      Stretch         =   -1  'True
      Top             =   1080
      Width           =   405
   End
   Begin VB.Image Image3 
      Height          =   240
      Left            =   2250
      Picture         =   "hot.frx":19CFB
      Top             =   1305
      Width           =   330
   End
   Begin VB.Image stani 
      Height          =   285
      Left            =   1485
      Picture         =   "hot.frx":1A17D
      Top             =   1260
      Width           =   360
   End
   Begin VB.Image nazad 
      Height          =   285
      Left            =   450
      Picture         =   "hot.frx":1A717
      Top             =   1260
      Width           =   345
   End
   Begin VB.Image pusti 
      Height          =   285
      Left            =   765
      Picture         =   "hot.frx":1ACB1
      Top             =   1260
      Width           =   360
   End
   Begin VB.Image pauza 
      Height          =   285
      Left            =   1125
      Picture         =   "hot.frx":1B24B
      Top             =   1260
      Width           =   360
   End
   Begin VB.Image iduca 
      Height          =   285
      Left            =   1800
      Picture         =   "hot.frx":1B7E5
      Top             =   1260
      Width           =   360
   End
   Begin VB.Label giduci 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   1845
      TabIndex        =   6
      Top             =   1350
      Width           =   330
   End
   Begin VB.Label gstani 
      BackColor       =   &H00FF0000&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   1485
      TabIndex        =   5
      Top             =   1350
      Width           =   330
   End
   Begin VB.Label gpauza 
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   1170
      TabIndex        =   4
      Top             =   1350
      Width           =   330
   End
   Begin VB.Label gpusti 
      BackColor       =   &H0000FFFF&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   810
      TabIndex        =   3
      Top             =   1350
      Width           =   330
   End
   Begin VB.Label gnazad 
      BackColor       =   &H0000FF00&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   495
      TabIndex        =   2
      Top             =   1350
      Width           =   330
   End
   Begin VB.Image Image2 
      Height          =   240
      Left            =   2250
      Picture         =   "hot.frx":1BD7F
      Top             =   1260
      Width           =   330
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Terminal"
         Size            =   9
         Charset         =   255
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   240
      Left            =   210
      TabIndex        =   1
      Top             =   2175
      Width           =   1065
   End
   Begin VB.Image Image1 
      Height          =   255
      Left            =   450
      Picture         =   "hot.frx":1C201
      Top             =   1305
      Width           =   1710
   End
   Begin VB.Image Image4 
      Height          =   150
      Left            =   270
      Picture         =   "hot.frx":1D91B
      Stretch         =   -1  'True
      Top             =   1080
      Width           =   3615
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   330
      Left            =   1680
      TabIndex        =   0
      Top             =   420
      Width           =   2310
      AudioStream     =   -10
      AutoSize        =   0   'False
      AutoStart       =   0   'False
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   10
      BaseURL         =   ""
      BufferingTime   =   3
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   65280
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
      PlayCount       =   1
      PreviewMode     =   -1  'True
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
      ShowAudioControls=   0   'False
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   0   'False
      ShowStatusBar   =   -1  'True
      ShowTracker     =   0   'False
      TransparentAtStart=   -1  'True
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -260
      WindowlessVideo =   0   'False
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00000000&
      FillStyle       =   0  'Solid
      Height          =   420
      Left            =   1665
      Top             =   375
      Width           =   2400
   End
End
Attribute VB_Name = "glavna"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim mpo As pointApi
Dim mp, mx, K1, K2  As Integer
Dim da, TT, xxyy, yy, xx, p, PosX, volic
Dim K As String
Dim fiLE$
Dim IconIndex As Integer, IntDown As Integer
Dim vool, ns As Integer
Dim mpl As String
Dim I1, i2, i3, i4, i5, i6, i7
Dim ttemp

Sub sakri()
pauza.Visible = False
pusti.Visible = False
stani.Visible = False
iduca.Visible = False
nazad.Visible = False
Image3.Visible = False
End Sub



Private Sub Eyes1_GotFocus()
help.help.Caption = "This is a eyes that folow your cursor"
End Sub





Private Sub Form_Load()
On Error GoTo 10
da = 0
playlist.text1 = App.Path + "\playlist.ini"
Call playlist.load
Open App.Path + "\mmsplayer.ini" For Input As #321
Input #321, I1, i2, i3, i4, i5, i6, i7
Close #321
glavna.Top = I1
glavna.Left = i2
glavna.broj.Caption = i3
playlist.Top = i4
playlist.Left = i5
playlist.playmove.Caption = i6
glavna.text1 = Fix(i7) & "%"
glavna.tempo.Value = i7
glavna.S.Rate = i7 / 100
playlist.List1.ListIndex = i3
playlist.List2.ListIndex = i3
S.FileName = playlist.List1.list(i3)
S.Open playlist.List1.list(i3)
10
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
da = 1
p = Screen.TwipsPerPixelX
xx = X
yy = Y
End Sub
Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
da = 0
If playlist.Left > glavna.Left + glavna.Width And playlist.Left < glavna.Left + glavna.Width + 200 Then playlist.playmove = "y"
If playlist.playmove.Caption = "n" Then Exit Sub
playlist.Top = glavna.Top
playlist.Left = glavna.Left + glavna.Width

End Sub


Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
text1 = Fix(tempo.Value) & "%"
Call sakri
If da = 1 Then GoTo 1
If da = 0 Then GoTo 2
1
GetCursorPos mpo
glavna.Left = (p * mpo.X) - xx
glavna.Top = (p * mpo.Y) - yy
If playlist.playmove.Caption = "n" Then Exit Sub
playlist.Top = glavna.Top
playlist.Left = glavna.Left + glavna.Width
2
help.Top = glavna.Top - help.Height
help.Left = glavna.Left
help.help.Caption = "Click and move cursor to move player"
3
If playlist.Left > glavna.Left + glavna.Width And playlist.Left < glavna.Left + glavna.Width + 200 Then playlist.playmove = "y"
End Sub



Private Sub Form_Resize()
If Image8.Visible = True Then playlist.Show
End Sub

Private Sub Form_Unload(Cancel As Integer)
Call endd
End Sub

Private Sub giduci_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
pauza.Visible = False
pusti.Visible = False
stani.Visible = False
iduca.Visible = True
nazad.Visible = False

End Sub

Private Sub gnazad_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
pauza.Visible = False
pusti.Visible = False
stani.Visible = False
iduca.Visible = False
nazad.Visible = True

End Sub

Private Sub gpauza_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
pauza.Visible = True
pusti.Visible = False
stani.Visible = False
iduca.Visible = False
nazad.Visible = False

End Sub

Private Sub gpusti_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
pauza.Visible = False
pusti.Visible = True
stani.Visible = False
iduca.Visible = False
nazad.Visible = False

End Sub

Private Sub gstani_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
pauza.Visible = False
pusti.Visible = False
stani.Visible = True
iduca.Visible = False
nazad.Visible = False

End Sub


Private Sub iduca_Click()
On Error Resume Next
Call nnext
End Sub

Private Sub iduca_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Click to go to next track."
End Sub

Private Sub Image2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image3.Visible = True
End Sub

Private Sub Image3_Click()
Call oopen
If fiLE$ = "" Then Exit Sub
glavna.broj.Caption = playlist.List1.ListCount - 1
playlist.List1.ListIndex = playlist.List1.ListCount - 1
playlist.List2.ListIndex = playlist.List2.ListCount - 1

End Sub


Private Sub Image3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Click to open track or playlist."
End Sub

Private Sub Image4_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
pos.Left = X + 200
S.CurrentPosition = PosX
End Sub

Private Sub Image4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim l1 As String
'Tocna pozicija za X poziciju kurosra miša u odnosu na progres bar u jedinici
On Error GoTo 10
PosX = X / (Image4.Width / mx)
l1 = PosX
help.help.Caption = "Click on it when you wish to change track time"
Exit Sub
10:
mx = 100
End Sub

Private Sub Image7_Click()
playlist.Show
Image8.Visible = True
End Sub

Private Sub Image8_Click()
playlist.Hide
glavna.Image8.Visible = False
End Sub

Private Sub Image8_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Click to show/hide playlist"
End Sub

Private Sub Label10_Click()
glavna.WindowState = 1
help.Hide
playlist.Hide
End Sub

Private Sub Label10_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Click to minimaze player"
End Sub

Private Sub Label11_Click()
glavna.Hide
If glavna.Image8.Visible = False Then playlist.Hide
mala.Show
mala.Top = glavna.Top
mala.Left = glavna.Left + (glavna.Width - mala.Width)
End Sub

Private Sub Label11_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Click to show small player"
End Sub



Private Sub Label3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Clickt ot show or hide splash screen at start up"
End Sub

Private Sub Label4_Click(Index As Integer)
help.Show
help.Top = glavna.Top - help.Height
help.Left = glavna.Left
End Sub

Private Sub Label4_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Click to see this help"
End Sub

Private Sub Label5_Click()
MsgBox "Šta ja znam ti napiši nešto npr. isto kao za tvoje."
End Sub

Private Sub Label5_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Click to see about"
End Sub

Private Sub Label9_Click()
Call endd
End Sub

Private Sub Label9_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Click to exit player"
End Sub

Private Sub nazad_Click()
On Error Resume Next
Call bback
End Sub

Private Sub nazad_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "click to go to previous track"
End Sub

Private Sub pauza_Click()
Call ppause
End Sub

Private Sub pauza_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Click to pause track"
End Sub

Private Sub PB_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
S.CurrentPosition = PosX
End Sub

Private Sub PB_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim l1 As String
'Tocna pozicija za X poziciju kurosra miša u odnosu na progres bar u jedinici
On Error GoTo 10
PosX = X / (PB.Width / mx)
l1 = PosX
Label2.Caption = l1
Exit Sub
10:
mx = 100
End Sub



Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
mala.Show
End Sub



Private Sub pusti_Click()
Call pplay
End Sub

Private Sub pusti_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Click to play track"
End Sub

Private Sub S_MouseMove(Button As Integer, ShiftState As Integer, X As Single, Y As Single)
help.help.Caption = "This screen display track info"
End Sub

Private Sub Slider1_Click()
S.Balance = Slider1.Value
End Sub

Private Sub Slider1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Click to balance sound."
End Sub

Private Sub Slider1_Scroll()
S.Balance = Slider1.Value * 100
End Sub


Private Sub stani_Click()
Call sstop
End Sub

Private Sub stani_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Click to stop track"
End Sub

Private Sub tempo_Click()
On Error Resume Next
S.Rate = tempo.Value / 100
text1 = Fix(tempo.Value) & "%"
End Sub

Private Sub tempo_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
ttemp = X / (tempo.Width / 220)
If ttemp = 0 Then ttemp = "0,1"
tempo.Value = ttemp
End Sub

Private Sub tempo_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
text1 = Fix(X / (tempo.Width / 220)) & "%"
help.help.Caption = "Click to change tempo"
End Sub

Private Sub Timer1_Timer()
On Error GoTo 10
K1 = mp
K2 = mx
mp = S.CurrentPosition
PB.Value = mp
pos.Left = (Image4.Width / PB.Max) * mp
If PB.Value = PB.Max Then Call nnext
Exit Sub
10:
mp = 0
Exit Sub
End Sub

Sub ppause()
On Error Resume Next
S.Pause
Timer1.Interval = 1
End Sub

Sub sstop()
On Error Resume Next
Timer1.Interval = 1
mx = 0
mp = 0
PB.Value = 0
S.CurrentPosition = 0
S.Stop
pos.Left = 220
End Sub


Private Sub Timer2_Timer()
glavna.vol.Value = 2500 - (-glavna.S.Volume)
End Sub

Private Sub vol_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
vool = 1
vol.Value = X / (vol.Width / 2500)
volic = 2500 - (X / (vol.Width / 2500))
S.Volume = -volic

End Sub
Sub oopen()
On Error Resume Next
glavna.O.DialogTitle = "Open"
glavna.O.ShowOpen
fiLE$ = glavna.O.FileName
mpl = GetExtension(glavna.O.FileName)
If mpl = ".mpl" Or mpl = ".MPL" Then GoTo 20
If mpl = ".m3u" Or mpl = ".M3U" Then GoTo 30
If mpl = ".mmp" Or mpl = ".MMS" Then GoTo 40
If fiLE$ = "" Then Exit Sub
glavna.S.FileName = O.FileName
mx = glavna.S.Duration
glavna.PB.Max = mx
mp = 0.01
glavna.PB.Value = mp
playlist.List1.AddItem fiLE$
playlist.List2.AddItem O.FileTitle
Call addd
Call glavna.pplay
10
Exit Sub
20
playlist.text1 = O.FileName
Call playlist.load
Exit Sub
30
Call playlist.winamp
Exit Sub
40
mms.Show

End Sub
Sub pplay()
On Error GoTo 10
S.play
Timer1.Interval = 1
Exit Sub
10:
Call oopen
End Sub
Sub addd()
On Error Resume Next
mx = glavna.S.Duration
glavna.broj.Caption = playlist.List2.ListIndex
glavna.PB.Max = mx
mp = 0.01
glavna.PB.Value = mp
End Sub
Sub nnext()
On Error GoTo 20
If broj.Caption + 1 = playlist.List2.ListCount Then GoTo 10
broj.Caption = broj.Caption + 1
S.FileName = playlist.List1.list(broj.Caption)
playlist.List1.ListIndex = broj.Caption
playlist.List2.ListIndex = broj.Caption
Call addd
Call pplay
Exit Sub
10
broj.Caption = "0"
S.FileName = playlist.List1.list(0)
playlist.List1.ListIndex = 0
playlist.List2.ListIndex = 0
Call addd
Call pplay
Exit Sub
20
Call sstop
End Sub
Sub bback()
On Error GoTo 20
If broj.Caption = 0 Or broj.Caption = -1 Then GoTo 10
broj.Caption = broj.Caption - 1
S.FileName = playlist.List1.list(broj.Caption)
playlist.List1.ListIndex = broj.Caption
playlist.List2.ListIndex = broj.Caption
Call addd
Call pplay
Exit Sub
10
broj.Caption = playlist.List2.ListCount - 1
S.FileName = playlist.List1.list(broj.Caption)
playlist.List1.ListIndex = broj.Caption
playlist.List2.ListIndex = broj.Caption
Call addd
Call pplay
Exit Sub
20
Call sstop
End Sub

Private Sub vol_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
If vool = 1 Then GoTo 1
If vool = 0 Then GoTo 2
1
vol.Value = X / (vol.Width / 2500)
volic = 2500 - (X / (vol.Width / 2500))
S.Volume = -volic
2
help.help.Caption = "Click and move left or right to change volume value."
End Sub

Private Sub vol_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
vool = 0
End Sub
Sub endd()
On Error Resume Next
Open App.Path + "\playlist.ini" For Output As #2
Write #2, playlist.List1.ListCount - 1
For ns = 0 To playlist.List1.ListCount - 1
Write #2, playlist.List1.list(ns)
Next ns
For ns = 0 To playlist.List2.ListCount - 1
Write #2, playlist.List2.list(ns)
Next ns
Close #2
Call POSsss
End Sub
Sub POSsss()
Open App.Path + "\mmsplayer.ini" For Output As #321
Write #321, glavna.Top; glavna.Left, glavna.broj.Caption, playlist.Top, playlist.Left, playlist.playmove.Caption, glavna.tempo.Value
Close #321
End
End Sub
