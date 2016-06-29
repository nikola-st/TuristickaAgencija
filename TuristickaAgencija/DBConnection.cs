using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace TuristickaAgencija
{
    class DBConnection
    {
        private string konString ;
        private string konekcija;
        SqlDataAdapter da;
        public string Sql
        {
            set { konString = value;}
        }
            public string connection_string {

            set { konekcija = value;}}
        public DataSet GetConnection
        {

            get
            {
                return MyDataSet();
            }

        }

        private DataSet MyDataSet()
        {
            SqlConnection con = new SqlConnection(konekcija);
            con.Open();
            da = new SqlDataAdapter(konString, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "Table_Data_1");

            con.Close();

            return ds;
            
        }
    }
}
