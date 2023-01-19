using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace software_project.Yonetim
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"]==null)
            {
                Response.Redirect("~/login.aspx");
            }
            else
            {
                lblLeftKullanici.Text = Session["Kullanici"].ToString();
                lblHeaderKullanici.Text = Session["Kullanici"].ToString();
            }
        }
    }
}