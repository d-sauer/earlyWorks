VERSION 5.00
Begin VB.Form Form3 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Line"
   ClientHeight    =   5385
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   2685
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5385
   ScaleWidth      =   2685
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Height          =   135
      Left            =   2280
      TabIndex        =   15
      Top             =   3480
      Width           =   135
   End
   Begin VB.Frame Frame1 
      Caption         =   "Line Detail"
      Height          =   1335
      Left            =   0
      TabIndex        =   6
      Top             =   3960
      Width           =   2655
      Begin VB.HScrollBar YY2 
         Height          =   135
         Left            =   720
         SmallChange     =   5
         TabIndex        =   14
         Top             =   1140
         Width           =   1815
      End
      Begin VB.HScrollBar XX2 
         Height          =   135
         Left            =   720
         SmallChange     =   5
         TabIndex        =   13
         Top             =   920
         Width           =   1815
      End
      Begin VB.HScrollBar YY1 
         Height          =   135
         Left            =   720
         SmallChange     =   5
         TabIndex        =   12
         Top             =   700
         Width           =   1815
      End
      Begin VB.HScrollBar XX1 
         Height          =   135
         Left            =   720
         SmallChange     =   5
         TabIndex        =   11
         Top             =   500
         Width           =   1815
      End
      Begin VB.HScrollBar MaxL 
         Height          =   135
         LargeChange     =   5
         Left            =   1200
         Min             =   1
         TabIndex        =   8
         Top             =   280
         Value           =   1
         Width           =   1335
      End
      Begin VB.Label Label13 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
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
         ForeColor       =   &H0000FFFF&
         Height          =   165
         Left            =   585
         TabIndex        =   20
         Top             =   1095
         Width           =   75
      End
      Begin VB.Label Label12 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
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
         ForeColor       =   &H00FF0000&
         Height          =   165
         Left            =   585
         TabIndex        =   19
         Top             =   900
         Width           =   75
      End
      Begin VB.Label Label11 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
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
         ForeColor       =   &H0000FFFF&
         Height          =   165
         Left            =   585
         TabIndex        =   18
         Top             =   675
         Width           =   75
      End
      Begin VB.Label Label10 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
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
         ForeColor       =   &H00FF0000&
         Height          =   165
         Left            =   585
         TabIndex        =   17
         Top             =   480
         Width           =   75
      End
      Begin VB.Label Label8 
         BackStyle       =   0  'Transparent
         Caption         =   "X1 Y1 X2 Y2"
         Height          =   855
         Left            =   60
         TabIndex        =   10
         Top             =   480
         Width           =   255
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "0/0"
         ForeColor       =   &H00404040&
         Height          =   195
         Left            =   480
         TabIndex        =   9
         Top             =   240
         Width           =   255
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Line"
         Height          =   195
         Left            =   120
         TabIndex        =   7
         Top             =   240
         Width           =   300
      End
   End
   Begin VB.ListBox YL 
      Height          =   2790
      Left            =   1320
      TabIndex        =   4
      Top             =   480
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Height          =   135
      Left            =   840
      TabIndex        =   3
      Top             =   3480
      Width           =   135
   End
   Begin VB.ListBox XL 
      Height          =   2790
      Left            =   0
      TabIndex        =   1
      Top             =   480
      Width           =   1335
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "Label4"
      Height          =   195
      Left            =   840
      TabIndex        =   21
      Top             =   3720
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Select"
      Height          =   195
      Left            =   1320
      TabIndex        =   16
      Top             =   3360
      Width           =   450
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H00E0E0E0&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   1800
      Top             =   3360
      Width           =   495
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "  X                             Y"
      Height          =   195
      Left            =   360
      TabIndex        =   5
      Top             =   240
      Width           =   1605
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00E0E0E0&
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   360
      Top             =   3360
      Width           =   495
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Line"
      Height          =   195
      Left            =   0
      TabIndex        =   2
      Top             =   3360
      Width           =   300
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Line Code"
      Height          =   195
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   720
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim CdlgEx1 As New CdlgEx
Dim N
Dim SL
Private Sub Command1_Click()
CdlgEx1.hOwner = Me.hWnd
CdlgEx1.DialogTitle = "Line Color"
CdlgEx1.ShowColor
Shape1.FillColor = CdlgEx1.RGBResult
For N = 0 To 1600
Form1.Line1(N).BorderColor = Shape1.FillColor
Next N
End Sub

Private Sub Command2_Click()
CdlgEx1.hOwner = Me.hWnd
CdlgEx1.DialogTitle = "Line Color"
CdlgEx1.ShowColor
Shape2.FillColor = CdlgEx1.RGBResult
Form1.Line1(SL).BorderColor = Shape2.FillColor
End Sub

Private Sub HScroll1_Change()
Label5.Caption = HScroll1.Value
End Sub

Private Sub HScroll1_Scroll()
Label5.Caption = HScroll1.Value
End Sub

Private Sub MaxL_Change()
SL = MaxL.Value
Label7.Caption = MaxL.Value & "/" & MaxL.Max
Dim K
For K = 0 To MaxL.Max
Form1.Line1(K).BorderColor = Shape1.FillColor
Next K
Form1.Line1(MaxL.Value).BorderColor = Shape2.FillColor
XX1.Value = Form1.Line1(SL).X1
XX2.Value = Form1.Line1(SL).X2
YY1.Value = Form1.Line1(SL).Y1
YY2.Value = Form1.Line1(SL).Y2
End Sub

Private Sub MaxL_Scroll()
SL = MaxL.Value
Label7.Caption = MaxL.Value & "/" & MaxL.Max
Dim K
For K = 0 To MaxL.Max
Form1.Line1(K).BorderColor = Shape1.FillColor
Next K
Form1.Line1(MaxL.Value).BorderColor = Shape2.FillColor
XX1.Value = Form1.Line1(SL).X1
XX2.Value = Form1.Line1(SL).X2
YY1.Value = Form1.Line1(SL).Y1
YY2.Value = Form1.Line1(SL).Y2
End Sub

Private Sub XX1_Change()
Form1.Line1(SL).X1 = XX1.Value
Form1.Line1(SL - 1).X2 = XX1.Value
Label10.Caption = XX1.Value
End Sub

Private Sub XX1_Scroll()
Form1.Line1(SL).X1 = XX1.Value
Form1.Line1(SL - 1).X2 = XX1.Value
Label10.Caption = XX1.Value
End Sub

Private Sub XX2_Change()
Form1.Line1(SL).X2 = XX2.Value
Form1.Line1(SL + 1).X1 = XX2.Value
Label12.Caption = XX2.Value
End Sub

Private Sub XX2_Scroll()
Form1.Line1(SL).X2 = XX2.Value
Form1.Line1(SL + 1).X1 = XX2.Value
Label12.Caption = XX2.Value
End Sub

Private Sub YY1_Change()
Form1.Line1(SL).Y1 = YY1.Value
Form1.Line1(SL - 1).Y2 = YY1.Value
Label11.Caption = YY1.Value
End Sub

Private Sub YY1_Scroll()
Form1.Line1(SL).Y1 = YY1.Value
Form1.Line1(SL - 1).Y2 = YY1.Value
Label11.Caption = YY1.Value
End Sub

Private Sub YY2_Change()
Form1.Line1(SL).Y2 = YY2.Value
Form1.Line1(SL + 1).Y1 = YY2.Value
Label13.Caption = YY2.Value
End Sub

Private Sub YY2_Scroll()
Form1.Line1(SL).Y2 = YY2.Value
Form1.Line1(SL + 1).Y1 = YY2.Value
Label13.Caption = YY2.Value
End Sub
