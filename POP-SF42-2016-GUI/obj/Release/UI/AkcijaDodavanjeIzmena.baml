   M S B A M L   `   `   `  ���� O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  L HPOP-SF42-2016-GUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:POP_SF42_2016_GUI.UIPOP_SF42_2016_GUI.UI 0   *POP_SF42_2016_GUI.UI.AkcijaDodavanjeIzmena   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6sys&clr-namespace:System;assembly=mscorlib     4local"clr-namespace:POP_SF42_2016_GUI.UI       � Title$  AkcijaDodavanjeIzmena��$	��460��$	��632�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.��� ���	#FF0066CC.+��� $��Pocetak akcije:��$
��Left=�$��33��$��	69,46,0,0q�$	��Top=�$	��122��
�������$��16(�(  "System.Windows.Controls.DatePicker  -     Name$ 	dpPocetak��$
��Left=�$��33��$��
191,46,0,0q�$	��Top=�$	��145��   FirstDayOfWeek$ Monday=�   SelectedDate ��  �� Path$ PocetakAkcije� �� StringFormat$ 
dd/MM/yyyy���� $��Kraj akcije:��$
��Left=�$��33��$��	69,94,0,0q�$	��Top=�$	��122��$��16(�
�������  -   $ dpKraj��$
��Left=�$��33��$��
191,94,0,0q�$	��Top=�$	��145�� �� $ 
KrajAkcije�$ 
dd/MM/yyyy���� $��Popust:��$
��Left=�$��33��$��140,329,0,0q�$	��Top=�$��88��
�������$��16(��� -    ��Name$ tbPopust��$��Center=�$
��Left=�$��33��$��233,329,0,0q�	 �� TextWrapping$
	 Wrap=�$	��Top=�$	��150������ $ Popust��� -   
 ��Name$
 
btnPotvrdi��$��Potvrdi��$
��Left=�$��33��$��191,388,0,0q�$	��Top=�$��90�� �� 	IsDefault . �� -   $
 btnOdustani��$��Odustani��$
��Left=�$��33��$��324,388,0,0q�$	��Top=�$��90�� �� IsCancel . &   System.Windows.Controls.DataGrid  -     Name$ dgNamestajAkcija��   CanUserAddRows .     CanUserDeleteRows .     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * $
��Left=�$	��184��$��
79,140,0,0q�$	��Top=�$	��386���� -   $
 btnDodaj��$��Dodaj��$
��Left=�$��33��$��485,140,0,0q�$	��Top=�$��92���� -   $
 	btnUkloni��$��Ukloni��$
��Left=�$��33��$��485,190,0,0q�$	��Top=�$��92��