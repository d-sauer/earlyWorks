VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   0  'None
   ClientHeight    =   225
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   3015
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   225
   ScaleWidth      =   3015
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   2640
      Top             =   2640
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "This product is licensed to:"
      ForeColor       =   &H80000010&
      Height          =   195
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   1890
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Mad Hackers"
      ForeColor       =   &H80000010&
      Height          =   195
      Left            =   1980
      TabIndex        =   0
      Top             =   0
      Width           =   960
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub Form_Load()
load glavna
load mala
load playlist
End Sub
Private Sub FXImage1_Notify()
End Sub
Private Sub Timer1_Timer()
Timer1.Interval = 0
Me.Hide
glavna.Show
glavna.Eyes1.Interval = 1
Call glavna.sakri
playlist.Show
glavna.vol.Value = 2500 - (-glavna.S.Volume)
glavna.Timer1.Interval = 1
End Sub
