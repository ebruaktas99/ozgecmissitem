using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OZGECMISIM
{
    public partial class Default : System.Web.UI.Page
    {
        CVdbEntities db = new CVdbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.Hakkimda.ToList();
            Repeater1.DataBind();
           
            Repeater2.DataSource = db.Hakkimda.ToList();
            Repeater2.DataBind();

            Repeater3.DataSource = db.YETENEKLERIM.ToList();
            Repeater3.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ILETISIM il = new ILETISIM();

            il.ADSOYAD = TextBox1.Text;
            il.MAIL = TextBox2.Text;
            il.KONU = TextBox3.Text;
            il.MESAJ = TextBox4.Text;

            db.ILETISIM.Add(il);
            db.SaveChanges();
            
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
    }
}