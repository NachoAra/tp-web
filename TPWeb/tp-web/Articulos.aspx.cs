using System;
using System.Collections.Generic;
using System.Linq;
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
                List<Articulo> todosLosArticulos = articuloNegocio.listar();

                // no + de 3 arts
                List<Articulo> articulosLimitados = todosLosArticulos.Take(todosLosArticulos.Count()).ToList();

                //cargar img
                ImagenNegocio imagenNegocio = new ImagenNegocio();
                foreach (var articulo in articulosLimitados)
                {
                    articulo.Imagenes = imagenNegocio.listarPorId(articulo.IDArticulo);
                }
                rptArticulos.DataSource = articulosLimitados;
                rptArticulos.DataBind();
            }
        }


        protected string GetImageUrl(object dataItem)
        {
            Articulo articulo = dataItem as Articulo;
            if (articulo != null && articulo.Imagenes != null && articulo.Imagenes.Count > 0)
            {
                return articulo.Imagenes[0].ImagenUrl;
            }
            return "~/Content/Images/placeholder.jpg"; //imagen vacia
        }
        protected void btnSeleccionar_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int articuloId = Convert.ToInt32(btn.CommandArgument);

            // Guardar el ID del artículo en la Session
            Session["ArticuloSeleccionadoId"] = articuloId;

            // Redirigir al formulario
            Response.Redirect("Formulario.aspx", false);
        }

    }
}