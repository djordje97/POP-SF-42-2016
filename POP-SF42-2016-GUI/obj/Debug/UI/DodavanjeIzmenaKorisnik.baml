   M S B A M L   `   `   `  ����L  HPOP-SF42-2016-GUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:POP_SF42_2016_GUI.UIPOP_SF42_2016_GUI.UI  5   	   2    ,POP_SF42_2016_GUI.UI.DodavanjeIzmenaKorisnik   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:POP_SF42_2016_GUI.UI     5   	     � Title$  DodavanjeIzmenaKorisnik��5   	   $	��351��6)   $	��552��66    � 
ResizeMode$ NoResize=�6B    � WindowStartupLocation$ CenterScreen=�6X    � 	Resources 5	         TextBoxError.   (POP_SF42_2016_GUI.UI.ValidationConverter  	converter��%�   &	        &	 �     �� 5
   
   .R�5      ]� ��. .+�5      �� $��Right=�6   
���  ��$
��12pt(�6D   Polje ne sme biti prazno!6o   �� 5      
���  ��$��1q�6+   ._�5      �� 5      5      5        5   
   6$   5      .��5      � $��0,0,4,0q�6   ���	#FF0066CC.+�5   
   �� $
��Ime:��6   $
��Left=�6   $��Center=�6;   $��30��6_   $��	99,29,0,0q�6k   $	��Top=�6~   $��84��6�   $��16(�6�   
�������6�   �� 5   
   -   5         ��Name$ tbIme��5       =� ErrorTemplate# [  6!   $��Center=�6f   $
��Left=�6�   $��27��6�   $��
183,32,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��143��6�    �� 	MaxLength$ 20��6�   .��6  ��5      �� 5       �� Path$	 Ime�6   	 �� UpdateSourceTrigger$	 PropertyChanged=�6%   
 �� ValidationRules
 5      +   %POP_SF42_2016_GUI.UI.StringValidation  5      5      .��5      5      �� 5   
   $��Prezime:��6   $
��Left=�6#   $��30��6>   $��	99,72,0,0q�6J   $	��Top=�6]   $��84��6u   $��16(�6�   
������� J� RenderTransformOrigin$ 	0.476,0.7&�6�   �� 5    
   -   5        $ 	tbPrezime��5       # [  6%   $��Center=�6j   $
��Left=�6�   $��27��6�   $��
183,75,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��143��6�   $ 20��6   .��6  ��5!      �� 5"      $ Prezime�6   $	 PropertyChanged=�6)   
 5#        5$      5&      .��5'      5(      �� 5)   
   $��Korisnicko ime:��6   $
��Left=�6*   $��30��6E   $��
56,108,0,0q�6Q   $	��Top=�6e   $	��127��6}   $��16(�6�   
�������$ 0.488,0.667&�6�   �� 5*   
   -   5        $ tbKorisnickoIme��5*      $��Center=�6+   $
��Left=�6M   $��27��6h   $��183,111,0,0q�6t   $
 Wrap=�6�   $	��Top=�6�   $	��143��6�   $ 20��6�   .��6�   ��5+      �� 5,      $ Korisnicko_Ime�6   $	 PropertyChanged=�60   
 5-      2   ,POP_SF42_2016_GUI.UI.KorisnickoimeValidation  5.      50      .��51      52      �� 53   
   -   5         ��Name$ 
btnPotvrdi��53       � ToolTip$ Potvrdi��6%   $
��Left=�67   $��53��6R   $��159,265,0,0q�6^   $	��Top=�6s   $��77��6�    �� IsCancel . ���	#FF0066CC���	#FF0066CC.��54      �� $��46��6   $��67��6    $\��V/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-document-save.ico��6+   ��55      �� 56       �� 
TargetType" ��6   .�57      ��  �� Property � {� �� Value .  62    �� Triggers 58      ^� 59       ^� 
Conditions 5:      �� 5;   "    �� Binding 6,   �� $ (Validation.HasError)� �� ElementName$ tbIme�� �� Value	 False6n   �� 5<   "    6,   �� $ (Validation.HasError)�$ 	tbPrezime��	 False6r   �� 5=   "    6,   �� $ (Validation.HasError)�$ tbKorisnickoIme��	 False6x   �� 5>   "    6,   �� $ (Validation.HasError)�$ 	tbLozinka��	 False6r   .0�5@      ��  � {� . 6:   5A      5C      5E      �� 5F   
   -   5        $ btnOdustani��5F      $ Odustani��6&   $
��Left=�69   $��53��6T   $��286,265,0,0q�6`   $	��Top=�6u   $��77��6�    . ���	#FF0066CC���	#FF0066CC.��5G      �� $��46��6   $��67��6    $Z��T/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-edit-delete.ico��6+   5H      �� 5I   
   $��Lozinka:��6   $
��Left=�6%   $��29��6@   $��
84,150,0,0q�6L   $	��Top=�6`   $��99��6x   $��16(�6�   
�������6�   �� 5J   
   -   5        $ 	tbLozinka��5J      # [  6%   $��Center=�6j   $
��Left=�6�   $��27��6�   $��183,150,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��143��6�   $ 20��6  .��6  ��5K      �� 5L      $ Lozinka�6   $	 PropertyChanged=�6)   
 5M        5N      5P      .��5Q      5R      �� 5S   
   -   5         ��Name$ cbTipKorisnika��5S      $
��Left=�6+   $��25��6F   $��183,201,0,0q�6R   $	��Top=�6g   $	��143��6    �� SelectedItem 6�   �� $ TipKorisnika��� 5T   
   $��Tip Korisnika:��6   $
��Left=�6)   $��36��6D   $��
67,201,0,0q�6P   $	��Top=�6d   $	��116��6|   
�������$��16(�6�   �� 5U   
   -   5         ��Name$ tbIspisGreske��5U      $
��12pt(�6+   $��120,237,0,0q�6<   
���  ��$
��Bold"�6b   $
��Left=�5W      $	��364��67   $��23��6C   $	��Top=�6O   ��5V      �� $ tbKorisnickoIme��$ (Validation.Errors)� �� 	Converter# [ 5W   O   5Y      5Z      