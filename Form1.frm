VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Registry"
   ClientHeight    =   1740
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3135
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1740
   ScaleWidth      =   3135
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      Caption         =   "New Key"
      Height          =   975
      Left            =   0
      TabIndex        =   2
      Top             =   720
      Width           =   3135
      Begin VB.CommandButton Command1 
         Caption         =   "Save"
         Height          =   315
         Left            =   2160
         TabIndex        =   4
         Top             =   600
         Width           =   855
      End
      Begin VB.TextBox Text2 
         Height          =   285
         Left            =   120
         TabIndex        =   3
         Text            =   "Text2"
         Top             =   240
         Width           =   2895
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Old Key"
      Height          =   615
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   3135
      Begin VB.TextBox Text1 
         Height          =   285
         Left            =   120
         TabIndex        =   1
         Text            =   "Text1"
         Top             =   240
         Width           =   2895
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
CreateKey "HKCU\Software\Nerdware\Reg Example\Poop Fart", Text2.Text
End Sub

Private Sub Form_Load()
Text1.Text = ReadKey("HKCU\Software\Nerdware\Reg Example\Poop Fart")
End Sub

