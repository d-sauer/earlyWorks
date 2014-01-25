VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Movie 
   BackColor       =   &H80000004&
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   7455
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   10800
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   7645.709
   ScaleMode       =   0  'User
   ScaleWidth      =   10800
   ShowInTaskbar   =   0   'False
   Begin VB.ListBox List3 
      BackColor       =   &H80000018&
      Height          =   2595
      Left            =   4680
      Sorted          =   -1  'True
      TabIndex        =   47
      Top             =   1800
      Visible         =   0   'False
      Width           =   2775
   End
   Begin VB.CommandButton Command2 
      Height          =   255
      Left            =   6000
      Picture         =   "Movie.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   41
      Top             =   2520
      Width           =   270
   End
   Begin VB.CommandButton Command5 
      Height          =   273
      Left            =   7200
      Picture         =   "Movie.frx":0216
      Style           =   1  'Graphical
      TabIndex        =   46
      Top             =   1560
      Width           =   270
   End
   Begin MSComctlLib.Toolbar Toolbar2 
      Height          =   660
      Left            =   7800
      TabIndex        =   45
      Top             =   1710
      Visible         =   0   'False
      Width           =   360
      _ExtentX        =   635
      _ExtentY        =   1164
      ButtonWidth     =   609
      ButtonHeight    =   582
      Style           =   1
      ImageList       =   "ImageList2"
      DisabledImageList=   "ImageList2"
      HotImageList    =   "ImageList2"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   2
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Add"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Remove"
            ImageIndex      =   2
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList2 
      Left            =   7920
      Top             =   2880
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   2
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Movie.frx":042C
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Movie.frx":074C
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.ListBox List2 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      Height          =   810
      ItemData        =   "Movie.frx":0A6C
      Left            =   8160
      List            =   "Movie.frx":0A6E
      TabIndex        =   44
      Top             =   1560
      Visible         =   0   'False
      Width           =   2535
   End
   Begin VB.ListBox List1 
      BackColor       =   &H80000018&
      Height          =   1620
      ItemData        =   "Movie.frx":0A70
      Left            =   5760
      List            =   "Movie.frx":0A8C
      TabIndex        =   42
      Top             =   2760
      Visible         =   0   'False
      Width           =   495
   End
   Begin MSComctlLib.ListView LV 
      Height          =   4095
      Left            =   0
      TabIndex        =   40
      Top             =   840
      Width           =   3650
      _ExtentX        =   6429
      _ExtentY        =   7223
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
   Begin VB.CommandButton Command1 
      Caption         =   ".."
      Height          =   255
      Left            =   3240
      TabIndex        =   39
      ToolTipText     =   "Browse subtitle"
      Top             =   5400
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.VScrollBar VScroll1 
      Height          =   320
      Left            =   4920
      Max             =   10
      TabIndex        =   4
      Top             =   1150
      Width           =   135
   End
   Begin VB.TextBox Text11 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   705
      Left            =   4800
      MultiLine       =   -1  'True
      TabIndex        =   12
      Top             =   5640
      Width           =   5895
   End
   Begin VB.TextBox Text10 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   705
      Left            =   4560
      MultiLine       =   -1  'True
      TabIndex        =   10
      Top             =   3960
      Width           =   6135
   End
   Begin VB.TextBox Text9 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   705
      Left            =   4800
      MultiLine       =   -1  'True
      TabIndex        =   11
      Top             =   4800
      Width           =   5895
   End
   Begin VB.TextBox Text8 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   4560
      TabIndex        =   8
      Top             =   3000
      Width           =   2655
   End
   Begin VB.TextBox Text7 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   4560
      TabIndex        =   9
      Top             =   3480
      Width           =   5655
   End
   Begin VB.TextBox Text6 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   4560
      TabIndex        =   6
      Top             =   2040
      Width           =   2655
   End
   Begin VB.TextBox Text5 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   4560
      TabIndex        =   7
      Top             =   2520
      Width           =   1455
   End
   Begin VB.TextBox Text4 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   4560
      TabIndex        =   3
      Top             =   765
      Width           =   3735
   End
   Begin VB.TextBox Text3 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   4560
      TabIndex        =   5
      Top             =   1560
      Width           =   2655
   End
   Begin VB.TextBox Text2 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   840
      TabIndex        =   2
      Top             =   5400
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000F&
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   1080
      TabIndex        =   1
      Top             =   5040
      Width           =   2415
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      Height          =   200
      Index           =   0
      Left            =   0
      ScaleHeight     =   195
      ScaleWidth      =   3660
      TabIndex        =   13
      Top             =   600
      Width           =   3660
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Movie"
         Height          =   195
         Left            =   300
         TabIndex        =   14
         Top             =   0
         Width           =   435
      End
      Begin VB.Image Image1 
         Height          =   195
         Left            =   30
         Picture         =   "Movie.frx":0AC0
         ToolTipText     =   "View by"
         Top             =   0
         Width           =   195
      End
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   2400
      Top             =   6600
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   8
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Movie.frx":0B32
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Movie.frx":140E
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Movie.frx":172A
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Movie.frx":1A46
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Movie.frx":1D62
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Movie.frx":207E
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Movie.frx":239A
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Movie.frx":26BA
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
         NumButtons      =   9
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "New Movie"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Apply Changes"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Remove Movie"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.Visible         =   0   'False
            Object.ToolTipText     =   "Creat Compilation"
            ImageIndex      =   5
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Generate"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Internet Movies Database"
            ImageIndex      =   7
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Refresh"
            ImageIndex      =   8
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
      EndProperty
      Begin VB.PictureBox Picture2 
         BorderStyle     =   0  'None
         Height          =   495
         Left            =   4320
         ScaleHeight     =   495
         ScaleWidth      =   6375
         TabIndex        =   21
         Top             =   0
         Width           =   6375
         Begin VB.PictureBox Picture3 
            BorderStyle     =   0  'None
            Height          =   495
            Left            =   2880
            ScaleHeight     =   495
            ScaleWidth      =   15
            TabIndex        =   23
            Top             =   0
            Width           =   15
         End
         Begin VB.Image Image2 
            Height          =   345
            Left            =   2880
            Picture         =   "Movie.frx":29D6
            Top             =   100
            Width           =   3450
         End
         Begin VB.Label Label8 
            BackStyle       =   0  'Transparent
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   238
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   120
            TabIndex        =   22
            Top             =   0
            Width           =   2595
         End
      End
   End
   Begin VB.Label Label14 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Path"
      Height          =   195
      Left            =   7680
      TabIndex        =   43
      Top             =   1541
      Visible         =   0   'False
      Width           =   330
   End
   Begin VB.Label Label13 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Subtitle :"
      Height          =   195
      Left            =   120
      TabIndex        =   38
      Top             =   5400
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label Label12 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Path :"
      ForeColor       =   &H00000000&
      Height          =   195
      Left            =   120
      TabIndex        =   37
      Top             =   6675
      Visible         =   0   'False
      Width           =   420
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      Caption         =   "Label11"
      Height          =   195
      Left            =   840
      TabIndex        =   36
      Top             =   6720
      Visible         =   0   'False
      Width           =   570
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      Caption         =   "Label10"
      Height          =   195
      Left            =   840
      TabIndex        =   35
      Top             =   6480
      Visible         =   0   'False
      Width           =   570
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      X1              =   3600
      X2              =   10560
      Y1              =   615.349
      Y2              =   615.349
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "10"
      Height          =   195
      Left            =   4440
      TabIndex        =   34
      Top             =   1200
      Width           =   180
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Grade"
      Height          =   195
      Index           =   10
      Left            =   3840
      TabIndex        =   33
      Top             =   1200
      Width           =   435
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Comment"
      ForeColor       =   &H00000000&
      Height          =   195
      Index           =   9
      Left            =   3840
      TabIndex        =   32
      Top             =   5640
      Width           =   660
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Description"
      ForeColor       =   &H00000000&
      Height          =   195
      Index           =   8
      Left            =   3840
      TabIndex        =   31
      Top             =   4800
      Width           =   795
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Actor"
      ForeColor       =   &H00000000&
      Height          =   195
      Index           =   7
      Left            =   3840
      TabIndex        =   30
      Top             =   3960
      Width           =   375
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
      ForeColor       =   &H00000000&
      Height          =   195
      Index           =   6
      Left            =   3840
      TabIndex        =   29
      ToolTipText     =   "GO ->"
      Top             =   3480
      Width           =   330
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Directed"
      ForeColor       =   &H00000000&
      Height          =   195
      Index           =   5
      Left            =   3840
      TabIndex        =   28
      Top             =   3000
      Width           =   600
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Year"
      ForeColor       =   &H00000000&
      Height          =   195
      Index           =   4
      Left            =   3840
      TabIndex        =   27
      Top             =   2520
      Width           =   330
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Tagline"
      ForeColor       =   &H00000000&
      Height          =   195
      Index           =   3
      Left            =   3840
      TabIndex        =   26
      Top             =   2040
      Width           =   525
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Type"
      ForeColor       =   &H00000000&
      Height          =   195
      Index           =   2
      Left            =   3840
      TabIndex        =   25
      Top             =   1560
      Width           =   360
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Name"
      ForeColor       =   &H00000000&
      Height          =   195
      Index           =   1
      Left            =   3840
      TabIndex        =   24
      Top             =   765
      Width           =   420
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Drive ID :"
      ForeColor       =   &H00000000&
      Height          =   195
      Left            =   120
      TabIndex        =   20
      Top             =   6480
      Visible         =   0   'False
      Width           =   675
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "Label4"
      ForeColor       =   &H00FF0000&
      Height          =   195
      Left            =   840
      TabIndex        =   19
      Top             =   7215
      Visible         =   0   'False
      Width           =   2640
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Size :"
      ForeColor       =   &H00000000&
      Height          =   195
      Left            =   240
      TabIndex        =   18
      Top             =   7215
      Visible         =   0   'False
      Width           =   390
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Label4"
      ForeColor       =   &H00FF0000&
      Height          =   195
      Left            =   840
      TabIndex        =   17
      Top             =   6960
      Visible         =   0   'False
      Width           =   2640
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Format :"
      ForeColor       =   &H00000000&
      Height          =   195
      Left            =   240
      TabIndex        =   16
      Top             =   6960
      Visible         =   0   'False
      Width           =   570
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "CD Label :"
      ForeColor       =   &H00000000&
      Height          =   195
      Index           =   0
      Left            =   120
      TabIndex        =   15
      Top             =   5040
      Width           =   750
   End
   Begin VB.Image Image3 
      Height          =   13530
      Left            =   -100
      Picture         =   "Movie.frx":3434
      Stretch         =   -1  'True
      Top             =   -100
      Width           =   16410
   End
