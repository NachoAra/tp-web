using System;
using System.Collections.Specialized;
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
            VoucherNegocio Voucher = new VoucherNegocio();
            bool correcto=Voucher.existeVoucher(TxtVoucher.ToString());
            if (correcto==true)
            {

                Response.Redirect("Formulario.aspx");

            }
            else
            {
               
            }



        }
    }
}