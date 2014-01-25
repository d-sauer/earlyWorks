VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Game 
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   6615
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   10800
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   6615
   ScaleWidth      =   10800
   ShowInTaskbar   =   0   'False
   Begin VB.ListBox List4 
      BackColor       =   &H80000018&
      Height          =   1815
      Left            =   6120
      TabIndex        =   41
      Top             =   1560
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.ListBox List3 
      BackColor       =   &H80000018&
      Height          =   1620
      ItemData        =   "Game.frx":0000
      Left            =   5640
      List            =   "Game.frx":003A
      Sorted          =   -1  'True
      TabIndex        =   40
      Top             =   2540
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.ListBox List2 
      BackColor       =   &H80000018&
      Height          =   1230
      ItemData        =   "Game.frx":017E
      Left            =   6960
      List            =   "Game.frx":019A
      TabIndex        =   39
      Top             =   2040
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.ListBox List1 
      BackColor       =   &H80000018&
      Height          =   1620
      ItemData        =   "Game.frx":01D3
      Left            =   6240
      List            =   "Game.frx":01EF
      TabIndex        =   30
      Top             =   3000
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.CommandButton Command5 
      Height          =   280
      Left            =   7800
      Picture         =   "Game.frx":0223
      Style           =   1  'Graphical
      TabIndex        =   38
      Top             =   2280
      Width           =   270
   End
   Begin VB.CommandButton Command4 
      Height          =   280
      Left            =   7560
      Picture         =   "Game.frx":0439
      Style           =   1  'Graphical
      TabIndex        =   37
      Top             =   1800
      Width           =   270
   End
   Begin VB.CommandButton Command2 
      Height          =   255
      Left            =   6480
      Picture         =   "Game.frx":064F
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   2760
      Width           =   270
   End
   Begin VB.CommandButton Command3 
      Height          =   280
      Left            =   7560
      Picture         =   "Game.frx":0865
      Style           =   1  'Graphical
      TabIndex        =   36
      Top             =   1320
      Width           =   270
   End
   Begin VB.CommandButton Command1 
      Caption         =   "..."
      Height          =   280
      Left            =   10080
      TabIndex        =   35
      Top             =   3720
      Width           =   255
   End
   Begin VB.TextBox Text10 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   9000
      TabIndex        =   6
      Top             =   2280
      Width           =   1575
   End
   Begin VB.TextBox Text9 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   810
      Left            =   5640
      MultiLine       =   -1  'True
      TabIndex        =   12
      Top             =   5520
      Width           =   4935
   End
   Begin VB.TextBox Text8 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   810
      Left            =   5640
      MultiLine       =   -1  'True
      TabIndex        =   11
      Top             =   4560
      Width           =   4935
   End
   Begin VB.VScrollBar VScroll1 
      Height          =   320
      Left            =   5640
      Max             =   10
      TabIndex        =   10
      Top             =   4140
      Value           =   10
      Width           =   135
   End
   Begin VB.TextBox Text7 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   5280
      TabIndex        =   9
      Top             =   3720
      Width           =   4815
   End
   Begin VB.TextBox Text6 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   5280
      TabIndex        =   8
      Top             =   3240
      Width           =   4815
   End
   Begin VB.TextBox Text5 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   5280
      TabIndex        =   7
      Top             =   2760
      Width           =   1215
   End
   Begin VB.TextBox Text3 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   5520
      TabIndex        =   5
      Top             =   2280
      Width           =   2295
   End
   Begin VB.TextBox Text2 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   5280
      TabIndex        =   4
      Top             =   1800
      Width           =   2295
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   5280
      TabIndex        =   3
      Top             =   1320
      Width           =   2295
   End
   Begin VB.TextBox Text4 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   5280
      TabIndex        =   2
      Top             =   840
      Width           =   5295
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      Height          =   200
      Index           =   0
      Left            =   0
      ScaleHeight     =   195
      ScaleWidth      =   4500
      TabIndex        =   15
      Top             =   600
      Width           =   4500
      Begin VB.Image Image1 
         Height          =   195
         Left            =   30
         Picture         =   "Game.frx":0A7B
         ToolTipText     =   "View by"
         Top             =   0
         Width           =   195
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Game"
         Height          =   195
         Left            =   300
         TabIndex        =   16
         Top             =   0
         Width           =   420
      End
   End
   Begin MSComctlLib.ListView LV 
      Height          =   5415
      Left            =   0
      TabIndex        =   1
      Top             =   840
      Width           =   4500
      _ExtentX        =   7938
      _ExtentY        =   9551
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483624
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   10200
      Top             =   5520
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   6
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Game.frx":0AED
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Game.frx":13C9
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Game.frx":16E5
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Game.frx":1A01
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Game.frx":1D1D
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Game.frx":2039
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   600
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   10800
      _ExtentX        =   19050
      _ExtentY        =   1058
      ButtonWidth     =   1032
      ButtonHeight    =   1005
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList1"
      DisabledImageList=   "ImageList1"
      HotImageList    =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   8
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "New Game"
            ImageIndex      =   6
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Appy"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Remove"
            ImageIndex      =   5
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.Visible         =   0   'False
            Object.ToolTipText     =   "Creat Compilation"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Generate"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Refresh"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
      EndProperty
      Begin VB.PictureBox Picture1 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   550
         Index           =   1
         Left            =   3720
         ScaleHeight     =   555
         ScaleWidth      =   7095
         TabIndex        =   14
         Top             =   0
         Width           =   7095
         Begin VB.PictureBox Picture2 
            BorderStyle     =   0  'None
            Height          =   615
            Left            =   2040
            ScaleHeight     =   615
            ScaleWidth      =   15
            TabIndex        =   32
            Top             =   0
            Width           =   15
         End
         Begin VB.Image Image2 
            Height          =   480
            Left            =   2040
            Picture         =   "Game.frx":2915
            Top             =   30
            Width           =   4950
         End
      End
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "xxx"
      ForeColor       =   &H00FF0000&
      Height          =   195
      Left            =   9000
      TabIndex        =   34
      Top             =   1800
      Visible         =   0   'False
      Width           =   225
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "xxx"
      ForeColor       =   &H00FF0000&
      Height          =   195
      Left            =   9000
      TabIndex        =   33
      Top             =   1320
      Visible         =   0   'False
      Width           =   225
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "10"
      Height          =   195
      Left            =   5280
      TabIndex        =   31
      Top             =   4200
      Width           =   180
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Description"
      Height          =   195
      Index           =   12
      Left            =   4680
      TabIndex        =   29
      Top             =   4560
      Width           =   795
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "CD Label"
      Height          =   195
      Index           =   11
      Left            =   8160
      TabIndex        =   28
      Top             =   2280
      Width           =   660
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Path"
      Height          =   195
      Index           =   10
      Left            =   4680
      TabIndex        =   27
      Top             =   3720
      Width           =   330
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "CD ID"
      Height          =   195
      Index           =   9
      Left            =   8400
      TabIndex        =   26
      Top             =   1800
      Visible         =   0   'False
      Width           =   435
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Year"
      Height          =   195
      Index           =   8
      Left            =   4680
      TabIndex        =   25
      Top             =   2760
      Width           =   330
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Grade"
      Height          =   195
      Index           =   7
      Left            =   4680
      TabIndex        =   24
      Top             =   4200
      Width           =   435
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "URL"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   6
      Left            =   4680
      TabIndex        =   23
      ToolTipText     =   "GO ->"
      Top             =   3240
      Width           =   330
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Commnent"
      Height          =   195
      Index           =   5
      Left            =   4680
      TabIndex        =   22
      Top             =   5520
      Width           =   750
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "OS"
      Height          =   195
      Index           =   4
      Left            =   4680
      TabIndex        =   21
      Top             =   1800
      Width           =   225
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Publisher"
      Height          =   195
      Index           =   3
      Left            =   4680
      TabIndex        =   20
      Top             =   2280
      Width           =   645
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Size"
      Height          =   195
      Index           =   2
      Left            =   8520
      TabIndex        =   19
      Top             =   1320
      Visible         =   0   'False
      Width           =   300
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Type"
      Height          =   195
      Index           =   1
      Left            =   4680
      TabIndex        =   18
      Top             =   1320
      Width           =   360
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Name"
      Height          =   195
      Index           =   0
      Left            =   4680
      TabIndex        =   17
      Top             =   840
      Width           =   420
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      X1              =   4440
      X2              =   10560
      Y1              =   600
      Y2              =   600
   End
   Begin VB.Image Image3 
      Height          =   4230
      Left            =   4440
      Picture         =   "Game.frx":38E8
      Top             =   600
      Width           =   6285
   End
