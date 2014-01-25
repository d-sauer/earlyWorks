VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form OP 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   4515
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5760
   ForeColor       =   &H00E0E0E0&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "OP.frx":0000
   ScaleHeight     =   4515
   ScaleWidth      =   5760
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer3 
      Left            =   5280
      Top             =   1680
   End
   Begin MSComctlLib.ImageList ImageList2 
      Left            =   0
      Top             =   3000
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
            Picture         =   "OP.frx":2DE9
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":3105
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":3421
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":373D
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":3A59
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":3D75
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":4091
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":43AD
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.VScrollBar ZbrSpeed 
      Height          =   255
      Left            =   2040
      Max             =   35
      Min             =   1
      TabIndex        =   24
      Top             =   2280
      Value           =   10
      Width           =   135
   End
   Begin VB.Timer Timer2 
      Left            =   0
      Top             =   120
   End
   Begin MSComctlLib.ProgressBar Pbar 
      Height          =   255
      Left            =   1320
      TabIndex        =   20
      Top             =   600
      Width           =   3615
      _ExtentX        =   6376
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
      Scrolling       =   1
   End
   Begin VB.Timer Timer1 
      Left            =   0
      Top             =   1680
   End
   Begin VB.TextBox PT 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   1560
      TabIndex        =   4
      Text            =   "0"
      Top             =   1560
      Width           =   1575
   End
   Begin VB.TextBox PF 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   1680
      TabIndex        =   3
      Text            =   "0"
      Top             =   1200
      Width           =   1575
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   0
      Top             =   2160
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   14
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":46C9
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":4FA5
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":5881
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":615D
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":6A39
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":7315
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":7BF1
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":84CD
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":8DA9
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":9685
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":9F61
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":A83D
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":B119
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OP.frx":B9F5
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Image Bl 
      Height          =   225
      Left            =   2400
      Picture         =   "OP.frx":C2D1
      Top             =   3240
      Width           =   1440
   End
   Begin VB.Image Vol 
      Height          =   180
      Left            =   1950
      Picture         =   "OP.frx":D3F3
      Top             =   2790
      Width           =   2985
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
      TabIndex        =   27
      Top             =   0
      Width           =   105
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "L"
      ForeColor       =   &H0000FFFF&
      Height          =   195
      Left            =   1280
      TabIndex        =   26
      Top             =   4020
      Width           =   90
   End
   Begin VB.Image Image9 
      Height          =   480
      Left            =   1080
      Picture         =   "OP.frx":F055
      Top             =   3900
      Width           =   480
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00E0E0E0&
      Height          =   195
      Index           =   2
      Left            =   7000
      TabIndex        =   25
      Top             =   11000
      Visible         =   0   'False
      Width           =   45
   End
   Begin VB.Label CPos 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      ForeColor       =   &H0000FFFF&
      Height          =   195
      Left            =   2880
      TabIndex        =   23
      Top             =   840
      Width           =   90
   End
   Begin VB.Label Label8 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   165
      Left            =   4920
      TabIndex        =   22
      Top             =   840
      Width           =   75
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   165
      Left            =   1200
      TabIndex        =   21
      Top             =   840
      Width           =   75
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Track :"
      ForeColor       =   &H00E0E0E0&
      Height          =   195
      Index           =   9
      Left            =   720
      TabIndex        =   19
      Top             =   600
      Width           =   510
   End
   Begin VB.Label IND 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Left            =   360
      TabIndex        =   18
      Top             =   3840
      Visible         =   0   'False
      Width           =   90
   End
   Begin VB.Label VolLabel 
      AutoSize        =   -1  'True
      Caption         =   "0"
      Height          =   195
      Left            =   1320
      TabIndex        =   17
      Top             =   3000
      Visible         =   0   'False
      Width           =   90
   End
   Begin VB.Image Image8 
      Height          =   480
      Left            =   2800
      Picture         =   "OP.frx":F35F
      Top             =   3920
      Width           =   480
   End
   Begin VB.Image Image7 
      Height          =   480
      Left            =   1680
      Picture         =   "OP.frx":FC29
      Top             =   3885
      Width           =   480
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Track 16"
      ForeColor       =   &H00808080&
      Height          =   195
      Left            =   2160
      TabIndex        =   16
      Top             =   4020
      Width           =   645
   End
   Begin VB.Image Image6 
      Height          =   480
      Left            =   3480
      Picture         =   "OP.frx":104F3
      Top             =   1320
      Width           =   480
   End
   Begin VB.Image Image5 
      Height          =   480
      Left            =   4080
      Picture         =   "OP.frx":10DBD
      Top             =   1320
      Width           =   480
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Centered"
      ForeColor       =   &H00E0E0E0&
      Height          =   195
      Index           =   8
      Left            =   2880
      TabIndex        =   15
      Top             =   3555
      Width           =   645
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3000
      Shape           =   2  'Oval
      Top             =   3120
      Width           =   255
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00FFFFFF&
      Height          =   240
      Left            =   1920
      Top             =   2760
      Width           =   3060
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H00808080&
      Height          =   195
      Left            =   1440
      TabIndex        =   14
      Top             =   3240
      Width           =   90
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Right"
      ForeColor       =   &H00E0E0E0&
      Height          =   195
      Index           =   7
      Left            =   3960
      TabIndex        =   13
      Top             =   3240
      Width           =   375
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Left"
      ForeColor       =   &H00E0E0E0&
      Height          =   195
      Index           =   6
      Left            =   2040
      TabIndex        =   12
      Top             =   3240
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Balance :"
      ForeColor       =   &H00E0E0E0&
      Height          =   195
      Index           =   5
      Left            =   720
      TabIndex        =   11
      Top             =   3240
      Width           =   675
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "3000"
      ForeColor       =   &H00808080&
      Height          =   195
      Left            =   1440
      TabIndex        =   10
      Top             =   2760
      Width           =   360
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Volume :"
      ForeColor       =   &H00E0E0E0&
      Height          =   195
      Index           =   4
      Left            =   720
      TabIndex        =   9
      Top             =   2760
      Width           =   615
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "1,0"
      ForeColor       =   &H00808080&
      Height          =   195
      Left            =   1680
      TabIndex        =   8
      Top             =   2280
      Width           =   225
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Play Speed :"
      ForeColor       =   &H00E0E0E0&
      Height          =   195
      Index           =   3
      Left            =   720
      TabIndex        =   7
      Top             =   2280
      Width           =   900
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "00"
      ForeColor       =   &H00808080&
      Height          =   195
      Left            =   1920
      TabIndex        =   6
      Top             =   1920
      Width           =   180
   End
   Begin VB.Label Label1R 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Track To play :"
      ForeColor       =   &H00E0E0E0&
      Height          =   195
      Left            =   720
      TabIndex        =   5
      Top             =   1920
      Width           =   1080
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Play To :"
      ForeColor       =   &H00E0E0E0&
      Height          =   195
      Index           =   1
      Left            =   720
      TabIndex        =   2
      Top             =   1560
      Width           =   630
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Play From :"
      ForeColor       =   &H00E0E0E0&
      Height          =   195
      Index           =   0
      Left            =   720
      TabIndex        =   1
      Top             =   1200
      Width           =   780
   End
   Begin VB.Image Image4 
      Height          =   480
      Left            =   5205
      Picture         =   "OP.frx":11687
      Top             =   375
      Width           =   480
   End
   Begin VB.Image Image3 
      Height          =   480
      Left            =   3360
      Picture         =   "OP.frx":11AC9
      ToolTipText     =   "Reset"
      Top             =   3885
      Width           =   480
   End
   Begin VB.Image Image2 
      Height          =   480
      Left            =   3960
      Picture         =   "OP.frx":12393
      ToolTipText     =   "Apply"
      Top             =   3885
      Width           =   480
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   4560
      Picture         =   "OP.frx":12C5D
      Top             =   3885
      Width           =   480
   End
   Begin VB.Label FPath 
      BackStyle       =   0  'Transparent
      Caption         =   "C:\Pokusi\DS.mp3"
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
      Left            =   720
      TabIndex        =   0
      Top             =   270
      Width           =   4290
   End
