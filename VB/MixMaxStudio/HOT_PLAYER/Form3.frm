VERSION 5.00
Begin VB.Form mala 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Mix Max Studio Player"
   ClientHeight    =   180
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   1695
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form3"
   LockControls    =   -1  'True
   Picture         =   "Form3.frx":0000
   ScaleHeight     =   180
   ScaleWidth      =   1695
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Pl"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   6.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   135
      Left            =   1035
      TabIndex        =   9
      Top             =   15
      Width           =   135
   End
   Begin VB.Image maliveliki 
      Height          =   180
      Left            =   1380
      Picture         =   "Form3.frx":1002
      Top             =   -15
      Width           =   135
   End
   Begin VB.Image malistop 
      Height          =   180
      Left            =   480
      Picture         =   "Form3.frx":1194
      Top             =   0
      Width           =   135
   End
   Begin VB.Image maliplay 
      Height          =   180
      Left            =   195
      Picture         =   "Form3.frx":1326
      Top             =   -15
      Width           =   150
   End
   Begin VB.Image malipause 
      Height          =   180
      Left            =   330
      Picture         =   "Form3.frx":14E8
      Top             =   -15
      Width           =   150
   End
   Begin VB.Image maliopen 
      Height          =   180
      Left            =   780
      Picture         =   "Form3.frx":16AA
      Top             =   0
      Width           =   135
   End
   Begin VB.Image malinazad 
      Height          =   180
      Left            =   15
      Picture         =   "Form3.frx":183C
      Top             =   -15
      Width           =   210
   End
   Begin VB.Image malinext 
      Height          =   180
      Left            =   630
      Picture         =   "Form3.frx":1A8E
      Top             =   0
      Width           =   120
   End
   Begin VB.Image malimali 
      Height          =   180
      Left            =   1200
      Picture         =   "Form3.frx":1BF0
      Top             =   15
      Width           =   165
   End
   Begin VB.Image malikraj 
      Height          =   180
      Left            =   1500
      Picture         =   "Form3.frx":1DE2
      Top             =   15
      Width           =   180
   End
   Begin VB.Label lmaliopen 
      BackColor       =   &H0000FFFF&
      BackStyle       =   0  'Transparent
      Height          =   180
      Left            =   750
      TabIndex        =   3
      Top             =   -15
      Width           =   135
   End
   Begin VB.Label lmaliexit 
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Height          =   180
      Left            =   1515
      TabIndex        =   8
      Top             =   0
      Width           =   135
   End
   Begin VB.Label lmaliveliki 
      BackColor       =   &H0000FFFF&
      BackStyle       =   0  'Transparent
      Height          =   180
      Left            =   1365
      TabIndex        =   7
      Top             =   0
      Width           =   135
   End
   Begin VB.Label lmalimali 
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Height          =   180
      Left            =   1215
      TabIndex        =   6
      Top             =   0
      Width           =   135
   End
   Begin VB.Label lmalistop 
      BackColor       =   &H0000FFFF&
      BackStyle       =   0  'Transparent
      Height          =   180
      Left            =   435
      TabIndex        =   5
      Top             =   0
      Width           =   135
   End
   Begin VB.Label lmalipause 
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Height          =   180
      Left            =   285
      TabIndex        =   4
      Top             =   0
      Width           =   135
   End
   Begin VB.Label lmalinext 
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Height          =   180
      Left            =   600
      TabIndex        =   2
      Top             =   0
      Width           =   135
   End
   Begin VB.Label lmaliplay 
      BackColor       =   &H0000FFFF&
      BackStyle       =   0  'Transparent
      Height          =   180
      Left            =   165
      TabIndex        =   1
      Top             =   0
      Width           =   135
   End
   Begin VB.Label lmalinazad 
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Height          =   180
      Left            =   30
      TabIndex        =   0
      Top             =   0
      Width           =   135
   End
