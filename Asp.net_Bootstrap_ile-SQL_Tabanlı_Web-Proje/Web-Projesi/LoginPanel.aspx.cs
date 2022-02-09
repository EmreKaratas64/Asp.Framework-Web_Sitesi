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
    public partial class LoginPanel : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-NKLMS7G;Initial Catalog=UdemySiteDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From TBL_OGRENCI where NUMARA=@p1 and OGRSIFRE=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();

            if (dr.Read())
            {
                Session.Add("Numara", TxtNumara.Text);
                Response.Redirect("OgrenciDefault.aspx");
            }
            else
            {
                TxtSifre.Text = "Hatalı Şifre !";
            }
            baglanti.Close();    
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From TBL_OGRETMEN where OGRTNUMARA=@p1 and OGRTSIFRE=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();

            if (dr.Read())
            {
                Session.Add("OGRTNUMARA", TxtNumara.Text);
                Response.Redirect("WebForm1.aspx");
            }
            else
            {
                TxtSifre.Text = "Hatalı Şifre !";
            }
            baglanti.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciSifremiUnuttum.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgretmenSifremiUnuttum.aspx");
        }
    }
}