End
Attribute VB_Name = "Movie"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a, B
Dim CFile
Dim CdlgEx1 As New CCD
Dim FileNa As String
Dim fSize As Double, fsize2 As Double
Dim Dur As Double, Dur2 As Double
Dim NW
Dim A1, STR, STR1, NN
Dim Num As Integer
Private Const FILE_ATTRIBUTE_READONLY = &H1
Private Const FILE_ATTRIBUTE_HIDDEN = &H2
Private Const FILE_ATTRIBUTE_SYSTEM = &H4
Private Const FILE_ATTRIBUTE_DIRECTORY = &H10
Private Const FILE_ATTRIBUTE_ARCHIVE = &H20
Private Const FILE_ATTRIBUTE_NORMAL = &H80
Private Const FILE_ATTRIBUTE_TEMPORARY = &H100
Private Const FILE_ATTRIBUTE_COMPRESSED = &H800
Private Const MAX_PATH = 260

Private Type FILETIME
        dwLowDateTime As Long
        dwHighDateTime As Long
End Type

Private Type WIN32_FIND_DATA
        dwFileAttributes As Long
        ftCreationTime As FILETIME
        ftLastAccessTime As FILETIME
        ftLastWriteTime As FILETIME
        nFileSizeHigh As Long
        nFileSizeLow As Long
        dwReserved0 As Long
        dwReserved1 As Long
        cFileName As String * MAX_PATH
        cAlternate As String * 14
