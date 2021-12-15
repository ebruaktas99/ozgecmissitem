using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OZGECMISIM
{
    public partial class MesajTumu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CVdbEntities db = new CVdbEntities();
            int b = int.Parse(Request.QueryString["ID"]);
            var mesaj = db.ILETISIM.Find(b);

            TextBox1.Text = mesaj.ADSOYAD;
            TextBox2.Text = mesaj.MAIL;
            TextBox3.Text = mesaj.KONU;
            TextBox4.Text = mesaj.MESAJ;

        }
    }
}