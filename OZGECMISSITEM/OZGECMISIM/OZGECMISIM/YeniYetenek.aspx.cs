using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OZGECMISIM
{
    public partial class YeniYetenek : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        CVdbEntities db = new CVdbEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            YETENEKLERIM yt = new YETENEKLERIM();

            yt.YETENEK = TextBox1.Text;
            db.YETENEKLERIM.Add(yt);

            db.SaveChanges();
            Response.Redirect("Yeteneklerim.aspx");
        }
    }
}