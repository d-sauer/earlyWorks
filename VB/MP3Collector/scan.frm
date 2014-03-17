VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form scanf 
   BackColor       =   &H80000004&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Search"
   ClientHeight    =   5340
   ClientLeft      =   45
   ClientTop       =   255
   ClientWidth     =   8985
   Icon            =   "scan.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5340
   ScaleWidth      =   8985
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.ListBox List2 
      Height          =   840
      Left            =   3240
      TabIndex        =   23
      Top             =   5640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.ListBox List1 
      Height          =   840
      Left            =   4920
      Sorted          =   -1  'True
      TabIndex        =   22
      Top             =   5640
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Scan Folder"
      Height          =   375
      Left            =   7560
      TabIndex        =   21
      Top             =   0
      Width           =   1335
   End
   Begin MSComctlLib.ProgressBar PBar 
      Height          =   165
      Left            =   0
      TabIndex        =   18
      Top             =   4680
      Visible         =   0   'False
      Width           =   8940
      _ExtentX        =   15769
      _ExtentY        =   291
      _Version        =   393216
      Appearance      =   1
      Scrolling       =   1
   End
   Begin VB.CommandButton Command3 
      Caption         =   "&Ok"
      Height          =   375
      Left            =   7560
      TabIndex        =   9
      Top             =   960
      Width           =   1335
   End
   Begin MSComctlLib.ImageList ImageList2 
      Left            =   7560
      Top             =   4440
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   10
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "scan.frx":030A
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "scan.frx":0626
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "scan.frx":0942
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "scan.frx":0C5E
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "scan.frx":0F7A
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "scan.frx":1296
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "scan.frx":15EA
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "scan.frx":1952
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "scan.frx":1CBA
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "scan.frx":1FD6
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   2280
      TabIndex        =   8
      Top             =   5640
      Visible         =   0   'False
      Width           =   855
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   6960
      Top             =   4440
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
            Picture         =   "scan.frx":22F2
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "scan.frx":260E
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "scan.frx":292A
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "scan.frx":2C46
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   720
      TabIndex        =   6
      Text            =   "Combo1"
      Top             =   0
      Width           =   2655
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   1200
      TabIndex        =   5
      Top             =   1080
      Width           =   2175
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   7560
      TabIndex        =   1
      Top             =   480
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Scan"
      Height          =   375
      Left            =   6120
      TabIndex        =   0
      Top             =   0
      Width           =   1335
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Height          =   990
      Left            =   8640
      TabIndex        =   19
      Top             =   1440
      Width           =   375
      _ExtentX        =   661
      _ExtentY        =   1746
      ButtonWidth     =   609
      ButtonHeight    =   582
      Style           =   1
      ImageList       =   "ImageList2"
      DisabledImageList=   "ImageList2"
      HotImageList    =   "ImageList2"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   9
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Clear List"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Remove"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
            Object.Visible         =   0   'False
            Object.ToolTipText     =   "Change info"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.Visible         =   0   'False
            Style           =   3
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.Visible         =   0   'False
            Object.ToolTipText     =   "Play"
            ImageIndex      =   9
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.Visible         =   0   'False
            Object.ToolTipText     =   "Stop"
            ImageIndex      =   10
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.Visible         =   0   'False
            Style           =   3
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.Visible         =   0   'False
            Object.ToolTipText     =   "Copy To"
            ImageIndex      =   6
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ListView MusicSc 
      Height          =   3255
      Left            =   0
      TabIndex        =   20
      Top             =   1440
      Width           =   8655
      _ExtentX        =   15266
      _ExtentY        =   5741
      View            =   3
      MultiSelect     =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   0   'False
      AllowReorder    =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483624
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
   Begin VB.Line Line5 
      BorderColor     =   &H00E0E0E0&
      X1              =   6120
      X2              =   9000
      Y1              =   420
      Y2              =   420
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "Label9"
      Height          =   195
      Left            =   8400
      TabIndex        =   17
      Top             =   4800
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H00C00000&
      Height          =   195
      Left            =   6840
      TabIndex        =   16
      Top             =   5040
      Width           =   90
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "File(s) Length :"
      Height          =   195
      Index           =   2
      Left            =   5760
      TabIndex        =   15
      Top             =   5040
      Width           =   1035
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "File(s) Size :"
      Height          =   195
      Index           =   1
      Left            =   2640
      TabIndex        =   14
      Top             =   5040
      Width           =   840
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H00C00000&
      Height          =   195
      Left            =   3600
      TabIndex        =   13
      Top             =   5040
      Width           =   90
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H00C00000&
      Height          =   195
      Left            =   480
      TabIndex        =   12
      Top             =   360
      Width           =   90
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H00C00000&
      Height          =   195
      Left            =   1680
      TabIndex        =   11
      Top             =   5040
      Width           =   90
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Find Files :"
      Height          =   195
      Index           =   0
      Left            =   840
      TabIndex        =   10
      Top             =   5040
      Width           =   750
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H00C00000&
      Height          =   195
      Left            =   480
      TabIndex        =   7
      Top             =   600
      Width           =   90
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   120
      Picture         =   "scan.frx":2F62
      Top             =   4880
      Width           =   480
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Drive Label"
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
      Index           =   2
      Left            =   120
      TabIndex        =   4
      Top             =   1125
      Width           =   990
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "ID"
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
      Index           =   0
      Left            =   120
      TabIndex        =   3
      Top             =   360
      Width           =   210
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Scan"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   195
      Left            =   120
      TabIndex        =   2
      Top             =   60
      Width           =   450
   End
   Begin VB.Menu Edit 
      Caption         =   "Edit"
      Visible         =   0   'False
      Begin VB.Menu Artist 
         Caption         =   "Artist"
         Begin VB.Menu ListA 
            Caption         =   "List"
            Index           =   0
         End
         Begin VB.Menu ListA 
            Caption         =   "List"
            Index           =   1
         End
         Begin VB.Menu ListA 
            Caption         =   "List"
            Index           =   2
         End
         Begin VB.Menu ListA 
            Caption         =   "List"
            Index           =   3
         End
         Begin VB.Menu ListA 
            Caption         =   "List"
            Index           =   4
         End
         Begin VB.Menu ListA 
            Caption         =   "List"
            Index           =   5
         End
         Begin VB.Menu ListA 
            Caption         =   "List"
            Index           =   6
         End
         Begin VB.Menu ListA 
            Caption         =   "List"
            Index           =   7
         End
         Begin VB.Menu ListA 
            Caption         =   "List"
            Index           =   8
         End
         Begin VB.Menu ListA 
            Caption         =   "List"
            Index           =   9
         End
         Begin VB.Menu ListA 
            Caption         =   "List"
            Index           =   10
         End
         Begin VB.Menu ListA 
            Caption         =   "List"
            Index           =   11
         End
         Begin VB.Menu ListA 
            Caption         =   "List"
            Index           =   12
         End
      End
      Begin VB.Menu Album 
         Caption         =   "Album"
         Begin VB.Menu ListAlb 
            Caption         =   "List"
            Index           =   0
         End
         Begin VB.Menu ListAlb 
            Caption         =   "List"
            Index           =   1
         End
         Begin VB.Menu ListAlb 
            Caption         =   "List"
            Index           =   2
         End
         Begin VB.Menu ListAlb 
            Caption         =   "List"
            Index           =   3
         End
         Begin VB.Menu ListAlb 
            Caption         =   "List"
            Index           =   4
         End
         Begin VB.Menu ListAlb 
            Caption         =   "List"
            Index           =   5
         End
         Begin VB.Menu ListAlb 
            Caption         =   "List"
            Index           =   6
         End
         Begin VB.Menu ListAlb 
            Caption         =   "List"
            Index           =   7
         End
         Begin VB.Menu ListAlb 
            Caption         =   "List"
            Index           =   8
         End
         Begin VB.Menu ListAlb 
            Caption         =   "List"
            Index           =   9
         End
         Begin VB.Menu ListAlb 
            Caption         =   "List"
            Index           =   10
         End
         Begin VB.Menu ListAlb 
            Caption         =   "List"
            Index           =   11
         End
         Begin VB.Menu ListAlb 
            Caption         =   "List"
            Index           =   12
         End
      End
      Begin VB.Menu Year 
         Caption         =   "Year"
      End
      Begin VB.Menu Genre 
         Caption         =   "Genre"
      End
   End
