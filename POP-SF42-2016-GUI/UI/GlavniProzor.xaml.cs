﻿using PoP.Model;
using PoP.Util;
using POP_SF42_2016_GUI.DAO;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
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
    /// Interaction logic for GlavniProzor.xaml
    /// </summary>
    public partial class GlavniProzor : Window
    {
        ICollectionView view;
        public static string TrenutnoAktivno;
        public GlavniProzor()
            
        {
            
            InitializeComponent();
            ProveraprijavljenogKorisnika();
            InicijalizacijaAkcije();
            InicijalizacijaProdaje();
            dgPrikaz.IsSynchronizedWithCurrentItem = true;
            dgPrikaz.SelectedIndex = 0;
            lbNaAkciji.Visibility = Visibility.Hidden;
            btnIzlistajStavke.Visibility = Visibility.Hidden;
            btnObrisi.Visibility = Visibility.Visible;


        }

        private void NamestajMeni(object sender, RoutedEventArgs e)
        {
            TrenutnoAktivno = "Namestaj";
            cbSortiraj.SelectedItem = null;
            var korisnik = Korisnik.PronadjiKorisnika(MainWindow.loggedUser);
            view = CollectionViewSource.GetDefaultView(Projekat.Instance.Namestaj);
            view.Filter = NamestajFilter;
            dgPrikaz.ItemsSource = view;
            var ponudjeno = new List<string>() { "Naziv", "Sifra", "Cena", "Kolicina", "Tip Namestaja" };
            cbSortiraj.ItemsSource = ponudjeno;
            lbNaAkciji.Visibility = Visibility.Visible;
            btnIzlistajStavke.Visibility = Visibility.Hidden;
            btnObrisi.Visibility = Visibility.Visible;
            
        }
   

        private void DodatneUslugeMeni(object sender, RoutedEventArgs e)
        {
            TrenutnoAktivno = "DodatneUsluge";
            cbSortiraj.SelectedItem = null;
            view = CollectionViewSource.GetDefaultView(Projekat.Instance.DodatneUsluge);
            view.Filter = UslugeFilter;
            dgPrikaz.ItemsSource = view;
            var ponudjeno = new List<string>() { "Naziv","Cena" };
            cbSortiraj.ItemsSource = ponudjeno;
            lbNaAkciji.Visibility = Visibility.Hidden;
            btnIzlistajStavke.Visibility = Visibility.Hidden;
            btnObrisi.Visibility = Visibility.Visible;

        }
        private void TipoviNamestajaMeni(object sender, RoutedEventArgs e)
        {
            TrenutnoAktivno = "TipoviNamestaja";
            cbSortiraj.SelectedItem = null;
            view = CollectionViewSource.GetDefaultView(Projekat.Instance.TipNamestaja);
            view.Filter = TipNamestajaFilter;
            dgPrikaz.ItemsSource = view;
            var ponudjeno = new List<string>() {"Naziv"};
            cbSortiraj.ItemsSource = ponudjeno;
            lbNaAkciji.Visibility = Visibility.Hidden;
            btnIzlistajStavke.Visibility = Visibility.Hidden;
            btnObrisi.Visibility = Visibility.Visible;
        }

        private void ProdajaMeni(object sender, RoutedEventArgs e)
        {
            TrenutnoAktivno = "Prodaja";
            cbSortiraj.SelectedItem = null;
            view = CollectionViewSource.GetDefaultView(Projekat.Instance.Prodaja);
            view.Filter = ProdajaFlter;
            dgPrikaz.ItemsSource = view;
            var ponudjeno = new List<string>() { "Kupac", "Datum Prodaje", "Broj Racuna","Ukupan Iznos" };
            cbSortiraj.ItemsSource = ponudjeno;
            lbNaAkciji.Visibility = Visibility.Hidden;
            btnObrisi.Visibility = Visibility.Hidden;
            btnIzlistajStavke.Visibility = Visibility.Visible;
            
          
        }

        private void AkcijeMeni(object sender, RoutedEventArgs e)
        {
            TrenutnoAktivno = "Akcije";
            cbSortiraj.SelectedItem = null;
            view = CollectionViewSource.GetDefaultView(Projekat.Instance.Akcije);
            view.Filter = AkcijaFilter;
            dgPrikaz.ItemsSource = view;
            var ponudjeno = new List<string>() { "Datum Pocetka", "Datum_Kraja", "Popust" };
            cbSortiraj.ItemsSource = ponudjeno;
            lbNaAkciji.Visibility = Visibility.Hidden;
            btnIzlistajStavke.Visibility = Visibility.Visible;
            btnObrisi.Visibility = Visibility.Visible;

        }

        private void KorisniciMeni(object sender, RoutedEventArgs e)
        {
            TrenutnoAktivno = "Korisnici";
            view = CollectionViewSource.GetDefaultView(Projekat.Instance.Korisnici);
            view.Filter = KorisnikFilter;
            dgPrikaz.ItemsSource = view;
            cbSortiraj.SelectedItem = null;
            var ponudjeno = new List<string>() { "Ime","Prezime","Tip Korisnika","Korisnicko Ime","Lozinka"};
            cbSortiraj.ItemsSource = ponudjeno;
            lbNaAkciji.Visibility = Visibility.Hidden;
            btnIzlistajStavke.Visibility = Visibility.Hidden;
            btnObrisi.Visibility = Visibility.Visible;

        }

        private void ProveraprijavljenogKorisnika()
        {
            var korisnik = Korisnik.PronadjiKorisnika(MainWindow.loggedUser);
            if (korisnik.TipKorisnika!=TipKorisnika.Administrator)
            {
                lbNaAkciji.Visibility = Visibility.Hidden;
                btnAkcije.Visibility = Visibility.Hidden;
                btnDodatneUsluge.Visibility = Visibility.Hidden;
                btnKorisnici.Visibility = Visibility.Hidden;
                btnNamestaj.Visibility = Visibility.Hidden;
                btnTipoviNamestaja.Visibility=Visibility.Hidden;
                btnAkcije.Visibility = Visibility.Hidden;
                btnIzmeni.Visibility = Visibility.Hidden;
                btnObrisi.Visibility = Visibility.Hidden;
            }
           
         
        }
        private void InicijalizacijaAkcije()
        {
            foreach (var akcija in Projekat.Instance.Akcije)
            {
                foreach (var a in akcija.NamestajPopustId)
                    akcija.NamestajPopust.Add(Namestaj.PronadjiNamestaj(a));
            }
        }
        private void InicijalizacijaProdaje()
        {
            foreach (var prodaja in Projekat.Instance.Prodaja)
            {
                foreach (var stavka in prodaja.StavkeProdaje)
                {
                    stavka.NamestajProdaja = Namestaj.PronadjiNamestaj(stavka.NamestajProdajaId);
                }
               foreach(var u in prodaja.DodatneUslugeId)
                {
                    prodaja.DodatneUsluge.Add(DodatnaUsluga.PronadjiUslugu(u));
                }
            }
        }

        private bool NamestajFilter(object obj)
        {
            return ((Namestaj)obj).Obrisan == false;
        }
        private bool TipNamestajaFilter(object obj)
        {
            return ((TipNamestaja)obj).Obrisan == false;
        }
        private bool KorisnikFilter(object obj)
        {
            return ((Korisnik)obj).Obrisan == false;
        }

        private bool UslugeFilter(object obj)
        {
            return ((DodatnaUsluga)obj).Obrisan == false;
        }
        public bool ProdajaFlter(object obj)
        {
            return ((ProdajaNamestaja)obj).Obrisan == false;
        }
        public bool AkcijaFilter(object obj)
        {
            return ((Akcija)obj).Obrisan == false;
        }



        private void Dodaj(object sender, RoutedEventArgs e)
        {
            switch (TrenutnoAktivno)
            {
                case"Namestaj":
                    Namestaj noviNamestaj = new Namestaj();
                    NamestajDodavanjeIzmena ndi = new NamestajDodavanjeIzmena(noviNamestaj, NamestajDodavanjeIzmena.Operacija.DODAVANJE);
                    ndi.ShowDialog();
                    break;
                case "TipoviNamestaja":
                    TipNamestaja noviTip = new TipNamestaja();
                    TipNamestajaDodavanejIzmena tdi = new TipNamestajaDodavanejIzmena(noviTip, TipNamestajaDodavanejIzmena.Operacija.DODAVANJE);
                    tdi.ShowDialog();
                    break;
                case "DodatneUsluge":
                    DodatnaUsluga usluga = new DodatnaUsluga();
                    DodatneUslugeDodavanjeIzmena ddi = new DodatneUslugeDodavanjeIzmena(usluga,DodatneUslugeDodavanjeIzmena.Operacija.DODAVANJE);
                    ddi.ShowDialog();
                    break;
                case "Korisnici":
                    Korisnik korisnik = new Korisnik();
                    DodavanjeIzmenaKorisnik dik = new DodavanjeIzmenaKorisnik(korisnik, DodavanjeIzmenaKorisnik.Operacija.DODAVANJE);
                    dik.ShowDialog();
                    break;
                case "Akcije":
                    Akcija akcija = new Akcija();
                    AkcijaDodavanjeIzmena dia = new AkcijaDodavanjeIzmena(akcija, AkcijaDodavanjeIzmena.Operacija.DODAVANJE);
                    dia.ShowDialog();
                    break;
                case "Prodaja":
                    ProdajaNamestaja prodaja = new ProdajaNamestaja();
                    ProdajaWindow pwd = new ProdajaWindow(prodaja,ProdajaWindow.Operacija.DODAVANJE);
                    pwd.ShowDialog();
                    break;
                default:
                    break;
            }
        }

        private void Izmena(object sender, RoutedEventArgs e)
        {
            switch (TrenutnoAktivno)
            {
                case "Namestaj":
                    Namestaj namestajIzmena = dgPrikaz.SelectedItem as Namestaj;
                    Namestaj namestajKopija = (Namestaj)namestajIzmena.Clone();
                    NamestajDodavanjeIzmena ndi = new NamestajDodavanjeIzmena(namestajKopija, NamestajDodavanjeIzmena.Operacija.IZMENA);
                    ndi.ShowDialog();
                    view.Refresh();
                    break;
                case "TipoviNamestaja":
                    TipNamestaja tipIzmena = dgPrikaz.SelectedItem as TipNamestaja;
                    TipNamestaja kopija = (TipNamestaja)tipIzmena.Clone();
                    TipNamestajaDodavanejIzmena tdi = new TipNamestajaDodavanejIzmena(kopija, TipNamestajaDodavanejIzmena.Operacija.IZMENA);
                    tdi.ShowDialog();
                    view.Refresh();
                    break;
                case "DodatneUsluge":
                    DodatnaUsluga usluga = dgPrikaz.SelectedItem as DodatnaUsluga;
                    DodatnaUsluga kopijaUsluge = (DodatnaUsluga)usluga.Clone();
                    DodatneUslugeDodavanjeIzmena ddi = new DodatneUslugeDodavanjeIzmena(kopijaUsluge, DodatneUslugeDodavanjeIzmena.Operacija.IZMENA);
                    ddi.ShowDialog();
                    view.Refresh();
                    break;
                case "Korisnici":
                    Korisnik korisnik= dgPrikaz.SelectedItem as Korisnik;
                    Korisnik kopijaKorisnika = (Korisnik)korisnik.Clone();
                    DodavanjeIzmenaKorisnik dik = new DodavanjeIzmenaKorisnik(kopijaKorisnika, DodavanjeIzmenaKorisnik.Operacija.IZMENA);
                    dik.ShowDialog();
                    view.Refresh();
                    break;
                case "Akcije":
                    Akcija akcija = dgPrikaz.SelectedItem as Akcija;
                    Akcija kopijaAkcije = (Akcija)akcija.Clone();
                    AkcijaDodavanjeIzmena dia = new AkcijaDodavanjeIzmena(kopijaAkcije, AkcijaDodavanjeIzmena.Operacija.IZMENA);
                    dia.ShowDialog();
                    view.Refresh();
                    break;
                case "Prodaja":
                    ProdajaNamestaja prodaja = dgPrikaz.SelectedItem as ProdajaNamestaja;
                    ProdajaNamestaja kopijaProdaje = (ProdajaNamestaja)prodaja.Clone();
                    ProdajaWindow pw = new ProdajaWindow(kopijaProdaje, ProdajaWindow.Operacija.IZMENA);
                    pw.ShowDialog();
                    view.Refresh();
                    break;
                default:
                    break;
            }
        }

        private void Brisanje(object sender, RoutedEventArgs e)
        {
            switch (TrenutnoAktivno)
            {
                case "Namestaj":
                    var list=Projekat.Instance.Namestaj;
                    Namestaj namestajBrisanje = dgPrikaz.SelectedItem as Namestaj;
                    if (MessageBox.Show("Da li ste sigurni?", "Potvrda", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                    {
                        namestajBrisanje.Obrisan = true;
                        NamestajDAO.BrisanjeNamestaja(namestajBrisanje);
                    }
                    view.Refresh();
                    break;
                case "TipoviNamestaja":
                 var lista = Projekat.Instance.TipNamestaja;
                    TipNamestaja tip= dgPrikaz.SelectedItem as TipNamestaja;
                    if (MessageBox.Show("Da li ste sigurni?", "Potvrda", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                    {
                        tip.Obrisan = true;
                        TipNamestajaDAO.BrisanjeTipa(tip);
                    }
                    view.Refresh();
                    break;
                case "DodatneUsluge":
                    DodatnaUsluga uslugaBrisanje = dgPrikaz.SelectedItem as DodatnaUsluga;
                    if (MessageBox.Show("Da li ste sigurni?", "Potvrda", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                    {
                        uslugaBrisanje.Obrisan = true;
                        UslugeDAO.BrisanjeUsluge(uslugaBrisanje);
                    }
                    view.Refresh();
                    break;
                case "Korisnici":
                    var listaKorisnika = Projekat.Instance.Korisnici;
                    var korisnikBrisanje = dgPrikaz.SelectedItem as Korisnik;
                    if (MessageBox.Show("Da li ste sigurni?", "Potvrda", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                    {
                        korisnikBrisanje.Obrisan = true;
                        KorisnikDAO.BrisanjeKorisnika(korisnikBrisanje);
                    }
                    view.Refresh();
                    break;
                case "Akcije":
                    var listaAkcija = Projekat.Instance.Akcije;
                    Akcija akcijaBrisanje = dgPrikaz.SelectedItem as Akcija;
                    if (MessageBox.Show("Da li ste sigurni?", "Potvrda", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                    {
                        akcijaBrisanje.Obrisan = true;
                        AkcijaDAO.BrisanjeAkcije(akcijaBrisanje);
                    }
                    view.Refresh();
                    break;

                default:
                    break;
            }
        }

        private void dgPrikaz_AutoGeneratingColumn(object sender, DataGridAutoGeneratingColumnEventArgs e)
        {
            if ((string)e.Column.Header == "Id" || (string)e.Column.Header == "Obrisan" ||(string)e.Column.Header== "NamestajProdajaId" || (string)e.Column.Header== "DodatneUslugeId"
                || (string)e.Column.Header == "StavkaProdajeId" || (string)e.Column.Header == "TipNamestajaId" || (string)e.Column.Header == "NamestajPopustId"
                || (string)e.Column.Header == "StavkeProdaje" || (string)e.Column.Header == "NamestajPopust"  || (string)e.Column.Header == "DodatnaUslugaId" || (string)e.Column.Header == "DodatneUsluge")

            {
                e.Cancel = true;
            }
        }

        private void Izlistaj(object sender, RoutedEventArgs e)
        {
            ProdajaNamestaja pn = dgPrikaz.SelectedItem as ProdajaNamestaja;
            Akcija a = dgPrikaz.SelectedItem as Akcija;
            if(a == null)
            {
                IzlistajStavke izs = new IzlistajStavke(pn,null);
                izs.ShowDialog();
            }
            else
            {
                IzlistajStavke izs = new IzlistajStavke(null,a);
                izs.ShowDialog();
            }
               
        }

 

        private void cbSortiraj_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            switch (TrenutnoAktivno)
            {
                case "Namestaj":
                    string izabrano = cbSortiraj.SelectedItem as string;
                    var lista = Projekat.Instance.Namestaj;
                    if (izabrano != null)
                    {
                        switch (izabrano)
                        {
                            case "Naziv":
                                view = CollectionViewSource.GetDefaultView(Projekat.Instance.Namestaj.OrderBy(a=>a.Naziv));
                                dgPrikaz.ItemsSource = view;
                                break;
                            case "Cena":
                                view = CollectionViewSource.GetDefaultView(Projekat.Instance.Namestaj.OrderBy(a => a.Cena));
                                dgPrikaz.ItemsSource = view;
                                break;
                            case "Kolicina":
                                view = CollectionViewSource.GetDefaultView(Projekat.Instance.Namestaj.OrderBy(a => a.Kolicina));
                                dgPrikaz.ItemsSource = view;
                                break;
                            case "Sifra":
                                view = CollectionViewSource.GetDefaultView(Projekat.Instance.Namestaj.OrderBy(a => a.Sifra));
                                dgPrikaz.ItemsSource = view;
                                break;
                            case "Tip Namestaja":
                                view = CollectionViewSource.GetDefaultView(Projekat.Instance.Namestaj.OrderBy(a => a.TipNamestaja.Naziv));
                                dgPrikaz.ItemsSource = view;
                                break;
                        }
                    
                    }
                    break;
                case "TipoviNamestaja":
                    string izabranoT = cbSortiraj.SelectedItem as string;
                    if (izabranoT != null)
                    {
                        view = CollectionViewSource.GetDefaultView(Projekat.Instance.TipNamestaja.OrderBy(a => a.Naziv));
                        dgPrikaz.ItemsSource = view;
                    }
                    break;
                case "DodatneUsluge":
                    string izabranoU = cbSortiraj.SelectedItem as string;
                    if (izabranoU != null)
                    {
                        if (izabranoU == "Naziv")
                        {
                            view = CollectionViewSource.GetDefaultView(Projekat.Instance.DodatneUsluge.OrderBy(a => a.Naziv));
                            dgPrikaz.ItemsSource = view;
                        }
                        else
                        {
                            view = CollectionViewSource.GetDefaultView(Projekat.Instance.DodatneUsluge.OrderBy(a => a.Cena));
                            dgPrikaz.ItemsSource = view;
                            
                        }
                       
                    }
                    break;
                case "Korisnici":
                    string izabranoK = cbSortiraj.SelectedItem as string;
                    var listaK = Projekat.Instance.Korisnici;
                    if (izabranoK != null)
                    {
                        switch (izabranoK)
                        {
                            case "Ime":
                                view = CollectionViewSource.GetDefaultView(Projekat.Instance.Korisnici.OrderBy(a => a.Ime));
                                dgPrikaz.ItemsSource = view;
                                break;
                            case "Prezime":
                                view = CollectionViewSource.GetDefaultView(Projekat.Instance.Korisnici.OrderBy(a => a.Prezime));
                                dgPrikaz.ItemsSource = view;
                                break;
                            case "Korisnicko Ime":
                                view = CollectionViewSource.GetDefaultView(Projekat.Instance.Korisnici.OrderBy(a => a.Korisnicko_Ime));
                                dgPrikaz.ItemsSource = view;
                                break;
                            case "Lozinka":
                                view = CollectionViewSource.GetDefaultView(Projekat.Instance.Korisnici.OrderBy(a => a.Lozinka));
                                dgPrikaz.ItemsSource = view;
                                break;
                            case "Tip Korisnika":
                                view = CollectionViewSource.GetDefaultView(Projekat.Instance.Korisnici.OrderBy(a => a.TipKorisnika));
                                dgPrikaz.ItemsSource = view;
                                break;
                        }
                        
                    }
                    break;
                case "Akcije":
                    string izabranoA = cbSortiraj.SelectedItem as string;
                    if (izabranoA != null)
                    {
                        switch (izabranoA)
                        {
                            case "Datum Pocetka":
                                view = CollectionViewSource.GetDefaultView(Projekat.Instance.Akcije.OrderBy(a => a.PocetakAkcije));
                                dgPrikaz.ItemsSource = view;
                                break;
                            case "Datum Kraja":
                                view = CollectionViewSource.GetDefaultView(Projekat.Instance.Akcije.OrderBy(a => a.KrajAkcije));
                                dgPrikaz.ItemsSource = view;
                                break;
                            case "Popust":
                                view = CollectionViewSource.GetDefaultView(Projekat.Instance.Akcije.OrderBy(a => a.Popust));
                                dgPrikaz.ItemsSource = view;
                                break;

                        }
                    }
                    break;
                case "Prodaja":
                    string izabranoP = cbSortiraj.SelectedItem as string;
                    if (izabranoP != null)
                    {
                        switch (izabranoP)
                        {
                            case "Datum Prodaje":
                                view = CollectionViewSource.GetDefaultView(Projekat.Instance.Prodaja.OrderBy(a => a.DatumProdaje));
                                dgPrikaz.ItemsSource = view;
                                break;
                            case "Kupac":
                                view = CollectionViewSource.GetDefaultView(Projekat.Instance.Prodaja.OrderBy(a => a.Kupac));
                                dgPrikaz.ItemsSource = view;
                                break;
                            case "Ukupan Iznos":
                                view = CollectionViewSource.GetDefaultView(Projekat.Instance.Prodaja.OrderBy(a => a.UkupanIznos));
                                dgPrikaz.ItemsSource = view;
                                break;
                            case "Broj Racuna":
                                view = CollectionViewSource.GetDefaultView(Projekat.Instance.Prodaja.OrderBy(a => a.BrojRacuna));
                                dgPrikaz.ItemsSource = view;
                                break;
                        }
                    }
                    break;
                default:
                    break;
            }
        }

        private void Pretrazi(object sender, RoutedEventArgs e)
        {

            switch (TrenutnoAktivno)
            {
                case "Namestaj":
                    var unetoN = tbPretraga.Text;
                    view = CollectionViewSource.GetDefaultView(NamestajDAO.PretraziNamestaj(unetoN));
                    dgPrikaz.ItemsSource = view;
                    break;
                case "TipoviNamestaja":
                    string unetoT = tbPretraga.Text.Trim();
                    view = CollectionViewSource.GetDefaultView(TipNamestajaDAO.PretraziTipove(unetoT));
                    dgPrikaz.ItemsSource = view;
                    break;
                case "DodatneUsluge":
                    string unetoU = tbPretraga.Text.Trim();
                    view = CollectionViewSource.GetDefaultView(UslugeDAO.PretraziUsluge(unetoU));
                    dgPrikaz.ItemsSource = view;
                    break;
                case "Korisnici":
                    string unetoK = tbPretraga.Text.Trim();
                    view = CollectionViewSource.GetDefaultView(KorisnikDAO.PretragaKorisnika(unetoK));
                    dgPrikaz.ItemsSource = view;
                    break;
                case "Akcije":
                    string unetoA = tbPretraga.Text.Trim();
                    view = CollectionViewSource.GetDefaultView(AkcijaDAO.PretraziAkcije(unetoA));
                    dgPrikaz.ItemsSource = view;
                    break;
                case "Prodaja":
                    string unetoP= tbPretraga.Text.Trim();
                    view = CollectionViewSource.GetDefaultView(ProdajaDAO.PretraziProdaju(unetoP));
                    dgPrikaz.ItemsSource = view;
                    break;
                default:
                    break;
            }

        }

        private void LogOut(object sender, RoutedEventArgs e)
        {

            MainWindow mw = new MainWindow();
            this.Close();
            mw.ShowDialog();
        }

        private void btnSalon_Click(object sender, RoutedEventArgs e)
        {
            TipKorisnika t = Korisnik.PronadjiKorisnika(MainWindow.loggedUser).TipKorisnika;

            var s = Projekat.Instance.Salon;
            Salon kopija = s.Clone() as Salon;
            SalonProzor sp = new SalonProzor(kopija, t);
            sp.Show();
        }

        private void dgPrikaz_LoadingRow(object sender, DataGridRowEventArgs e)
        {
            if (TrenutnoAktivno == "Namestaj")
            {
                Namestaj n = e.Row.DataContext as Namestaj;
                if (n.AkcijskaCena > 0)
                {
                    SolidColorBrush brush = new SolidColorBrush(Color.FromArgb(100, 255, 104, 0));
                    e.Row.Background = brush;
                }
            }
        }

        private void btnOsvezi_Click(object sender, RoutedEventArgs e)
        {
            switch (TrenutnoAktivno)
            {
                case "Namestaj":
                    view = CollectionViewSource.GetDefaultView(Projekat.Instance.Namestaj);
                    view.Filter = NamestajFilter;
                    dgPrikaz.ItemsSource = view;
                    break;
                case "TipoviNamestaja":
                    view = CollectionViewSource.GetDefaultView(Projekat.Instance.TipNamestaja);
                    view.Filter = TipNamestajaFilter;
                    dgPrikaz.ItemsSource = view;
                    break;
                case "DodatneUsluge":
                    view = CollectionViewSource.GetDefaultView(Projekat.Instance.DodatneUsluge);
                    view.Filter = UslugeFilter;
                    dgPrikaz.ItemsSource = view;
                    break;
                case "Korisnici":
                    view = CollectionViewSource.GetDefaultView(Projekat.Instance.Korisnici);
                    view.Filter = KorisnikFilter;
                    dgPrikaz.ItemsSource = view;
                    break;
                case "Akcije":
                    view = CollectionViewSource.GetDefaultView(Projekat.Instance.Akcije);
                    view.Filter = AkcijaFilter;
                    dgPrikaz.ItemsSource = view;
                    break;
                case "Prodaja":
                    view = CollectionViewSource.GetDefaultView(Projekat.Instance.Prodaja);
                    view.Filter = ProdajaFlter;
                    dgPrikaz.ItemsSource = view;
                    break;
            }
        }
    }
}
