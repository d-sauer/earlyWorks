VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form playlist 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   ClientHeight    =   6075
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   3705
   ControlBox      =   0   'False
   LinkTopic       =   "Form2"
   ScaleHeight     =   6075
   ScaleWidth      =   3705
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.ProgressBar mp3prog 
      Height          =   120
      Left            =   165
      TabIndex        =   13
      Top             =   5385
      Visible         =   0   'False
      Width           =   3225
      _ExtentX        =   5689
      _ExtentY        =   212
      _Version        =   393216
      Appearance      =   0
      Min             =   1e-4
      Scrolling       =   1
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1815
      TabIndex        =   8
      Text            =   "Text1"
      Top             =   1305
      Visible         =   0   'False
      Width           =   270
   End
   Begin MSComDlg.CommonDialog o 
      Left            =   825
      Top             =   4290
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      Filter          =   "Mix Max Playlist|*.mpl|WinAmp|*.m3u"
   End
   Begin VB.ListBox List1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
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
      Height          =   5475
      ItemData        =   "play list.frx":0000
      Left            =   3810
      List            =   "play list.frx":0002
      TabIndex        =   0
      Top             =   75
      Visible         =   0   'False
      Width           =   3120
   End
   Begin VB.ListBox List2 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   5295
      ItemData        =   "play list.frx":0004
      Left            =   285
      List            =   "play list.frx":0006
      TabIndex        =   2
      Top             =   240
      Width           =   3090
   End
   Begin VB.Image Image46 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":0008
      Top             =   14400
      Width           =   375
   End
   Begin VB.Image Image45 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":08E6
      Top             =   13995
      Width           =   375
   End
   Begin VB.Image Image44 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":11C4
      Top             =   13590
      Width           =   375
   End
   Begin VB.Image Image43 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":1AA2
      Top             =   13185
      Width           =   375
   End
   Begin VB.Image Image42 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":2380
      Top             =   12780
      Width           =   375
   End
   Begin VB.Image Image41 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":2C5E
      Top             =   12375
      Width           =   375
   End
   Begin VB.Image Image40 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":353C
      Top             =   11970
      Width           =   375
   End
   Begin VB.Image Image39 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":3E1A
      Top             =   11565
      Width           =   375
   End
   Begin VB.Image Image38 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":46F8
      Top             =   11160
      Width           =   375
   End
   Begin VB.Image Image37 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":4FD6
      Top             =   14805
      Width           =   375
   End
   Begin VB.Image Image36 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":58B4
      Top             =   15210
      Width           =   375
   End
   Begin VB.Image Image35 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":6192
      Top             =   15615
      Width           =   375
   End
   Begin VB.Image Image34 
      Height          =   435
      Left            =   15
      Picture         =   "play list.frx":6A70
      Top             =   10740
      Width           =   375
   End
   Begin VB.Image Image22 
      Height          =   435
      Left            =   15
      Picture         =   "play list.frx":734E
      Top             =   10335
      Width           =   375
   End
   Begin VB.Image Image21 
      Height          =   435
      Left            =   15
      Picture         =   "play list.frx":7C2C
      Top             =   9930
      Width           =   375
   End
   Begin VB.Label Label9 
      BackStyle       =   0  'Transparent
      Height          =   210
      Left            =   45
      MousePointer    =   7  'Size N S
      TabIndex        =   14
      Top             =   6000
      Width           =   3765
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Height          =   195
      Left            =   5370
      TabIndex        =   12
      Top             =   5760
      Visible         =   0   'False
      Width           =   45
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Height          =   195
      Left            =   4170
      TabIndex        =   11
      Top             =   5655
      Visible         =   0   'False
      Width           =   45
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Height          =   240
      Left            =   3525
      TabIndex        =   3
      Top             =   0
      Width           =   195
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Clear"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   1500
      TabIndex        =   7
      Top             =   5715
      Width           =   360
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Remove"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   735
      TabIndex        =   6
      Top             =   5715
      Width           =   600
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Load"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   2850
      TabIndex        =   5
      Top             =   5700
      Width           =   360
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Save"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   2355
      TabIndex        =   4
      Top             =   5700
      Width           =   375
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Add"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   315
      TabIndex        =   1
      Top             =   5715
      Width           =   285
   End
   Begin VB.Label movie 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Playlist"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   6015
      Left            =   0
      TabIndex        =   10
      Top             =   0
      Width           =   3660
   End
   Begin VB.Label playmove 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "n"
      Height          =   195
      Left            =   510
      TabIndex        =   9
      Top             =   1980
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image Image20 
      Height          =   570
      Left            =   0
      Picture         =   "play list.frx":850A
      Top             =   5535
      Width           =   1815
   End
   Begin VB.Image Image19 
      Height          =   555
      Left            =   1410
      Picture         =   "play list.frx":BB54
      Top             =   5535
      Width           =   2310
   End
   Begin VB.Image Image17 
      Height          =   270
      Left            =   3330
      Picture         =   "play list.frx":FEA6
      Top             =   0
      Width           =   375
   End
   Begin VB.Image Image16 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":10440
      Top             =   5130
      Width           =   375
   End
   Begin VB.Image Image15 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":10D1E
      Top             =   4725
      Width           =   375
   End
   Begin VB.Image Image14 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":115FC
      Top             =   4320
      Width           =   375
   End
   Begin VB.Image Image13 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":11EDA
      Top             =   3915
      Width           =   375
   End
   Begin VB.Image Image12 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":127B8
      Top             =   3510
      Width           =   375
   End
   Begin VB.Image Image11 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":13096
      Top             =   3105
      Width           =   375
   End
   Begin VB.Image Image10 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":13974
      Top             =   2700
      Width           =   375
   End
   Begin VB.Image Image9 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":14252
      Top             =   2295
      Width           =   375
   End
   Begin VB.Image Image8 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":14B30
      Top             =   1890
      Width           =   375
   End
   Begin VB.Image Image7 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":1540E
      Top             =   1500
      Width           =   375
   End
   Begin VB.Image Image6 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":15CEC
      Top             =   1080
      Width           =   375
   End
   Begin VB.Image Image5 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":165CA
      Top             =   675
      Width           =   375
   End
   Begin VB.Image Image4 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":16EA8
      Top             =   270
      Width           =   375
   End
   Begin VB.Image Image3 
      Height          =   270
      Left            =   0
      Picture         =   "play list.frx":17786
      Top             =   0
      Width           =   375
   End
   Begin VB.Image Image2 
      Height          =   270
      Left            =   1845
      Picture         =   "play list.frx":17D20
      Top             =   0
      Width           =   1500
   End
   Begin VB.Image Image1 
      Height          =   270
      Left            =   360
      Picture         =   "play list.frx":1927A
      Top             =   0
      Width           =   1500
   End
   Begin VB.Image Image18 
      Height          =   5400
      Left            =   3330
      Picture         =   "play list.frx":1A7D4
      Stretch         =   -1  'True
      Top             =   255
      Width           =   375
   End
   Begin VB.Image Image33 
      Height          =   435
      Left            =   15
      Picture         =   "play list.frx":1B066
      Top             =   5475
      Width           =   375
   End
   Begin VB.Image Image32 
      Height          =   435
      Left            =   15
      Picture         =   "play list.frx":1B944
      Top             =   5880
      Width           =   375
   End
   Begin VB.Image Image31 
      Height          =   435
      Left            =   15
      Picture         =   "play list.frx":1C222
      Top             =   6285
      Width           =   375
   End
   Begin VB.Image Image30 
      Height          =   435
      Left            =   15
      Picture         =   "play list.frx":1CB00
      Top             =   6690
      Width           =   375
   End
   Begin VB.Image Image29 
      Height          =   435
      Left            =   15
      Picture         =   "play list.frx":1D3DE
      Top             =   7095
      Width           =   375
   End
   Begin VB.Image Image28 
      Height          =   435
      Left            =   15
      Picture         =   "play list.frx":1DCBC
      Top             =   7500
      Width           =   375
   End
   Begin VB.Image Image27 
      Height          =   435
      Left            =   15
      Picture         =   "play list.frx":1E59A
      Top             =   7905
      Width           =   375
   End
   Begin VB.Image Image26 
      Height          =   435
      Left            =   15
      Picture         =   "play list.frx":1EE78
      Top             =   8310
      Width           =   375
   End
   Begin VB.Image Image25 
      Height          =   435
      Left            =   15
      Picture         =   "play list.frx":1F756
      Top             =   8715
      Width           =   375
   End
   Begin VB.Image Image24 
      Height          =   435
      Left            =   15
      Picture         =   "play list.frx":20034
      Top             =   9120
      Width           =   375
   End
   Begin VB.Image Image23 
      Height          =   435
      Left            =   15
      Picture         =   "play list.frx":20912
      Top             =   9525
      Width           =   375
   End
