using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OZGECMISIM
{
    public partial class istatistik : System.Web.UI.Page
    {
        CVdbEntities db = new CVdbEntities();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = db.YETENEKLERIM.Count().ToString();
            Label2.Text = db.ILETISIM.Count().ToString();
        }
    }
}