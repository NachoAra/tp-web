using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace tp_web
{
    public partial class Articulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ArticuloNegocio articuloNegocio = new ArticuloNegocio();
                List<Articulo> articulos = articuloNegocio.listar();

                // carga img para c/u
                ImagenNegocio imagenNegocio = new ImagenNegocio();
                foreach (var articulo in articulos)
                {
                    articulo.Imagenes = imagenNegocio.listarPorId(articulo.IDArticulo);
                }

                rptArticulos.DataSource = articulos;
                rptArticulos.DataBind();
            }
        }

        protected string GetButtonText(string nombreArticulo)
        {
            switch (nombreArticulo.ToLower())
            {
                case "mochila notebook":
                    return "Quiero este!";
                case "auriculares gamer":
                    return "No, este!";
                case "mouse gamer":
                    return "Mejor este!";
                default:
                    return "Seleccionar";
            }
        }

        protected string GetImageUrl(object dataItem)
        {
            Articulo articulo = dataItem as Articulo;
            if (articulo != null && articulo.Imagenes != null && articulo.Imagenes.Count > 0)
            {
                return articulo.Imagenes[0].ImagenUrl;
            }
            return "~/Content/Images/placeholder.jpg";//vacio
        }
    }
}