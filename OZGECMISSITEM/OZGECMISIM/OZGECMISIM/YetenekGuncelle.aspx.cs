using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace OZGECMISIM
{
    public partial class YetenekGuncelle : System.Web.UI.Page
    {
        CVdbEntities db = new CVdbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false) { 
            int b = int.Parse(Request.QueryString["ID"]);

            var veri = db.YETENEKLERIM.Find(b);

            TextBox1.Text = veri.YETENEK;

            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int b = int.Parse(Request.QueryString["ID"]);

            var veri = db.YETENEKLERIM.Find(b);

            veri.YETENEK = TextBox1.Text;
            db.SaveChanges();
            Response.Redirect("Yeteneklerim.aspx");
        }
    }
}