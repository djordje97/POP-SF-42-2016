   M S B A M L   `   `   `  ���� L  HPOP-SF42-2016-GUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:POP_SF42_2016_GUI.UIPOP_SF42_2016_GUI.UI  '    !POP_SF42_2016_GUI.UI.StavkeWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     4local"clr-namespace:POP_SF42_2016_GUI.UI       � Title$  StavkeWindow��$��454.95��$	��620��
������� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.��� ���	#FF0066CC.+�&   System.Windows.Controls.DataGrid  -     Name$ 
dgNamestaj��   AutoGenerateColumns .    CanUserAddRows .     CanUserDeleteRows .     SelectionMode$ Single=�   CanUserReorderColumns . 	   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$	 * $
��Left=�$	��167��$��
60,177,0,0q�$	��Top=�$	��471������ 
 �� Source$
 NamestajProdaja���� $��Izaberite namestaj:��$
��Left=�$��31��$��
60,128,0,0q�$	��Top=�$	��147��$��16(�
��������� $��	Kolicina:��$
��Left=�$��28��$��
130,57,0,0q�$	��Top=�$��77��
�������$��16(��� -    ��Name$ 
tbKolicina��$��Center=�$
��Left=�$��28��$��
213,57,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$��78������  �� Path$ Kolicina��� -    ��Name$ 
btnPotvrdi��$��Potvrdi��$
��Left=�$��34��$��173,380,0,0q�$	��Top=�$	��117�� �� 	IsDefault . �� $��Odustani��$
��Left=�$��34��$��319,380,0,0q�$	��Top=�$	��118�� �� IsCancel . 