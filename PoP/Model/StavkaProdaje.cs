﻿using PoP.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace POP_SF42_2016_GUI.Model
{
   public class StavkaProdaje : INotifyPropertyChanged
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        private double cena;

       

        private int kolicina;

        public int Kolicina
        {
            get { return kolicina; }
            set { kolicina = value; }
        }

        private int namestajProdajaId;

        public int NamestajProdajaId

        {
            get { return namestajProdajaId; }
            set
            {
                namestajProdajaId = value;
                OnPropertyChanged("NamestajProdajaId");
            }
        }
        private Namestaj namestajProdaja;

        public event PropertyChangedEventHandler PropertyChanged;
        [XmlIgnore]
        public Namestaj NamestajProdaja

        {
            get
            {
               
                if (namestajProdaja == null)
                {
                   
                        namestajProdaja=Namestaj.PronadjiNamestaj(namestajProdajaId);
                }
                return namestajProdaja;
            }
            set
            {
                namestajProdaja = value;
                namestajProdajaId = namestajProdaja.Id;
                OnPropertyChanged("NamestajProdaja");
            }
            
        }

        private int dodatneUslugaId;

        public int DodatneUslugaId

        {
            get { return dodatneUslugaId; }
            set
            {
                dodatneUslugaId = value;
                OnPropertyChanged("DodatneUslugaId");
            }
        }

        private DodatnaUsluga dodatneUsluga;
        [XmlIgnore]
        public DodatnaUsluga DodatneUsluga
        {
            get
            {
                if (dodatneUsluga == null)
                {
                 
                        dodatneUsluga=DodatnaUsluga.PronadjiUslugu(DodatneUslugaId);
                }
                return dodatneUsluga;
            }
            set
            {
                dodatneUsluga = value;
              
                    dodatneUslugaId=dodatneUsluga.Id;
                OnPropertyChanged("DodatneUsluga");
            }
        }
        private bool obrisan;

        public bool Obrisan
        {
            get { return obrisan; }
            set
            {
                obrisan = value;
                OnPropertyChanged("Obrisan");
            }
        }
        protected void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
        public double Cena
        {
            get { return cena; }
            set
            {
                cena = value;
               // cena = namestajProdaja.Cena*kolicina+dodatneUsluga.Cena;
            }
        }
        public override string ToString()
        {
            string ispis="";
                ispis += NamestajProdaja.Naziv;
            return ispis;

        }
        public static StavkaProdaje PronadjiStavku(int id)
        {
            foreach (var stavka in Projekat.Instance.StavkaProdaje)
            {
                if (stavka.Id == id)
                {
                    return stavka;
                }

            }
            return null;
        }
    }
}
