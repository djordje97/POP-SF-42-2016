   M S B A M L   `   `   `  ����L  HPOP-SF42-2016-GUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:POP_SF42_2016_GUI.UIPOP_SF42_2016_GUI.UI  5   	   7    1POP_SF42_2016_GUI.UI.DodatneUslugeDodavanjeIzmena   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:POP_SF42_2016_GUI.UI     5   	     � Title$"  DodatneUslugeDodavanjeIzmena��5   	   $��297.087��6.   $��503.105��6?    � WindowStartupLocation$ CenterScreen=�6O    � 
ResizeMode$ NoResize=�6t    � 	Resources 5	         TextBoxError.   (POP_SF42_2016_GUI.UI.ValidationConverter  	converter��%�   &	        &	 �     �� 5
   
   .R�5      ]� ��. .+�5      �� $��Right=�6   
���  ��$
��12pt(�6D   Polje ne sme biti prazno!6o   �� 5      
���  ��$��1q�6+   ._�5      �� 5      5      5        5   
   6$   5      .��5      � ���	#FF0066CC.+�5   
   �� $��Naziv:��6   $
��Left=�6!   $��32��6<   $��	95,51,0,0q�6H   $	��Top=�6[   $��73��6s   
�������$��16(�6�   �� 5   
   $��Cena:��6   $
��Left=�6    $��34��6;   $��	95,97,0,0q�6G   $	��Top=�6Z   $��73��6r   $��16(�6}   
�������6�   �� 5   
   -   5         ��Name$ tbNazivUsluge��5       �� 	MaxLength$ 15��6)    =� ErrorTemplate# [  68   $
��Left=�6}   $��23��6�   $��
155,59,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��127��6�   .��6�   ��5      �� 5       �� Path$ Naziv�6   	 �� UpdateSourceTrigger$	 PropertyChanged=�6'   
 �� ValidationRules
 5      +   %POP_SF42_2016_GUI.UI.StringValidation  5      5      .��5      5      �� 5    
   -   5        $ tbCenaUsluge��5       $
��Left=�6)   $��23��6D   $��155,105,0,0q�6P   $
 Wrap=�6e   $	��Top=�6y   $	��127��6�   .��6�   ��5!      �� 5"      $
 Cena�6   $	 PropertyChanged=�6&   
 5#      +   %POP_SF42_2016_GUI.UI.DoubleValidation  5$      5&      .��5'      5(      �� 5)   
   -   5         ��Name$ 
btnPotvrdi��5)       � ToolTip$ Potvrdi��6%   $
��Left=�67   $��53��6R   $��129,205,0,0q�6^   $	��Top=�6s   $��77��6�    �� 	IsDefault . ���	#FF0066CC���	#FF0066CC.��5*      �� $��46��6   $��67��6    $\��V/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-document-save.ico��6+   ��5+      �� 5,       �� 
TargetType" ��6   .�5-      ��  �� Property � {� �� Value .  62    �� Triggers 5.      ^� 5/       ^� 
Conditions 50      �� 51   "    �� Binding 6,   �� $ (Validation.HasError)� �� ElementName$ tbCenaUsluge�� �� Value	 False6u   �� 52   "    6,   �� $ (Validation.HasError)�$ tbNazivUsluge��	 False6v   .0�54      ��  � {� . 6:   55      57      59      �� 5:   
   -   5        $ btnOdustani��5:      $ Odustani��6&   $
��Left=�69   $��53��6T   $��232,205,0,0q�6`   $	��Top=�6u   $��77��6�    �� IsCancel . ���	#FF0066CC���	#FF0066CC.��5;      �� $��46��6   $��67��6    $Z��T/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-edit-delete.ico��6+   5<      �� 5=   
   -   5         ��Name$ tbIspisGreske��5=      $
��12pt(�6+   
���  ��$
��Bold"�6L   $��
75,145,0,0q�6^   $
��Left=�5>      $	��364��67   $��23��6C   $	��Top=�6O   ��5=   s   �� $ tbCenaUsluge��$ (Validation.Errors)� �� 	Converter# [ 5>   O   5@      5A      