VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form SPP 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   4395
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5700
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "SPP.frx":0000
   ScaleHeight     =   4395
   ScaleWidth      =   5700
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.ListView ListTS 
      Height          =   1095
      Left            =   720
      TabIndex        =   20
      Top             =   2160
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   1931
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   393217
      Icons           =   "ImageList2"
      SmallIcons      =   "ImageList2"
      ColHdrIcons     =   "ImageList2"
      ForeColor       =   14737632
      BackColor       =   0
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
   Begin VB.DriveListBox Drive1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   720
      TabIndex        =   11
      Top             =   600
      Width           =   1695
   End
   Begin VB.DirListBox Dir1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   1890
      Left            =   2520
      TabIndex        =   10
      Top             =   600
      Width           =   2535
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Left            =   1320
      TabIndex        =   9
      Text            =   "Davor"
      Top             =   1080
      Width           =   1095
   End
   Begin VB.TextBox Text2 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Left            =   1560
      TabIndex        =   8
      Text            =   "Flokysofft"
      Top             =   1320
      Width           =   855
   End
   Begin VB.TextBox Text3 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FFFF&
      Height          =   195
      Left            =   1200
      TabIndex        =   7
      Text            =   "12.5.1984."
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox Fname 
      BackColor       =   &H00C0C0C0&
      ForeColor       =   &H00000000&
      Height          =   285
      Left            =   840
      TabIndex        =   6
      Top             =   3530
      Width           =   3855
   End
   Begin VB.Frame Frame1 
      Height          =   4095
      Left            =   6000
      TabIndex        =   1
      Top             =   120
      Width           =   2295
      Begin VB.ListBox ListTS1 
         Height          =   645
         Left            =   120
         TabIndex        =   2
         Top             =   3240
         Width           =   2055
      End
      Begin RichTextLib.RichTextBox RB 
         Height          =   2655
         Left            =   120
         TabIndex        =   3
         Top             =   480
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   4683
         _Version        =   393217
         Enabled         =   -1  'True
         ScrollBars      =   3
         TextRTF         =   $"SPP.frx":31B0
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Redova u traci:"
         Height          =   195
         Left            =   120
         TabIndex        =   5
         Top             =   240
         Width           =   1095
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Left            =   1440
         TabIndex        =   4
         Top             =   240
         Width           =   90
      End
   End
   Begin VB.Timer Timer1 
      Left            =   5880
      Top             =   4440
   End
   Begin VB.FileListBox File1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00E0E0E0&
      Height          =   675
      Left            =   2520
      Pattern         =   "*.MPr"
      TabIndex        =   0
      Top             =   2520
      Width           =   2535
   End
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
            Picture         =   "SPP.frx":32D8
            Key             =   ""
         EndProperty
      EndProperty
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
            Picture         =   "SPP.frx":35F4
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SPP.frx":3ED0
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SPP.frx":47AC
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SPP.frx":5088
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Author :"
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Index           =   0
      Left            =   720
      TabIndex        =   19
      Top             =   1080
      Width           =   555
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Company :"
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Index           =   1
      Left            =   720
      TabIndex        =   18
      Top             =   1320
      Width           =   750
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Date :"
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Index           =   2
      Left            =   720
      TabIndex        =   17
      Top             =   1680
      Width           =   435
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
      TabIndex        =   16
      Top             =   3360
      Width           =   690
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
      TabIndex        =   15
      Top             =   260
      Width           =   4290
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
      TabIndex        =   14
      Top             =   0
      Width           =   105
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   4440
      Picture         =   "SPP.frx":5964
      Top             =   3900
      Width           =   480
   End
   Begin VB.Image Image2 
      Height          =   480
      Left            =   3840
      Picture         =   "SPP.frx":622E
      Top             =   3900
      Width           =   480
   End
   Begin VB.Image Image3 
      Height          =   1800
      Left            =   180
      Picture         =   "SPP.frx":6AF8
      Top             =   1560
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Qualty :"
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Index           =   3
      Left            =   720
      TabIndex        =   13
      Top             =   1920
      Width           =   540
   End
   Begin VB.Label Qu 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "10"
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Left            =   1320
      TabIndex        =   12
      Top             =   1920
      Width           =   180
   End
   Begin VB.Image Image4 
      Height          =   480
      Left            =   4680
      Picture         =   "SPP.frx":84E8
      ToolTipText     =   "Delete File"
      Top             =   3360
      Width           =   480
   End
End
Attribute VB_Name = "SPP"
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
ListTS.Width = 1695
End Sub

Private Sub Drive1_Change()
On Error GoTo 10
'Drive1.Drive = Drive1.Drive
Dir1.Path = Drive1.Drive
FPath.Caption = Dir1.Path
File1.Path = Dir1.Path
Exit Sub
10:
Drive1.Drive = "C:\"
End Sub

Private Sub Fname_Change()
FPath.Caption = ""
O = Dir1.Path
O = O + "\" + Fname.Text + ".MPr"
FPath.Caption = O
End Sub

Private Sub Fname_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "File name."
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
SPP.Left = (P * Mo.X) - XX
SPP.Top = (P * Mo.Y) - YY
End If
End Sub

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Q = 0
P = Screen.TwipsPerPixelX
XX = X
YY = Y
End Sub

Private Sub FPath_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "File Path."
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
SPP.Left = (P * Mo.X) - XX - 180
SPP.Top = (P * Mo.Y) - YY - 1560
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
If File1.FileName = "" Then GoTo 10
Dim OP
Dim PPo As String
PPo = "Are your sure to Delete " + File1.FileName
OP = MsgBox(PPo, 4, "Warning")
Select Case OP
Case 6
PPo = Dir1.Path + "\" + File1.FileName
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
Help2.Label1.Caption = "Delete file from file list."
End Sub

Private Sub Label1_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Information of record sound."
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
Unload Me
End Sub

Private Sub Label10_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Close."
End Sub

Private Sub ListTS_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Sound list in record."
ListTS.Width = 4335
End Sub

Private Sub Timer1_Timer()
On Error Resume Next
ListTS.ListItems.Clear
ListTS.ColumnHeaders.Add , , "Track", , 0
ListTS.ColumnHeaders.Add , , "Path", , 0
For N = 0 To 15
ListTS1.AddItem GLF.S(N).FileName
Kk = N
Kk = "Track " + Kk
Set LLL = ListTS.ListItems.Add(, , Kk, 1, 1)
If Not GLF.S(N).FileName = "" Then LLL.SubItems(1) = GLF.S(N).FileName
If GLF.S(N).FileName = "" Then LLL.SubItems(1) = "Empty"
Timer1.Interval = 0
Next N
End Sub

