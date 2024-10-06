using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp_web
{
    public partial class RegistroExitoso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string codigoVoucher = Session[""]
        }

        protected void BtnVolverInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx", false);
        }
    }
}