End Type


Private Declare Function FindFirstFile Lib "kernel32" Alias "FindFirstFileA" _
    (ByVal lpFileName As String, lpFindFileData As WIN32_FIND_DATA) As Long

Private Declare Function FindNextFile Lib "kernel32" Alias "FindNextFileA" _
    (ByVal hFindFile As Long, lpFindFileData As WIN32_FIND_DATA) As Long
    
Private Declare Function FindClose Lib "kernel32" (ByVal hFindFile As Long) As Long

Private pbMessage As Boolean


Dim WFD As WIN32_FIND_DATA


Private Sub Command1_Click()
Dim CFile
CdlgEx1.CancelError = False
CdlgEx1.Filter = "Subtitle|*.txt;*.sub|All Files|*.*"
CdlgEx1.DialogTitle = "Browse Subtitle"
CdlgEx1.ShowOpen
Text2.Text = Mid(CdlgEx1.FileName, 3, Len(CdlgEx1.FileName))

End Sub

Private Sub Command2_Click()
List1.Visible = True
List1.SetFocus
End Sub

Private Sub Command5_Click()
List3.Clear
List3.Visible = True
For Num = 0 To 33
List3.AddItem AllMovie(Num)
Next Num
List3.SetFocus
End Sub

Private Sub Form_Activate()
Call RefreshMovie
End Sub


