VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form Gen 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Generate"
   ClientHeight    =   3060
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   6795
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3060
   ScaleWidth      =   6795
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   255
      Left            =   0
      TabIndex        =   4
      Top             =   2760
      Width           =   6735
      _ExtentX        =   11880
      _ExtentY        =   450
      _Version        =   393216
      BorderStyle     =   1
      Appearance      =   1
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Generate"
      Height          =   375
      Left            =   5160
      TabIndex        =   3
      Top             =   480
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   5160
      TabIndex        =   2
      Top             =   0
      Width           =   1455
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      ItemData        =   "Gen.frx":0000
      Left            =   1320
      List            =   "Gen.frx":0002
      TabIndex        =   1
      Top             =   120
      Width           =   1695
   End
   Begin VB.Frame Frame1 
      Caption         =   "Include"
      Height          =   1695
      Left            =   0
      TabIndex        =   6
      Top             =   840
      Width           =   6735
      Begin VB.CheckBox Check1 
         Caption         =   "Licenc"
         Enabled         =   0   'False
         Height          =   195
         Index           =   18
         Left            =   9000
         TabIndex        =   52
         Top             =   1440
         Visible         =   0   'False
         Width           =   975
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H0080C0FF&
         Height          =   190
         Index           =   19
         Left            =   8760
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   51
         Top             =   1440
         Visible         =   0   'False
         Width           =   190
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Legend"
         Height          =   195
         Index           =   17
         Left            =   4680
         TabIndex        =   49
         Top             =   240
         Width           =   975
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H0000FF00&
         Height          =   190
         Index           =   18
         Left            =   4680
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   47
         Top             =   480
         Width           =   190
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H00000000&
         Height          =   190
         Index           =   17
         Left            =   4680
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   45
         Top             =   720
         Width           =   190
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&Default"
         Height          =   255
         Left            =   4920
         TabIndex        =   44
         Top             =   1320
         Width           =   1215
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H0000C000&
         Height          =   190
         Index           =   16
         Left            =   8760
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   43
         Top             =   1200
         Visible         =   0   'False
         Width           =   190
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H00FF8080&
         Height          =   190
         Index           =   15
         Left            =   8760
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   42
         Top             =   960
         Visible         =   0   'False
         Width           =   190
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H00FFFF00&
         Height          =   190
         Index           =   14
         Left            =   8760
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   41
         Top             =   720
         Visible         =   0   'False
         Width           =   190
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H00FF00FF&
         Height          =   190
         Index           =   13
         Left            =   8760
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   40
         Top             =   480
         Visible         =   0   'False
         Width           =   190
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H00FF00FF&
         Height          =   190
         Index           =   12
         Left            =   8760
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   39
         Top             =   240
         Visible         =   0   'False
         Width           =   190
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H008080FF&
         Height          =   190
         Index           =   11
         Left            =   6840
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   38
         Top             =   1440
         Visible         =   0   'False
         Width           =   190
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H00C0C0C0&
         Height          =   190
         Index           =   10
         Left            =   2040
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   37
         Top             =   1200
         Width           =   190
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H00C0C0C0&
         Height          =   190
         Index           =   9
         Left            =   2040
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   36
         Top             =   960
         Width           =   190
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H00C0C000&
         Height          =   190
         Index           =   8
         Left            =   2040
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   35
         Top             =   720
         Width           =   190
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H000000FF&
         Height          =   190
         Index           =   7
         Left            =   2040
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   34
         Top             =   480
         Width           =   190
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H000080FF&
         Height          =   190
         Index           =   6
         Left            =   2040
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   33
         Top             =   240
         Width           =   190
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H00E0E0E0&
         Height          =   190
         Index           =   5
         Left            =   120
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   32
         Top             =   1440
         Width           =   190
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H00E0E0E0&
         Height          =   190
         Index           =   4
         Left            =   120
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   31
         Top             =   1200
         Width           =   190
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H00FFC0C0&
         Height          =   190
         Index           =   3
         Left            =   120
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   30
         Top             =   960
         Width           =   190
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H00FF8080&
         Height          =   190
         Index           =   2
         Left            =   120
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   29
         Top             =   720
         Width           =   190
      End
      Begin VB.PictureBox Color 
         Height          =   190
         Index           =   1
         Left            =   120
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   28
         Top             =   480
         Width           =   190
      End
      Begin VB.PictureBox Color 
         BackColor       =   &H0000FFFF&
         Height          =   190
         Index           =   0
         Left            =   120
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   27
         Top             =   240
         Width           =   190
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Publisher"
         Enabled         =   0   'False
         Height          =   195
         Index           =   16
         Left            =   9000
         TabIndex        =   23
         Top             =   1200
         Visible         =   0   'False
         Width           =   975
      End
      Begin VB.CheckBox Check1 
         Caption         =   "OS"
         Enabled         =   0   'False
         Height          =   195
         Index           =   15
         Left            =   9000
         TabIndex        =   22
         Top             =   960
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Type"
         Enabled         =   0   'False
         Height          =   195
         Index           =   14
         Left            =   9000
         TabIndex        =   21
         Top             =   720
         Visible         =   0   'False
         Width           =   975
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Subtitle"
         Enabled         =   0   'False
         Height          =   195
         Index           =   13
         Left            =   9000
         TabIndex        =   20
         Top             =   480
         Visible         =   0   'False
         Width           =   975
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Grade"
         Enabled         =   0   'False
         Height          =   195
         Index           =   12
         Left            =   9000
         TabIndex        =   19
         Top             =   240
         Visible         =   0   'False
         Width           =   975
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Format"
         Enabled         =   0   'False
         Height          =   195
         Index           =   11
         Left            =   7080
         TabIndex        =   18
         Top             =   1440
         Visible         =   0   'False
         Width           =   975
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Path"
         Enabled         =   0   'False
         Height          =   195
         Index           =   10
         Left            =   2280
         TabIndex        =   17
         Top             =   1200
         Width           =   975
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Cd ID"
         Enabled         =   0   'False
         Height          =   195
         Index           =   9
         Left            =   2280
         TabIndex        =   16
         Top             =   960
         Width           =   975
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Size"
         Enabled         =   0   'False
         Height          =   195
         Index           =   8
         Left            =   2280
         TabIndex        =   15
         Top             =   720
         Width           =   975
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Birate"
         Enabled         =   0   'False
         Height          =   195
         Index           =   7
         Left            =   2280
         TabIndex        =   14
         Top             =   480
         Width           =   975
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Duration/Length"
         Enabled         =   0   'False
         Height          =   255
         Index           =   6
         Left            =   2280
         TabIndex        =   13
         Top             =   240
         Width           =   1575
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Genre"
         Enabled         =   0   'False
         Height          =   195
         Index           =   5
         Left            =   360
         TabIndex        =   12
         Top             =   1440
         Width           =   975
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Year"
         Enabled         =   0   'False
         Height          =   195
         Index           =   4
         Left            =   360
         TabIndex        =   11
         Top             =   1200
         Width           =   975
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Album"
         Enabled         =   0   'False
         Height          =   195
         Index           =   3
         Left            =   360
         TabIndex        =   10
         Top             =   960
         Width           =   975
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Artist"
         Enabled         =   0   'False
         Height          =   195
         Index           =   2
         Left            =   360
         TabIndex        =   9
         Top             =   720
         Width           =   975
      End
      Begin VB.CheckBox Check1 
         Caption         =   "CD"
         Enabled         =   0   'False
         Height          =   195
         Index           =   1
         Left            =   360
         TabIndex        =   8
         Top             =   480
         Width           =   975
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Number"
         Enabled         =   0   'False
         Height          =   195
         Index           =   0
         Left            =   360
         TabIndex        =   7
         Top             =   240
         Width           =   975
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Text Color"
         Height          =   195
         Index           =   1
         Left            =   4920
         TabIndex        =   48
         Top             =   480
         Width           =   720
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "BackColor"
         Height          =   195
         Index           =   0
         Left            =   4920
         TabIndex        =   46
         Top             =   720
         Width           =   735
      End
      Begin VB.Image Image1 
         Height          =   480
         Left            =   6000
         Picture         =   "Gen.frx":0004
         Top             =   720
         Width           =   480
      End
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      Height          =   3705
      Left            =   0
      ScaleHeight     =   3705
      ScaleWidth      =   6615
      TabIndex        =   5
      Top             =   3360
      Visible         =   0   'False
      Width           =   6615
      Begin VB.TextBox Text1 
         Height          =   1605
         Left            =   120
         TabIndex        =   26
         Text            =   "Text1"
         Top             =   120
         Width           =   6375
      End
      Begin VB.ListBox List1 
         Height          =   1815
         Left            =   120
         TabIndex        =   25
         Top             =   1800
         Width           =   6375
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "1. "
         Height          =   2355
         Index           =   2
         Left            =   120
         TabIndex        =   24
         Top             =   240
         Width           =   6420
      End
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Label4"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   165
      Left            =   0
      TabIndex        =   50
      Top             =   2550
      Width           =   405
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Generate to"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   1
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1020
   End
   Begin VB.Image Image2 
      Height          =   1110
      Left            =   -120
      Picture         =   "Gen.frx":030E
      Stretch         =   -1  'True
      Top             =   0
      Width           =   6840
   End
