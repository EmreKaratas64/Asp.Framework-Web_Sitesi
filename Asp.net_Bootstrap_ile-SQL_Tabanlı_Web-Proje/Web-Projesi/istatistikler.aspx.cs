using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Projesi
{
    public partial class istatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.DataTable1TableAdapter dt = new DataSet1TableAdapters.DataTable1TableAdapter();
            Textbox1.Text = "Toplam Öğrenci Sayısı: " + dt.Istatistik1();

            Textbox2.Text = "Toplam Öğretmen Sayısı: " + dt.Istatistik2();

            Textbox3.Text = "Toplam Ders Sayısı: " + dt.Istatistik3();

            Textbox4.Text = "Matematik Sınav1'de En Başarılı Öğrenci: " + dt.Istatistik4();

            Textbox5.Text = "Fizik Sınav1'de En Başarılı Öğrenci: " + dt.Istatistik5();

            Textbox6.Text = "Dil Anlatım Sınav1'de En Başarılı Öğrenci: " + dt.Istatistik6();

            Textbox7.Text = "Edebiyat Sınav1'de En Başarılı Öğrenci: " + dt.Istatistik7();

            Textbox8.Text = "Matematik Dersi 1.Sınav Ortalaması: " + dt.Istatistik8();

            Textbox9.Text = "Fizik Dersi 1.Sınav Ortalaması: " + dt.Istatistik9();

            Textbox10.Text = "Dil Anlatım Dersi 1.Sınav Ortalaması: " + dt.Istatistik10();

            Textbox11.Text = "Matematik Dersinden Geçen Öğrenci Sayısı:: " + dt.Istatistik11();

            Textbox12.Text = "Matematik Dersinden Kalan Öğrenci Sayısı: " + dt.Istatistik12();
        }
    }
}