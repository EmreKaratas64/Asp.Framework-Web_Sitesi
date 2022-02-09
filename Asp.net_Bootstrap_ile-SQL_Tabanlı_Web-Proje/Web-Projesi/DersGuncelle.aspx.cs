using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Projesi
{
    public partial class DersGuncelle : System.Web.UI.Page
    {
        int Dersid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                Dersid = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
                DataSet1TableAdapters.TBL_DERSLERTableAdapter dt = new DataSet1TableAdapters.TBL_DERSLERTableAdapter();
                dt.DersGetir(Dersid);
                TxtDersID.Text = Dersid.ToString();
                TxtDersAd.Text = dt.DersGetir(Dersid)[0].DERSAD;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_DERSLERTableAdapter dt = new DataSet1TableAdapters.TBL_DERSLERTableAdapter();
            dt.DersGuncelle(TxtDersAd.Text, Convert.ToInt32(TxtDersID.Text));
            Response.Redirect("DersListesi.aspx");
        }
    }
}