End
Attribute VB_Name = "Gen"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim FileNa
Dim CdlgEx1 As New CCD
Dim n

Private Sub Check1_Click(Index As Integer)
PicTx
End Sub

Private Sub Color_Click(Index As Integer)
CdlgEx1.ShowColor
Color(Index).BackColor = CdlgEx1.RGBResult
Color(Index).ToolTipText = ColHTML(Hex(CdlgEx1.RGBResult))
End Sub


Private Sub Command1_Click()
GLF.Enabled = True
Gen.Hide
End Sub


Private Sub Command2_Click()
List1.Clear
Text1.Text = ""
Dim CFile
CdlgEx1.CancelError = False
Select Case Combo2.ListIndex
Case 0
CdlgEx1.Filter = "Text|*.txt|"
Case 1
CdlgEx1.Filter = "HTML|*.htm|"
End Select
CdlgEx1.DialogTitle = "Creat Output List"
CdlgEx1.ShowSave
FileNa = CdlgEx1.FileName

Sleep 3
Select Case Combo2.ListIndex
Case 0
If Len(Trim(FileNa)) >= 1 Then OutText (FileNa)
Case 1
If Len(Trim(FileNa)) >= 1 Then OutHTML (FileNa)
End Select
End Sub

Private Sub Command3_Click()
Check1(0).Value = 1
Check1(2).Value = 1
Check1(3).Value = 1
Check1(4).Value = 0
Check1(5).Value = 0
Check1(6).Value = 0
Check1(7).Value = 0
Check1(8).Value = 0
Check1(9).Value = 0
Check1(10).Value = 0
End Sub

