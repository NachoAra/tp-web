using System;
using System.Collections.Specialized;
using System.Reflection.Emit;
using System.Security.Cryptography;
using System.Web.UI;
using dominio;
using negocio;

namespace tp_web
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInicial_Click(object sender, EventArgs e)
        {
            string codigoVoucher =TxtVoucher.Text;

            VoucherNegocio Voucher = new VoucherNegocio();
            bool correcto = Voucher.existeVoucher(TxtVoucher.ToString());
            if (correcto == true)
            {
                Session.Add("Cvoucher", codigoVoucher);
                Response.Redirect("Formulario.aspx", false);//redirecciona al formulario solo como prueba

            }
            else
            {

            }



        }
    }
}