End
Attribute VB_Name = "scanf"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim w1, X1, M1
Dim dr As String
Dim CdlgEx1 As New CCD
Dim NV, RN, DN, NN

Dim fSize As Double, fsize2 As Double
Dim Dur As Double, Dur2 As Double


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


Dim N As Integer
Dim L As ListItem
Dim a, A1, STRI, STRi1





Private Sub Combo1_Change()
GetInfo
Label4.Caption = getDiskSp(Combo1.Text)
Label9.Caption = getDiskSp1(Combo1.Text)
Text3.Text = VolumeName(Mid(Combo1.Text, 1, 2) & "\")
End Sub

Private Sub Combo1_Click()
GetInfo
Label4.Caption = getDiskSp(Combo1.Text)
Label9.Caption = getDiskSp1(Combo1.Text)
Text3.Text = VolumeName(Mid(Combo1.Text, 1, 2) & "\")
End Sub





Private Sub Command1_Click()
MusicSc.ListItems.Clear
N = 0
fSize = 0
fsize2 = 0
Dur = 0
Dur2 = 0
Label5 = ""
Label7 = ""
Label8 = ""

MusicSc.Refresh


Dim dr As String
If Text3.Text = " " Or Text3.Text = "" Then Text3.Text = "Unknown"
If Mid(Text3.Text, 1, 1) = " " Then Text3.Text = Mid(Text3.Text, 2, Len(Text3.Text))

dr = Mid(Combo1.Text, 1, 2) & "\"
MusicSc.Refresh
N = 0
fSize = 0
fsize2 = 0
Dur = 0
Dur2 = 0
Label5 = ""
Label7 = ""
Label8 = ""
GetFiles dr, True, "*.mp3"
End Sub

Private Sub Command2_Click()
MusicSc.ListItems.Clear
N = 0
fSize = 0
fsize2 = 0
Dur = 0
Dur2 = 0
Label5 = ""
Label7 = ""
Label8 = ""

MusicSc.Refresh

GLF.Enabled = True
Unload scanf
End Sub



Private Sub Command3_Click()
CleanScan
Sleep 200
SMusicToDb

MusicSc.ListItems.Clear
N = 0
fSize = 0
fsize2 = 0
Dur = 0
Dur2 = 0
Label5 = ""
Label7 = ""
Label8 = ""

MusicSc.Refresh

GLF.Enabled = True
Unload scanf
End Sub


Private Sub Command4_Click()

End Sub





Private Sub Command6_Click()
'Select directory
'Folder_COMPUTER = &H1000
'Folder_PRINTER = &H2000
'Folder_INCLUDEFILES = &H4001
                CdlgEx1.hOwner = Me.hWnd
                CdlgEx1.DialogPrompt = "Choose folder for Scan"
                CdlgEx1.flags = 1 'Folder_COMPUTER
                CdlgEx1.InitDir = "\"
                CdlgEx1.ShowFolder
                dr = CdlgEx1.InitDir

If Text3.Text = " " Or Text3.Text = "" Then Text3.Text = "Unknown"
If Mid(Text3.Text, 1, 1) = " " Then Text3.Text = Mid(Text3.Text, 2, Len(Text3.Text))
dr = dr & "\"

If Len(dr) > 1 Then
MusicSc.ListItems.Clear
N = 0
fSize = 0
fsize2 = 0
Dur = 0
Dur2 = 0
Label5 = ""
Label7 = ""
Label8 = ""
MusicSc.Refresh

End If
GetFiles dr, True, "*.mp3"
End Sub



Private Sub Form_Load()
On Error Resume Next

For DN = 1 To scanf.Drive1.ListCount - 1
scanf.Combo1.AddItem scanf.Drive1.List(DN) & "     " & DriveType(Mid(scanf.Drive1.List(DN), 1, 2))
Next DN

With scanf.MusicSc.ColumnHeaders
.Add , , "Title", 2000, 0
.Add , , "File Name", 1800, 0
.Add , , "Artist", 1100, 2
.Add , , "Album", 1500, 2
.Add , , "Year", 750, 2
.Add , , "Genre", 800, 2
.Add , , "Label", 900, 2
.Add , , "Duration [sec]", 1100, 2
.Add , , "Birate", 700, 2
.Add , , "Size [bytes]", 1100, 2
.Add , , "Path", 6000, 0
.Add , , "Drive ID", 1200, 1
End With



GLF.Enabled = False
scanf.Height = 5670
scanf.Width = 9075
Combo1.Text = "Select Drive"

'Read Artist to Combo2
End Sub

Private Sub Form_Unload(Cancel As Integer)
GLF.Enabled = True
End Sub

Private Sub Text2_Change()

End Sub

Private Sub GetInfo()
    Dim fs, d, s, t, lblFree, lblTot
    Dim drvpath As String
    
    On Error Resume Next
    
    drvpath = Mid(Combo1.Text, 1, 1)
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
        Label6.Caption = ""
        Exit Sub
    Else
        Label6.Caption = d.SerialNumber
    End If
End Sub




Public Sub GetFiles(path As String, SubFolder As Boolean, Optional Pattern As String = "*.mp3")
scanf.MousePointer = 11

MusicSc.Refresh 'NOVO
scanf.Refresh 'NOVO

    Dim WFD As WIN32_FIND_DATA
    Dim hFile As Long, fPath As String, fName As String
    
    fPath = AddBackslash(path)
    
    Dim sPattern As String
    sPattern = Pattern
    fName = fPath & sPattern
    
  
    hFile = FindFirstFile(fName, WFD)
    If (hFile > 0) And ((WFD.dwFileAttributes And FILE_ATTRIBUTE_DIRECTORY) <> FILE_ATTRIBUTE_DIRECTORY) Then
'-------------------------------------------------------------
        N = N + 1
        Set L = MusicSc.ListItems.Add '(, , "")
    ReadFile fPath & StripNulls(WFD.cFileName), StripNulls(WFD.cFileName), N
        L.SubItems(10) = fPath & StripNulls(WFD.cFileName)
        L.SubItems(1) = swp(StripNulls(WFD.cFileName))
        fSize = FileLen(fPath & StripNulls(WFD.cFileName)) 'Format$(FileLen(fPath & StripNulls(WFD.cFileName)), "###,###,###,###")
'        fsize2 = fsize2 + fSize
        L.SubItems(9) = fSize
        L.SubItems(6) = Text3.Text
        L.SubItems(11) = Label6.Caption
        
Call ReadMP3(fPath & StripNulls(WFD.cFileName), True, True)
With GetMP3Info
    L.SubItems(8) = STR(.Bitrate)
    Dur = STR(.Duration)
    L.SubItems(7) = Dur
End With
Dur2 = Dur2 + Dur
'Label8 = Dur2 & " [sec]"

'-------------------------------------------------------------
    End If
    
    If hFile > 0 Then
    While FindNextFile(hFile, WFD)
        If ((WFD.dwFileAttributes And FILE_ATTRIBUTE_DIRECTORY) <> FILE_ATTRIBUTE_DIRECTORY) Then
'-------------------------------------------------------------
        N = N + 1
        Set L = MusicSc.ListItems.Add '(, , "")
    ReadFile fPath & StripNulls(WFD.cFileName), StripNulls(WFD.cFileName), N
        L.SubItems(10) = fPath & StripNulls(WFD.cFileName)
        L.SubItems(1) = StripNulls(WFD.cFileName)
        fSize = FileLen(fPath & StripNulls(WFD.cFileName)) 'Format$(FileLen(fPath & StripNulls(WFD.cFileName)), "###,###,###,###")
'        fsize2 = fsize2 + fSize
'        Label7.Caption = Format$(fsize2, "###,###,###,###,###") & " [bytes]"
        L.SubItems(9) = fSize
        L.SubItems(6) = Text3.Text
        L.SubItems(11) = Label6.Caption
        
Call ReadMP3(fPath & StripNulls(WFD.cFileName), True, True)
With GetMP3Info
    L.SubItems(8) = STR(.Bitrate)
    Dur = STR(.Duration)
    L.SubItems(7) = Dur
End With
Dur2 = Dur2 + Dur
'Label8 = Dur2 & " [sec]"


'-------------------------------------------------------------
        End If
    Wend
    End If
    
    If SubFolder Then
        
   
        hFile = FindFirstFile(fPath & "*.*", WFD)
        If (hFile > 0) And ((WFD.dwFileAttributes And FILE_ATTRIBUTE_DIRECTORY) = FILE_ATTRIBUTE_DIRECTORY) And _
        StripNulls(WFD.cFileName) <> "." And StripNulls(WFD.cFileName) <> ".." Then
        
           GetFiles fPath & StripNulls(WFD.cFileName), True, sPattern
        End If
        
        While FindNextFile(hFile, WFD)
            If ((WFD.dwFileAttributes And FILE_ATTRIBUTE_DIRECTORY) = FILE_ATTRIBUTE_DIRECTORY) And _
            StripNulls(WFD.cFileName) <> "." And StripNulls(WFD.cFileName) <> ".." Then


                GetFiles fPath & StripNulls(WFD.cFileName), True, sPattern
            End If
        Wend
        
    End If
    FindClose hFile
    Set L = Nothing
    
    
scanf.MousePointer = 0
Label5 = N
Label8 = SecToDate(Dur2)
Label7.Caption = Format$(fsize2, "###,###,###,###,###") & " [bytes]"
End Sub


Private Function StripNulls(f As String) As String
    StripNulls = Left$(f, InStr(1, f, Chr$(0)) - 1)
End Function

Private Function AddBackslash(s As String) As String

    If Len(s) Then
       If Right$(s, 1) <> "\" Then
          AddBackslash = s & "\"
       Else
          AddBackslash = s
       End If
    Else
       AddBackslash = "\"
    End If
End Function







Private Sub Genre_Click()
Form1.Show 1
Dim SelL
With scanf
For SelL = .MusicSc.ListItems.Count To 1 Step -1
If .MusicSc.ListItems(SelL).Selected = True Then .MusicSc.ListItems(SelL).SubItems(5) = Ge_N.Genn
Next SelL
End With

End Sub

Private Sub ListA_Click(Index As Integer)
Dim SelL
For SelL = MusicSc.ListItems.Count To 1 Step -1
If MusicSc.ListItems(SelL).Selected = True Then MusicSc.ListItems(SelL).SubItems(2) = ListA.Item(Index).Caption
Next SelL
End Sub

Private Sub ListAlb_Click(Index As Integer)
Dim SelL
For SelL = MusicSc.ListItems.Count To 1 Step -1
If MusicSc.ListItems(SelL).Selected = True Then MusicSc.ListItems(SelL).SubItems(3) = ListAlb.Item(Index).Caption
Next SelL
End Sub


Private Sub MusicSc_MouseDown(Button As Integer, Shift As Integer, x As Single, Y As Single)
Dim N, B
If Button = 2 Then

'----
List1.Clear
List2.Clear
On Error Resume Next
'List select path, to filter dir path
For N = 0 To MusicSc.ListItems.Count
If MusicSc.ListItems(N).Selected = True Then PathAArtAl (MusicSc.ListItems(N).SubItems(10))
If MusicSc.ListItems.Count = 0 Then Exit Sub
Next N
'ciscenej od duplikata
Call ClearList1
'odvaja tekst izmedju '-'
For N = 0 To List2.ListCount
NESTO1 List2.List(N)
Next N
Call ClearList1
'odvajanje teksta izmedju '_'
For N = 0 To List2.ListCount
Nesto2 List2.List(N)
Next N
'ciscenej od duplikata
Call ClearList1
'ciscenej od duplikata
Call ClearList1

'----

For N = 0 To 12
ListA.Item(N).Visible = False
ListAlb.Item(N).Visible = False
Next N

B = List1.ListCount
If List1.ListCount > 12 Then B = 12

For N = 0 To B - 1
ListA.Item(N).Visible = True
ListA.Item(N).Caption = List1.List(N)
ListAlb.Item(N).Visible = True
ListAlb.Item(N).Caption = List1.List(N)
Next N
PopupMenu Edit, 1, x, Y + MusicSc.Top
End If

End Sub





Private Sub Picture1_Click()

End Sub


Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
Dim i, o

Select Case Button.Index
Case 1
MusicSc.ListItems.Clear
N = 0
fSize = 0
fsize2 = 0
Dur = 0
Dur2 = 0
Label5 = ""
Label7 = ""
Label8 = ""

MusicSc.Refresh
Case 3
For i = MusicSc.ListItems.Count - 1 To 1 Step -1
If MusicSc.ListItems(i).Selected = True Then MusicSc.ListItems.Remove (i)
Next i
Case 4
List1.Clear
List2.Clear
On Error Resume Next
'List select path, to filter dir path
For N = 0 To MusicSc.ListItems.Count
If MusicSc.ListItems(N).Selected = True Then PathAArtAl (MusicSc.ListItems(N).SubItems(10))
Next N
'ciscenej od duplikata
Call ClearList1
'odvaja tekst izmedju '-'
For N = 0 To List2.ListCount
NESTO1 List2.List(N)
Next N
Call ClearList1
'odvajanje teksta izmedju '_'
For N = 0 To List2.ListCount
Nesto2 List2.List(N)
Next N
'ciscenej od duplikata
Call ClearList1



Case 6
On Error Resume Next
Case 7
'Stop
End Select
End Sub


Private Sub ClearList1()
For w1 = List1.ListCount - 1 To 0 Step -1
X1 = List1.List(w1)
M1 = List1.List(w1 - 1)
If UCase$(X1) = UCase$(M1) Then List1.RemoveItem (w1)
Next w1
End Sub



Private Sub Toolbar2_ButtonClick(ByVal Button As MSComctlLib.Button)

End Sub

Public Sub PathAArtAl(TXT As String)
On Error GoTo 10
TXT = Mid(TXT, 3, Len(TXT))
For NN = 0 To Len(TXT)
a = A1 + 1
A1 = InStr(a, TXT, "\")
STRI = LCase$(Mid(TXT, a, A1 - a))
STRI = UCase$(Mid(STRI, 1, 1)) & Mid(STRI, 2, Len(STRI))
List1.AddItem LTrim(STRI)
List2.AddItem LTrim(STRI)
'STRi1 = STRi1 & " " & STRI
Next NN
10:
End Sub


Public Sub NESTO1(TXT As String)
On Error GoTo 10
For NN = 0 To Len(TXT)
a = A1 + 1
A1 = InStr(a, TXT, "-")
STRI = (Mid(TXT, a, A1 - a))
STRI = (Mid(STRI, 1, 1)) & Mid(STRI, 2, Len(STRI))
List1.AddItem LTrim(STRI)
'STR1 = STR1 & " " & STR
Next NN
10:

STRI = (Mid(TXT, a, Len(TXT)))
STRI = (Mid(STRI, 1, 1)) & Mid(STRI, 2, Len(STRI))
'STR1 = STR1 & " " & STR
'Me.Caption = STR1
List1.AddItem LTrim(STRI)
End Sub
Public Sub Nesto2(TXT As String)
On Error GoTo 10
For NN = 0 To Len(TXT)
a = A1 + 1
A1 = InStr(a, TXT, "_")
STRI = (Mid(TXT, a, A1 - a))
STRI = (Mid(STRI, 1, 1)) & Mid(STRI, 2, Len(STRI))
List1.AddItem LTrim(STRI)
'STR1 = STR1 & " " & STR
Next NN
10:

STRI = (Mid(TXT, a, Len(TXT)))
STRI = (Mid(STRI, 1, 1)) & Mid(STRI, 2, Len(STRI))
'STR1 = STR1 & " " & STR
'Me.Caption = STR1
List1.AddItem LTrim(STRI)
End Sub

Private Sub Year_Click()
Dim SelL
Dim God
God = InputBox("Insert Year:", "Year")
For SelL = MusicSc.ListItems.Count To 1 Step -1
If MusicSc.ListItems(SelL).Selected = True Then MusicSc.ListItems(SelL).SubItems(4) = God
Next SelL

End Sub