Private Sub Form_Load()
Combo2.AddItem "Text File"
Combo2.AddItem "HTML Page"

Color(0).BackColor = RGB(255, 255, 0) 'Number
Color(1).BackColor = RGB(145, 145, 145) 'CD
Color(2).BackColor = RGB(59, 150, 247) 'Artist
Color(3).BackColor = RGB(0, 191, 255) 'Album
Color(4).BackColor = RGB(181, 181, 181) 'Year
Color(5).BackColor = RGB(155, 155, 155) 'Genre
Color(6).BackColor = RGB(255, 136, 0) 'Leght
Color(7).BackColor = RGB(252, 53, 53) 'Birate
Color(8).BackColor = RGB(0, 255, 200) 'Size
Color(9).BackColor = RGB(181, 181, 181) 'ID
Color(10).BackColor = RGB(150, 150, 150) 'Path
Color(11).BackColor = RGB(255, 0, 0) 'Format
Color(12).BackColor = RGB(255, 0, 255) 'Grade
Color(13).BackColor = RGB(195, 97, 230) 'Subtitle
Color(14).BackColor = RGB(55, 156, 212) 'Type
Color(15).BackColor = RGB(102, 169, 242) 'Os
Color(16).BackColor = RGB(23, 153, 0) 'Publisher
Color(17).BackColor = RGB(0, 0, 0) 'backColor
Color(18).BackColor = RGB(102, 255, 102) 'Text Color
Color(19).BackColor = RGB(222, 55, 152) 'Licenc


