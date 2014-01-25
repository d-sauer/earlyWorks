VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form playlist 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   6075
   ClientLeft      =   15
   ClientTop       =   15
   ClientWidth     =   3705
   ControlBox      =   0   'False
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6075
   ScaleWidth      =   3705
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
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
      Width           =   3120
   End
   Begin VB.ListBox List2 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   5295
      ItemData        =   "play list.frx":0004
      Left            =   270
      List            =   "play list.frx":0006
      TabIndex        =   2
      Top             =   240
      Width           =   3090
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
      Left            =   2820
      TabIndex        =   5
      Top             =   5715
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
      Height          =   6030
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
      Width           =   480
   End
   Begin VB.Image Image20 
      Height          =   570
      Left            =   0
      Picture         =   "play list.frx":0008
      Top             =   5535
      Width           =   1815
   End
   Begin VB.Image Image19 
      Height          =   555
      Left            =   1410
      Picture         =   "play list.frx":3652
      Top             =   5535
      Width           =   2310
   End
   Begin VB.Image Image17 
      Height          =   270
      Left            =   3330
      Picture         =   "play list.frx":79A4
      Top             =   0
      Width           =   375
   End
   Begin VB.Image Image16 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":7F3E
      Top             =   5130
      Width           =   375
   End
   Begin VB.Image Image15 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":881C
      Top             =   4725
      Width           =   375
   End
   Begin VB.Image Image14 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":90FA
      Top             =   4320
      Width           =   375
   End
   Begin VB.Image Image13 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":99D8
      Top             =   3915
      Width           =   375
   End
   Begin VB.Image Image12 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":A2B6
      Top             =   3510
      Width           =   375
   End
   Begin VB.Image Image11 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":AB94
      Top             =   3105
      Width           =   375
   End
   Begin VB.Image Image10 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":B472
      Top             =   2700
      Width           =   375
   End
   Begin VB.Image Image9 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":BD50
      Top             =   2295
      Width           =   375
   End
   Begin VB.Image Image8 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":C62E
      Top             =   1890
      Width           =   375
   End
   Begin VB.Image Image7 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":CF0C
      Top             =   1485
      Width           =   375
   End
   Begin VB.Image Image6 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":D7EA
      Top             =   1080
      Width           =   375
   End
   Begin VB.Image Image5 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":E0C8
      Top             =   675
      Width           =   375
   End
   Begin VB.Image Image4 
      Height          =   435
      Left            =   0
      Picture         =   "play list.frx":E9A6
      Top             =   270
      Width           =   375
   End
   Begin VB.Image Image3 
      Height          =   270
      Left            =   0
      Picture         =   "play list.frx":F284
      Top             =   0
      Width           =   375
   End
   Begin VB.Image Image2 
      Height          =   270
      Left            =   1845
      Picture         =   "play list.frx":F81E
      Top             =   0
      Width           =   1500
   End
   Begin VB.Image Image1 
      Height          =   270
      Left            =   360
      Picture         =   "play list.frx":10D78
      Top             =   0
      Width           =   1500
   End
   Begin VB.Image Image18 
      Height          =   5400
      Left            =   3330
      Picture         =   "play list.frx":122D2
      Stretch         =   -1  'True
      Top             =   255
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
Dim n, X As Integer
Dim a$, b$, c$, T$
Dim mpo As pointApi
Dim xx, yy, p, da
Dim pl, pl1, pl2, pl4
Dim pll, pll1, title As String


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

Private Sub Label1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Click to add new file to playlist."
End Sub

Private Sub Label2_Click()
playlist.Hide
glavna.Image8.Visible = False
End Sub

Private Sub Label2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Click to close playlist."
End Sub

Private Sub Label3_Click()
Call ssave
End Sub

Private Sub Label3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Click to save your playlist."
End Sub

Private Sub Label4_Click()
Call lload
End Sub

Private Sub Label4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
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

Private Sub Label5_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Click to remove selected file from playlist"
End Sub

Private Sub Label6_Click()
List1.Clear
List2.Clear
End Sub

Private Sub Label6_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Click to clear playlist."
End Sub

Private Sub Label7_Click()

End Sub

Private Sub List2_DblClick()
glavna.broj.Caption = List2.ListIndex
n = List2.ListIndex
glavna.S.FileName = List1.list(List2.ListIndex)
glavna.broj.Caption = n
Call glavna.addd
Call glavna.pplay
List1.ListIndex = n
List2.ListIndex = n
End Sub
Sub lload()
On Error GoTo 10
o.DialogTitle = "Load"
o.ShowOpen
ffile1$ = o.FileName
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
Open Text1 For Input As #1
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
o.DialogTitle = "Save"
o.ShowSave
fFile$ = o.FileName
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
Open o.FileName For Output As #3
title = "#EXTM3U"
Write #3, title
For n = 0 To List1.ListCount - 1
glavna.S.FileName = List1.list(n)
pl = "#EXTINF:"
pl1 = Fix(glavna.S.Duration) & ","
pl2 = List2.list(n)
pl4 = List1.list(n)
pll = pl & pl1 & pl2
pll1 = pl4
Write #3, pll
Write #3, pll1
Next n
Close #3
End Sub
Sub WinAmp_Pls()
List1.Clear
List2.Clear
Open o.FileName For Input As #1
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
Open glavna.o.FileName For Input As #1
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

Private Sub List2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
help.help.Caption = "Doubleclick to play selected track."
End Sub

Private Sub movie_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
da = 1
p = Screen.TwipsPerPixelX
xx = X
yy = Y
playmove.Caption = "y"
End Sub
Private Sub movie_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
da = 0
playmove.Caption = "n"
End Sub


Private Sub movie_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If da = 1 Then GoTo 1
If da = 0 Then GoTo 2
1
GetCursorPos mpo
playlist.Left = (p * mpo.X) - xx
playlist.Top = (p * mpo.Y) - yy
2
End Sub
