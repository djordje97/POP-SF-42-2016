   M S B A M L   `   `   `  ����L  HPOP-SF42-2016-GUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:POP_SF42_2016_GUI.UIPOP_SF42_2016_GUI.UI  5   	   2    ,POP_SF42_2016_GUI.UI.NamestajDodavanjeIzmena   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:POP_SF42_2016_GUI.UI     5   	     � Title$  NamestajDodavanjeIzmena��5   	   $	��335��6)   $	��489��66    � 
ResizeMode$ NoResize=�6B    � WindowStartupLocation$ CenterScreen=�6X    � 	Resources 5	         TextBoxError.   (POP_SF42_2016_GUI.UI.ValidationConverter  	converter��%�   &	        &	 �     �� 5
   
   .R�5      ]� ��. .+�5      �� $��Right=�6   
���  ��$
��12pt(�6D   Polje ne sme biti prazno!6o   �� 5      
���  ��$��1q�6+   ._�5      �� 5      5      5        5   
   6$   5      .��5      � $��	0,0,-6,-8q�6   ���	#FF0066CC.+�5   
   �� $��Naziv:��6   $
��Left=�6!   $��28��6<   $��	40,30,0,0q�6H   $	��Top=�6[   $��75��6s   $��14(�6~   
�������6�   �� 5   
   $��Cena:��6   $
��Left=�6    $��	40,72,0,0q�6;   $	��Top=�6N   $��75��6f   $��14(�6q   
�������6   �� 5   
   $��	Kolicina:��6   $
��Left=�6$   $��28��6?   $��
40,118,0,0q�6K   $	��Top=�6_   $��75��6w   $��14(�6�   
�������6�   �� 5   
   $��Tip namestaja:��6   $
��Left=�6)   $��27��6D   $��
10,162,0,0q�6P   $	��Top=�6d   $	��105��6|   $��14(�6�   
�������6�   �� 5   
   -   5         ��Name$ 
btnPotvrdi��5       � ToolTip$ Potvrdi��6&   $
��Left=�68   $��53��6S   $��133,251,0,0q�6_   $	��Top=�6t   $��77��6�    �� 	IsDefault . ���	#FF0066CC���	#FF0066CC.��5      �� $��46��6   $��67��6    $\��V/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-document-save.ico��6+   ��5      �� 5       �� 
TargetType" ��6   .�5      ��  �� Property � {�	 �� Value	 .  62   
 �� Triggers
 5       ^� 5!       ^� 
Conditions 5"      �� 5#   "    �� Binding 6,   ��  �� Path$ (Validation.HasError)� �� ElementName$ tbKolicinaNamestaja�� �� Value	 False6|   �� 5$   "    6,   �� $ (Validation.HasError)�$ tbNazivNamestaja��	 False6y   �� 5%   "    6,   �� $ (Validation.HasError)�$ tbCenaNamestaja��	 False6x   .0�5'      ��  � {�	 . 6:   5(      5*      5,      �� 5-   
   -   5        $ btnOdustani��5-      $ Odustani��6&   $
��Left=�69   $��53��6T   $��253,251,0,0q�6`   $	��Top=�6u   $��77��6�    �� IsCancel . ���	#FF0066CC���	#FF0066CC.��5.      �� $��46��6   $��67��6    $Z��T/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-edit-delete.ico��6+   5/      �� 50   
   -   5         ��Name$ tbNazivNamestaja��50       =� ErrorTemplate# [  6-   $
��Left=�6r   $��28��6�   $��
133,30,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��143��6�    �� 	MaxLength$ 20��6�   .��6�   ��51      �� 52      $ Naziv�6    �� UpdateSourceTrigger$ PropertyChanged=�6'    �� ValidationRules 53      +   %POP_SF42_2016_GUI.UI.StringValidation  54      56      .��57      58      �� 59   
   -   5        $ tbCenaNamestaja��59      $
��Left=�6-   $��26��6H   $��
133,75,0,0q�6T   $
 Wrap=�6h   $	��Top=�6|   $	��143��6�   .��6�   ��5:      �� 5;      $
 Cena�6   $ 	LostFocus=�6&    5<      +   %POP_SF42_2016_GUI.UI.DoubleValidation  5=      5?      .��5@      5A      �� 5B   
   -   5        $ tbKolicinaNamestaja��5B      $
��Left=�61   $��28��6L   $��133,118,0,0q�6X   $
 Wrap=�6m   $	��Top=�6�   $	��143��6�   .��6�   ��5C      �� 5D      $ Kolicina�6   $ PropertyChanged=�6*    5E      (   "POP_SF42_2016_GUI.UI.IntValidation  5F      5H      .��5I      5J      �� 5K   
   -   5         ��Name$ cbTipNamestaja��5K      $
��Left=�6W   $��27��6r   $��133,162,0,0q�6~   $	��Top=�6�   $	��143��6�    �� SelectedItem 6,   �� $ TipNamestaja�6�   �� 5M   
   -   5         ��Name$ tbIspisGreske��5M      $
��12pt(�6+   $��
40,194,0,0q�6;   
���  ��$
��Bold"�6`   $
��Left=�5O      $	��364��67   $��23��6C   $	��Top=�6O   ��5N      �� $ tbCenaNamestaja��$ (Validation.Errors)� �� 	Converter# [ 5O   O   �� 5P   
   -   5        $ ispis��5P      $
��12pt(�6#   $��
40,222,0,0q�63   
���  ��$
��Bold"�6X   $
��Left=�5R      $	��364��67   $��23��6C   $	��Top=�6O   ��5Q      �� $ tbKolicinaNamestaja��$ (Validation.Errors)�# [ 5R   O   5S      5T      