Sleep 3
For n = 0 To 18
Color(n).ToolTipText = ColHTML(Hex(Color(n).BackColor))
Sleep 2
Next n

Check1(0).Enabled = True    'Number
Check1(1).Enabled = True   'CD
Check1(2).Enabled = True    'Artist
Check1(3).Enabled = True    'Album
Check1(4).Enabled = True    'Year
Check1(5).Enabled = True    'Genre
Check1(6).Enabled = True    'Duration/Leght
Check1(7).Enabled = True    'Birate
Check1(8).Enabled = True    'Size
Check1(9).Enabled = True    'Cd ID
Check1(10).Enabled = True   'Path
Check1(11).Enabled = False   'Format
Check1(12).Enabled = False   'Grade
Check1(13).Enabled = False   'Subtitle
Check1(14).Enabled = False   'Type
Check1(15).Enabled = False   'OS
Check1(16).Enabled = False   'Publisher
Check1(18).Enabled = False   'Licenc

End Sub


Private Sub Form_Unload(Cancel As Integer)
GLF.Enabled = True
End Sub

Sub PicTx()
'Music
Label2(2).Caption = ""
If Gen.Check1(2).Value = 1 Then Label2(2) = Label2(2) & "Artist:" & vbCrLf
If Gen.Check1(3).Value = 1 Then Label2(2) = Label2(2) & "Album:" & vbCrLf

If Gen.Check1(0).Value = 1 Then Label2(2) = Label2(2) & "  " & "1" & ".  "
Label2(2) = Label2(2) & "Song Title"
    If Gen.Check1(7).Value = 1 Then Label2(2) = Label2(2) & "  Birate: 128"
    If Gen.Check1(6).Value = 1 Then Label2(2) = Label2(2) & "  Len: 3:23"
    If Gen.Check1(4).Value = 1 Then Label2(2) = Label2(2) & "  Y: 2001"
    If Gen.Check1(5).Value = 1 Then Label2(2) = Label2(2) & "  Genre: Pop"
    If Gen.Check1(8).Value = 1 Then Label2(2) = Label2(2) & "  Size: 354517545"
    
    If Gen.Check1(1).Value = 1 Then Label2(2) = Label2(2) & "  CD: 34"
    
    If Gen.Check1(9).Value = 1 Then Label2(2) = Label2(2) & "  ID: 3451664"
    If Gen.Check1(10).Value = 1 Then Label2(2) = Label2(2) & "  Path: \My Music"
Label2(2) = Label2(2) & vbCrLf

If Gen.Check1(0).Value = 1 Then Label2(2) = Label2(2) & "  " & "2" & ".  "
Label2(2) = Label2(2) & "Song Title"
    If Gen.Check1(7).Value = 1 Then Label2(2) = Label2(2) & "  Birate: 128"
    If Gen.Check1(6).Value = 1 Then Label2(2) = Label2(2) & "  Len: 2:23"
    If Gen.Check1(4).Value = 1 Then Label2(2) = Label2(2) & "  Y: 2000"
    If Gen.Check1(5).Value = 1 Then Label2(2) = Label2(2) & "  Genre: Punk"
    If Gen.Check1(8).Value = 1 Then Label2(2) = Label2(2) & "  Size: 487545"
    If Gen.Check1(1).Value = 1 Then Label2(2) = Label2(2) & "  CD: 5"
    If Gen.Check1(9).Value = 1 Then Label2(2) = Label2(2) & "  ID: 3451664"
    If Gen.Check1(10).Value = 1 Then Label2(2) = Label2(2) & "  Path: \My Music"
Label2(2) = Label2(2) & vbCrLf

If Gen.Check1(0).Value = 1 Then Label2(2) = Label2(2) & "  " & "3" & ".  "
Label2(2) = Label2(2) & "Song Title"
    If Gen.Check1(7).Value = 1 Then Label2(2) = Label2(2) & "  Birate: 320"
    If Gen.Check1(6).Value = 1 Then Label2(2) = Label2(2) & "  Len: 5:23"
    If Gen.Check1(4).Value = 1 Then Label2(2) = Label2(2) & "  Y: 2001"
    If Gen.Check1(5).Value = 1 Then Label2(2) = Label2(2) & "  Genre: Punk"
    If Gen.Check1(8).Value = 1 Then Label2(2) = Label2(2) & "  Size: 457545"
    If Gen.Check1(1).Value = 1 Then Label2(2) = Label2(2) & "  CD: 99"
    If Gen.Check1(9).Value = 1 Then Label2(2) = Label2(2) & "  ID: 345664"
    If Gen.Check1(10).Value = 1 Then Label2(2) = Label2(2) & "  Path: \My Music"
