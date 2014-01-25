VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{784B8A28-DF18-11D3-A44A-8C0C4C6F500A}#4.0#0"; "OCI.OCX"
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   9000
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9000
   ScaleWidth      =   12000
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.ImageList ImageList3 
      Left            =   360
      Top             =   5880
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   246
      ImageHeight     =   259
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   2
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":0000
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":1A8C
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin Oci.Eyes Eyes1 
      DragIcon        =   "Form1.frx":43B0
      Height          =   125
      Left            =   550
      TabIndex        =   1
      Top             =   7810
      Width           =   220
      _ExtentX        =   397
      _ExtentY        =   212
      BackColor       =   65535
      Interval        =   1
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   360
      Top             =   5280
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   109
      ImageHeight     =   68
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   12
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":46BA
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":9E2E
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":A58E
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":ACE2
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":AFFE
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":B822
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":C002
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":C752
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":CE22
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":D67A
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":DEE2
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":E7DA
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList2 
      Left            =   1080
      Top             =   5280
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   109
      ImageHeight     =   68
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   1
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":F09E
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Image Image10 
      Height          =   1125
      Left            =   5040
      Picture         =   "Form1.frx":14812
      Top             =   6480
      Width           =   1125
   End
   Begin VB.Label Image9 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Mix Max Studio"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0C0&
      Height          =   240
      Left            =   9240
      TabIndex        =   2
      Top             =   7800
      Width           =   1485
   End
   Begin VB.Image Image8 
      Height          =   1125
      Left            =   9000
      Picture         =   "Form1.frx":150F8
      Top             =   6360
      Width           =   1125
   End
   Begin VB.Image Image7 
      Height          =   480
      Left            =   360
      Picture         =   "Form1.frx":15836
      Top             =   7680
      Width           =   480
   End
   Begin VB.Image Image6 
      Height          =   1125
      Left            =   10440
      Picture         =   "Form1.frx":15B40
      Top             =   6480
      Width           =   1125
   End
   Begin VB.Image Image5 
      Height          =   1125
      Left            =   7680
      Picture         =   "Form1.frx":16755
      Top             =   6360
      Width           =   1125
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Label1"
      Height          =   195
      Left            =   8520
      TabIndex        =   0
      Top             =   8280
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image Image4 
      Height          =   1125
      Left            =   6360
      Picture         =   "Form1.frx":16EA3
      Top             =   6480
      Width           =   1125
   End
   Begin VB.Image Image3 
      Height          =   1020
      Left            =   8400
      Picture         =   "Form1.frx":176E8
      Top             =   3000
      Width           =   1635
   End
   Begin VB.Image Image2 
      Height          =   3885
      Left            =   1320
      Picture         =   "Form1.frx":1CE4A
      Top             =   1320
      Width           =   3690
   End
   Begin VB.Image Image1 
      Height          =   8565
      Left            =   120
      Picture         =   "Form1.frx":1E8C4
      Top             =   120
      Width           =   11730
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim I
Dim A
Dim WPath As String
Dim R

Private Sub Form_Load()
Form1.WindowState = 2
Form1.Top = 0
Form1.Left = 0
Form1.Width = Screen.Width
Form1.Height = Screen.Height
Image1.Left = Fix(Form1.Width / 100)
Image1.Top = Fix(Form1.Height / 75)
Call WP
End Sub
Sub WP()
Dim Buffer As String
Buffer = Space(MAX_PATH)
rtn = GetWindowsDirectory(Buffer, Len(Buffer))
WinPath = Left(Buffer, rtn)
Label1.Caption = WinPath
End Sub

Private Sub Image1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image5.Picture = ImageList1.ListImages(2).Picture
Image3.Picture = ImageList2.ListImages(1).Picture
Image9.Caption = ""
End Sub

Private Sub Image2_Click()
On Error Resume Next
WPath = App.Path + "\" + "snd1.wav"
R = WavPlay(WPath, SND_ASYNC)
GLF.Show , Me
End Sub

Private Sub Image2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image2.Picture = ImageList3.ListImages(2).Picture
A = 1
End Sub

Private Sub Image2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image9.ForeColor = &HC0C0C0
Image9.Top = 5520
Image9.Caption = "Mix max Studio"
Image9.Left = 3165 - (Image9.Width / 2)
If A = 1 Then
If X > 0 Then Image2.Picture = ImageList3.ListImages(2).Picture
If Y > 0 Then Image2.Picture = ImageList3.ListImages(2).Picture
If X > 3690 Then Image2.Picture = ImageList3.ListImages(1).Picture
If Y > 3885 Then Image2.Picture = ImageList3.ListImages(1).Picture
If X < 0 Then Image2.Picture = ImageList3.ListImages(1).Picture
If Y < 0 Then Image2.Picture = ImageList3.ListImages(1).Picture
End If
End Sub

