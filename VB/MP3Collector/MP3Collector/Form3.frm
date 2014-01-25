VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form Form1 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Genre"
   ClientHeight    =   2400
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   2760
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2400
   ScaleWidth      =   2760
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.TreeView Treii 
      Height          =   2415
      Index           =   0
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   4260
      _Version        =   393217
      Indentation     =   18
      LabelEdit       =   1
      LineStyle       =   1
      Style           =   6
      Appearance      =   1
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Form_Load()
Form1.Treii(0).Nodes.Clear
All_GenreS

End Sub

Public Sub All_GenreS()
Dim Node1, Node2, Num
Dim Mnum As Integer

Set Node1 = Form1.Treii(0).Nodes.Add(, , , "Rock"): Node1.Tag = Node1.Text
    For Mnum = 0 To 202
    Set Node2 = Form1.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Rock(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Form1.Treii(0).Nodes.Add(, , , "Country"): Node1.Tag = Node1.Text
    For Mnum = 0 To 29
    Set Node2 = Form1.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Country(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Form1.Treii(0).Nodes.Add(, , , "Jazz"): Node1.Tag = Node1.Text
    For Mnum = 0 To 55
    Set Node2 = Form1.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Jazz(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Form1.Treii(0).Nodes.Add(, , , "Blues"): Node1.Tag = Node1.Text
    For Mnum = 0 To 53
    Set Node2 = Form1.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Blues(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Form1.Treii(0).Nodes.Add(, , , "World"): Node1.Tag = Node1.Text
    For Mnum = 0 To 134
    Set Node2 = Form1.Treii(0).Nodes.Add(Node1.Index, tvwChild, , World(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Form1.Treii(0).Nodes.Add(, , , "Folk"): Node1.Tag = Node1.Text
    For Mnum = 0 To 15
    Set Node2 = Form1.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Folk(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Form1.Treii(0).Nodes.Add(, , , "Rap"): Node1.Tag = Node1.Text
    For Mnum = 0 To 23
    Set Node2 = Form1.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Rap(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum
    
Set Node1 = Form1.Treii(0).Nodes.Add(, , , "Reggae"): Node1.Tag = Node1.Text
    For Mnum = 0 To 14
    Set Node2 = Form1.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Reggae(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum
    
Set Node1 = Form1.Treii(0).Nodes.Add(, , , "Vocal"): Node1.Tag = Node1.Text
    For Mnum = 0 To 12
    Set Node2 = Form1.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Vocal(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Form1.Treii(0).Nodes.Add(, , , "Gospel"): Node1.Tag = Node1.Text
    For Mnum = 0 To 19
    Set Node2 = Form1.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Gospel(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Form1.Treii(0).Nodes.Add(, , , "Easy Listing"): Node1.Tag = Node1.Text
    For Mnum = 0 To 12
    Set Node2 = Form1.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Easy(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Form1.Treii(0).Nodes.Add(, , , "New Age"): Node1.Tag = Node1.Text
    For Mnum = 0 To 17
    Set Node2 = Form1.Treii(0).Nodes.Add(Node1.Index, tvwChild, , NewAge(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

'Set Node1 = Form1.Treii(0).Nodes.Add(, , , "Winamp"): Node1.Tag = Node1.Text
'    For Mnum = 0 To 125
'    Set Node2 = Form1.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Winamp(Mnum)): Node2.Tag = Node1.Tag
'    Next Mnum

End Sub

Private Sub Treii_DblClick(Index As Integer)
Dim SelL
Ge_N.Genn = Treii(0).SelectedItem.Text
Form1.Hide
End Sub
