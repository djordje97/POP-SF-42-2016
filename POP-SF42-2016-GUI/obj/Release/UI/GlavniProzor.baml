   M S B A M L   `   `   `  ����   POP-SF42-2016-GUI'    !POP_SF42_2016_GUI.UI.GlavniProzor   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006       � Title$  Glavni Prozor��$��504.935��$��843.863��$��0q�$��0q�$��Center=�
������� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.��� $
��Left=�$	��478��$	��Top=�$	��170�����	#FF313541$��0,0,0,-4q�.+��� -   $��btnNamestaj��$��Namestaj��$
��Left=�$��52��$��
16,122,0,0q�$	��Top=�$	��143�����	#FF313541���	#FF313541
�������$��18(�$��Sylfaen)��� -   $��btnTipoviNamestaja��$��Tipovi Namestaja��$
��Left=�$��52��$��
12,231,0,0q�$	��Top=�$	��147�����	#FF313541���	#FF313541
�������$��18(�$��Sylfaen)��� -   $��btnDodatneUsluge��$��Dodatne usluge��$
��Left=�$��52��$��
16,179,0,0q�$	��Top=�$	��147�����	#FF313541���	#FF313541
�������$��18(�$��Sylfaen)��� -   $��
btnProdaja��$��Prodaja��$
��Left=�$��52��$��
16,293,0,0q�$	��Top=�$	��147�����	#FF313541���	#FF313541
�������$��18(�$��Sylfaen)��� -   $��	btnAkcije��$��Akcije��$
��Left=�$��
16,350,0,0q�$	��Top=�$	��147��$��52�����	#FF313541���	#FF313541
�������$��18(�$��Sylfaen)��� -   $��btnKorisnici��$��	Korisnici��$
��Left=�$��46��$��
16,407,0,0q�$	��Top=�$	��147�����	#FF313541���	#FF313541
�������$��18(�$��Sylfaen)��� $
��Meni��$
��Left=�$��50��$��0,45,0,0q�$	��Top=�$	��169��
�������$��24(�$��0,0,0,5q�$��Center=�
�������� $
��Left=�$	��478��$��169,0,-668,0q�$	��Top=�$	��669�����	#FF0066CC � RowDefinitions �� $	��93* ��� $
��310* ��� $	��75* �.+��� $��	Pretraga:��$
��Left=�$��31��$��0,10,0,0q�$	��Top=�$��84��
�������$��16(��� -   $��
tbPretraga��$
��Left=�$��31��$��	89,10,0,0q� �� TextWrapping$
 Wrap=�$�� ��$	��Top=�$	��160��$��Center=�� $
��Left=�$	��311��$��0,95,-1,-311q�$	��Top=�$	��606�����	#FF0066CC�� -   $��btnDodaj��$��Dodaj��$
��Left=�$��36��$��	34,19,0,0q�$	��Top=�$	��106��$��2���� -	   $��	btnIzmeni��$��Izmeni��$
��Left=�$��36��$��
203,19,0,0q�$	��Top=�$	��106��$��2���� -
   $��	btnObrisi��$
��Left=�$��36��$��
370,19,0,0q�$	��Top=�$	��106��$��2��$��Obrisi��&   System.Windows.Controls.DataGrid  -   $��dgPrikaz��   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ *    SelectionMode$ Single=�   CanUserAddRows .     CanUserDeleteRows .  	   CanUserResizeColumns	 .  
   CanUserReorderColumns
 .  $
��Left=�$	��310��$��1��$	��Top=�$	��669���� -    ��Name$ btnIzlistajStavke��$��Izlistaj stavke��$
��Left=�$��36��$��
527,19,0,0q�$��2��$	��Top=�$	��106���� -    ��Name$ 
cbSortiraj��$
��Left=�$��28��$��
497,13,0,0q�$	��Top=�$	��136���� $��Sortiraj po:��$
��Left=�$��31��$��
370,13,0,0q�$	��Top=�$	��113��$��16(�
��������� -   $ btnPretraga��$��Pretrazi��$
��Left=�$��28��$��
264,13,0,0q�$	��Top=�$��78��