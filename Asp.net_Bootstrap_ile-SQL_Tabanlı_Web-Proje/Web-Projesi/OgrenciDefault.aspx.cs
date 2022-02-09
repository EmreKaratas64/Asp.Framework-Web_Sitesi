using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Projesi
{
    public partial class OgrenciDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Textbox1.Text = Session["Numara"].ToString();
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt= new DataSet1TableAdapters.TBL_OGRENCITableAdapter();

            Textbox2.Text = "Ad Soyad: " + dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRAD + " " + dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRSOYAD;
            Textbox3.Text = "Mail Adresi: " + dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRMAIL;
            Textbox4.Text = "Şifre: " + dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRSIFRE;
            Textbox5.Text = "Telefon: " + dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRTELEFON;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciGuncelle2.aspx?Numara=" + Textbox1.Text);
        }
    }
}