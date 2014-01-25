VERSION 5.00
Object = "{918E6E43-F23A-11D0-901E-0020AF7543C2}#5.0#0"; "FXIMG50G.OCX"
Begin VB.Form Form2 
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   6795
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6795
   ScaleWidth      =   6000
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin FXIMG50GLib.FXImage FXImage1 
      Height          =   7095
      Left            =   -120
      TabIndex        =   0
      Top             =   0
      Width           =   6495
      _Version        =   327680
      _ExtentX        =   11456
      _ExtentY        =   12515
      _StockProps     =   65
      BackColor       =   12632256
      Persistence     =   -1  'True
      _StdProps       =   4939294
      ErrStr          =   "JAMHAOMABCGMAHLEKPBJODNAHLDHJIOOKGDFINFBEEGGPH"
      ErrCode         =   1555186931
      ErrInfo         =   -2024874448
      Begin FXIMG50GLib.FXImage FXImage2 
         Height          =   6810
         Left            =   120
         TabIndex        =   1
         Top             =   0
         Width           =   6000
         _Version        =   327680
         _ExtentX        =   10583
         _ExtentY        =   12012
         _StockProps     =   65
         BackColor       =   12632256
         Persistence     =   -1  'True
         _StdProps       =   3829068
         ErrStr          =   "JAMHAOMABCGMAHLEKPBJODNAHLDHJIOOKGDFINFBEEGGPH"
         ErrCode         =   1555186931
         ErrInfo         =   -2024874448
         Picture         =   "Form2.frx":0000
         Transparent     =   -1  'True
         TransparentColor=   16777215
      End
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Private Sub Form_Load()
Form1.Show
End Sub
