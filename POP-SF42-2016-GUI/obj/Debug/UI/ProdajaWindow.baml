   M S B A M L   `   `   `  ����L  HPOP-SF42-2016-GUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:POP_SF42_2016_GUI.UIPOP_SF42_2016_GUI.UI  5   	   (    "POP_SF42_2016_GUI.UI.ProdajaWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:POP_SF42_2016_GUI.UI     5   	     � Title$  ProdajaWindow��5   	   $	��545��6   $	��812��6,    � 
ResizeMode$ NoResize=�68    � WindowStartupLocation$ CenterScreen=�6N    � 	Resources 5	         TextBoxError.   (POP_SF42_2016_GUI.UI.ValidationConverter  	converter��%�   &	        &	 �     �� 5
   
   .R�5      ]� ��. .+�5      �� $��Right=�6   
���  ��$
��12pt(�6D   Polje ne sme biti prazno!6o   �� 5      
���  ��$��1q�6+   ._�5      �� 5      5      5        5   
   6$   5      .��5      � ���	#FF0066CC.+�5   
   �� -   5         ��Name$ 
btnPotvrdi��5       � ToolTip$ Potvrdi��6%   $
��Left=�67   $��53��6R   $��248,453,0,0q�6^   $	��Top=�6s   $��77��6�    �� 	IsDefault . ���	#FF0066CC���	#FF0066CC.��5      �� $��46��6   $��67��6    $\��V/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-document-save.ico��6+   ��5      �� 5       �� 
TargetType" ��6   .�5      ��  �� Property � {�	 �� Value	 .  62   
 �� Triggers
 5      ^� 5       ^� 
Conditions 5      �� 5   "    �� Binding 6,   ��  �� Path$ (Validation.HasError)� �� ElementName$ tbKupac�� �� Value	 False6p   .0�5      ��  � {�	 . 6:   5       5"      5$      �� 5%   
   -   5        $ btnOdustani��5%      $ Odustani��6&   $
��Left=�69   $��53��6T   $��393,453,0,0q�6`   $	��Top=�6u   $��77��6�    �� IsCancel . ���	#FF0066CC���	#FF0066CC.��5&      �� $��46��6   $��67��6    $Z��T/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-edit-delete.ico��6+   5'      &   System.Windows.Controls.DataGrid  5(   
   -   5          Name$ dgStavke��5(         AutoGenerateColumns .    CanUserResizeColumns .     CanUserAddRows .     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6v      SelectionMode$ Single=�6�   $
��Left=�6�   $	��167��6�   $��
10,185,0,0q�6�   $	��Top=�6�   $	��342��6�   6�   �� 5)   
   -   5        $ 
btnPreuzmi��5)      $ Dodaj stavku��6%   $
��Left=�6<   $��35��6W   $��
10,360,0,0q�6c   $	��Top=�6w   $��51��6�   ���	#FF0066CC���	#FF0066CC.��5*      �� $��25��6   $��41��6    $W��Q/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-list-add.ico��6+   5+      �� 5,   
   $��Kupac:��6   $
��Left=�6"   $��31��6=   $��
199,29,0,0q�6I   $	��Top=�6]   $	��103��6u   $��16(�6�   
�������6�   �� 5-   
   -   5         ��Name$ tbKupac��5-       =� ErrorTemplate# [  6#   $��Center=�6h   $
��Left=�6�   $��29��6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��154��6�   $��
302,31,0,0q�6�    �� 	MaxLength$ 30��6�   .��6  ��5.      �� 5/      $ Kupac�6    �� UpdateSourceTrigger$ PropertyChanged=�6'    �� ValidationRules 50      +   %POP_SF42_2016_GUI.UI.StringValidation  51      53      .��54      55      �� 56   
   $��Datum:��6   $
��Left=�6!   $��30��6<   $��
199,76,0,0q�6H   $	��Top=�6\   $��76��6t   $��16(�6   
�������6�   (  "System.Windows.Controls.DatePicker  57   
   -   5          Name$ dpDatum��57      {�.  $��
UltraBlack"�6c   $
��Left=�6{   $��30��6�   $��
302,76,0,0q�6�   $	��Top=�6�   $	��154��6�      SelectedDate 6&   �� $ DatumProdaje�6�   �� 58   
   $��Stavke prodaje:��6   $
��Left=�6*   $��
10,136,0,0q�6E   $	��Top=�6Y   $	��156��6q   $��20(�6}   
�������$��44��6�   �� 59   
   -   5        $ 	btnUkloni��59      $ Ukloni stavku��6$   $
��Left=�6<   $��35��6W   $��
75,360,0,0q�6c   $	��Top=�6w   $��53��6�   ���	#FF0066CC���	#FF0066CC.��5:      �� $��25��6   $��43��6    $Z��T/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-edit-delete.ico��6+   5;        5<   
   -   5        $ dgUsluge��5<       .  $ Single=�6<    . $ * 6o   $
��Left=�6�   $	��167��6�   $��408,185,0,0q�6�   $	��Top=�6�   $	��372��6�   6�   �� 5=   
   -	   5        $ 	btnDodajU��5=      $ Dodaj uslugu��6$   $
��Left=�6;   $��35��6V   $��551,361,0,0q�6b   $	��Top=�6w   $��51��6�   ���	#FF0066CC���	#FF0066CC.��5>      �� $��25��6   $��41��6    $W��Q/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-list-add.ico��6+   5?      �� 5@   
   -
   5        $ 	btnObisiU��5@      $ Ukloni uslugu��6$   $
��Left=�6<   $��35��6W   $��617,361,0,0q�6c   $	��Top=�6x   $��53��6�   ���	#FF0066CC���	#FF0066CC.��5A      �� $��25��6   $��43��6    $Z��T/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-edit-delete.ico��6+   5B      �� 5C   
   $��Dodatne usluge:��6   $
��Left=�6*   $��44��6E   $��449,136,0,0q�6Q   $	��Top=�6f   $	��158��6~   $��20(�6�   
�������6�   5E      5F      