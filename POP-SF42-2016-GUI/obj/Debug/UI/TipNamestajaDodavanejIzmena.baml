   M S B A M L   `   `   `  ����L  HPOP-SF42-2016-GUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:POP_SF42_2016_GUI.UIPOP_SF42_2016_GUI.UI  5   	   6    0POP_SF42_2016_GUI.UI.TipNamestajaDodavanejIzmena   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:POP_SF42_2016_GUI.UI     5   	     � Title$!  TipNamestajaDodavanejIzmena��5   	   $	��246��6-   $	��519��6:    � 
ResizeMode$ NoResize=�6F    � WindowStartupLocation$ CenterScreen=�6\    � 	Resources 5	         TextBoxError.   (POP_SF42_2016_GUI.UI.ValidationConverter  	converter��%�   &	        &	 �     �� 5
   
   .R�5      ]� ��. .+�5      �� $��Right=�6   
���  ��$
��12pt(�6D   Polje ne sme biti prazno!6o   �� 5      
���  ��$��1q�6+   ._�5      �� 5      5      5        5   
   6$   5      .��5      � ���	#FF0066CC.+�5   
   �� $��Naziv:��6   $
��Left=�6!   $��28��6<   $��	73,75,0,0q�6H   $	��Top=�6[   $��77��6s   $��16(�6~   
�������6�   �� 5   
   -   5         ��Name$ tbNazivTipa��5       =� ErrorTemplate# [  6'   $��Center=�6l   $
��Left=�6�   $��28��6�   $��
155,75,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��141��6�    �� 	MaxLength$ 20��6  .��6  ��5      �� 5       �� Path$ Naziv�6   	 �� UpdateSourceTrigger$	 PropertyChanged=�6'   
 �� ValidationRules
 5      +   %POP_SF42_2016_GUI.UI.StringValidation  5      5      .��5      5      �� 5    
   -   5         ��Name$ 
btnPotvrdi��5        � ToolTip$ Potvrdi��6%   $
��Left=�67   $��53��6R   $��128,154,0,0q�6^   $	��Top=�6s   $��77��6�   ���	#FF0066CC���	#FF0066CC.��5!      �� $��46��6   $��67��6    $\��V/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-document-save.ico��6+   ��5"      �� 5#       �� 
TargetType" ��6   .�5$      ��  �� Property � {� �� Value .  62    �� Triggers 5%      ^� 5&       ^� 
Conditions 5'      �� 5(   "    �� Binding 6,   �� $ (Validation.HasError)� �� ElementName$ tbNazivTipa�� �� Value	 False6t   .0�5*      ��  � {� . 6:   5+      5-      5/      �� 50   
   -   5        $ btnOdustani��50      $ Odustani��6&   $
��Left=�69   $��53��6T   $��245,154,0,0q�6`   $	��Top=�6u   $��77��6�    �� IsCancel . ���	#FF0066CC���	#FF0066CC.��51      �� $��43��6   $��67��6    $Z��T/POP-SF42-2016-GUI;component/Resursi/Oxygen-Icons.org-Oxygen-Actions-edit-delete.ico��6+   52      54      55      