Private Sub Form_Resize()
LV.Height = Movie.Height - 2320
Label2(0).Top = Movie.Height - 1375
Text1.Top = Movie.Height - 1375
Label3.Top = Movie.Height - 1015
Label4.Top = Movie.Height - 1015
Label5.Top = Movie.Height - 760
Label6.Top = Movie.Height - 760
Label13.Top = Movie.Height - 415
Text2.Top = Movie.Height - 415
Command1.Top = Movie.Height - 415
a = Movie.Height - Text10.Top

Text10.Height = (a / 3) - 150
Text9.Height = (a / 3) - 150
Text11.Height = (a / 3) - 150

Text9.Top = Text10.Top + Text10.Height + 135
Text11.Top = Text9.Top + Text9.Height + 135
Label2(8).Top = Text9.Top
Label2(9).Top = Text11.Top
Text10.Width = Movie.Width - 4665
Text9.Width = Movie.Width - 4905
Text11.Width = Movie.Width - 4905
Text7.Width = Movie.Width - 5145
Text4.Width = Movie.Width - 7065
Image2.Left = Movie.Width - 7920
Picture2.Width = Movie.Width - 4400
Picture3.Left = Movie.Width - 7920
Line1.X2 = Movie.Width
Label8.Width = Movie.Width - 8205
List2.Width = Movie.Width - 8265
End Sub

Private Sub Image3_Click()
List1.Visible = False
List3.Visible = False
End Sub

Private Sub Label11_Change()
FiltpathTxt Label11.Caption
End Sub

Private Sub Label2_Click(Index As Integer)
ShellExecute Me.hWnd, "Open", Text7.Text, "", "", 1
End Sub

Private Sub List1_Click()
Text5.Text = List1.List(List1.ListIndex)
List1.Visible = False
Text5.SetFocus
End Sub

Private Sub List1_GotFocus()
List1.Visible = True
End Sub

Private Sub List1_LostFocus()
List1.Visible = False
End Sub

Private Sub List3_Click()
Text3.Text = List3.List(List3.ListIndex)
List3.Visible = False
Text3.SetFocus
End Sub

Private Sub List3_LostFocus()
List3.Visible = False
End Sub

Private Sub LV_Click()
On Error Resume Next
Call FindMovi(LV.SelectedItem.SubItems(5))
End Sub

