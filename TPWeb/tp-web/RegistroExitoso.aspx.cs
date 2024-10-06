using dominio;
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
            Cliente cliente = (Cliente)Session["Cliente"];
            NombreCliente.InnerText = cliente.Apellido + ',' + cliente.Nombre;
            DNIUsuario.InnerText = cliente.Documento;
            string codigoVoucher = Session["Cvoucher"].ToString();
            CodigoVoucher.InnerText = codigoVoucher;
            NombreArticulo.InnerText = Session["Articulo"].ToString();

        }

        protected void BtnVolverInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx", false);
        }
    }
}