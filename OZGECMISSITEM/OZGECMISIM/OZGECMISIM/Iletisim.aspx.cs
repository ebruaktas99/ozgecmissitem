using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OZGECMISIM
{
    public partial class Iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CVdbEntities db = new CVdbEntities();
            var mesaj = db.ILETISIM.ToList();
            Repeater1.DataSource = mesaj;
            Repeater1.DataBind();
        }
    }
}