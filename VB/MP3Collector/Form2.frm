VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form Form2 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   3225
   ClientLeft      =   45
   ClientTop       =   45
   ClientWidth     =   6570
   ControlBox      =   0   'False
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Form2.frx":030A
   ScaleHeight     =   3225
   ScaleWidth      =   6570
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   ""
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   345
      Left            =   240
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   ""
      Top             =   3360
      Visible         =   0   'False
      Width           =   1140
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   0
      Top             =   1920
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   64
      ImageHeight     =   67
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   8
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form2.frx":4606C
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form2.frx":46ECC
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form2.frx":47B48
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form2.frx":48C04
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form2.frx":49BA4
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form2.frx":4AA7C
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form2.frx":4B760
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form2.frx":4C400
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFC0C0&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   210
      Left            =   -120
      ScaleHeight     =   210
      ScaleWidth      =   6735
      TabIndex        =   0
      Top             =   0
      Width           =   6735
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Welcome to CD Collector"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   2280
         TabIndex        =   1
         Top             =   0
         Width           =   2085
      End
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   195
      Left            =   3345
      TabIndex        =   3
      Top             =   2955
      Width           =   90
   End
   Begin VB.Image Image4 
      Height          =   1005
      Left            =   5400
      Picture         =   "Form2.frx":4D09C
      Top             =   2160
      Width           =   1005
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   285
      Left            =   3390
      TabIndex        =   2
      Top             =   2640
      Width           =   75
   End
   Begin VB.Image Image3 
      Height          =   1290
      Left            =   4800
      Picture         =   "Form2.frx":4DD26
      Top             =   480
      Width           =   1305
   End
   Begin VB.Image Image2 
      Height          =   1005
      Left            =   2640
      Picture         =   "Form2.frx":4EDD2
      Top             =   600
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1005
      Left            =   480
      Picture         =   "Form2.frx":4FAA6
      Top             =   600
      Width           =   960
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim CdlgEx1 As New CCD
Dim FileNa As String

Private Sub Form_Load()
Picture1.BackColor = RGB(92, 120, 208)
GLF.Enabled = False
Call LoadAll
    
    Music.Treii(0).Nodes.Clear
    All_Genre
    
Form2.Width = 6615
Form2.Height = 3240
Form2.Show 1
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image1.Picture = ImageList1.ListImages(5).Picture
Image2.Picture = ImageList1.ListImages(6).Picture
Image3.Picture = ImageList1.ListImages(3).Picture
Image4.Picture = ImageList1.ListImages(8).Picture

Label3.Caption = ""
Label2.Caption = ""
End Sub

Private Sub Form_Unload(Cancel As Integer)
GLF.Enabled = True
End Sub

Private Sub Image1_Click()
On Error GoTo 10
Dim a$
Open "C:\CDDatabase.ini" For Input As #1
Input #1, a$
Label3.Caption = a$
Close #1
If Trim(a$) = "" Or a$ = ".cdb" Or a$ = "No Last Edited File, creat new CD Database file" Then Label3.Caption = "No Last Edited File, creat new CD Database file": Exit Sub
Load_cdb (a$)
Sleep 200
Exit Sub
10:
Call Image3_Click
End Sub

Private Sub Image1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image1.Picture = ImageList1.ListImages(1).Picture
Label2.Caption = "Open Last Edited"

On Error GoTo 10
Dim a$
Open "C:\CDDatabase.ini" For Input As #1
Input #1, a$
Label3.Caption = a$
Close #1
If a$ = "" Then GoTo 10
Exit Sub
10:
Label3.Caption = "No Last Edited File, creat new CD Database file"
End Sub


Private Sub Image2_Click()
On Error GoTo 20
GLF.Lnk.Recordset.Close
10:

Dim CFile
CdlgEx1.CancelError = False
CdlgEx1.Filter = "CD Database|*.cdb"
CdlgEx1.DialogTitle = "Creat New CD Database"
CdlgEx1.ShowSave
FileNa = CdlgEx1.FileName
Label2.Caption = FileNa & ".cdb"
CFile = FileNa & ".cdb"

GLF.Lnk.DatabaseName = ""
Open "C:\CDDatabase.ini" For Output As #1
Write #1, CFile
Close #1

Sleep 100

If Trim(CFile) = "" Or Trim(CFile) = ".cdb" Then Exit Sub
Creat_MDB (CFile)
Sleep 400
Load_cdb (CFile)
Sleep 100

Exit Sub
20:
CFile = ""
GoTo 10:
End Sub

Private Sub Image2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image2.Picture = ImageList1.ListImages(2).Picture
Label2.Caption = "Creat New CD Database"
End Sub

Private Sub Image3_Click()
CdlgEx1.CancelError = False
CdlgEx1.Filter = "CD Database|*.cdb"
CdlgEx1.ShowOpen
FileNa = CdlgEx1.FileName

Open "C:\CDDatabase.ini" For Output As #1
Write #1, FileNa
Close #1
Sleep 2
Call Image1_Click
End Sub

Private Sub Image3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image3.Picture = ImageList1.ListImages(4).Picture
Label2.Caption = "Open CD Database"
End Sub

Private Sub Image4_Click()
End
End Sub

Private Sub Image4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image4.Picture = ImageList1.ListImages(7).Picture
Label2.Caption = "Exit"
End Sub


