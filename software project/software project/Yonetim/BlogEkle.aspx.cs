using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace software_project.Yonetim
{
    public partial class BlogEkle : System.Web.UI.Page
    {
        DateTime today = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTarih.Text=today.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}