Private Sub Image2_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image2.Picture = ImageList3.ListImages(1).Picture
A = 0
End Sub


Private Sub Image3_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image3.Picture = ImageList1.ListImages(1).Picture
A = 1
End Sub

Private Sub Image3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image9.ForeColor = &HC0C0C0
Image9.Top = 4320
Image9.Caption = "Record"
Image9.Left = 9217 - Abs(Image9.Width / 2)
If A = 1 Then
If X > 0 Then Image3.Picture = ImageList1.ListImages(1).Picture
If Y > 0 Then Image3.Picture = ImageList1.ListImages(1).Picture
If X > 1635 Then Image3.Picture = ImageList2.ListImages(1).Picture
If Y > 1020 Then Image3.Picture = ImageList2.ListImages(1).Picture
If X < 0 Then Image3.Picture = ImageList2.ListImages(1).Picture
If Y < 0 Then Image3.Picture = ImageList2.ListImages(1).Picture
End If
End Sub
Private Sub Image3_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image3.Picture = ImageList1.ListImages(1).Picture Then
Dim P As String
Dim O
On Error Resume Next
WPath = App.Path + "\" + "snd1.wav"
R = WavPlay(WPath, SND_ASYNC)
P = Label1.Caption
P = P + "\SNDREC32.EXE"
O = Shell(P, vbNormalFocus)
End If
Image3.Picture = ImageList2.ListImages(1).Picture
A = 0
End Sub

Private Sub Image4_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image4.Picture = ImageList1.ListImages(10).Picture
A = 1
End Sub

Private Sub Image4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image9.ForeColor = &H404040
Image9.Top = 7800
Image9.Caption = "Options"
Image9.Left = 6920 - Abs(Image9.Width / 2)
If A = 1 Then
If X > 0 Then Image4.Picture = ImageList1.ListImages(10).Picture
If Y > 0 Then Image4.Picture = ImageList1.ListImages(10).Picture
If X > 1125 Then Image4.Picture = ImageList1.ListImages(9).Picture
If Y > 1125 Then Image4.Picture = ImageList1.ListImages(9).Picture
If X < 0 Then Image4.Picture = ImageList1.ListImages(9).Picture
If Y < 0 Then Image4.Picture = ImageList1.ListImages(9).Picture
End If
End Sub

Private Sub Image4_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image4.Picture = ImageList1.ListImages(10).Picture Then
On Error Resume Next
WPath = App.Path + "\" + "snd1.wav"
R = WavPlay(WPath, SND_ASYNC)
Opcije.Show , Me
End If
Image4.Picture = ImageList1.ListImages(9).Picture
A = 0
End Sub

Private Sub Image5_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image5.Picture = ImageList1.ListImages(3).Picture
A = 1
End Sub

Private Sub Image5_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image9.ForeColor = &H404040
Image9.Top = 7800
Image9.Caption = "Help"
Image9.Left = 8242 - Abs(Image9.Width / 2)
If A = 1 Then
If X > 0 Then Image5.Picture = ImageList1.ListImages(3).Picture
If Y > 0 Then Image5.Picture = ImageList1.ListImages(3).Picture
If X > 1125 Then Image5.Picture = ImageList1.ListImages(2).Picture
If Y > 1125 Then Image5.Picture = ImageList1.ListImages(2).Picture
If X < 0 Then Image5.Picture = ImageList1.ListImages(2).Picture
If Y < 0 Then Image5.Picture = ImageList1.ListImages(2).Picture
End If
End Sub

Private Sub Image5_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image5.Picture = ImageList1.ListImages(3).Picture Then
On Error Resume Next
WPath = App.Path + "\" + "snd1.wav"
R = WavPlay(WPath, SND_ASYNC)
Help.Show , Me
End If
Image5.Picture = ImageList1.ListImages(2).Picture
A = 0
End Sub

Private Sub Image6_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image6.Picture = ImageList1.ListImages(6).Picture
A = 1
End Sub