End
Attribute VB_Name = "OP"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim A
Dim V 'Volume Track
Dim B 'Balance Luk
Dim mm As Integer
Dim K As String
Dim LA
Dim L
Dim MMM As Integer
Dim Mo As POINTAPI
Dim Q
Dim P
Dim XX
Dim YY
Private Sub Bl_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
B = 1
End Sub

Private Sub Bl_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Balance sound."
Dim Q
Dim E
If B = 1 Then
Shape2.Left = Abs(2400 + Abs(X) - Fix((X / 5)))
If Shape2.Left < 2400 Then Shape2.Left = 2400
If Shape2.Left > 3600 Then Shape2.Left = 3600
E = Shape2.Left
Label5.Caption = Fix((-3000 + E) * 2.5)
End If
End Sub

Private Sub Bl_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
B = 0
End Sub


Private Sub CPos_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Mouse position on Seek Bar."
End Sub

Private Sub Form_Load()
Timer1.Interval = 10
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Q = 1
P = Screen.TwipsPerPixelX
XX = X
YY = Y
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
For L = 0 To 8
Label1(L).ForeColor = &HE0E0E0
Next L
If Q = 1 Then
GetCursorPos Mo
OP.Left = (P * Mo.X) - XX
OP.Top = (P * Mo.Y) - YY
End If
End Sub

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Q = 0
P = Screen.TwipsPerPixelX
XX = X
YY = Y
End Sub

