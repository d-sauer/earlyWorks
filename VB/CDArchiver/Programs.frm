VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Programs 
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
      Height          =   1230
      ItemData        =   "Programs.frx":0000
      Left            =   9000
      List            =   "Programs.frx":0016
      Sorted          =   -1  'True
      TabIndex        =   36
      Top             =   3000
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.ListBox List3 
      BackColor       =   &H80000018&
      Height          =   1230
      ItemData        =   "Programs.frx":0048
      Left            =   9960
      List            =   "Programs.frx":005E
      TabIndex        =   35
      Top             =   2520
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.ListBox List2 
      BackColor       =   &H80000018&
      Height          =   1620
      ItemData        =   "Programs.frx":0086
      Left            =   6120
      List            =   "Programs.frx":00A2
      TabIndex        =   34
      Top             =   2040
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.ListBox List1 
      BackColor       =   &H80000018&
      Height          =   1425
      ItemData        =   "Programs.frx":00DC
      Left            =   6480
      List            =   "Programs.frx":0104
      TabIndex        =   33
      Top             =   1560
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.CommandButton Command5 
      Height          =   280
      Left            =   10200
      Picture         =   "Programs.frx":019A
      Style           =   1  'Graphical
      TabIndex        =   32
      Top             =   2760
      Width           =   270
   End
   Begin VB.TextBox Text12 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   4920
      MultiLine       =   -1  'True
      TabIndex        =   9
      Top             =   3720
      Width           =   5535
   End
   Begin VB.TextBox Text11 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   4800
      MultiLine       =   -1  'True
      TabIndex        =   10
      Top             =   4200
      Width           =   2295
   End
   Begin VB.CommandButton Command4 
      Height          =   280
      Left            =   10200
      Picture         =   "Programs.frx":03B0
      Style           =   1  'Graphical
      TabIndex        =   16
      Top             =   3240
      Visible         =   0   'False
      Width           =   270
   End
   Begin VB.TextBox Text10 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   5160
      MultiLine       =   -1  'True
      TabIndex        =   8
      Top             =   3240
      Width           =   5055
   End
   Begin VB.TextBox Text9 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   690
      Left            =   5160
      MultiLine       =   -1  'True
      TabIndex        =   12
      Top             =   5640
      Width           =   5295
   End
   Begin VB.TextBox Text8 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   690
      Left            =   5280
      MultiLine       =   -1  'True
      TabIndex        =   11
      Top             =   4800
      Width           =   5175
   End
   Begin VB.CommandButton Command3 
      Height          =   280
      Left            =   10200
      Picture         =   "Programs.frx":05C6
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   2280
      Width           =   270
   End
   Begin VB.TextBox Text7 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   8520
      TabIndex        =   7
      Top             =   2760
      Width           =   1695
   End
   Begin VB.TextBox Text6 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   8520
      TabIndex        =   6
      Top             =   2280
      Width           =   1695
   End
   Begin VB.TextBox Text5 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   5160
      TabIndex        =   5
      Top             =   2760
      Width           =   2415
   End
   Begin VB.TextBox Text4 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   5160
      TabIndex        =   4
      Top             =   2280
      Width           =   2415
   End
   Begin VB.CommandButton Command1 
      Height          =   255
      Left            =   6720
      Picture         =   "Programs.frx":07DC
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   1800
      Width           =   270
   End
   Begin VB.TextBox Text3 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   4920
      TabIndex        =   3
      Top             =   1800
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      Height          =   255
      Left            =   8040
      Picture         =   "Programs.frx":09F2
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   1320
      Width           =   270
   End
   Begin VB.TextBox Text2 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   4920
      TabIndex        =   2
      Top             =   1320
      Width           =   3135
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   4920
      TabIndex        =   1
      Top             =   840
      Width           =   5535
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      Height          =   200
      Index           =   0
      Left            =   0
      ScaleHeight     =   195
      ScaleWidth      =   4140
      TabIndex        =   18
      Top             =   600
      Width           =   4140
      Begin VB.Image Image1 
         Height          =   195
         Left            =   30
         Picture         =   "Programs.frx":0C08
         ToolTipText     =   "View by"
         Top             =   0
         Width           =   195
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Programs"
         Height          =   195
         Left            =   300
         TabIndex        =   19
         Top             =   0
         Width           =   660
      End
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
         NumButtons      =   7
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "New Program"
            ImageIndex      =   6
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Apply Changes"
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
            Object.ToolTipText     =   "Compilation"
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
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   10320
      Top             =   480
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
            Picture         =   "Programs.frx":0C7A
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Programs.frx":1556
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Programs.frx":1872
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Programs.frx":1B8E
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Programs.frx":1EAA
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Programs.frx":21C6
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ListView LV 
      Height          =   5415
      Left            =   0
      TabIndex        =   17
      Top             =   840
      Width           =   4125
      _ExtentX        =   7276
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
      Index           =   11
      Left            =   4320
      TabIndex        =   31
      ToolTipText     =   "GO ->"
      Top             =   3720
      Width           =   330
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      X1              =   4080
      X2              =   10680
      Y1              =   600
      Y2              =   600
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Size"
      Height          =   195
      Index           =   10
      Left            =   4320
      TabIndex        =   30
      Top             =   4200
      Width           =   300
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Purpose"
      Height          =   195
      Index           =   9
      Left            =   4320
      TabIndex        =   29
      Top             =   3240
      Width           =   585
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Comment"
      Height          =   195
      Index           =   8
      Left            =   4320
      TabIndex        =   28
      Top             =   5640
      Width           =   660
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Description"
      Height          =   195
      Index           =   7
      Left            =   4320
      TabIndex        =   27
      Top             =   4800
      Width           =   795
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Licenc"
      Height          =   195
      Index           =   6
      Left            =   7920
      TabIndex        =   26
      Top             =   2760
      Width           =   480
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Year"
      Height          =   195
      Index           =   5
      Left            =   8040
      TabIndex        =   25
      Top             =   2280
      Width           =   330
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Publisher"
      Height          =   195
      Index           =   4
      Left            =   4320
      TabIndex        =   24
      Top             =   2760
      Width           =   645
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "CD Label"
      Height          =   195
      Index           =   3
      Left            =   4320
      TabIndex        =   23
      Top             =   2280
      Width           =   660
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "OS"
      Height          =   195
      Index           =   2
      Left            =   4320
      TabIndex        =   22
      Top             =   1800
      Width           =   225
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Type"
      Height          =   195
      Index           =   1
      Left            =   4320
      TabIndex        =   21
      Top             =   1320
      Width           =   360
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Name"
      Height          =   195
      Index           =   0
      Left            =   4320
      TabIndex        =   20
      Top             =   840
      Width           =   420
   End
   Begin VB.Image Image2 
      Height          =   10440
      Left            =   3360
      Picture         =   "Programs.frx":24E2
      Top             =   0
      Width           =   14925
   End