End
Attribute VB_Name = "playlist"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim fiLE$, list$, Listt2$
Dim ns, l1, l2, nn
Dim fFile$, ffile1$
Dim n, x As Integer
Dim a$, b$, c$, T$
Dim mpo As pointApi
Dim xx, yy, p, da
Dim pl, pl1, pl2, pl4
Dim pll, pll1, title As String
Dim g, h, j As Integer




Private Sub Form_Load()
If Form1.Timer1.Interval = 0 Then playlist.Top = glavna.Top
If Form1.Timer1.Interval = 0 Then playlist.Left = glavna.Left + glavna.Width
End Sub



Private Sub Label1_Click()
Call glavna.oopen
glavna.broj.Caption = List1.ListCount - 1
List1.ListIndex = List1.ListCount - 1
List2.ListIndex = List2.ListCount - 1
End Sub

Private Sub Label1_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
help.help.Caption = "Click to add new file to playlist."
End Sub

Private Sub Label2_Click()
playlist.Hide
glavna.Image8.Visible = False
End Sub

Private Sub Label2_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
help.help.Caption = "Click to close playlist."
End Sub

Private Sub Label3_Click()
Call ssave
End Sub

Private Sub Label3_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
help.help.Caption = "Click to save your playlist."
End Sub

Private Sub Label4_Click()
Call lload
End Sub

