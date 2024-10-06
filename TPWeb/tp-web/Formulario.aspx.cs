using System;
using System.Net;
using System.Timers;
using System.Web.UI.WebControls;
using dominio;
using Microsoft.Ajax.Utilities;
using negocio;

namespace tp_web
{
    public partial class Formulario : System.Web.UI.Page
    {
        private ClienteNegocio clienteNegocio;
        private Cliente cliente;
        protected void Page_Load(object sender, EventArgs e)
        {
            clienteNegocio = new ClienteNegocio();
            cliente = new Cliente();
        }

        protected void DNIUsuario_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if(clienteNegocio.ExisteDNI(DNIUsuario.Text))
                {
                    cliente = clienteNegocio.GetCliente(DNIUsuario.Text);

                    NombreUsuario.Text = cliente.Nombre;
                    ApellidoUsuario.Text = cliente.Apellido;
                    EmailUsuario.Text = cliente.Email;
                    DireccionUsuario.Text = cliente.Direccion;
                    CiudadUsuario.Text = cliente.Ciudad;
                    CPUsuario.Text = cliente.CodigoPostal.ToString();
                }
                else
                {
                    LimpiarCampos();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void BtnEnviarForm_Click(object sender, EventArgs e)
        {
            string codigoVoucher = Session["Cvoucher"].ToString();
            try
            {
                Page.Validate();

                if (Page.IsValid && !clienteNegocio.ExisteDNI(DNIUsuario.Text))
                {
                    cliente.Documento = DNIUsuario.Text;
                    cliente.Nombre = NombreUsuario.Text;
                    cliente.Apellido = ApellidoUsuario.Text;
                    cliente.Email = EmailUsuario.Text;
                    cliente.Direccion = DireccionUsuario.Text;
                    cliente.Ciudad = CiudadUsuario.Text;
                    cliente.CodigoPostal = int.Parse(CPUsuario.Text);

                    clienteNegocio.RegistrarCliente(cliente);
                    cliente.IDCliente = clienteNegocio.GetCliente(cliente.Documento).IDCliente;
                }
                else
                {
                    cliente = clienteNegocio.GetCliente(DNIUsuario.Text);
                }

                VoucherNegocio voucher = new VoucherNegocio();
                if(voucher.Asociar(cliente, codigoVoucher, 1))
                {
                    CardTiempoEspera.Style["Display"] = "block";
                    TiempoEspera.Enabled = true;
                }
                
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        protected void TiempoEspera_Tick(object sender, EventArgs e)
        {
            CardTiempoEspera.Style["Display"] = "none";
            Response.Redirect("RegistroExitoso.aspx", false);
        }

        private void LimpiarCampos()
        {
            NombreUsuario.Text = null;
            ApellidoUsuario.Text = null;
            EmailUsuario.Text = null;
            DireccionUsuario.Text = null;
            CiudadUsuario.Text = null;
            CPUsuario.Text = null;
        }
    }
}