using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace software_project.Yonetim
{
    public partial class Ayarlar : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["GoTripConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Button1.Enabled = false;

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from tblAyarlar", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            txtMail.Text = tablo.Rows[0]["Mail"].ToString();
            txtTlf.Text = tablo.Rows[0]["tlf"].ToString();
            txtAdres.Text = tablo.Rows[0]["Adres"].ToString();
            txtTwitter.Text = tablo.Rows[0]["Twitter"].ToString();
            txtYoutube.Text = tablo.Rows[0]["Youtube"].ToString();
            txtInstagram.Text = tablo.Rows[0]["Instagram"].ToString();
            txtFacebook.Text = tablo.Rows[0]["Facebook"].ToString();
            txtDetay.Text = tablo.Rows[0]["SiteOzet"].ToString();
            id = tablo.Rows[0]["id"].ToString();

            baglanti.Close();
            Button1.Enabled = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("update tblAyarlar set Mail=@Mail,tlf=@tlf,Adres=@Adres,Twitter=@Twitter,Youtube=@Youtube,Instagram=@Instagram,SiteOzet=@SiteOzet,Facebook=@Facebook where id=@id,", baglanti);
            komut.Parameters.AddWithValue("@Mail", txtMail.Text.ToString());
            komut.Parameters.AddWithValue("@tlf", txtTlf.Text.ToString());
            komut.Parameters.AddWithValue("@Adres", txtAdres.Text.ToString());
            komut.Parameters.AddWithValue("@Twitter", txtTwitter.Text.ToString());
            komut.Parameters.AddWithValue("@Youtube", txtYoutube.Text.ToString());
            komut.Parameters.AddWithValue("@Instagram", txtInstagram.Text.ToString());
            komut.Parameters.AddWithValue("@Facebook", txtFacebook.Text.ToString());
            komut.Parameters.AddWithValue("@SiteOzet", txtDetay.Text.ToString());
            komut.Parameters.AddWithValue("@id", id .ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Ayarlar.aspx");
        }
        string id;
        
    }
}