Private Sub Label4_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
help.help.Caption = "Click to load playlist."
End Sub

Private Sub Label5_Click()
On Error Resume Next
nn = List2.ListIndex
List1.RemoveItem (nn)
List1.Refresh
List2.RemoveItem (nn)
List2.Refresh
End Sub

Private Sub Label5_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
help.help.Caption = "Click to remove selected file from playlist"
End Sub

Private Sub Label6_Click()
List1.Clear
List2.Clear
End Sub

Private Sub Label6_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
help.help.Caption = "Click to clear playlist."
End Sub

Private Sub List2_DblClick()
glavna.broj.Caption = List2.ListIndex
n = List2.ListIndex
glavna.S.FileName = List1.list(n)
glavna.broj.Caption = n
Call glavna.addd
Call glavna.pplay
List1.ListIndex = n
List2.ListIndex = n
End Sub
Sub lload()
On Error GoTo 10
O.DialogTitle = "Load"
O.ShowOpen
ffile1$ = O.FileName
If GetExtension(ffile1$) = ".m3u" Then GoTo 20

If ffile1$ = "" Then Exit Sub
Open ffile1$ For Input As #1
List1.Clear
List2.Clear
Input #1, l1
For ns = 0 To l1
Input #1, list$
List1.AddItem list$
Next ns
For ns = 0 To l1
Input #1, Listt2$
List2.AddItem Listt2$
Next ns
Close #1
glavna.S.FileName = List1.list(0)
List1.ListIndex = 0
List2.ListIndex = 0
glavna.broj = 0
Call glavna.addd
Call glavna.pplay
Exit Sub
10:
Close #1
List2.Clear
List1.Clear
Call glavna.addd
Call glavna.pplay
Exit Sub
20:
Call WinAmp_Pls
End Sub
Sub load()
Open text1 For Input As #1
List1.Clear
List2.Clear
Input #1, l1
For ns = 0 To l1
Input #1, list$
List1.AddItem list$
Next ns
For ns = 0 To l1
Input #1, Listt2$
List2.AddItem Listt2$
Next ns
Close #1
glavna.S.FileName = List1.list(0)
List1.ListIndex = 0
List2.ListIndex = 0
glavna.broj = 0
Call glavna.addd
Call glavna.pplay
Exit Sub
10
Close #1
List2.Clear
List1.Clear
Call glavna.addd
Call glavna.pplay
End Sub
Sub ssave()
On Error GoTo 10
O.DialogTitle = "Save"
O.ShowSave
fFile$ = O.FileName
If fFile$ = "" Then Exit Sub
If GetExtension(fFile$) = ".m3u" Then GoTo 20
Open fFile$ For Output As #2
Write #2, List1.ListCount - 1
For ns = 0 To List1.ListCount - 1
Write #2, List1.list(ns)
Next ns
For ns = 0 To List2.ListCount - 1
Write #2, List2.list(ns)
Next ns
Close #2
Exit Sub
10
List2.Clear
List1.Clear
Close #2
Exit Sub
20
Call mp3
End Sub
Sub mp3()
mp3prog.Visible = True
Open O.FileName For Output As #3
title = "#EXTM3U"
Write #3, title
mp3prog.Max = List1.ListCount + 1
mp3prog.Value = 1
For n = 0 To List1.ListCount - 1
glavna.S.FileName = List1.list(n)
pl = "#EXTINF:"
pl1 = Fix(glavna.S.Duration) & ","
pl2 = List2.list(n)
pl4 = List1.list(n)
pll = pl & pl1 & pl2
pll1 = pl4
Label7.Caption = pll
Label8.Caption = pll1
mp3prog.Value = n + 1
Write #3, pll
Write #3, pll1
Next n
Close #3
mp3prog.Visible = False
glavna.S.FileName = List1.list(glavna.broj.Caption)
List2.ListIndex = glavna.broj.Caption
glavna.S.play
End Sub
Sub WinAmp_Pls()
List1.Clear
List2.Clear
Open O.FileName For Input As #1
Input #1, T$
For n = 0 To 1E+84
On Error GoTo 10
Input #1, c$, b$
Input #1, a$
List1.AddItem a$
List2.AddItem b$
Next n
Close #1
Exit Sub
10
Close #1
End Sub
Sub winamp()
Open glavna.O.FileName For Input As #1
Input #1, T$
For n = 0 To 1E+84
On Error GoTo 10
Input #1, c$, b$
Input #1, a$
List1.AddItem a$
List2.AddItem b$
Next n
Close #1
Exit Sub
10
Close #1
End Sub

