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

namespace TuristickaAgencija
{
    /// <summary>
    /// Interaction logic for gotovaRezervacija.xaml
    /// </summary>
    public partial class gotovaRezervacija : Window
    {
        public gotovaRezervacija()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            TuristickaAgencija.AgencijaDataSet agencijaDataSet = ((TuristickaAgencija.AgencijaDataSet)(this.FindResource("agencijaDataSet")));
            // Load data into the table Rezervacija. You can modify this code as needed.
            TuristickaAgencija.AgencijaDataSetTableAdapters.RezervacijaTableAdapter agencijaDataSetRezervacijaTableAdapter = new TuristickaAgencija.AgencijaDataSetTableAdapters.RezervacijaTableAdapter();

            //agencijaDataSet.Clear();
            agencijaDataSet.EnforceConstraints = false;
            agencijaDataSetRezervacijaTableAdapter.Fill(agencijaDataSet.Rezervacija);
            System.Windows.Data.CollectionViewSource rezervacijaViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("rezervacijaViewSource")));
            rezervacijaViewSource.View.MoveCurrentToFirst();
            // Load data into the table Putnik. You can modify this code as needed.
            TuristickaAgencija.AgencijaDataSetTableAdapters.PutnikTableAdapter agencijaDataSetPutnikTableAdapter = new TuristickaAgencija.AgencijaDataSetTableAdapters.PutnikTableAdapter();
            agencijaDataSetPutnikTableAdapter.Fill(agencijaDataSet.Putnik);
            System.Windows.Data.CollectionViewSource putnikViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("putnikViewSource")));
            putnikViewSource.View.MoveCurrentToFirst();

        }
    }
}
