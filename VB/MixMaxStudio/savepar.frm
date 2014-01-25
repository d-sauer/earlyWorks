VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form SavePar 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   4530
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5790
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "SavePar.frx":0000
   ScaleHeight     =   4530
   ScaleWidth      =   5790
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.ImageList ImageList2 
      Left            =   0
      Top             =   0
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   1
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SavePar.frx":31B0
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ListView ListTS 
      Height          =   1170
      Left            =   720
      TabIndex        =   19
      Top             =   2040
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   2064
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   0   'False
      HideSelection   =   -1  'True
      _Version        =   393217
      Icons           =   "ImageList2"
      SmallIcons      =   "ImageList2"
      ColHdrIcons     =   "ImageList2"
      ForeColor       =   12632256
      BackColor       =   0
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
   Begin VB.FileListBox File1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00E0E0E0&
      Height          =   870
      Left            =   2520
      Pattern         =   "*.MMp"
      TabIndex        =   18
      Top             =   2320
      Width           =   2535
   End
   Begin VB.Timer Timer1 
      Left            =   5880
      Top             =   2760
   End
   Begin VB.Frame Frame1 
      Height          =   4095
      Left            =   6000
      TabIndex        =   12
      Top             =   120
      Width           =   2295
      Begin VB.ListBox ListTS1 
         Height          =   645
         Left            =   120
         TabIndex        =   20
         Top             =   3240
         Width           =   2055
      End
      Begin RichTextLib.RichTextBox RB 
         Height          =   2655
         Left            =   120
         TabIndex        =   17
         Top             =   480
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   4683
         _Version        =   393217
         ScrollBars      =   3
         TextRTF         =   $"SavePar.frx":34CC
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Left            =   1440
         TabIndex        =   14
         Top             =   240
         Width           =   90
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Redova u traci:"
         Height          =   195
         Left            =   120
         TabIndex        =   13
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.TextBox Fname 
      BackColor       =   &H00C0C0C0&
      ForeColor       =   &H00000000&
      Height          =   285
      Left            =   840
      TabIndex        =   9
      Top             =   3530
      Width           =   3855
   End
   Begin VB.TextBox Text3 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FFFF&
      Height          =   195
      Left            =   1200
      TabIndex        =   7
      Text            =   "12.5.1984."
      Top             =   1560
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Left            =   1560
      TabIndex        =   6
      Text            =   "Flokysofft"
      Top             =   1320
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Left            =   1320
      TabIndex        =   5
      Text            =   "Davor"
      Top             =   1080
      Width           =   1095
   End
   Begin VB.DirListBox Dir1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   1665
      Left            =   2520
      TabIndex        =   1
      Top             =   600
      Width           =   2535
   End
   Begin VB.DriveListBox Drive1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   720
      TabIndex        =   0
      Top             =   600
      Width           =   1695
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   0
      Top             =   720
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   4
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SavePar.frx":35B6
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SavePar.frx":3E92
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SavePar.frx":476E
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SavePar.frx":504A
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Image Image4 
      Height          =   480
      Left            =   4680
      Picture         =   "SavePar.frx":5926
      ToolTipText     =   "Delete File"
      Top             =   3360
      Width           =   480
   End
   Begin VB.Label Qu 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "10"
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Left            =   1320
      TabIndex        =   16
      Top             =   1800
      Width           =   180
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Qualty :"
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Index           =   3
      Left            =   720
      TabIndex        =   15
      Top             =   1800
      Width           =   540
   End
   Begin VB.Image Image3 
      Height          =   1800
      Left            =   180
      Picture         =   "SavePar.frx":5D68
      Top             =   1560
      Width           =   270
   End
   Begin VB.Image Image2 
      Height          =   480
      Left            =   3840
      Picture         =   "SavePar.frx":7758
      Top             =   3900
      Width           =   480
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   4440
      Picture         =   "SavePar.frx":8022
      Top             =   3900
      Width           =   480
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "×"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   5160
      TabIndex        =   11
      Top             =   0
      Width           =   105
   End
   Begin VB.Label FPath 
      BackStyle       =   0  'Transparent
      Caption         =   "C:\"
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
      Left            =   840
      TabIndex        =   10
      Top             =   260
      Width           =   4290
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "File Name :"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   165
      Left            =   720
      TabIndex        =   8
      Top             =   3360
      Width           =   690
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Date :"
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Index           =   2
      Left            =   720
      TabIndex        =   4
      Top             =   1560
      Width           =   435
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Company :"
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Index           =   1
      Left            =   720
      TabIndex        =   3
      Top             =   1320
      Width           =   750
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Author :"
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Index           =   0
      Left            =   720
      TabIndex        =   2
      Top             =   1080
      Width           =   555
   End
End
Attribute VB_Name = "SavePar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Q
Dim Mo As POINTAPI
Dim P
Dim XX
Dim YY
Dim O As String
Dim A
Dim N As Integer
Dim WinP As String
Dim LLL As ListItem
Dim Kk As String
Dim A0 As String
Dim A1 As String
Dim A2 As String
Dim A3 As String
Dim A4 As String
Dim A5 As String
Private Sub Dir1_Change()
FPath.Caption = Dir1.Path
File1.Path = Dir1.Path
End Sub