Private Sub FPath_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Sound Name on track"
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
Call OK
End If
Image1.Picture = ImageList1.ListImages(1).Picture
A = 0
End Sub
Sub OK()
GLF.From(IND).Caption = PF.Text
GLF.Too(IND).Caption = PT.Text
GLF.Sp(IND).Caption = Label3.Caption
GLF.Vl(IND).Caption = VolLabel.Caption
GLF.Bal(IND).Caption = Label5.Caption
GLF.Label5(IND).Caption = Shape2.Left
GLF.Refresh
Unload OP
End Sub

Private Sub Image2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image2.Picture = ImageList1.ListImages(4).Picture
A = 1
End Sub

Private Sub Image2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Apply this Settings."
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
GLF.S(IND).Stop
GLF.Space(IND).Caption = "0"
Timer2.Interval = 0
GLF.From(IND).Caption = PF.Text
GLF.Too(IND).Caption = PT.Text
GLF.Sp(IND).Caption = Label3.Caption
GLF.Vl(IND).Caption = VolLabel.Caption
GLF.Bal(IND).Caption = Label5.Caption
GLF.Label5(IND).Caption = Shape2.Left
GLF.Refresh
End If
Image2.Picture = ImageList1.ListImages(3).Picture
A = 0
End Sub


Private Sub Image3_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image3.Picture = ImageList1.ListImages(6).Picture
A = 1
End Sub

Private Sub Image3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Reset All to Normal."
If A = 1 Then
If X > 0 Then Image3.Picture = ImageList1.ListImages(6).Picture
If Y > 0 Then Image3.Picture = ImageList1.ListImages(6).Picture
If X > 420 Then Image3.Picture = ImageList1.ListImages(5).Picture
If Y > 420 Then Image3.Picture = ImageList1.ListImages(5).Picture
If X < 0 Then Image3.Picture = ImageList1.ListImages(5).Picture
If Y < 0 Then Image3.Picture = ImageList1.ListImages(5).Picture
End If
End Sub

Private Sub Image3_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image3.Picture = ImageList1.ListImages(6).Picture Then
PF.Text = "0"
PT.Text = GLF.S(IND).Duration
Label3.Caption = "1.0"
VolLabel.Caption = "-600"
Label5.Caption = 0
Shape2.Left = 3000
Vol.Width = 2300
Label4.Caption = "2300"
End If
Image3.Picture = ImageList1.ListImages(5).Picture
A = 0
End Sub

Private Sub Image4_Click()
OpenF.Show , Me
End Sub

Private Sub Image4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Insert sound in this track or change this sound."
End Sub

Private Sub Image5_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image5.Picture = ImageList1.ListImages(8).Picture
A = 1
End Sub

Private Sub Image5_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Stop this track."
If A = 1 Then
If X > 0 Then Image5.Picture = ImageList1.ListImages(8).Picture
If Y > 0 Then Image5.Picture = ImageList1.ListImages(8).Picture
If X > 420 Then Image5.Picture = ImageList1.ListImages(7).Picture
If Y > 420 Then Image5.Picture = ImageList1.ListImages(7).Picture
If X < 0 Then Image5.Picture = ImageList1.ListImages(7).Picture
If Y < 0 Then Image5.Picture = ImageList1.ListImages(7).Picture
End If
End Sub

Private Sub Image5_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image5.Picture = ImageList1.ListImages(8).Picture Then
GLF.S(IND).Stop
GLF.Space(IND).Caption = "0"
Timer2.Interval = 0
End If
Image5.Picture = ImageList1.ListImages(7).Picture
A = 0
End Sub

Private Sub Image6_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image6.Picture = ImageList1.ListImages(10).Picture
A = 1
End Sub

Private Sub Image6_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Play this track."
If A = 1 Then
If X > 0 Then Image6.Picture = ImageList1.ListImages(10).Picture
If Y > 0 Then Image6.Picture = ImageList1.ListImages(10).Picture
If X > 420 Then Image6.Picture = ImageList1.ListImages(9).Picture
If Y > 420 Then Image6.Picture = ImageList1.ListImages(9).Picture
If X < 0 Then Image6.Picture = ImageList1.ListImages(9).Picture
If Y < 0 Then Image6.Picture = ImageList1.ListImages(9).Picture
End If
End Sub

