using System;
using System.Collections.Generic;
using System.Configuration;//
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Geotema_test2
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            bindatagrid();
        }
        private void bindatagrid()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=192.168.23.113,1433;Initial Catalog=GeoTema;Persist Security Info=True;User ID = Admin; Password=Passw0rd";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select Land.* , Rang.Rang1,Rang.Fødselrate from Land full outer join Rang on Land.Id = Rang.Id";
            
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable("Land");
            da.Fill(dt);

            g1.ItemsSource = dt.DefaultView;
            con.Close();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=192.168.23.113,1433;Initial Catalog=GeoTema;Persist Security Info=True;User ID = Admin; Password=Passw0rd";
            con.Open();
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT INTO [Land] (Land1,verdensdel) VALUES (@Land,@Verden);" +
                              "INSERT INTO [Rang] (Rang1,Fødselrate) VALUES (@Rang,@Fød);";
                              

                              


            cmd.Parameters.AddWithValue("@Land", LandBox.Text);
            cmd.Parameters.AddWithValue("@Verden", VerdensBox.Text);
            cmd.Parameters.AddWithValue("@Rang", RangBox.Text);
            cmd.Parameters.AddWithValue("@Fød", FødBox.Text);
           
            cmd.Connection = con;
            int a = cmd.ExecuteNonQuery();
            Console.WriteLine(a);
            if (a>=1)
            { 
                MessageBox.Show("Data Add Sucessfully");
                bindatagrid();
            }
        }

    }
}
