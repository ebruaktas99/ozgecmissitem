using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OZGECMISIM
{
    public partial class Deneyimler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CVdbEntities db = new CVdbEntities();

            Repeater1.DataSource = db.YETENEKLERIM.ToList();
            Repeater1.DataBind();
        }
    }
}