Private Sub Image6_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image6.Picture = ImageList1.ListImages(10).Picture Then
If GLF.S(IND).FileName = "" Then OpenF.Show , Me
On Error Resume Next
GLF.S(IND).SelectionStart = GLF.From(Index).Caption
GLF.S(IND).SelectionEnd = GLF.Too(Index).Caption
GLF.S(IND).Volume = GLF.Vl(Index).Caption
GLF.S(IND).Balance = GLF.Bal(Index).Caption
GLF.S(IND).Rate = GLF.Sp(Index).Caption
GLF.S(IND).Play
GLF.Space(IND).Caption = "1"
Timer2.Interval = 1
End If
Image6.Picture = ImageList1.ListImages(9).Picture
A = 0
End Sub

Private Sub Image7_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image7.Picture = ImageList1.ListImages(12).Picture
A = 1
End Sub

Private Sub Image7_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Previous Track."
If A = 1 Then
If X > 0 Then Image7.Picture = ImageList1.ListImages(12).Picture
If Y > 0 Then Image7.Picture = ImageList1.ListImages(12).Picture
If X > 420 Then Image7.Picture = ImageList1.ListImages(11).Picture
If Y > 420 Then Image7.Picture = ImageList1.ListImages(11).Picture
If X < 0 Then Image7.Picture = ImageList1.ListImages(11).Picture
If Y < 0 Then Image7.Picture = ImageList1.ListImages(11).Picture
End If
End Sub

Private Sub Image7_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image7.Picture = ImageList1.ListImages(12).Picture Then
mm = IND.Caption
mm = mm + 1
If mm < 0 Then mm = 15
If mm > 15 Then mm = 0
IND = mm
IND.Caption = mm
GLF.Label2.Caption = mm
K = mm + 1
K = "Track " + K
GLF.NTrk.Caption = K
Timer1.Interval = 10
Timer2.Interval = 10
End If
Image7.Picture = ImageList1.ListImages(11).Picture
A = 0
End Sub

Private Sub Image8_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image8.Picture = ImageList1.ListImages(14).Picture
A = 1
End Sub

Private Sub Image8_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Next Track."
If A = 1 Then
If X > 0 Then Image8.Picture = ImageList1.ListImages(14).Picture
If Y > 0 Then Image8.Picture = ImageList1.ListImages(14).Picture
If X > 420 Then Image8.Picture = ImageList1.ListImages(13).Picture
If Y > 420 Then Image8.Picture = ImageList1.ListImages(13).Picture
If X < 0 Then Image8.Picture = ImageList1.ListImages(13).Picture
If Y < 0 Then Image8.Picture = ImageList1.ListImages(13).Picture
End If
End Sub

Private Sub Image8_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image8.Picture = ImageList1.ListImages(14).Picture Then
mm = IND.Caption
mm = mm - 1
If mm < 0 Then mm = 15
If mm > 15 Then mm = 0
IND = mm
IND.Caption = mm
GLF.Label2.Caption = mm
K = mm + 1
K = "Track " + K
GLF.NTrk.Caption = K
Timer1.Interval = 10
Timer2.Interval = 10
End If
Image8.Picture = ImageList1.ListImages(13).Picture
A = 0
End Sub

Private Sub Image9_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Position of active track."
End Sub

Private Sub IND_Change()
If IND < 8 Then
Label9.Caption = "L"
Image9.Picture = ImageList2.ListImages(IND + 1).Picture
End If
If IND >= 8 Then
Label9.Caption = "R"
Image9.Picture = ImageList2.ListImages(IND + 1 - 8).Picture
End If
Label6.Refresh
IND.Refresh
OP.Refresh
Timer3.Interval = 100
End Sub

Private Sub Label1_Click(Index As Integer)
If Index = 0 Then PF.Text = 0
If Index = 1 Then PT.Text = GLF.S(IND).Duration
If Index = 3 Then Label3.Caption = "1.0": ZbrSpeed.Value = 10
If Index = 4 Then VolLabel.Caption = "-600": Label4.Caption = "2300"
If Index = 5 Then Label5.Caption = "0": GLF.Label5(IND).Caption = "3000": Shape2.Left = 3000
If Index = 6 Then Shape2.Left = 2400: Label5.Caption = "-1500"
If Index = 7 Then Shape2.Left = 3600: Label5.Caption = "1500"
If Index = 8 Then Label5.Caption = "0": GLF.Label5(IND).Caption = "3000": Shape2.Left = 3000
Timer1.Interval = 1
End Sub

