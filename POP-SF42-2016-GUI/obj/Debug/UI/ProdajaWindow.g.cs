﻿#pragma checksum "..\..\..\UI\ProdajaWindow.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "477AF808A101D32C7E456251ED05814A39260550"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using POP_SF42_2016_GUI.UI;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace POP_SF42_2016_GUI.UI {
    
    
    /// <summary>
    /// ProdajaWindow
    /// </summary>
    public partial class ProdajaWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 21 "..\..\..\UI\ProdajaWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnPotvrdi;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\..\UI\ProdajaWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnOdustani;
        
        #line default
        #line hidden
        
        
        #line 40 "..\..\..\UI\ProdajaWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dgStavke;
        
        #line default
        #line hidden
        
        
        #line 41 "..\..\..\UI\ProdajaWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnPreuzmi;
        
        #line default
        #line hidden
        
        
        #line 45 "..\..\..\UI\ProdajaWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox tbKupac;
        
        #line default
        #line hidden
        
        
        #line 55 "..\..\..\UI\ProdajaWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker dpDatum;
        
        #line default
        #line hidden
        
        
        #line 57 "..\..\..\UI\ProdajaWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnUkloni;
        
        #line default
        #line hidden
        
        
        #line 60 "..\..\..\UI\ProdajaWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dgUsluge;
        
        #line default
        #line hidden
        
        
        #line 61 "..\..\..\UI\ProdajaWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnDodajU;
        
        #line default
        #line hidden
        
        
        #line 64 "..\..\..\UI\ProdajaWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnObisiU;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/POP-SF42-2016-GUI;component/ui/prodajawindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\UI\ProdajaWindow.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.btnPotvrdi = ((System.Windows.Controls.Button)(target));
            
            #line 21 "..\..\..\UI\ProdajaWindow.xaml"
            this.btnPotvrdi.Click += new System.Windows.RoutedEventHandler(this.Potvrdi);
            
            #line default
            #line hidden
            return;
            case 2:
            this.btnOdustani = ((System.Windows.Controls.Button)(target));
            return;
            case 3:
            this.dgStavke = ((System.Windows.Controls.DataGrid)(target));
            
            #line 40 "..\..\..\UI\ProdajaWindow.xaml"
            this.dgStavke.AutoGeneratingColumn += new System.EventHandler<System.Windows.Controls.DataGridAutoGeneratingColumnEventArgs>(this.dgStavke_AutoGeneratingColumn);
            
            #line default
            #line hidden
            return;
            case 4:
            this.btnPreuzmi = ((System.Windows.Controls.Button)(target));
            
            #line 41 "..\..\..\UI\ProdajaWindow.xaml"
            this.btnPreuzmi.Click += new System.Windows.RoutedEventHandler(this.DodajStavku);
            
            #line default
            #line hidden
            return;
            case 5:
            this.tbKupac = ((System.Windows.Controls.TextBox)(target));
            return;
            case 6:
            this.dpDatum = ((System.Windows.Controls.DatePicker)(target));
            return;
            case 7:
            this.btnUkloni = ((System.Windows.Controls.Button)(target));
            
            #line 57 "..\..\..\UI\ProdajaWindow.xaml"
            this.btnUkloni.Click += new System.Windows.RoutedEventHandler(this.UkloniStavku);
            
            #line default
            #line hidden
            return;
            case 8:
            this.dgUsluge = ((System.Windows.Controls.DataGrid)(target));
            
            #line 60 "..\..\..\UI\ProdajaWindow.xaml"
            this.dgUsluge.AutoGeneratingColumn += new System.EventHandler<System.Windows.Controls.DataGridAutoGeneratingColumnEventArgs>(this.dgUsluge_AutoGeneratingColumn);
            
            #line default
            #line hidden
            return;
            case 9:
            this.btnDodajU = ((System.Windows.Controls.Button)(target));
            
            #line 61 "..\..\..\UI\ProdajaWindow.xaml"
            this.btnDodajU.Click += new System.Windows.RoutedEventHandler(this.btnDodajU_Click);
            
            #line default
            #line hidden
            return;
            case 10:
            this.btnObisiU = ((System.Windows.Controls.Button)(target));
            
            #line 64 "..\..\..\UI\ProdajaWindow.xaml"
            this.btnObisiU.Click += new System.Windows.RoutedEventHandler(this.btnObisiU_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

