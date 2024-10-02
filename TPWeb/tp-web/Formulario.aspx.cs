using System;
using dominio;
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
            int dni = int.Parse(DNIUsuario.Text);
            Cliente cliente = clienteNegocio.ObtenerDatos(dni);

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
    }
}