Private Sub Label1_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Reset yust this to Normal."
For L = 0 To 8
Label1(L).ForeColor = &HE0E0E0
Next L
Label1(Index).ForeColor = &HFFFF00
End Sub

Private Sub Label10_Click()
Unload Me
End Sub

Private Sub Label10_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Close."
End Sub

Private Sub Label2_Change()
If Label2 > GLF.S(IND).Duration Then PF.Text = "0": PT.Text = GLF.S(IND).Duration
End Sub

Private Sub Label2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Track Leght."
End Sub

Private Sub Label3_Change()
GLF.Sp(IND).Caption = Label3.Caption
GLF.S(IND).Rate = Label3.Caption
End Sub

Private Sub Label3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Change play Speed."
End Sub

Private Sub Label4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Volume."
End Sub

Private Sub Label5_Change()
GLF.Bal(IND).Caption = Fix(Label5.Caption)
GLF.S(IND).Balance = Fix(Label5.Caption)
GLF.Label5(IND).Caption = Shape2.Left
End Sub


Private Sub Label6_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Active Track."
End Sub

Private Sub Label7_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Sound position."
End Sub

Private Sub Label8_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Max Track Leght."
End Sub

Private Sub Label9_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "L - Left CD track on screen , R - Right CD track on screen."
End Sub

Private Sub Pbar_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Seek bar."
On Error Resume Next
LA = GLF.S(IND).Duration
CPos.Caption = X / (3600 / LA)
End Sub

Private Sub Pbar_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
LA = GLF.S(IND).Duration
GLF.S(IND).CurrentPosition = X / (3600 / LA)
End Sub

Private Sub PF_Change()
On Error Resume Next
GLF.From(IND).Caption = Abs(PF.Text)
Label2.Caption = Abs(PT - PF)
End Sub
Private Sub PF_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Play sounf from ..."
End Sub

Private Sub PT_Change()
On Error GoTo 10
GLF.Too(IND).Caption = Abs(PT.Text)
Label2.Caption = Abs(PT - PF)
Exit Sub:
10:
PT.Text = GLF.S(IND).Duration
End Sub

Private Sub PT_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Play sounf to..."
End Sub

Private Sub Timer1_Timer()
Dim T1
Dim T2
On Error Resume Next
Label6.Caption = GLF.NTrk.Caption
T1 = Abs(GLF.Vl(IND).Caption)
IND.Caption = GLF.Label2.Caption
FPath.Caption = GLF.S(IND).FileName
Label6.Caption = GLF.NTrk.Caption
PF.Text = GLF.From(IND).Caption
PT.Text = GLF.Too(IND).Caption
Label2.Caption = PT - PF
VolLabel.Caption = GLF.S(IND).Volume
Label5.Caption = GLF.Bal(IND).Caption
On Error GoTo 10
Vol.Width = Abs(Fix(T1 - (T1 * (3000 / T1))))
T2 = GLF.Bal(IND).Caption
Shape2.Left = GLF.Label5(IND).Caption
Label3.Caption = GLF.Sp(IND).Caption
ZbrSpeed.Value = 10
Timer1.Interval = 0
Exit Sub
10:
Vol.Width = 2300
End Sub

Private Sub Timer2_Timer()
On Error Resume Next
IND = GLF.Label2.Caption
Pbar.Max = GLF.S(IND).Duration
Pbar.Value = GLF.S(IND).CurrentPosition
Label7.Caption = GLF.S(IND).CurrentPosition
Label8.Caption = GLF.S(IND).Duration
If GLF.Space(IND).Caption = "0" Then Timer2.Interval = 0
End Sub

Private Sub Timer3_Timer()
OP.Refresh
OpenF.Refresh
Timer3.Interval = 0
End Sub

Private Sub Vol_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
V = 1
End Sub

Private Sub Vol_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim T
Dim H
If V = 1 Then
Vol.Width = Abs(X)
If Vol.Width > 3000 Then X = 3000: Vol.Width = 3000
If Vol.Width < 100 Then X = 100: Vol.Width = 100
T = Vol.Width
Label4.Caption = Abs(Fix(T - 100))
H = Abs(Fix(T - (T * (3000 / T))))
VolLabel = -H
End If
End Sub

Private Sub Vol_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
V = 0
End Sub

Private Sub VolLabel_Change()
GLF.Vl(IND).Caption = VolLabel.Caption
GLF.S(IND).Volume = VolLabel.Caption
End Sub
Private Sub ZbrSpeed_Change()
Dim W
W = ZbrSpeed.Value
Label3.Caption = Abs(W / 10)
End Sub