Private Sub List2_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
help.help.Caption = "Doubleclick to play selected track."
End Sub

Private Sub movie_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
da = 1
p = Screen.TwipsPerPixelX
xx = x
yy = y
playmove.Caption = "y"
End Sub
Private Sub movie_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
da = 0
playmove.Caption = "n"
If playlist.Left > glavna.Left + glavna.Width And playlist.Left < glavna.Left + glavna.Width + 200 Then playlist.playmove = "y"
If playlist.playmove.Caption = "n" Then Exit Sub
playlist.Top = glavna.Top
playlist.Left = glavna.Left + glavna.Width
End Sub


Private Sub movie_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
If da = 1 Then GoTo 1
If da = 0 Then GoTo 2
1
GetCursorPos mpo
playlist.Left = (p * mpo.x) - xx
playlist.Top = (p * mpo.y) - yy
2
End Sub

Private Sub Label9_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
g = 1
h = Screen.TwipsPerPixelX
xx = x
yy = y
End Sub
Private Sub Label9_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
g = 0
End Sub

Private Sub Label9_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
If g = 1 Then GoTo 1
If g = 0 Then GoTo 2
1
GetCursorPos mpo
If ((h * mpo.y) - yy) - playlist.Top < glavna.Height Then GoTo 2
Call resizee
2
End Sub

Sub resizee()
playlist.Height = (h * mpo.y) - yy - playlist.Top
Label9.Top = playlist.Height - 100
movie.Height = playlist.Height - 100
Image19.Top = playlist.Height - Image19.Height
Image20.Top = playlist.Height - Image20.Height + 30
Label1.Top = playlist.Height - Label1.Height - 150
Label3.Top = playlist.Height - Label3.Height - 150
Label4.Top = playlist.Height - Label4.Height - 150
Label5.Top = playlist.Height - Label5.Height - 150
Label6.Top = playlist.Height - Label6.Height - 150
Image18.Height = playlist.Height - Image18.Top - Image19.Height
List2.Height = playlist.Height - Image19.Height - List2.Top
mp3prog.Top = Image19.Top - mp3prog.Height - 10
End Sub
