VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   5  'Sizable ToolWindow
   ClientHeight    =   2235
   ClientLeft      =   165
   ClientTop       =   165
   ClientWidth     =   1665
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2235
   ScaleWidth      =   1665
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture2 
      Height          =   15
      Left            =   0
      ScaleHeight     =   15
      ScaleWidth      =   1695
      TabIndex        =   2
      Top             =   1080
      Width           =   1695
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00400000&
      Height          =   255
      Left            =   0
      ScaleHeight     =   195
      ScaleWidth      =   1635
      TabIndex        =   0
      Top             =   0
      Width           =   1695
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "CD List"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   195
         Left            =   480
         TabIndex        =   1
         Top             =   0
         Width           =   630
      End
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   255
      Index           =   6
      Left            =   0
      TabIndex        =   9
      Top             =   1920
      Width           =   1695
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Open CD-Rom"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   255
      Index           =   5
      Left            =   0
      TabIndex        =   8
      Top             =   1560
      Width           =   1695
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00C000C0&
      Caption         =   "Help"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   255
      Index           =   4
      Left            =   1680
      TabIndex        =   7
      Top             =   2040
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "About"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   255
      Index           =   3
      Left            =   0
      TabIndex        =   6
      Top             =   1200
      Width           =   1695
   End
   Begin VB.Image Image3 
      Height          =   270
      Left            =   1680
      Picture         =   "Form1.frx":0000
      Top             =   720
      Width           =   300
   End
   Begin VB.Image Image2 
      Height          =   300
      Left            =   105
      Picture         =   "Form1.frx":047A
      Top             =   720
      Width           =   315
   End
   Begin VB.Image Image1 
      Height          =   330
      Left            =   120
      Picture         =   "Form1.frx":09BC
      Top             =   360
      Width           =   285
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "New"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   255
      Index           =   0
      Left            =   240
      TabIndex        =   3
      Top             =   360
      Width           =   1455
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Save As"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   255
      Index           =   1
      Left            =   1800
      TabIndex        =   4
      Top             =   720
      Width           =   1455
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Open"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   255
      Index           =   2
      Left            =   240
      TabIndex        =   5
      Top             =   720
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim OP
Dim CdlgEx1 As New CCD

Private Sub Form_Activate()
Form1.SetFocus
End Sub

Private Sub Form_LostFocus()
Form1.Hide
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If X > Form1.Width Then End
End Sub

Private Sub Label2_Click(Index As Integer)
Dim CFile, FileNa
On Error Resume Next
Select Case Index
Case 0 '--
GLF.Lnk.Recordset.Close

CdlgEx1.CancelError = False
CdlgEx1.Filter = "CD Database|*.cdb"
CdlgEx1.DialogTitle = "Creat New CD Database"
CdlgEx1.ShowSave
FileNa = CdlgEx1.FileName
CFile = FileNa & ".cdb"

Open App.path & "\CDDatabase.ini" For Output As #1
Write #1, CFile
Close #1

Sleep 100

If Trim(CFile) = "" Or Trim(CFile) = ".cdb" Then Exit Sub
Creat_MDB (CFile)
Sleep 400
Load_cdb (CFile)

Case 1 '-- Save As
CdlgEx1.CancelError = False
CdlgEx1.Filter = "CD Database|*.cdb"
CdlgEx1.DialogTitle = "Save As CD Database"
CdlgEx1.ShowSave
FileNa = CdlgEx1.FileName

FileCopy GLF.Lnk.DatabaseName, "C:\igre.cdb"

Case 2 '--
CdlgEx1.CancelError = False
CdlgEx1.Filter = "CD Database|*.cdb"
CdlgEx1.ShowOpen
FileNa = CdlgEx1.FileName
Open App.path & "\CDDatabase.ini" For Output As #1
Write #1, FileNa
Close #1
Sleep 200

Dim a$
Open App.path & "\CDDatabase.ini" For Input As #1
Input #1, a$
Close #1
If Trim(a$) = "" Or a$ = ".cdb" Or a$ = "No Last Edited File, creat new CD Database file" Then Label3.Caption = "No Last Edited File, creat new CD Database file": Exit Sub
Load_cdb (a$)
Sleep 200
Case 5 '--
OP = OP + 1
If OP > 1 Then OP = 0
    Select Case OP
    Case 1
    Label2(5) = "Close CD-Rom"
    mciSendString "set CDAudio door open", returnstring, 127, 0
    Case 0
    Label2(5) = "Open CD-Rom"
    mciSendString "set CDAudio door closed", returnstring, 127, 0
    End Select

Case 3 '--About
About.Show , Me
Case 6
End
End Select
Form1.Hide
GLF.SetFocus
End Sub

Private Sub Label2_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim M
For M = 0 To 6
Label2(M).BackColor = &H0&
Next M
Label2(Index).BackColor = &H808080
End Sub
