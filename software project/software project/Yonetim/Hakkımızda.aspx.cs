using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace software_project.Yonetim
{
    public partial class Hakkımızda : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["GoTripConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Enabled = false;
           
        }
        //save
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from tblKurumsal", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            txtBaslik.Text = tablo.Rows[0]["Baslik"].ToString();
            txtOzet.Text = tablo.Rows[0]["Ozet"].ToString();
            txtDetay.Text = tablo.Rows[0]["Detay"].ToString();
            id = tablo.Rows[0]["id"].ToString();
            Label1.Text = id;
            baglanti.Close();
            Button1.Enabled = true;
        }
        //guncelle
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("update tblKurumsal set Baslik=@Baslik,Ozet=@Ozet,Detay=@Detay where id=@id", baglanti);
            komut.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@Ozet", txtOzet.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
            komut.Parameters.AddWithValue("@id", Label1.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("/Yonetim/Hakkımızda");
        }
        string id;
    }
}