Private Sub Image6_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image9.ForeColor = &H404040
Image9.Top = 7800
Image9.Caption = "Exit"
Image9.Left = 11002 - Abs(Image9.Width / 2)
If A = 1 Then
If X > 0 Then Image6.Picture = ImageList1.ListImages(6).Picture
If Y > 0 Then Image6.Picture = ImageList1.ListImages(6).Picture
If X > 1125 Then Image6.Picture = ImageList1.ListImages(5).Picture
If Y > 1125 Then Image6.Picture = ImageList1.ListImages(5).Picture
If X < 0 Then Image6.Picture = ImageList1.ListImages(5).Picture
If Y < 0 Then Image6.Picture = ImageList1.ListImages(5).Picture
End If
End Sub

Private Sub Image6_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image6.Picture = ImageList1.ListImages(6).Picture Then
Dim O
Image6.Picture = ImageList1.ListImages(5).Picture
On Error Resume Next
WPath = App.Path + "\" + "snd1.wav"
R = WavPlay(WPath, SND_ASYNC)
Dim K
Dim K1
Dim K2
Dim L1 As Integer
Dim L2 As Integer
Dim L3 As Integer
K = Splash.Label3.Caption
K2 = Splash.Label4.Caption
If K = "640,480" Then L1 = 640: L2 = 480
If K = "720,480" Then L1 = 720: L2 = 480
If K = "800,600" Then L1 = 800: L2 = 600
If K = "1024,768" Then L1 = 1024: L2 = 768
If K = "1280,1024" Then L1 = 1280: L2 = 1024
If K2 = "2" Then L3 = 2
If K2 = "16" Then L3 = 16
If K2 = "24" Then L3 = 24
If K2 = "32" Then L3 = 32
If K2 = "256" Then L3 = 256
ChangeScreenSettings L1, L2, L3
End
End If
A = 0
End Sub

Private Sub Image8_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image8.Picture = ImageList1.ListImages(8).Picture
A = 1
End Sub

Private Sub Image8_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image9.ForeColor = &H404040
Image9.Top = 7800
Image9.Caption = "New Project"
Image9.Left = 9562 - Abs(Image9.Width / 2)
If A = 1 Then
If X > 0 Then Image8.Picture = ImageList1.ListImages(8).Picture
If Y > 0 Then Image8.Picture = ImageList1.ListImages(8).Picture
If X > 1125 Then Image8.Picture = ImageList1.ListImages(7).Picture
If Y > 1125 Then Image8.Picture = ImageList1.ListImages(7).Picture
If X < 0 Then Image8.Picture = ImageList1.ListImages(7).Picture
If Y < 0 Then Image8.Picture = ImageList1.ListImages(7).Picture
End If
End Sub

Private Sub Image8_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image8.Picture = ImageList1.ListImages(8).Picture Then
On Error Resume Next
WPath = App.Path + "\" + "snd1.wav"
R = WavPlay(WPath, SND_ASYNC)
Call New_P
End If
Image8.Picture = ImageList1.ListImages(7).Picture
A = 0
End Sub

Sub New_P()
Dim KKL As Integer
For KKL = 0 To 15
GLF.S(KKL).FileName = ""
GLF.S(KKL).CurrentPosition = 0
GLF.From(KKL).Caption = "0"
GLF.Too(KKL).Caption = "0"
GLF.Sp(KKL).Caption = "1"
GLF.Space(KKL).Caption = "0"
GLF.Bal(KKL).Caption = "0"
GLF.Vl(KKL).Caption = "-500 "
GLF.Label5(KKL).Caption = "3000"
GLF.Track(KKL).Picture = GLF.ImageList1.ListImages(2).Picture
Next KKL
End Sub


Private Sub Image10_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image10.Picture = ImageList1.ListImages(12).Picture
A = 1
End Sub

Private Sub Image10_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image9.ForeColor = &H404040
Image9.Top = 7800
Image9.Caption = "Explorer"
Image9.Left = 5560 - Abs(Image9.Width / 2)
If A = 1 Then
If X > 0 Then Image10.Picture = ImageList1.ListImages(12).Picture
If Y > 0 Then Image10.Picture = ImageList1.ListImages(12).Picture
If X > 1125 Then Image10.Picture = ImageList1.ListImages(11).Picture
If Y > 1125 Then Image10.Picture = ImageList1.ListImages(11).Picture
If X < 0 Then Image10.Picture = ImageList1.ListImages(11).Picture
If Y < 0 Then Image10.Picture = ImageList1.ListImages(11).Picture
End If
End Sub

Private Sub Image10_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image10.Picture = ImageList1.ListImages(12).Picture Then
On Error Resume Next
WPath = App.Path + "\" + "snd1.wav"
R = WavPlay(WPath, SND_ASYNC)
ExS.Show , Me
End If
Image10.Picture = ImageList1.ListImages(11).Picture
A = 0
End Sub

