VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "Cut Code"
   ClientHeight    =   4995
   ClientLeft      =   60
   ClientTop       =   300
   ClientWidth     =   7065
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4995
   ScaleWidth      =   7065
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "Copy"
      Height          =   375
      Left            =   5640
      TabIndex        =   10
      Top             =   1440
      Width           =   1335
   End
   Begin VB.TextBox Text3 
      Height          =   2655
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   9
      Top             =   1920
      Width           =   6855
   End
   Begin VB.ListBox List1 
      Height          =   2595
      Left            =   120
      TabIndex        =   8
      Top             =   1920
      Visible         =   0   'False
      Width           =   6855
   End
   Begin VB.TextBox Text2 
      Height          =   1575
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   1  'Horizontal
      TabIndex        =   7
      Text            =   "Form2.frx":0000
      Top             =   240
      Visible         =   0   'False
      Width           =   5415
   End
   Begin VB.Frame Frame1 
      Caption         =   "Declare Scope"
      Height          =   1095
      Left            =   5640
      TabIndex        =   4
      Top             =   240
      Width           =   1335
      Begin VB.OptionButton Option2 
         Caption         =   "Private"
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   720
         Width           =   1095
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Public"
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   360
         Value           =   -1  'True
         Width           =   1095
      End
   End
   Begin VB.TextBox Text1 
      Height          =   1575
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   1  'Horizontal
      TabIndex        =   3
      Text            =   "Form2.frx":0151
      Top             =   240
      Width           =   5415
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   6000
      TabIndex        =   1
      Top             =   4600
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Copy"
      Height          =   375
      Left            =   4920
      TabIndex        =   0
      Top             =   4600
      Width           =   975
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Copy on Module"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   195
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   1380
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

Private Sub Command1_Click()
Clipboard.SetText (Text3.Text)
End Sub

Private Sub Command2_Click()
Unload Me
End Sub


Private Sub Command3_Click()
If Option1.Value = True Then Clipboard.SetText (Text1.Text)
If Option2.Value = True Then Clipboard.SetText (Text2.Text)
End Sub

Private Sub Form_Load()
Form1.Line1(0).X1 = Form1.Line1(1).X2
Form1.Line1(0).X2 = Form1.Line1(2).X1
Form1.Line1(0).Y1 = Form1.Line1(1).Y2
Form1.Line1(0).Y2 = Form1.Line1(2).Y1

'Sleep 50
Dim N
List1.AddItem "Dim lReigon"
List1.AddItem "Dim lResult"
List1.AddItem "Dim P"
List1.AddItem "Dim Star(" & (Form1.Label2.Caption) & ") As POINTAPI"
List1.AddItem "P = Screen.TwipsPerPixelX"
For N = 0 To Form1.Label2.Caption - 1
List1.AddItem "Star(" & N & ").x = (" & Form3.XL.List(N) & "/ P)     :     Star(" & N & ").y = (" & Form3.YL.List(N) & " /P)"
Next N
N = (Form1.Label2.Caption)
List1.AddItem "Star(" & N & ").x = (" & Form3.XL.List(0) & "/ P)     :     Star(" & N & ").y = (" & Form3.YL.List(0) & " /P)"
List1.AddItem "lReigon = CreatePolygonRgn(Star(0)," & (N + 1) & ", 1)" '1 - ALTERNATE
List1.AddItem "lResult = SetWindowRgn(Me.hWnd, lReigon, True)"
'Sleep 250
'On text
Dim K
For K = 0 To List1.ListCount
Text3.Text = Text3.Text & List1.List(K) & vbCrLf
Next K

End Sub

Private Sub Option1_Click()
Label1.Caption = "Copy on Module"
Text2.Visible = False
Text1.Visible = True
End Sub

Private Sub Option2_Click()
Label1.Caption = "Copy on Form"
Text2.Visible = True
Text1.Visible = False
End Sub
