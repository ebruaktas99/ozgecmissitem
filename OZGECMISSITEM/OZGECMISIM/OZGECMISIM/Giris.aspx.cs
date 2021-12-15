using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OZGECMISIM
{
    public partial class Giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        CVdbEntities db = new CVdbEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            var deger = from x in db.Admin where x.KULLANICIAD == TextBox1.Text && x.SIFRE == TextBox2.Text select x;

            if (deger.Any()) //eğer sorguda bir şey varsa
            {
                Response.Redirect("Iletisim.aspx");

            }
            else
            {
                Response.Write("Hatalı kullanıcı adı veya şifre");
            }
        }
    }
}