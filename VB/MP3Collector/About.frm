VERSION 5.00
Begin VB.Form About 
   BorderStyle     =   0  'None
   Caption         =   "Form3"
   ClientHeight    =   2190
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4770
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2190
   ScaleWidth      =   4770
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Version 1.0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   2760
      TabIndex        =   1
      Top             =   135
      Width           =   975
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "×"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   300
      Left            =   3960
      TabIndex        =   0
      Top             =   90
      Width           =   180
   End
   Begin VB.Image Image1 
      Height          =   1650
      Left            =   0
      Picture         =   "About.frx":0000
      Top             =   0
      Width           =   4380
   End
End
Attribute VB_Name = "About"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim MP As POINTAPI
Dim a, X1, Y1, p
Private Sub Form_Activate()
Me.Width = Image1.Width
Me.Height = Image1.Height
GLF.Enabled = False
End Sub

Private Sub Form_Unload(Cancel As Integer)
GLF.Enabled = True
End Sub

Private Sub Image1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
a = 1
X1 = X
Y1 = Y
p = Screen.TwipsPerPixelX

End Sub

Private Sub Image1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If a = 1 Then
GetCursorPos MP
Me.Top = (p * MP.Y) - Y1
Me.Left = (p * MP.X) - X1
End If
End Sub

Private Sub Image1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
a = 0
End Sub

Private Sub Label1_Click()
Unload Me
GLF.Enabled = True
End Sub
