VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.MDIForm GLF 
   BackColor       =   &H80000004&
   Caption         =   "CD Collector"
   ClientHeight    =   8460
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   10875
   Icon            =   "GLF.frx":0000
   LinkMode        =   1  'Source
   LinkTopic       =   "MDIForm1"
   ScrollBars      =   0   'False
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin VB.PictureBox Picture2 
      Align           =   1  'Align Top
      Height          =   615
      Left            =   0
      ScaleHeight     =   555
      ScaleWidth      =   10815
      TabIndex        =   3
      Top             =   0
      Visible         =   0   'False
      Width           =   10875
      Begin VB.TextBox cdb 
         DataSource      =   "Lnk"
         Height          =   285
         Index           =   17
         Left            =   9600
         TabIndex        =   21
         Top             =   0
         Width           =   495
      End
      Begin VB.TextBox cdb 
         DataSource      =   "Lnk"
         Height          =   285
         Index           =   16
         Left            =   9120
         TabIndex        =   20
         Top             =   0
         Width           =   495
      End
      Begin VB.TextBox cdb 
         DataSource      =   "Lnk"
         Height          =   285
         Index           =   15
         Left            =   8640
         TabIndex        =   19
         Top             =   0
         Width           =   495
      End
      Begin VB.TextBox cdb 
         DataSource      =   "Lnk"
         Height          =   285
         Index           =   14
         Left            =   8160
         TabIndex        =   18
         Top             =   0
         Width           =   495
      End
      Begin VB.TextBox cdb 
         DataSource      =   "Lnk"
         Height          =   285
         Index           =   13
         Left            =   7680
         TabIndex        =   17
         Top             =   0
         Width           =   495
      End
      Begin VB.TextBox cdb 
         DataSource      =   "Lnk"
         Height          =   285
         Index           =   12
         Left            =   7200
         TabIndex        =   16
         Top             =   0
         Width           =   495
      End
      Begin VB.TextBox cdb 
         DataSource      =   "Lnk"
         Height          =   285
         Index           =   11
         Left            =   6720
         TabIndex        =   15
         Top             =   0
         Width           =   495
      End
      Begin VB.TextBox cdb 
         DataSource      =   "Lnk"
         Height          =   285
         Index           =   10
         Left            =   6240
         TabIndex        =   14
         Top             =   0
         Width           =   495
      End
      Begin VB.TextBox cdb 
         DataSource      =   "Lnk"
         Height          =   285
         Index           =   9
         Left            =   5760
         TabIndex        =   13
         Top             =   0
         Width           =   495
      End
      Begin VB.TextBox cdb 
         DataSource      =   "Lnk"
         Height          =   285
         Index           =   8
         Left            =   5280
         TabIndex        =   12
         Top             =   0
         Width           =   495
      End
      Begin VB.TextBox cdb 
         DataSource      =   "Lnk"
         Height          =   285
         Index           =   7
         Left            =   4800
         TabIndex        =   11
         Top             =   0
         Width           =   495
      End
      Begin VB.TextBox cdb 
         DataSource      =   "Lnk"
         Height          =   285
         Index           =   6
         Left            =   4320
         TabIndex        =   10
         Top             =   0
         Width           =   495
      End
      Begin VB.TextBox cdb 
         DataSource      =   "Lnk"
         Height          =   285
         Index           =   5
         Left            =   3840
         TabIndex        =   9
         Top             =   0
         Width           =   495
      End
      Begin VB.TextBox cdb 
         DataSource      =   "Lnk"
         Height          =   285
         Index           =   4
         Left            =   3360
         TabIndex        =   8
         Top             =   0
         Width           =   495
      End
      Begin VB.TextBox cdb 
         DataSource      =   "Lnk"
         Height          =   285
         Index           =   3
         Left            =   2880
         TabIndex        =   7
         Top             =   0
         Width           =   495
      End
      Begin VB.TextBox cdb 
         DataSource      =   "Lnk"
         Height          =   285
         Index           =   2
         Left            =   2400
         TabIndex        =   6
         Top             =   0
         Width           =   495
      End
      Begin VB.TextBox cdb 
         DataSource      =   "Lnk"
         Height          =   285
         Index           =   1
         Left            =   1920
         TabIndex        =   5
         Top             =   0
         Width           =   495
      End
      Begin VB.Data Lnk 
         BOFAction       =   1  'BOF
         Connect         =   "Access"
         DatabaseName    =   ""
         DefaultCursorType=   0  'DefaultCursor
         DefaultType     =   2  'UseODBC
         EOFAction       =   1  'EOF
         Exclusive       =   0   'False
         Height          =   345
         Left            =   0
         Options         =   0
         ReadOnly        =   0   'False
         RecordsetType   =   1  'Dynaset
         RecordSource    =   ""
         Top             =   0
         Width           =   1500
      End
      Begin VB.TextBox cdb 
         DataSource      =   "Lnk"
         Height          =   285
         Index           =   0
         Left            =   1440
         TabIndex        =   4
         Top             =   0
         Width           =   495
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Label1"
         Height          =   195
         Left            =   120
         TabIndex        =   22
         Top             =   360
         Width           =   480
      End
   End
   Begin VB.PictureBox Picture1 
      Align           =   2  'Align Bottom
      BackColor       =   &H00808080&
      FillColor       =   &H00808080&
      Height          =   320
      Left            =   0
      ScaleHeight     =   255
      ScaleWidth      =   10815
      TabIndex        =   0
      Top             =   8145
      Width           =   10875
      Begin MSComctlLib.ProgressBar PBar 
         Height          =   255
         Left            =   960
         TabIndex        =   23
         Top             =   0
         Width           =   5520
         _ExtentX        =   9737
         _ExtentY        =   450
         _Version        =   393216
         Appearance      =   1
      End
      Begin VB.OptionButton Option1 
         Height          =   255
         Index           =   0
         Left            =   6480
         Picture         =   "GLF.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   0
         Width           =   1095
      End
      Begin VB.CommandButton Command1 
         Height          =   255
         Left            =   0
         Picture         =   "GLF.frx":03E6
         Style           =   1  'Graphical
         TabIndex        =   1
         Top             =   0
         Width           =   975
      End
   End
