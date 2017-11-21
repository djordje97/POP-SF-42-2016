﻿using PoP.Model;
using PoP.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace POP_SF42_2016_GUI.UI
{
    /// <summary>
    /// Interaction logic for TipNamestajaDodavanejIzmena.xaml
    /// </summary>
    public partial class TipNamestajaDodavanejIzmena : Window
    {
        public enum Operacija
        {
            DODAVANJE,
            IZMENA
        };
        private TipNamestaja tipNamestaja;
        private Operacija operacija;
        public TipNamestajaDodavanejIzmena(TipNamestaja tipNamestaja,Operacija operacija)
        {
            InitializeComponent();
            this.tipNamestaja = tipNamestaja;
            this.operacija = operacija;
            tbNazivTipa.DataContext = tipNamestaja;
            
        }



        private void Potvrdi(object sender, RoutedEventArgs e)
        {
            this.DialogResult = true;
            var lista = Projekat.Instance.TipNamestaja;
            
                if (operacija == Operacija.DODAVANJE)
                {

                tipNamestaja.Id = lista.Count + 1;     
                     lista.Add(tipNamestaja);
                 }
            GenericSerializer.Serialize("tip_namestaja.xml", lista);
            Close();
        }
    }
}
