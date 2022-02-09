using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Web_Projesi
{
    public partial class OgretmenSifremiUnuttum : System.Web.UI.Page
    {

        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-NKLMS7G;Initial Catalog=UdemySiteDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Update TBL_OGRETMEN set OGRTSIFRE=@p1 where OGRTNUMARA=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtOgrtSifre.Text);
            komut.Parameters.AddWithValue("@p2", TxtOgrtNumara.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("LoginPanel.aspx");
        }
    }
}