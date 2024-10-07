using dominio;
using negocio;
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

            if (Session["ArticuloSeleccionadoId"] != null)
            {
                int articuloId = (int)Session["ArticuloSeleccionadoId"];

                ArticuloNegocio articuloNegocio = new ArticuloNegocio();
                List<Articulo> articulos = articuloNegocio.listar();
                Articulo articuloSeleccionado = articulos.FirstOrDefault(a => a.IDArticulo == articuloId);

                if (articuloSeleccionado != null)
                {
                    NombreArticulo.InnerText = articuloSeleccionado.Nombre;
                    //DescripcionArticulo.InnerText = articuloSeleccionado.Descripcion;
                }
                else
                {
                    NombreArticulo.InnerText = "Artículo no encontrado";
                }
            }
            else
            {
                NombreArticulo.InnerText = "No se seleccionó ningún artículo";
            }
        }

    

        protected void BtnVolverInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx", false);
        }
    }
}