End
Attribute VB_Name = "mala"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim mpo As pointApi
Dim p
Dim xx
Dim yy
Dim xxyy
Dim da
Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
da = 1
p = Screen.TwipsPerPixelX
xx = X
yy = Y
End Sub
Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
da = 0
End Sub
Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
malinazad.Visible = False
maliplay.Visible = False
malipause.Visible = False
malinext.Visible = False
malistop.Visible = False
maliopen.Visible = False
malimali.Visible = False
maliveliki.Visible = False
malikraj.Visible = False
If da = 1 Then GoTo 1
If da = 0 Then Exit Sub
1
GetCursorPos mpo
mala.Left = (p * mpo.X) - xx
mala.Top = (p * mpo.Y) - yy
'playlist.Top = mala.Top
'playlist.Left = mala.Left + mala.Width
End Sub
Private Sub Form_Load()
malinazad.Top = 0
maliplay.Top = 0
malipause.Top = 0
malinext.Top = 0
malistop.Top = 0
maliopen.Top = 0
malimali.Top = 0
maliveliki.Top = 15
malikraj.Top = 15
malinazad.Visible = False
maliplay.Visible = False
malipause.Visible = False
malinext.Visible = False
malistop.Visible = False
maliopen.Visible = False
malimali.Visible = False
maliveliki.Visible = False
malikraj.Visible = False
If glavna.Image8.Visible = True Then playlist.Show
End Sub

Private Sub Label1_Click()
If glavna.Image8.Visible = False Then GoTo 2
1
glavna.Image8.Visible = False
playlist.Hide
Exit Sub
2
playlist.Show
glavna.Image8.Visible = True
End Sub

Private Sub lmaliexit_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
malinazad.Visible = False
maliplay.Visible = False
malipause.Visible = False
malinext.Visible = False
malistop.Visible = False
maliopen.Visible = False
malimali.Visible = False
maliveliki.Visible = False
malikraj.Visible = True
End Sub
Private Sub lmalimali_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
malinazad.Visible = False
maliplay.Visible = False
malipause.Visible = False
malinext.Visible = False
malistop.Visible = False
maliopen.Visible = False
malimali.Visible = True
maliveliki.Visible = False
malikraj.Visible = False
End Sub
Private Sub malinaprijed_Click()
End Sub
Private Sub lmalinazad_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
malinazad.Visible = True
maliplay.Visible = False
malipause.Visible = False
malinext.Visible = False
malistop.Visible = False
maliopen.Visible = False
malimali.Visible = False
maliveliki.Visible = False
malikraj.Visible = False
End Sub
Private Sub lmalinext_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
malinazad.Visible = False
maliplay.Visible = False
malipause.Visible = False
malinext.Visible = True
malistop.Visible = False
maliopen.Visible = False
malimali.Visible = False
maliveliki.Visible = False
malikraj.Visible = False
End Sub
Private Sub lmaliopen_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
malinazad.Visible = False
maliplay.Visible = False
malipause.Visible = False
malinext.Visible = False
malistop.Visible = False
maliopen.Visible = True
malimali.Visible = False
maliveliki.Visible = False
malikraj.Visible = False
End Sub
Private Sub lmalipause_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
malinazad.Visible = False
maliplay.Visible = False
malipause.Visible = True
malinext.Visible = False
malistop.Visible = False
maliopen.Visible = False
malimali.Visible = False
maliveliki.Visible = False
malikraj.Visible = False
End Sub
Private Sub lmaliplay_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
malinazad.Visible = False
maliplay.Visible = True
malipause.Visible = False
malinext.Visible = False
malistop.Visible = False
maliopen.Visible = False
malimali.Visible = False
maliveliki.Visible = False
malikraj.Visible = False
End Sub
Private Sub lmalistop_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
malinazad.Visible = False
maliplay.Visible = False
malipause.Visible = False
malinext.Visible = False
malistop.Visible = True
maliopen.Visible = False
malimali.Visible = False
maliveliki.Visible = False
malikraj.Visible = False
End Sub
Private Sub lmaliveliki_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
malinazad.Visible = False
maliplay.Visible = False
malipause.Visible = False
malinext.Visible = False
malistop.Visible = False
maliopen.Visible = False
malimali.Visible = False
maliveliki.Visible = True
malikraj.Visible = False
End Sub
Private Sub malikraj_Click()
Call glavna.endd
End Sub
Private Sub malimali_Click()
mala.WindowState = 1
End Sub
Private Sub malinazad_Click()
Call glavna.bback
End Sub
Private Sub malinext_Click()
On Error Resume Next
Call glavna.nnext
End Sub
Private Sub maliopen_Click()
Call glavna.oopen
glavna.broj.Caption = playlist.List1.ListCount - 1
playlist.List1.ListIndex = playlist.List1.ListCount - 1
playlist.List2.ListIndex = playlist.List2.ListCount - 1
End Sub
Private Sub malipause_Click()
Call glavna.ppause
End Sub
Private Sub maliplay_Click()
Call glavna.pplay
End Sub
Private Sub malistop_Click()
Call glavna.sstop
End Sub
Private Sub maliveliki_Click()
glavna.Show
mala.Hide
If glavna.Image8.Visible = True Then playlist.Show
End Sub