End
Attribute VB_Name = "Game"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim CFile
Dim Num As Integer
Dim a
Dim CdlgEx1 As New CCD
Dim FileNa
Dim NW As Integer

Private Sub Command1_Click()
On Error GoTo 10
CdlgEx1.CancelError = False
CdlgEx1.Filter = "Execute Files|*.exe"
CdlgEx1.DialogTitle = "Browse Game"
CdlgEx1.ShowOpen
FileNa = CdlgEx1.FileName
GetInfo2 (FileNa)
Text7.Text = Mid(FileNa, 3, Len(FileNa))
Text10.Text = VolumeName(Mid(FileNa, 1, 2) & "\")
Label3.Caption = getDiskSp1(Mid(FileNa, 1, 2) & "\") & " bytes"
If Len(FileNa) <= 3 Then Text7.Text = "Unknown": Label3.Caption = "Unknown" ': Text10.Text = "Unknown"
Exit Sub
10:
Text10.Text = "Unknown"
Text7.Text = "Unknown"
End Sub

Private Sub Command2_Click()
List1.Visible = True
List1.SetFocus
End Sub

Private Sub Command3_Click()
List4.Clear
For Num = 0 To 14
List4.AddItem AllGame(Num)
Next Num
List4.Visible = True
List4.SetFocus
End Sub

Private Sub Command4_Click()
List2.Visible = True
List2.SetFocus
End Sub


Private Sub Command5_Click()
List3.Visible = True
List3.SetFocus
End Sub

Private Sub Form_Activate()
Call RefreshGame
End Sub

Private Sub Form_Click()
List1.Visible = False
List2.Visible = False
List3.Visible = False
List4.Visible = False
End Sub

Private Sub Form_Resize()
LV.Height = Game.Height - 900
Image2.Left = Game.Width - 8760
Picture1(1).Width = Game.Width - 3705
Line1.X2 = Game.Width
Text4.Width = Game.Width - 5505
Text1.Width = Game.Width - 8505
Label2(2).Left = Game.Width - 2280
Text2.Width = Game.Width - 8505
Label2(9).Left = Game.Width - 2400
Text3.Width = Game.Width - 8505
Label2(11).Left = Game.Width - 2640
Text10.Left = Game.Width - 1800
Text6.Width = Game.Width - 5985
Text7.Width = Text6.Width
Text8.Width = Game.Width - 5865
Text9.Width = Text8.Width

a = Game.Height - Text8.Top

Text8.Height = (a / 2) - 150
Text9.Height = (a / 2) - 150
Text9.Top = Text8.Top + Text8.Height + 100
Label2(5).Top = Text9.Top
Picture2.Left = Image2.Left - 20
Label3.Left = Game.Width - 1800
Label4.Left = Label3.Left
Command5.Left = Game.Width - 3000
Command4.Left = Game.Width - 3240
Command3.Left = Game.Width - 3240
Command1.Left = Game.Width - 700
List2.Left = Game.Width - 3840
List3.Left = Game.Width - 5160: List3.Top = 2540
List4.Left = Game.Width - 4680
Image3.Left = Game.Width * 0.4321111
End Sub

Private Sub Image3_Click()
List1.Visible = False
List2.Visible = False
List3.Visible = False
List4.Visible = False
End Sub

Private Sub Label2_Click(Index As Integer)
ShellExecute Me.hWnd, "Open", Text6.Text, "", "", 1
End Sub

Private Sub List1_Click()
Text5.Text = List1.List(List1.ListIndex)
Text5.SetFocus
List1.Visible = False
End Sub

Private Sub List1_GotFocus()
List1.Visible = True
End Sub

Private Sub List1_LostFocus()
List1.Visible = False
End Sub

Private Sub List2_Click()
Text2.Text = List2.List(List2.ListIndex)
List2.Visible = False
Text2.SetFocus
End Sub

Private Sub List2_LostFocus()
List2.Visible = False
End Sub

Private Sub List3_Click()
Text3.Text = List3.List(List3.ListIndex)
List3.Visible = False
Text3.SetFocus
End Sub

Private Sub List3_LostFocus()
List3.Visible = False
End Sub

Private Sub List4_Click()
Text1.Text = List4.List(List4.ListIndex)
List4.Visible = False
Text1.SetFocus
End Sub

Private Sub List4_LostFocus()
List4.Visible = False
End Sub

Private Sub LV_Click()
FindGame LV.SelectedItem.SubItems(13): NW = 0
End Sub

Private Sub LV_KeyUp(KeyCode As Integer, Shift As Integer)
FindGame LV.SelectedItem.SubItems(13): NW = 0
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
On Error Resume Next
Select Case Button.Index
Case 1 'New
Text4.Text = ""
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Label3 = ""
Label4 = ""
Text10.Text = ""
Text5.Text = ""
Text6.Text = ""
Text7.Text = ""
VScroll1.Value = 0
Text8.Text = ""
Text9.Text = ""

Text4.Text = InputBox("Insert Game Name", "New Game")
NW = 1
Exit Sub
Case 2
Dim LL
'LL = LV.SelectedItem.Index
SGameToMDB NW
'GLF.Caption = LL
'LV.SetFocus
'LV.ListItems (LL)
NW = 0
Case 3
If LV.ListItems.Count > 0 Then RemGame Game.LV.SelectedItem.SubItems(13)
Case 6
Load Gen
GLF.Enabled = False
Gen.Combo1.ListIndex = 2
Gen.Show 1
Case 7
CleanMDB Games
Sleep 600
Call RefreshGame
NW = 0
End Select
Exit Sub
End Sub

Private Sub VScroll1_Change()
Label9.Caption = Abs(VScroll1.Value - 10)
Picture2.Width = (50 * VScroll1.Value) * 10
End Sub


Private Sub GetInfo2(path)
    Dim fs, d, s, t, lblFree, lblTot
    Dim drvpath As String
    
    On Error Resume Next
    
    drvpath = Mid(path, 1, 1)
    Set fs = CreateObject("Scripting.FileSystemObject")
    Set d = fs.GetDrive(fs.GetDriveName(fs.GetAbsolutePathName(drvpath & ":\")))
    Select Case d.DriveType
        Case 0: t = "Unknown"
        Case 1: t = "Removable"
        Case 2: t = "Hard Disk"
        Case 3: t = "Network"
        Case 4: t = "CD-ROM"
        Case 5: t = "RAM Disc"
    End Select
    If Err Then
        Label4.Caption = ""
        Exit Sub
    Else
        Label4.Caption = d.SerialNumber
    End If
End Sub

