VERSION 5.00
Begin VB.Form Splash 
   AutoRedraw      =   -1  'True
   BorderStyle     =   0  'None
   ClientHeight    =   3690
   ClientLeft      =   210
   ClientTop       =   9000
   ClientWidth     =   3405
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   DrawStyle       =   5  'Transparent
   Icon            =   "Splash.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   Picture         =   "Splash.frx":000C
   ScaleHeight     =   3690
   ScaleWidth      =   3405
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Left            =   2880
      Top             =   240
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "®"
      Height          =   195
      Left            =   960
      TabIndex        =   4
      Top             =   480
      Width           =   120
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   165
      Index           =   1
      Left            =   240
      TabIndex        =   3
      Top             =   3120
      Width           =   405
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   165
      Index           =   0
      Left            =   480
      TabIndex        =   2
      Top             =   3240
      Width           =   375
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Label4"
      Height          =   195
      Left            =   5160
      TabIndex        =   1
      Top             =   600
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Label3"
      Height          =   195
      Left            =   5160
      TabIndex        =   0
      Top             =   360
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image Image1 
      Appearance      =   0  'Flat
      Height          =   3645
      Left            =   0
      Picture         =   "Splash.frx":E0B6
      Stretch         =   -1  'True
      Top             =   0
      Width           =   3360
   End
   Begin VB.Image Image2 
      Height          =   1485
      Left            =   -240
      Picture         =   "Splash.frx":306E2
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   1455
   End
End
Attribute VB_Name = "Splash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
On Error Resume Next
Label3.Caption = GetStringValue("HKEY_CURRENT_CONFIG\Display\Settings", "Resolution")
Label4.Caption = GetStringValue("HKEY_CURRENT_CONFIG\Display\Settings", "BitsPerPixel")
Label1(0).Caption = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Lic1")
Label1(1).Caption = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Lic2")

If Not Label3.Caption = "800,600" Then
ChangeScreenSettings 800, 600, 16
Timer1.Interval = 4000
End If

If Label3.Caption = "800,600" And Label4.Caption = "16" Then
Timer1.Interval = 4000
End If

Timer1.Interval = 1500
End Sub

Private Sub Label2_Click()
Timer1.Interval = 100
End Sub

Private Sub Timer1_Timer()
Unload Me
Form1.Show , Me
Form1.WindowState = 2
Load GLF
Timer1.Interval = 0
Timer1.Enabled = False
End Sub