End
Attribute VB_Name = "GLF"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Form1.Top = Me.Top + (Me.Height - 350 - Form1.Height)
Form1.Left = Me.Left + 100
Form1.Show , Me
Form1.SetFocus
GLF.Enabled = True
End Sub




Private Sub Command2_Click()
Form3.Show

End Sub

Private Sub MDIForm_Activate()
Form1.Hide
End Sub

Private Sub MDIForm_Load()
GLF.BackColor = RGB(92, 120, 158)
'load

'Music.Top = 0
'Music.Left = 0
'Music.Width = GLF.Width - 200
'Music.Height = GLF.Height - (2 * GLF.Picture1.Height)
'Music.Show
End Sub

Private Sub MDIForm_Resize()
On Error Resume Next
If GLF.Width < 10800 Then GLF.Width = 10800
If GLF.Height < 6615 Then GLF.Height = 6615

ActiveForm.Top = 0
ActiveForm.Left = 0
ActiveForm.Width = GLF.Width - 200
ActiveForm.Height = GLF.Height - (2 * GLF.Picture1.Height) - 70

'option move
Option1(3).Left = GLF.Width - 1275
Option1(2).Left = GLF.Width - 2355
Option1(1).Left = GLF.Width - 3435
Option1(0).Left = GLF.Width - 4515
PBar.Width = GLF.Width - 5475
End Sub

Private Sub Option1_Click(Index As Integer)
Music.Top = 0
Music.Left = 0
Music.Width = GLF.Width - 200
Music.Height = GLF.Height - (2 * GLF.Picture1.Height) - 70
Music.Show
    Call LSTArtAlbum 'Refresh
End Sub

