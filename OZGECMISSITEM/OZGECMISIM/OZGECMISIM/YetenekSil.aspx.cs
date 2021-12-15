using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OZGECMISIM
{
    public partial class YetenekSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CVdbEntities db = new CVdbEntities();
            int a = Convert.ToInt32(Request.QueryString["ID"]); //Almış olduğumuz ID değerini x değişkenine atadık.
            var deger = db.YETENEKLERIM.Find(a); //yeteneklerim tablosundan bul.
            db.YETENEKLERIM.Remove(deger);

            db.SaveChanges();
            Response.Redirect("Yeteneklerim.aspx");
        }
    }
}