VERSION 5.00
Begin VB.Form Help2 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   930
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5295
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   930
   ScaleWidth      =   5295
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   -240
      Top             =   -120
   End
   Begin VB.Label Label2 
      Caption         =   "0"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      ForeColor       =   &H0000FF00&
      Height          =   615
      Left            =   960
      TabIndex        =   0
      Top             =   120
      Width           =   3855
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFF00&
      BorderStyle     =   6  'Inside Solid
      BorderWidth     =   2
      Index           =   10
      X1              =   960
      X2              =   4800
      Y1              =   750
      Y2              =   750
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      Index           =   9
      X1              =   4800
      X2              =   4920
      Y1              =   720
      Y2              =   720
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      Index           =   8
      X1              =   240
      X2              =   360
      Y1              =   120
      Y2              =   120
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      Index           =   7
      X1              =   240
      X2              =   360
      Y1              =   720
      Y2              =   720
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      Index           =   6
      X1              =   4800
      X2              =   4920
      Y1              =   120
      Y2              =   120
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      Index           =   5
      X1              =   4920
      X2              =   4920
      Y1              =   120
      Y2              =   720
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      Index           =   4
      X1              =   240
      X2              =   240
      Y1              =   120
      Y2              =   720
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      Index           =   3
      X1              =   4920
      X2              =   5160
      Y1              =   360
      Y2              =   360
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      Index           =   2
      X1              =   0
      X2              =   240
      Y1              =   360
      Y2              =   360
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      Index           =   1
      X1              =   5160
      X2              =   5160
      Y1              =   360
      Y2              =   960
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      Index           =   0
      X1              =   0
      X2              =   0
      Y1              =   360
      Y2              =   960
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   360
      Picture         =   "Help2.frx":0000
      ToolTipText     =   "Close"
      Top             =   150
      Width           =   480
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00FFFF00&
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00808000&
      FillStyle       =   6  'Cross
      Height          =   615
      Left            =   240
      Top             =   120
      Width           =   4695
   End
End
Attribute VB_Name = "Help2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim N
Private Sub Form_Load()
Help2.Top = 7600 - Help2.Height
Help2.Left = ((Screen.Width / 2) - (Help2.Width / 2))
Label1.Caption = ""
N = 80
End Sub

Private Sub Image1_Click()
Unload Me
Label2.Caption = 0
End Sub

Private Sub Image1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label1.Caption = "Close Help."
End Sub

Private Sub Label1_Change()
Dim R
If Label2 = 1 Then
WPath = App.Path + "\" + "snd2.wav"
R = WavPlay(WPath, SND_ASYNC)
End If
N = 80
Line1(10).Y1 = 80
Line1(10).Y2 = 80
Timer1.Interval = 1
End Sub
Private Sub Timer1_Timer()
Line1(10).Visible = True
N = N + 30
If N > 750 Then N = 80: Timer1.Interval = 0: Line1(10).Visible = False
Line1(10).Y1 = N
Line1(10).Y2 = N
End Sub