Private Sub LV_KeyUp(KeyCode As Integer, Shift As Integer)
On Error Resume Next
Call FindMovi(LV.SelectedItem.SubItems(5))
End Sub

Private Sub Text4_Change()
Label8.Caption = Text4.Text
End Sub


Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
Select Case Button.Index
Case 1
On Error Resume Next
'Dim CFile
'CdlgEx1.CancelError = False
'CdlgEx1.Filter = "All Formats|*.asf;*.asx;*.wm;*.avi;*.dat;*.mpeg;*.mpg;*.mpe;*.m1v;*.mp2;*.mpv2;*.mp2v;*.mpa;*.ivf;*.mov;*.qt|Windows Media Files|*.asf;*.asx;*.wm|Video Files|*.avi;*.dat|Movie Files|*.mpeg;*.mpg;*.mpe;*.m1v;*.mp2;*.mpv2;*.mp2v;*.mpa|Indeo Video File|*.ivf|Quick Time Format|*.mov;*.qt|All Files|*.*"
'CdlgEx1.DialogTitle = "Browse Movie"
'CdlgEx1.ShowOpen
'FileNa = CdlgEx1.FileName

Text1.Text = CdlgEx1.FileTitle
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
Label4.Caption = ""
Label6.Caption = ""
Label10.Caption = ""
Label11.Caption = ""
'Load
Label4.Caption = Mid(FileNa, Len(FileNa) - 2, Len(FileNa))
Label6.Caption = FileLen(FileNa) & " bytes"
'GetInfo1 (FileNa)
Text4.Text = InputBox("Insert Movie Name", "New Movie")

'CdlgEx1.CancelError = False
'CdlgEx1.Filter = "All Formats|*.asf;*.asx;*.wm;*.avi;*.dat;*.mpeg;*.mpg;*.mpe;*.m1v;*.mp2;*.mpv2;*.mp2v;*.mpa;*.ivf;*.mov;*.qt|Windows Media Files|*.asf;*.asx;*.wm|Video Files|*.avi;*.dat|Movie Files|*.mpeg;*.mpg;*.mpe;*.m1v;*.mp2;*.mpv2;*.mp2v;*.mpa|Indeo Video File|*.ivf|Quick Time Format|*.mov;*.qt|All Files|*.*"
'CdlgEx1.DialogTitle = "Browse Movie"
'CdlgEx1.ShowOpen
'FileNa = CdlgEx1.FileName
'GetInfo1 (FileNa)
'Label11.Caption = Mid(FileNa, 3, Len(FileNa))
'Text1.Text = VolumeName(Mid(FileNa, 1, 2) & "\")

