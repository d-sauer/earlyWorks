VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Genre 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Genre"
   ClientHeight    =   5010
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   3210
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5010
   ScaleWidth      =   3210
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      Height          =   3975
      Index           =   1
      Left            =   0
      ScaleHeight     =   3915
      ScaleWidth      =   3135
      TabIndex        =   12
      Top             =   0
      Visible         =   0   'False
      Width           =   3200
      Begin VB.TextBox Text2 
         Height          =   285
         Left            =   50
         TabIndex        =   13
         Top             =   3480
         Width           =   3080
      End
      Begin MSComctlLib.TreeView Tre 
         Height          =   3375
         Index           =   2
         Left            =   0
         TabIndex        =   14
         Top             =   0
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   5953
         _Version        =   393217
         LabelEdit       =   1
         Style           =   7
         Appearance      =   1
      End
   End
   Begin VB.PictureBox Picture1 
      Height          =   3975
      Index           =   3
      Left            =   0
      ScaleHeight     =   3915
      ScaleWidth      =   3135
      TabIndex        =   18
      Top             =   0
      Visible         =   0   'False
      Width           =   3200
      Begin VB.TextBox Text4 
         Height          =   285
         Left            =   50
         TabIndex        =   19
         Top             =   3480
         Width           =   3080
      End
      Begin MSComctlLib.TreeView Tre 
         Height          =   3375
         Index           =   4
         Left            =   0
         TabIndex        =   20
         Top             =   0
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   5953
         _Version        =   393217
         LabelEdit       =   1
         Style           =   7
         Appearance      =   1
      End
   End
   Begin VB.PictureBox Picture1 
      Height          =   3975
      Index           =   2
      Left            =   0
      ScaleHeight     =   3915
      ScaleWidth      =   3135
      TabIndex        =   15
      Top             =   0
      Visible         =   0   'False
      Width           =   3200
      Begin VB.TextBox Text3 
         Height          =   285
         Left            =   50
         TabIndex        =   16
         Top             =   3480
         Width           =   3080
      End
      Begin MSComctlLib.TreeView Tre 
         Height          =   3375
         Index           =   3
         Left            =   0
         TabIndex        =   17
         Top             =   0
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   5953
         _Version        =   393217
         LabelEdit       =   1
         Style           =   7
         Appearance      =   1
      End
   End
   Begin VB.PictureBox Picture1 
      Height          =   3975
      Index           =   0
      Left            =   0
      ScaleHeight     =   3915
      ScaleWidth      =   3135
      TabIndex        =   9
      Top             =   0
      Visible         =   0   'False
      Width           =   3200
      Begin VB.TextBox Text1 
         Height          =   285
         Left            =   50
         TabIndex        =   11
         Top             =   3480
         Width           =   3080
      End
      Begin MSComctlLib.TreeView Tre 
         Height          =   3375
         Index           =   1
         Left            =   0
         TabIndex        =   10
         Top             =   0
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   5953
         _Version        =   393217
         LabelEdit       =   1
         Style           =   7
         Appearance      =   1
      End
   End
   Begin VB.OptionButton Option1 
      Height          =   255
      Index           =   4
      Left            =   2160
      Picture         =   "Genre.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   4200
      Width           =   975
   End
   Begin VB.OptionButton Option1 
      Height          =   255
      Index           =   3
      Left            =   1200
      Picture         =   "Genre.frx":00D9
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   4200
      Width           =   975
   End
   Begin VB.OptionButton Option1 
      Height          =   255
      Index           =   0
      Left            =   0
      Picture         =   "Genre.frx":01C7
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   3960
      Width           =   975
   End
   Begin VB.OptionButton Option1 
      Height          =   255
      Index           =   1
      Left            =   960
      Picture         =   "Genre.frx":02A3
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   3960
      Width           =   975
   End
   Begin VB.OptionButton Option1 
      Height          =   255
      Index           =   2
      Left            =   1920
      Picture         =   "Genre.frx":0381
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   3960
      Width           =   975
   End
   Begin MSComctlLib.TreeView Tre 
      Height          =   3975
      Index           =   0
      Left            =   0
      TabIndex        =   7
      Top             =   0
      Visible         =   0   'False
      Width           =   3200
      _ExtentX        =   5636
      _ExtentY        =   7011
      _Version        =   393217
      Indentation     =   18
      LabelEdit       =   1
      LineStyle       =   1
      PathSeparator   =   "x"
      Style           =   7
      Appearance      =   1
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Ok"
      Height          =   375
      Left            =   2040
      TabIndex        =   5
      Top             =   4620
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Height          =   135
      Left            =   0
      TabIndex        =   8
      Top             =   4440
      Width           =   3255
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   840
      TabIndex        =   6
      Top             =   4620
      Width           =   1215
   End
End
Attribute VB_Name = "Genre"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim NESTO
Private Sub Command1_Click()
On Error Resume Next
Select Case NESTO
Case 0
scanf.Text1(4).Text = Tre(0).SelectedItem.Text
Music.Text6.Text = Tre(0).SelectedItem.Text
Case 1
Text1.Text = Tre(1).SelectedItem.Text
Case 2
Text2.Text = Tre(2).SelectedItem.Text
End Select

Unload Genre
GLF.Enabled = True
GLF.SetFocus
End Sub

Private Sub Command2_Click()
Unload Genre
GLF.Enabled = True
GLF.SetFocus
End Sub


Private Sub Form_Load()
Tre(0).Nodes.Clear
Tre(1).Nodes.Clear
Tre(2).Nodes.Clear
Tre(3).Nodes.Clear
Tre(4).Nodes.Clear
Call All_Genre
GLF.Enabled = False
End Sub


Private Sub Form_Terminate()
On Error Resume Next
GLF.Enabled = True
GLF.SetFocus
End Sub

Private Sub Option1_Click(Index As Integer)
Tre(0).Visible = False
Picture1(0).Visible = False
Picture1(1).Visible = False
Picture1(2).Visible = False
Picture1(3).Visible = False
NESTO = Index
Select Case Index
Case 0
Tre(0).Visible = True
Case 1
Picture1(0).Visible = True
Case 2
Picture1(1).Visible = True
Case 3
Picture1(2).Visible = True
Case 4
Picture1(3).Visible = True
End Select
End Sub

Private Sub Tre_Click(Index As Integer)
Select Case Index
Case 0
Genre.Caption = "Music Genre / " & Tre(0).SelectedItem.Text
End Select
End Sub

Private Sub Tre_DblClick(Index As Integer)
Select Case Index
Case 0
scanf.Text1(4).Text = Tre(0).SelectedItem.Text
Music.Text6.Text = Tre(0).SelectedItem.Text
Case 1
Text1.Text = Tre(1).SelectedItem.Text
Case 2
Text2.Text = Tre(2).SelectedItem.Text
End Select
End Sub

Public Function GenreCl(Numm As Integer)
Tre(0).Visible = False
Picture1(0).Visible = False
Picture1(1).Visible = False
Picture1(2).Visible = False
Picture1(3).Visible = False
Option1(Numm).Value = True

Select Case Numm
Case 0
Tre(0).Visible = True
Case 1
Picture1(0).Visible = True
Case 2
Picture1(1).Visible = True
Case 3
Picture1(2).Visible = True
Case 4
Picture1(3).Visible = True
End Select
End Function