End
Attribute VB_Name = "Programs"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim NW As Integer
Dim a

Private Sub Command1_Click()
List2.Visible = True
List2.SetFocus
End Sub

Private Sub Command2_Click()
List1.Visible = True
List1.SetFocus
End Sub

Private Sub Command3_Click()
List3.Visible = True
List3.SetFocus
End Sub


Private Sub Command5_Click()
List4.Visible = True
List4.SetFocus
End Sub

Private Sub Form_Activate()
Call RefreshProg
End Sub

Private Sub Form_Resize()
Command1.Left = Text3.Left + Text3.Width
Command2.Left = Text2.Left + Text2.Width
LV.Height = Programs.Height - 900
Line1.X2 = Programs.Width
Text1.Width = Programs.Width - 5265
Text4.Width = Programs.Width * 0.233611111
Text5.Width = Text4.Width
Label2(5).Left = Text4.Left + Text4.Width + 465
Label2(6).Left = Text5.Left + Text5.Width + 345
Text6.Left = Label2(5).Left + Label2(5).Width + 150
Text7.Left = Label2(6).Left + Label2(6).Width + 120

Text6.Width = Programs.Width * 0.156944444
Command3.Left = Text6.Left + Text6.Width
Text7.Width = Text6.Width + Command3.Width - 270
Command5.Left = Text7.Left + Text7.Width
Text10.Width = Programs.Width - 5745
Command4.Left = Text10.Left + Text10.Width
Text12.Width = Programs.Width - 5265
Text11.Width = Programs.Width * 0.21296
Text8.Width = Programs.Width - 5625
Text9.Width = Programs.Width - 5505

a = Programs.Height - Text8.Top

Text8.Height = (a / 2) - 150
Text9.Height = (a / 2) - 150
Text9.Top = Text8.Top + Text8.Height + 100
Label2(8).Top = Text9.Top
List3.Left = Command3.Left - 240
List4.Left = Command5.Left - 720
End Sub

Private Sub Image2_Click()
List1.Visible = False
List2.Visible = False
List3.Visible = False
List4.Visible = False
End Sub

Private Sub Label2_Click(Index As Integer)
ShellExecute Me.hWnd, "Open", Text12.Text, "", "", 1
End Sub

Private Sub List1_Click()
Text2.Text = List1.List(List1.ListIndex)
Text2.SetFocus
List1.Visible = False
End Sub

Private Sub List1_LostFocus()
List1.Visible = False
End Sub

Private Sub List2_Click()
Text3.Text = List2.List(List2.ListIndex)
List2.Visible = False
Text3.SetFocus
End Sub

Private Sub List2_LostFocus()
List2.Visible = False
End Sub

Private Sub List3_Click()
Text6.Text = List3.List(List3.ListIndex)
List3.Visible = False
Text6.SetFocus
End Sub

Private Sub List3_LostFocus()
List3.Visible = False
End Sub

Private Sub List4_Click()
Text7.Text = List4.List(List4.ListIndex)
List4.Visible = False
Text7.SetFocus
End Sub

Private Sub List4_LostFocus()
List4.Visible = False
End Sub

Private Sub LV_Click()
On Error Resume Next
FindProg LV.SelectedItem.SubItems(12): NW = 0
End Sub


Private Sub LV_KeyUp(KeyCode As Integer, Shift As Integer)
On Error Resume Next
FindProg LV.SelectedItem.SubItems(12): NW = 0
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
Select Case Button.Index
Case 1 'New
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Text5.Text = ""
Text6.Text = ""
Text7.Text = ""
Text8.Text = ""
Text9.Text = ""
Text10.Text = ""
Text11.Text = ""
Text12.Text = ""
Text1.Text = InputBox("Insert Program Name", "New Program")
Text1.SetFocus
NW = 1
Case 2 'Apply
SProgToMDB NW
NW = 0
Case 3 'Remove
On Error Resume Next
If LV.ListItems.Count > 0 Then RemProg LV.SelectedItem.SubItems(12)
Case 6 'generate
Load Gen
GLF.Enabled = False
Gen.Combo1.ListIndex = 3
Gen.Show 1
Case 7
'CleanMDB Progs
'Sleep 500
Call RefreshProg
NW = 0
End Select
End Sub

Private Sub Toolbar1_Click()
List1.Visible = False
List2.Visible = False
List3.Visible = False
List4.Visible = False
End Sub