Label11.Caption = Mid(FileNa, 3, Len(FileNa))
Text1.Text = VolumeName(Mid(FileNa, 1, 2) & "\")
NW = 1
Case 2
    Select Case NW
    Case 1
    If Not Len(Text4.Text) >= 1 Then Exit Sub
    'If Not Mid(Len(Label6.Caption), 1, Len(Label6.Caption)) >= 9 Then Exit Sub
    Call SMovieToDb
    Call RefreshMovie
    NW = 0
    Case 0
    GLF.cdb(1).Text = Trim(Movie.Text4.Text) 'Name
    GLF.cdb(2).Text = Trim(Movie.Text3.Text) 'Genre
    GLF.cdb(3).Text = Trim(Movie.Text6.Text) 'Tagline
    GLF.cdb(4).Text = Trim(Movie.Text9.Text) 'Description
    GLF.cdb(5).Text = Trim(Movie.Text11.Text) 'Comment
    GLF.cdb(6).Text = Trim(Movie.Text8.Text) 'Directed
    GLF.cdb(7).Text = Trim(Movie.Text5.Text) 'Year
    GLF.cdb(8).Text = Trim(Movie.Label4.Caption) 'Format
    GLF.cdb(9).Text = Trim(Movie.Text10.Text) 'Actor
    GLF.cdb(10).Text = Trim(Movie.Label6.Caption) 'Leght
    GLF.cdb(11).Text = Trim(Movie.VScroll1.Value) 'Grade
    GLF.cdb(12).Text = Trim("") 'Picture
    GLF.cdb(13).Text = Trim(Movie.Label10.Caption)   'Cd ID
    GLF.cdb(14).Text = Trim(Movie.Text7.Text) 'URL
'For N = 0 To List2.ListCount
'B = B & List2.List(N) & "||"
'Next N

    GLF.cdb(15).Text = Label11.Caption
    GLF.cdb(16).Text = Trim(Movie.Text1.Text) 'CD Label
    GLF.cdb(17).Text = Trim(Movie.Text2.Text) 'Subtitle
    VScroll1.Value = 10
    LoadTable (Movi)
    End Select
Case 3 ' Remove
If LV.ListItems.Count > 0 Then RemMovie (LV.SelectedItem.SubItems(5))
Case 6
Load Gen
GLF.Enabled = False
Gen.Combo1.ListIndex = 1
Gen.Show 1
Case 7 'www.imdb.com
ShellExecute Me.hWnd, "Open", "www.imdb.com", "", "", 1
Case 8
CleanMDB Movi
Sleep 600
Call RefreshMovie
End Select
Exit Sub
10:
Label6.Caption = InputBox("Insert Movie size in bytes", "New Movie") & " bytes"
NW = 1
Exit Sub
End Sub

Private Sub Toolbar2_ButtonClick(ByVal Button As MSComctlLib.Button)
Select Case Button.Index
Case 1
CdlgEx1.CancelError = False
CdlgEx1.Filter = "All Formats|*.asf;*.asx;*.wm;*.avi;*.dat;*.mpeg;*.mpg;*.mpe;*.m1v;*.mp2;*.mpv2;*.mp2v;*.mpa;*.ivf;*.mov;*.qt|Windows Media Files|*.asf;*.asx;*.wm|Video Files|*.avi;*.dat|Movie Files|*.mpeg;*.mpg;*.mpe;*.m1v;*.mp2;*.mpv2;*.mp2v;*.mpa|Indeo Video File|*.ivf|Quick Time Format|*.mov;*.qt|All Files|*.*"
CdlgEx1.DialogTitle = "Browse Movie"
CdlgEx1.ShowOpen
FileNa = CdlgEx1.FileName
GetInfo1 (FileNa)
Label11.Caption = Mid(FileNa, 3, Len(FileNa))
Text1.Text = VolumeName(Mid(FileNa, 1, 2) & "\")

List2.AddItem Mid(FileNa, 3, Len(FileNa))
Case 2
a = MsgBox("Are you sure want to erase movie path from database ?", 36, "Remove Path")
    Select Case a
    Case 6
    List2.RemoveItem List2.ListIndex
    Case 7
    Exit Sub
    End Select
End Select
End Sub

Private Sub VScroll1_Change()
Label9.Caption = Abs(VScroll1.Value - 10)
Picture3.Width = (35 * VScroll1.Value) * 10
End Sub


Private Sub GetInfo1(path)
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
        Label10.Caption = ""
        Exit Sub
    Else
        Label10.Caption = d.SerialNumber
    End If
End Sub
Private Function StripNulls(f As String) As String
    StripNulls = Left$(f, InStr(1, f, Chr$(0)) - 1)
End Function


Sub FiltpathTxt(txtt)
On Error GoTo 10
List2.Clear
For NN = 0 To Len(txtt)
a = A1 + 1
A1 = InStr(a, txtt, "||")
STR = LCase$(Mid(txtt, a, A1 - a))
STR = UCase$(Mid(STR, 1, 1)) & Mid(STR, 2, Len(STR))
List2.AddItem STR
STR1 = STR1 & "||" & STR
Next NN
10:

STR = LCase$(Mid(txtt, a, Len(txtt)))
STR = UCase$(Mid(STR, 1, 1)) & Mid(STR, 2, Len(STR))
STR1 = STR1 & " " & STR
List2.AddItem STR
End Sub
