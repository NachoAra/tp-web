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
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void DNIUsuario_TextChanged(object sender, EventArgs e)
        {
            try
            {
            ClienteNegocio clienteNegocio = new ClienteNegocio();

                if(clienteNegocio.BuscarDNI(DNIUsuario.Text))
                {
                    Cliente clienteAuxiliar = clienteNegocio.GetCliente(DNIUsuario.Text);

                    NombreUsuario.Text = clienteAuxiliar.Nombre;
                    ApellidoUsuario.Text = clienteAuxiliar.Apellido;
                    EmailUsuario.Text = clienteAuxiliar.Email;
                    DireccionUsuario.Text = clienteAuxiliar.Direccion;
                    CiudadUsuario.Text = clienteAuxiliar.Ciudad;
                    CPUsuario.Text = clienteAuxiliar.CodigoPostal.ToString();
                }
                // Si no existe el cliente continua...
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void BtnEnviarForm_Click(object sender, EventArgs e)
        {
            ClienteNegocio clienteNegocio = new ClienteNegocio();
            Cliente cliente = new Cliente();
            string nombre = NombreUsuario.Text;

            try
            {
                Page.Validate();

                if (Page.IsValid)
                {
                    cliente.Documento = DNIUsuario.Text;
                    cliente.Nombre = NombreUsuario.Text;
                    cliente.Apellido = ApellidoUsuario.Text;
                    cliente.Email = EmailUsuario.Text;
                    cliente.Direccion = DireccionUsuario.Text;
                    cliente.Ciudad = CiudadUsuario.Text;
                    cliente.CodigoPostal = int.Parse(CPUsuario.Text);
                }
                else
                {
                    return;
                }
                if (clienteNegocio.RegistrarCliente(cliente))
                {
                    CardRegistroExitoso.Style["Display"] = "block";
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
            CardRegistroExitoso.Style["Display"] = "none";
            Response.Redirect("Default.aspx", false);
        }
    }
}