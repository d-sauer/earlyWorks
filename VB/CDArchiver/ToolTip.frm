VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form ArtistFrm 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Artist"
   ClientHeight    =   6555
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   8085
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "ToolTip.frx":0000
   ScaleHeight     =   6555
   ScaleWidth      =   8085
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      BackColor       =   &H00808080&
      Caption         =   "Apply"
      Height          =   375
      Left            =   1320
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   6150
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00808080&
      Caption         =   "New Artist"
      Height          =   375
      Left            =   120
      MaskColor       =   &H00808080&
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   6150
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00808080&
      Caption         =   "Cancel"
      Height          =   375
      Left            =   6840
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   6150
      Width           =   1095
   End
   Begin VB.TextBox Text9 
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      ForeColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   0
      MultiLine       =   -1  'True
      TabIndex        =   9
      Top             =   3390
      Width           =   8055
   End
   Begin VB.TextBox Text10 
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      ForeColor       =   &H00FFFFFF&
      Height          =   975
      Left            =   0
      TabIndex        =   10
      Top             =   5040
      Width           =   8055
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00404040&
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Left            =   4350
      TabIndex        =   1
      Top             =   120
      Width           =   3615
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H00404040&
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Left            =   4350
      TabIndex        =   2
      Top             =   480
      Width           =   1455
   End
   Begin VB.TextBox Text3 
      BackColor       =   &H00404040&
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Left            =   4350
      TabIndex        =   3
      Top             =   840
      Width           =   1455
   End
   Begin VB.TextBox Text4 
      BackColor       =   &H00404040&
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Left            =   4350
      TabIndex        =   4
      Top             =   1200
      Width           =   3615
   End
   Begin VB.TextBox Text5 
      BackColor       =   &H00404040&
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Left            =   4350
      TabIndex        =   5
      Top             =   1560
      Width           =   3615
   End
   Begin VB.TextBox Text6 
      BackColor       =   &H00404040&
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Left            =   4350
      TabIndex        =   6
      Top             =   1920
      Width           =   3615
   End
   Begin VB.TextBox Text7 
      BackColor       =   &H00404040&
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Left            =   4350
      TabIndex        =   7
      Top             =   2280
      Width           =   3615
   End
   Begin VB.TextBox Text8 
      BackColor       =   &H00404040&
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Left            =   4350
      TabIndex        =   8
      Top             =   2640
      Width           =   3615
   End
   Begin MSComctlLib.ListView Artist 
      Height          =   3015
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   5318
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   0   'False
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   16777215
      BackColor       =   8421504
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   0
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   7920
      Top             =   480
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   17
      ImageHeight     =   17
      MaskColor       =   14737632
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   2
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ToolTip.frx":EE19
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ToolTip.frx":F1E1
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Related Artist"
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
      Left            =   120
      TabIndex        =   23
      Top             =   4800
      Width           =   1170
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "In Detali"
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
      Left            =   120
      TabIndex        =   22
      Top             =   3135
      Width           =   735
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Albums"
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
      Left            =   3360
      TabIndex        =   21
      Top             =   2280
      Width           =   975
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Tones"
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
      Left            =   3360
      TabIndex        =   20
      Top             =   1920
      Width           =   930
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Styles"
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
      Left            =   3360
      TabIndex        =   19
      Top             =   1560
      Width           =   900
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Genre"
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
      Left            =   3360
      TabIndex        =   18
      Top             =   1200
      Width           =   915
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "URL"
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
      Left            =   3360
      TabIndex        =   17
      Top             =   2640
      Width           =   930
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Active Years"
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
      Left            =   3360
      TabIndex        =   16
      Top             =   840
      Width           =   900
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Formated"
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
      Left            =   3360
      TabIndex        =   15
      Top             =   480
      Width           =   900
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Artist Name"
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
      Left            =   3360
      TabIndex        =   14
      Top             =   120
      Width           =   930
   End
End
Attribute VB_Name = "ArtistFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim CdlgEx1 As New CCD

Private Sub Artist_Click()
ArtistFrmFind (Artist.SelectedItem.SubItems(7))
End Sub

Private Sub Artist_KeyUp(KeyCode As Integer, Shift As Integer)
ArtistFrmFind (Artist.SelectedItem.SubItems(7))
End Sub

Private Sub Command1_Click()
Unload Me
GLF.SetFocus
End Sub


Private Sub Command2_Click()
Text1.Text = "" 'Artist Name
Text2.Text = "" 'Formated
Text3.Text = "" 'Years
Text4.Text = "" 'Genre
Text5.Text = "" 'Styles
Text6.Text = "" 'Tones
Text7.Text = "" 'Albums
Text8.Text = "" 'Url
Text9.Text = "" 'Description
Text10.Text = "" 'Related Artist
'Picture4.Picture = LoadPicture("") 'nema slike
'Label11.Caption = "None" ' nema slike
NewArtistN
Text1.SetFocus
End Sub

Private Sub Command3_Click()
ApplyNewArtist
Call ListArtistFrm
End Sub


Private Sub Form_Load()
Artist.ColumnHeaders.Add , , "Artist Name", 2400, 0
Artist.ColumnHeaders.Add , , "Active", 700, 0
Artist.ColumnHeaders.Add , , "Formated", 900, 0
Artist.ColumnHeaders.Add , , "Styles", 2000, 0
Artist.ColumnHeaders.Add , , "Tones", 2000, 0
Artist.ColumnHeaders.Add , , "URL", 3000, 0
Artist.ColumnHeaders.Add , , "Picture", 3000, 0
Artist.ColumnHeaders.Add , , "No", 500, 0
'Text9.BackColor = RGB(80, 207, 255)
'Text10.BackColor = RGB(80, 207, 255)
Call ListArtistFrm
Text1.BackColor = RGB(58, 58, 58)
Text2.BackColor = RGB(58, 58, 58)
Text3.BackColor = RGB(58, 58, 58)
Text4.BackColor = RGB(58, 58, 58)
Text5.BackColor = RGB(58, 58, 58)
Text6.BackColor = RGB(58, 58, 58)
Text7.BackColor = RGB(58, 58, 58)
Text8.BackColor = RGB(58, 58, 58)
Text9.BackColor = RGB(58, 58, 58)
Text10.BackColor = RGB(58, 58, 58)
End Sub

Private Sub Form_Unload(Cancel As Integer)
GLF.Enabled = True
End Sub

Private Sub Picture4_DblClick()
CdlgEx1.CancelError = False
CdlgEx1.Filter = "BMP|*.bmp|JPG|*.jpg"
CdlgEx1.ShowOpen
Label11 = CdlgEx1.FileName
Picture4.Picture = LoadPicture(Label11.Caption)
End Sub


