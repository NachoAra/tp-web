using System;
using System.Net;
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
            ClienteNegocio clienteNegocio = new ClienteNegocio();

            string dni = DNIUsuario.Text;
            Cliente cliente = clienteNegocio.GetCliente(dni);

            try
            {
                if (cliente != null)
                {
                    NombreUsuario.Text = cliente.Nombre;
                    ApellidoUsuario.Text = cliente.Apellido;
                    EmailUsuario.Text = cliente.Email;
                    DireccionUsuario.Text = cliente.Direccion;
                    CiudadUsuario.Text = cliente.Ciudad;
                    CPUsuario.Text = cliente.CodigoPostal.ToString();
                }
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

            try
            {
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

                clienteNegocio.RegistrarCliente(cliente);

                // Codigo que evalue si RegitrarCliente es true o false e indicar mediante un cartel al usuario.
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}