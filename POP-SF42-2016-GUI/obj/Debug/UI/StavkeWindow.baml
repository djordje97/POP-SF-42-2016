   M S B A M L   `   `   `  ����L  HPOP-SF42-2016-GUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:POP_SF42_2016_GUI.UIPOP_SF42_2016_GUI.UI  5   	   '    !POP_SF42_2016_GUI.UI.StavkeWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:POP_SF42_2016_GUI.UI     5   	     � Title$  StavkeWindow��5   	   $��454.95��6   $	��620��6.   
������� � 
ResizeMode$ NoResize=�6M    � WindowStartupLocation$ CenterScreen=�6c    � 	Resources 5	         TextBoxError.   (POP_SF42_2016_GUI.UI.ValidationConverter  	converter  DataGridCellStyle1 �� 
TargetType*  $System.Windows.Controls.DataGridCell �� Property �� Value �� 
TargetType J� SnapsToDevicePixels	 �� Triggers
 P� Property P� Value&   System.Windows.Controls.DataGrid   FocusBorderBrushKey ]� 
Conditions �� Property �� Value��%�  &	        &	 �     &	 �     �� 5
   
   .R�5      ]� ��. .+�5      �� $��Right=�6   
���  ��$
��12pt(�6D   Polje ne sme biti prazno!6o   �� 5      
���  ��$��1q�6+   ._�5      �� 5      5      5        5   
   6$   �� 5      "  6,   .�5   
   ��  � ��
 ���� 6'   �� 5   
    � ��
 ���� 6(   �� 5   
    � ��$ 1q�6,   �� 5   
    � �� 5      �� 5      "  6"   .R�5      �� #��z��6   #��z��6I   #��z��6}    . ._�5      �� # z 6+   5      5      5       	 5!   
   P� 5"      
 �@ 
IsSelected . . �5#      ��  � ��
 ���_�6/   �� 5$       � ��
 �����6/   �� 5%       � ��# � ��60   5&      P� 5'      
 �@J�IsKeyboardFocusWithin . . �5(      ��  � ��# �  60   5)      ]� 5*       5+      �� 5,       �@ 
IsSelected . 66   �� 5-       �@��IsSelectionActive .  6F   ./�5/      ��  � ��
 ���_�6/   �� 50       � ��
 �����6/   �� 51       � ��# � /�60   52      P� 53      
 � {� .  . �54      ��  � ��# � ��6/   55      57      58      .��5:      � ���	#FF0066CC.+�5;   
     -   5          Name$ 
dgNamestaj��5;         
IsReadOnly .    AutoGenerateColumns .    CanUserAddRows .     CanUserDeleteRows .     SelectionMode$ Single=�6�      CanUserReorderColumns .    ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6�   $
��Left=�6�   $	��167��6  $��	55,57,0,0q�6   $	��Top=�63  $	��471��6K     	CellStyle# �  6�  ��6T   ��  �� Source$ NamestajProdaja��5=      �� 5>   
   $��Izaberite namestaj:��6   $
��Left=�6.   $��31��6I   $��	55,21,0,0q�6U   $	��Top=�6h   $	��147��6�   $��16(�6�   
�������6�   �� 5?   
   $��	Kolicina:��6   $
��Left=�6$   $��28��6?   $��125,280,0,0q�6K   $	��Top=�6`   $��77��6x   
�������$��16(�6�   �� 5@   
   -   5         ��Name$ 
tbKolicina��5@      $��Center=�6&   $
��Left=�6I   $��28��6d   $��207,280,0,0q�6p    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $��78��6�   .��6�   ��5A      �� 5B       �� Path$ Kolicina�6    �� UpdateSourceTrigger$ PropertyChanged=�6*    �� ValidationRules 5C      -   'POP_SF42_2016_GUI.UI.KolicinaValidation  5D      5F      .��5G      5H      �� 5I   
   -   5         ��Name$ 
btnPotvrdi��5I        � ToolTip$  Potvrdi��6%   $
��Left=�67   $��53��6R   $��176,363,0,0q�6^   $	��Top=�6s   $��77��6�   ! �� 	IsDefault! . ���	#FF0066CC���	#FF0066CC.��5J      �� $��46��6   $��67��6    $\��V/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-document-save.ico��6+   ��5K      �� 5L      " ��6   .�5M      ��  � {� .  62   	 5N      ^� 5O      " ^� 
Conditions" 5P      �� 5Q   "   # �� Binding# 6,   �� $ (Validation.HasError)�$ �� ElementName$$ 
tbKolicina��	 False6s   .0�5S      ��  � {� . 6:   5T      5V      5X      �� 5Y   
   -   5        $ Odustani��5Y      $  Odustani��6$   $
��Left=�67   $��53��6R   $��317,363,0,0q�6^   $	��Top=�6s   $��77��6�   % �� IsCancel% . ���	#FF0066CC���	#FF0066CC.��5Z      �� $��43��6   $��67��6    $Z��T/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-edit-delete.ico��6+   5[      �� 5\   
   -   5        & ��Name$& tbIspisGreske��5\      $
��12pt(�6+   $��290,280,0,0q�6;   
���  ��$
��Bold"�6a   $
��Left=�5^      $	��296��67   $��23��6C   $	��Top=�6O   ��5]      �� $$ 
tbKolicina��$ (Validation.Errors)�' �� 	Converter#' [ 5^   O   5`      5a      