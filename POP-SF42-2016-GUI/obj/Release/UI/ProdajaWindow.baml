   M S B A M L   `   `   `  ���� L  HPOP-SF42-2016-GUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:POP_SF42_2016_GUI.UIPOP_SF42_2016_GUI.UI  (    "POP_SF42_2016_GUI.UI.ProdajaWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     4local"clr-namespace:POP_SF42_2016_GUI.UI       � Title$  ProdajaWindow��$	��545��$	��812�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.��� ���	#FF0066CC.+��� -    ��Name$ 
btnPotvrdi��$��Potvrdi��$
��Left=�$��40��$��248,466,0,0q�$	��Top=�$	��130�� �� 	IsDefault . �� -   $ btnOdustani��$��Odustani��$
��Left=�$��40��$��393,466,0,0q�$	��Top=�$	��130�� �� IsCancel . &   System.Windows.Controls.DataGrid  -     Name$ dgStavke��   AutoGenerateColumns .    CanUserResizeColumns .  	   CanUserAddRows	 .  
   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$
 *    SelectionMode$ Single=�$
��Left=�$	��167��$��
10,185,0,0q�$	��Top=�$	��342���� -   $ 
btnPreuzmi��$��Dodaj��$
��Left=�$��35��$��
10,360,0,0q�$	��Top=�$	��112���� $��Kupac:��$
��Left=�$��31��$��
199,29,0,0q�$	��Top=�$	��103��$��16(�
��������� -    ��Name$ tbKupac��$��Center=�$
��Left=�$��29�� �� TextWrapping$
 Wrap=�$	��Top=�$	��154��$��
302,31,0,0q�����  �� Path$ Kupac��� $��Datum:��$
��Left=�$��30��$��
199,76,0,0q�$	��Top=�$��76��$��16(�
�������(  "System.Windows.Controls.DatePicker  -     Name$ dpDatum��{�.  $
��Left=�$��30��$��
302,76,0,0q�$	��Top=�$	��154��   SelectedDate �� $ DatumProdaje��� $��Stavke prodaje:��$
��Left=�$��
10,136,0,0q�$	��Top=�$	��156��$��20(�
�������$��44���� -   $ 	btnUkloni��$��Ukloni��$
��Left=�$��35��$��127,360,0,0q�$	��Top=�$	��112��  -   $ dgUsluge��	 .  $ Single=� . $
 * $
��Left=�$	��167��$��408,185,0,0q�$	��Top=�$	��372���� -	   $ 	btnDodajU��$��Dodaj��$
��Left=�$��34��$��551,361,0,0q�$	��Top=�$	��112���� -
   $ 	btnObisiU��$��Ukloni��$
��Left=�$��35��$��668,360,0,0q�$	��Top=�$	��112���� $��Dodatne usluge:��$
��Left=�$��44��$��449,136,0,0q�$	��Top=�$	��158��$��20(�
�������