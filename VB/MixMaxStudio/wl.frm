VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{784B8A28-DF18-11D3-A44A-8C0C4C6F500A}#4.0#0"; "OCI.OCX"
Begin VB.Form WL 
   BackColor       =   &H00FF8080&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Welcome to"
   ClientHeight    =   2790
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4680
   ControlBox      =   0   'False
   Icon            =   "WL.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2790
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Left            =   120
      Top             =   2040
   End
   Begin Oci.Eyes Eyes1 
      Height          =   255
      Left            =   2040
      TabIndex        =   9
      Top             =   1680
      Width           =   615
      _ExtentX        =   1085
      _ExtentY        =   450
      BackColor       =   16744576
      Interval        =   10
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FF8080&
      Height          =   1815
      Left            =   40
      TabIndex        =   0
      Top             =   0
      Width           =   4575
      Begin VB.CheckBox Check1 
         BackColor       =   &H00FF8080&
         Caption         =   "Show icon in Tray"
         Enabled         =   0   'False
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   1320
         Value           =   2  'Grayed
         Visible         =   0   'False
         Width           =   1695
      End
      Begin VB.TextBox Text2 
         BackColor       =   &H00FF8080&
         Height          =   285
         Left            =   960
         TabIndex        =   4
         Top             =   600
         Width           =   1335
      End
      Begin VB.TextBox Text1 
         BackColor       =   &H00FF8080&
         Height          =   285
         Left            =   720
         TabIndex        =   2
         Top             =   240
         Width           =   1335
      End
      Begin MSComctlLib.ImageList ImageList1 
         Left            =   2040
         Top             =   1800
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   -2147483643
         ImageWidth      =   32
         ImageHeight     =   32
         MaskColor       =   12632256
         _Version        =   393216
         BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
            NumListImages   =   2
            BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "WL.frx":030A
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "WL.frx":0BE6
               Key             =   ""
            EndProperty
         EndProperty
      End
      Begin VB.Image Image1 
         Height          =   480
         Left            =   3960
         Picture         =   "WL.frx":14C2
         Top             =   1200
         Width           =   480
      End
      Begin VB.Label P 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "C:\"
         Height          =   195
         Left            =   240
         TabIndex        =   8
         Top             =   1560
         Visible         =   0   'False
         Width           =   225
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0.0.0"
         Height          =   195
         Left            =   600
         TabIndex        =   6
         Top             =   960
         Width           =   360
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Date :"
         Height          =   195
         Index           =   2
         Left            =   120
         TabIndex        =   5
         Top             =   960
         Width           =   435
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Company :"
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   3
         Top             =   600
         Width           =   750
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Name :"
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   510
      End
   End
   Begin VB.Image I 
      Height          =   975
      Left            =   0
      Picture         =   "WL.frx":1D8C
      Top             =   1800
      Width           =   4740
   End
End
Attribute VB_Name = "WL"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim A
Dim R
Private Sub Image1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image1.Picture = ImageList1.ListImages(2).Picture
A = 1
End Sub

Private Sub Image1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
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
Call Apply_Set
End If
Image1.Picture = ImageList1.ListImages(1).Picture
A = 0
End Sub

Sub Apply_Set()
On Error Resume Next
CreateKey "HKEY_LOCAL_MACHINE\Software\MMStudio"
'
P.Caption = App.Path
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch0", Check1.Value
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch1", "1"
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch2", "1"
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch3", "0"
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch4", "1"
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch5", "1"
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch6", "1"
'About
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Lic1", Text1.Text
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Lic2", Text2.Text
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Lic3", Label2.Caption
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Q", "100"
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Pat", P.Caption
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "uvod", "4000"
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "eyes", "1"
Timer1.Interval = 500
End Sub

Private Sub Timer1_Timer()
Timer1.Interval = 0
End
End Sub
