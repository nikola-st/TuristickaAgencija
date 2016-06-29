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
using System.IO;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace TuristickaAgencija
{
    /// <summary>
    /// Interaction logic for RezervacijaSobe.xaml
    /// </summary>
    public partial class RezervacijaSobe : Window
    {
        public RezervacijaSobe()
        {
            InitializeComponent();
        }

        private void btnRezervacija_Click(object sender, RoutedEventArgs e) {
            String konString = @"Data Source=Nebojsa\Lazovic;Initial Catalog=Agencija;Integrated Security=True ";
            String cmdString = "INSERT INTO Rezervacija (datumOd, datumDo, IDHotela) values('"+ this.Od.Text + "', '"+this.Do.Text+"', '"+this.tbID.Text+"')";
            String cmdString1= "INSERT into Putnik (ime, prezime, adresa) values ('" + this.tbIme.Text + "', '" + this.tbPrezime.Text + "', '" + this.tbAdresa.Text + "')";
            SqlConnection konekcija = new SqlConnection(konString);
            SqlCommand cmd = new SqlCommand(cmdString,konekcija);
            SqlCommand cmd1 = new SqlCommand(cmdString1, konekcija);
            SqlDataReader reader;
            SqlDataReader reader1;
            try
            {
                konekcija.Open();
                reader = cmd.ExecuteReader();
                reader.Close();
                MessageBox.Show("Sacuvana rezervacija!!!");

                
            }
            catch(Exception ex)
            {
                MessageBox.Show("Greska pri upisu u tabelu rezervacije!!!"+ex.Message);
            }
            konekcija.Close();

            try
            {
                konekcija.Open();
                reader1 = cmd1.ExecuteReader();
                MessageBox.Show("Sacuvan putnik!!!!");
                reader1.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show("Greska pri upisu u tabelu putnik!!!" + ex.Message);
            }

            konekcija.Close();

            TuristickaAgencija.gotovaRezervacija gr = new gotovaRezervacija();
            gr.Show();

        }

    private void btnOtkazi_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Povratak_Click(object sender, RoutedEventArgs e)
        {
            TuristickaAgencija.MainWindow mainWindow = new MainWindow();
            this.Visibility = System.Windows.Visibility.Hidden;
            mainWindow.Visibility = System.Windows.Visibility.Visible;
        }


        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            TuristickaAgencija.AgencijaDataSet agencijaDataSet = ((TuristickaAgencija.AgencijaDataSet)(this.FindResource("agencijaDataSet")));
            // Load data into the table Soba. You can modify this code as needed.
            TuristickaAgencija.AgencijaDataSetTableAdapters.SobaTableAdapter agencijaDataSetSobaTableAdapter = new TuristickaAgencija.AgencijaDataSetTableAdapters.SobaTableAdapter();
            agencijaDataSetSobaTableAdapter.Fill(agencijaDataSet.Soba);
            System.Windows.Data.CollectionViewSource sobaViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("sobaViewSource")));
            sobaViewSource.View.MoveCurrentToFirst();
            //agencijaDataSet.Clear();
            agencijaDataSet.EnforceConstraints = false;
            // Load data into the table Hotel. You can modify this code as needed.
            TuristickaAgencija.AgencijaDataSetTableAdapters.HotelTableAdapter agencijaDataSetHotelTableAdapter = new TuristickaAgencija.AgencijaDataSetTableAdapters.HotelTableAdapter();
            agencijaDataSetHotelTableAdapter.Fill(agencijaDataSet.Hotel);
            System.Windows.Data.CollectionViewSource hotelViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("hotelViewSource")));
            hotelViewSource.View.MoveCurrentToFirst();
        }
    }
}