Private Sub Dir1_Click()
FPath.Caption = Dir1.Path
End Sub

Private Sub Dir1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Folder list."
ListTS.Width = 1695
End Sub

Private Sub Drive1_Change()
On Error GoTo 10
Dir1.Path = Drive1.Drive
FPath.Caption = Dir1.Path
File1.Path = Dir1.Path
Exit Sub
10:
Drive1.Drive = "C:\"
End Sub

Private Sub File1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "File list."
End Sub

Private Sub Fname_Change()
On Error Resume Next
FPath.Caption = ""
O = Dir1.Path
O = O + "\" + Fname.Text + ".MmP"
FPath.Caption = O
End Sub

Private Sub Fname_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "File Name."
End Sub

Private Sub Form_Load()
On Error Resume Next
Text1.Text = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Lic1")
Text2.Text = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Lic2")
Text3.Text = Date
Qu.Caption = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Q")
Timer1.Interval = 20
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Q = 1
P = Screen.TwipsPerPixelX
XX = X
YY = Y
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
ListTS.Width = 1695
If Q = 1 Then
GetCursorPos Mo
SavePar.Left = (P * Mo.X) - XX
SavePar.Top = (P * Mo.Y) - YY
End If
End Sub

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Q = 0
P = Screen.TwipsPerPixelX
XX = X
YY = Y
End Sub

Private Sub FPath_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "File path."
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
Call S_S
End If
Image1.Picture = ImageList1.ListImages(1).Picture
A = 0
End Sub

Private Sub Image3_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Q = 1
P = Screen.TwipsPerPixelX
XX = X
YY = Y
End Sub

Private Sub Image3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Q = 1 Then
GetCursorPos Mo
SavePar.Left = (P * Mo.X) - XX - 180
SavePar.Top = (P * Mo.Y) - YY - 1560
End If
End Sub

Private Sub Image3_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Q = 0
P = Screen.TwipsPerPixelX
XX = X
YY = Y
End Sub

Private Sub Image4_Click()
On Error Resume Next
If File1.filename = "" Then GoTo 10
Dim OP
Dim PPo As String
PPo = "Are your sure to Delete " + File1.filename
OP = MsgBox(PPo, 4, "Warning")
Select Case OP
Case 6
PPo = Dir1.Path + "\" + File1.filename
Kill PPo
Me.Refresh
File1.Refresh
Case 7
Me.Refresh
End Select
Exit Sub
10:
End Sub

Private Sub Image4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Delete file."
End Sub

Private Sub Label1_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Project about."
End Sub

Private Sub Label10_Click()
Unload Me
End Sub

Private Sub Image2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image2.Picture = ImageList1.ListImages(4).Picture
A = 1
End Sub

Private Sub Image2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Close."
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
If Image2.Picture = ImageList1.ListImages(4).Picture Then
Unload Me
End If
Image2.Picture = ImageList1.ListImages(3).Picture
A = 0
End Sub

Sub S_S()
On Error Resume Next
Dim W As String
Dim P
W = FPath.Caption
Close #1
Open W For Output As #1
Write #1, Text1, Text2, Text3, Qu, GLF.R.Caption
For P = 0 To 15
A0 = ListTS1.List(P)
A1 = GLF.From(P).Caption
A2 = GLF.Too(P).Caption
A3 = GLF.Sp(P).Caption
A4 = GLF.Vl(P).Caption
A5 = GLF.Bal(P).Caption
Write #1, A0, A1, A2, A3, A4, A5
Next P
Close #1
Open W For Append As #1
Write #1, RB.Text; txt
Close #1
Close #1
Unload Me
End Sub

Private Sub Label10_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Close."
End Sub

Private Sub ListTS_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Sound list on Project."
ListTS.Width = 4335
End Sub

Private Sub Qu_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Qualty."
End Sub

Private Sub Text1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Author name."
End Sub

Private Sub Text2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Company name."
End Sub

Private Sub Text3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Creat date."
End Sub

Private Sub Timer1_Timer()
On Error Resume Next
ListTS.ColumnHeaders.Add , , "Track", , 0
ListTS.ColumnHeaders.Add , , "Path", , 0
ListTS.ListItems.Clear
For N = 0 To 15
ListTS1.AddItem GLF.S(N).filename
Kk = N
Kk = "Track " + Kk
Set LLL = ListTS.ListItems.Add(, , Kk, 1, 1)
If Not GLF.S(N).filename = "" Then LLL.SubItems(1) = GLF.S(N).filename
If GLF.S(N).filename = "" Then LLL.SubItems(1) = "Empty"
Timer1.Interval = 0
Next N
WinP = Form1.Label1.Caption
WinP = WinP + "\Temp\MMSR.tmp"
RB.filename = WinP
End Sub