Label2(2) = Label2(2) & vbCrLf

Label2(2) = Label2(2) & vbCrLf
If Gen.Check1(2).Value = 1 Then Label2(2) = Label2(2) & "Artist:" & vbCrLf
If Gen.Check1(3).Value = 1 Then Label2(2) = Label2(2) & "Album:" & vbCrLf

If Gen.Check1(0).Value = 1 Then Label2(2) = Label2(2) & "  " & "4" & ".  "
Label2(2) = Label2(2) & "Song Title"
    If Gen.Check1(7).Value = 1 Then Label2(2) = Label2(2) & "  Birate: 96"
    If Gen.Check1(6).Value = 1 Then Label2(2) = Label2(2) & "  Len: 2:44"
    If Gen.Check1(4).Value = 1 Then Label2(2) = Label2(2) & "  Y: 2001"
    If Gen.Check1(5).Value = 1 Then Label2(2) = Label2(2) & "  Genre: Pop"
    If Gen.Check1(8).Value = 1 Then Label2(2) = Label2(2) & "  Size: 354517545"
    If Gen.Check1(1).Value = 1 Then Label2(2) = Label2(2) & "  CD: 5"
    If Gen.Check1(9).Value = 1 Then Label2(2) = Label2(2) & "  ID: 3451664"
    If Gen.Check1(10).Value = 1 Then Label2(2) = Label2(2) & "  Path: \My Music"
Label2(2) = Label2(2) & vbCrLf

If Gen.Check1(0).Value = 1 Then Label2(2) = Label2(2) & "  " & "5" & ".  "
Label2(2) = Label2(2) & "Song Title"
    If Gen.Check1(7).Value = 1 Then Label2(2) = Label2(2) & "  Birate: 320"
    If Gen.Check1(6).Value = 1 Then Label2(2) = Label2(2) & "  Len: 5:55"
    If Gen.Check1(4).Value = 1 Then Label2(2) = Label2(2) & "  Y: 20001"
    If Gen.Check1(5).Value = 1 Then Label2(2) = Label2(2) & "  Genre: Rock"
    If Gen.Check1(8).Value = 1 Then Label2(2) = Label2(2) & "  Size: 487545"
    If Gen.Check1(1).Value = 1 Then Label2(2) = Label2(2) & "  CD: 8"
    If Gen.Check1(9).Value = 1 Then Label2(2) = Label2(2) & "  ID: 3451664"
    If Gen.Check1(10).Value = 1 Then Label2(2) = Label2(2) & "  Path: \My Music"
Label2(2) = Label2(2) & vbCrLf

If Gen.Check1(0).Value = 1 Then Label2(2) = Label2(2) & "  " & "6" & ".  "
Label2(2) = Label2(2) & "Song Title"
    If Gen.Check1(7).Value = 1 Then Label2(2) = Label2(2) & "  Birate: 320"
    If Gen.Check1(6).Value = 1 Then Label2(2) = Label2(2) & "  Len: 6:66"
    If Gen.Check1(4).Value = 1 Then Label2(2) = Label2(2) & "  Y: 2001"
    If Gen.Check1(5).Value = 1 Then Label2(2) = Label2(2) & "  Genre: Punk"
    If Gen.Check1(8).Value = 1 Then Label2(2) = Label2(2) & "  Size: 457545"
    If Gen.Check1(1).Value = 1 Then Label2(2) = Label2(2) & "  CD: 7"
    If Gen.Check1(9).Value = 1 Then Label2(2) = Label2(2) & "  ID: 345664"
    If Gen.Check1(10).Value = 1 Then Label2(2) = Label2(2) & "  Path: \My Music"
End Sub
