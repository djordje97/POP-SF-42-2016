   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	   L HPOP-SF42-2016-GUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:POP_SF42_2016_GUI.UIPOP_SF42_2016_GUI.UI 5   	   0   *POP_SF42_2016_GUI.UI.AkcijaDodavanjeIzmena   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	   4local"clr-namespace:POP_SF42_2016_GUI.UI     5   	     � Title$  AkcijaDodavanjeIzmena��5	   	   $	��464��6'   $	��635��64    � 
ResizeMode$ NoResize=�6@    � WindowStartupLocation$ CenterScreen=�6V    � 	Resources 5
         TextBoxError.  (POP_SF42_2016_GUI.UI.ValidationConverter  	converter��%�   &	        &	 �     �� 5   
   .R�5      ]� ��. .+�5      �� $��Right=�6   
���  ��$
��12pt(�6D   Polje ne sme biti prazno!6o   �� 5      
���  ��$��1q�6+   ._�5      �� 5      5      5        5   
   6$   5      .��5      � ���	#FF0066CC.+�5   
   �� $��Pocetak akcije:��6   $
��Left=�6*   $��33��6E   $��	69,46,0,0q�6Q   $	��Top=�6d   $	��122��6|   
�������$��16(�6�   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ 	dpPocetak��5      {�.  $��
UltraBlack"�6i   $
��Left=�6�   $��33��6�   $��
191,46,0,0q�6�   $	��Top=�6�   $	��145��6�      FirstDayOfWeek$ Monday=�6�      SelectedDate 6*   ��  �� Path$ PocetakAkcije�6�   �� 5   
   $��Kraj akcije:��6   $
��Left=�6'   $��33��6B   $��	69,94,0,0q�6N   $	��Top=�6a   $	��122��6y   $��16(�6�   
�������6�     5   
   -   5        $ dpKraj��5      $
��Left=�6N   $��33��6i   $��
191,94,0,0q�6u   $	��Top=�6�   $	��145��6�    6%   �� $ 
KrajAkcije�6�   �� 5   
   $��Popust:��6   $
��Left=�6"   $��33��6=   $��103,328,0,0q�6I   $	��Top=�6^   $��88��6v   
�������$��16(�6�   �� 5   
   -   5         ��Name$ tbPopust��5      $��Center=�6%   $
��Left=�6G   $��33��6b   $��191,329,0,0q�6n   	 �� TextWrapping$
	 Wrap=�6�   $	��Top=�6�   $	��150��6�   
 �� 	MaxLength$
 3��6�   .��6�   ��5      �� 5      $ Popust�6    �� UpdateSourceTrigger$ PropertyChanged=�6(    �� ValidationRules 5      +  %POP_SF42_2016_GUI.UI.PopustValidation  5      5!      .��5"      5#      �� 5$   
   -   5         ��Name$ 
btnPotvrdi��5$       � ToolTip$ Potvrdi��6%   $
��Left=�67   $��53��6R   $��191,372,0,0q�6^   $	��Top=�6s   $��77��6�    �� 	IsDefault . ���	#FF0066CC���	#FF0066CC.��5%      �� $��46��6   $��67��6    $\��V/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-document-save.ico��6+   ��5&      �� 5'       �� 
TargetType" ��6   .�5(      ��  �� Property � {� �� Value .  62    �� Triggers 5)      ^� 5*       ^� 
Conditions 5+      �� 5,   "    �� Binding 6,   �� $ (Validation.HasError)� �� ElementName$ tbPopust�� �� Value	 False6q   .0�5.      ��  � {� . 6:   5/      51      53      �� 54   
   -   5        $ btnOdustani��54      $ Odustani��6&   $
��Left=�69   $��53��6T   $��285,372,0,0q�6`   $	��Top=�6u   $��77��6�    �� IsCancel . ���	#FF0066CC���	#FF0066CC.��55      �� $��46��6   $��67��6    $Z��T/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-edit-delete.ico��6+   56      &   System.Windows.Controls.DataGrid  57   
   -   5          Name$ dgNamestajAkcija��57         CanUserAddRows .     CanUserDeleteRows .     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6^   $
��Left=�6n   $	��184��6�   $��
79,140,0,0q�6�   $	��Top=�6�   $	��386��6�   6�   �� 58   
   -   5        $ btnDodaj��58      $ Dodaj namestaj��6#   $
��Left=�6<   $��35��6W   $��485,140,0,0q�6c   $	��Top=�6x   $��51��6�   ���	#FF0066CC���	#FF0066CC.��59      �� $��32��6   $��50��6    $W��Q/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-list-add.ico��6+   5:      �� 5;   
   -   5        $ 	btnUkloni��5;      $ Ukloni namestaj��6$   $
��Left=�6>   $��35��6Y   $��485,190,0,0q�6e   $	��Top=�6z   $��51��6�   ���	#FF0066CC���	#FF0066CC.��5<      �� $��32��6   $��50��6    $Z��T/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-edit-delete.ico��6+   5=      �� 5>   
   -	   5         ��Name$ tbIspisGreske��5>      $
��12pt(�6+   $��346,338,0,0q�6;   
���  ��$
��Bold"�6b   $
��Left=�5@      $	��280��67   $��23��6C   $	��Top=�6O   ��5?      �� $ tbPopust��$ (Validation.Errors)� �� 	Converter# [ 5@   O   5B      5C      