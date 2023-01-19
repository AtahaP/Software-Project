using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration; //
using System.Data.SqlClient; // 
using System.Web.Configuration;

namespace software_project.Yonetim
{
    public partial class PaketEkle : System.Web.UI.Page
    {
        string conF_baglanti = WebConfigurationManager.ConnectionStrings["GoTripConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblSonuc.Text = "";
            try
            {
                if (FileUpload1.FileName != "")
                {
                    // dosya uzantı kontrolü
                    if (FileUpload1.PostedFile.ContentType == "image/jpeg" ||
                        FileUpload1.PostedFile.ContentType == "image/jpg" ||
                        FileUpload1.PostedFile.ContentType == "image/png")
                    {
                        #region dosyaKopyalamaIslemleri
                        string[] ResimAdiParcala = FileUpload1.FileName.Split('.');
                        string ResimAd = Guid.NewGuid() + "." + ResimAdiParcala[1];
                        FileUpload1.SaveAs(Server.MapPath("~/images/" + ResimAd));
                        lblResim.Text = ResimAd;
                        #endregion

                        #region kayitIslemleri
                        string Ad = txtAd.Text.ToString();
                        int Fiyat = 0;
                        if (!string.IsNullOrEmpty(txtFiyat.Text.ToString()))
                        {
                            Fiyat = Convert.ToInt32(txtFiyat.Text.ToString());
                        }
                        int Sure = 0;
                        if (!string.IsNullOrEmpty(txtSure.Text.ToString()))
                        {
                            Sure = Convert.ToInt32(txtSure.Text.ToString());
                        }
                        string Lokasyon = txtKonum.Text.ToString();
                        string Resim = lblResim.Text.ToString();
                        string Detay = txtDetay.Text.ToString();
                        if (!string.IsNullOrEmpty(Ad) && 
                            (Fiyat != 0) &&
                            (Sure != 0) &&
                            !string.IsNullOrEmpty(Lokasyon) && 
                            !string.IsNullOrEmpty(Resim) && 
                            !string.IsNullOrEmpty(Detay))
                        {
                            SqlConnection baglanti = new SqlConnection(conF_baglanti);
                            baglanti.Open();
                            SqlCommand komut = new SqlCommand("insert into tblTurPaket(Adi,Fiyat,Sure,Lokasyon,Resim,Detay) values(@Adi,@Fiyat,@Sure,@Lokasyon,@Resim,@Detay)", baglanti);
                            komut.Parameters.Add("@Adi", Ad);
                            komut.Parameters.Add("@Fiyat", Fiyat);
                            komut.Parameters.Add("@Sure", Sure);
                            komut.Parameters.Add("@Lokasyon", Lokasyon);
                            komut.Parameters.Add("@Resim", Resim);
                            komut.Parameters.Add("@Detay", Detay);
                            int sonuc = komut.ExecuteNonQuery();
                            //sonuc = 0; // deneme amaçlı yazdım
                            if (sonuc == 0)
                            {
                                lblSonuc.Text = "Kayıt İşlemi Başarısız!";
                                System.IO.File.Delete(Server.MapPath("~/images/" + ResimAd));
                            }
                            else
                                lblSonuc.Text = "Kayıt İşlemi Başarılı";
                            baglanti.Close();
                        }
                        else
                        {
                            lblSonuc.Text = "Boş alanları doldurunuz!";
                        }
                        #endregion
                    }
                    else
                    {
                        lblResim.Text = "Lütfen jpeg,jpg veya png formatında dosya seçiniz.";
                    }
                }
                else
                {
                    lblResim.Text = "Lütfen resim seçiniz!";
                }
            }
            catch (Exception Ex)
            {
                lblSonuc.Text = "Hata : "+Ex.Message.ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //dosya yüklenmiş mi kontrolü
            //if (FileUpload1.HasFile)
            //    if (FileUpload1.FileName != "")
            //    {
            //        // dosya uzantı kontrolü
            //        if (FileUpload1.PostedFile.ContentType == "image/jpeg" ||
            //            FileUpload1.PostedFile.ContentType == "image/jpg" ||
            //            FileUpload1.PostedFile.ContentType == "image/png")
            //        {
            //            string[] ResimAdiParcala = FileUpload1.FileName.Split('.');
            //            string ResimAd = Guid.NewGuid() + "." + ResimAdiParcala[1];
            //            FileUpload1.SaveAs(Server.MapPath("~/images/" + ResimAd));
            //            lblResim.Text = ResimAd;
            //        }
            //        else
            //        {
            //            lblResim.Text = "Lütfen jpeg,jpg veya png formatında dosya seçiniz.";
            //        }
            //    }
            //    else
            //        lblResim.Text = "Lütfen resim seçiniz!";
        }
    }
}