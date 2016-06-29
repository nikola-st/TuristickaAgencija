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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data;  // dodato
using System.Data.SqlClient; // dodato 
using System.Data.Linq;

namespace TuristickaAgencija
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }


        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            TuristickaAgencija.AgencijaDataSet agencijaDataSet = ((TuristickaAgencija.AgencijaDataSet)(this.FindResource("agencijaDataSet")));
            // Load data into the table Soba. You can modify this code as needed.
            TuristickaAgencija.AgencijaDataSetTableAdapters.SobaTableAdapter agencijaDataSetSobaTableAdapter = new TuristickaAgencija.AgencijaDataSetTableAdapters.SobaTableAdapter();
            agencijaDataSetSobaTableAdapter.Fill(agencijaDataSet.Soba);
            System.Windows.Data.CollectionViewSource sobaViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("sobaViewSource")));
            sobaViewSource.View.MoveCurrentToFirst();
            // Load data into the table Mesto. You can modify this code as needed.
            TuristickaAgencija.AgencijaDataSetTableAdapters.MestoTableAdapter agencijaDataSetMestoTableAdapter = new TuristickaAgencija.AgencijaDataSetTableAdapters.MestoTableAdapter();
            agencijaDataSetMestoTableAdapter.Fill(agencijaDataSet.Mesto);
            System.Windows.Data.CollectionViewSource mestoViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("mestoViewSource")));
            mestoViewSource.View.MoveCurrentToFirst();
            //agencijaDataSet.Clear();
            agencijaDataSet.EnforceConstraints = false;
            // Load data into the table Hotel. You can modify this code as needed.
            TuristickaAgencija.AgencijaDataSetTableAdapters.HotelTableAdapter agencijaDataSetHotelTableAdapter = new TuristickaAgencija.AgencijaDataSetTableAdapters.HotelTableAdapter();
            agencijaDataSetHotelTableAdapter.Fill(agencijaDataSet.Hotel);
            System.Windows.Data.CollectionViewSource hotelViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("hotelViewSource")));
            hotelViewSource.View.MoveCurrentToFirst();
            lbNoviHotel.Visibility = System.Windows.Visibility.Hidden;
            tbNoviHotel.Visibility = System.Windows.Visibility.Hidden;
        }



        private void cmbNazivHotela_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            AgencijaDataContext dc = new AgencijaDataContext();
            int a = Int32.Parse(tbIdHotela.Text);   //IdHotela

                var grad = from m in dc.Mestos
                           join h in dc.Hotels
                           on m.IDMesta equals h.IDMesta
                           where h.IDHotela == a
                           select m.nazivMesta;

            var drzava = from m in dc.Mestos
                         join h in dc.Hotels
                         on m.IDMesta equals h.IDMesta
                         where h.IDHotela == a
                         select m.drzava;

            tbGrad.Text = grad.First();
            tbDrzava.Text = drzava.First();
            
        }

        private void Otkazi_Click(object sender, RoutedEventArgs e)
        {
            tbIdHotela.Clear();
            
        }

        private void Snimi_Click(object sender, RoutedEventArgs e)
        {
            lbNoviHotel.Visibility = System.Windows.Visibility.Hidden;
            tbNoviHotel.Visibility = System.Windows.Visibility.Hidden;


        }

        private void btnUnesi_Click(object sender, RoutedEventArgs e)
        {
            lbNoviHotel.Visibility = System.Windows.Visibility.Visible;
            tbNoviHotel.Visibility = System.Windows.Visibility.Visible;
        }

        private void btnRezervisi_Click(object sender, RoutedEventArgs e)
        {
            RezervacijaSobe rez = new RezervacijaSobe();
            rez.Show();
            this.Visibility=System.Windows.Visibility.Hidden;
        }
    }
}
