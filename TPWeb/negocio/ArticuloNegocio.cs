using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace negocio
{
    public class ArticuloNegocio
    {
        public List<Articulo> listar()
        {
            List<Articulo> lista = new List<Articulo>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("select a.Id,a.Codigo,a.Nombre,a.Descripcion, m.Descripcion as marcaDescripcion,m.Id as marcaId,c.Descripcion as categoriaDescripcion,c.Id as categoriaId ,a.Precio from ARTICULOS as a left join MARCAS AS m on a.IdMarca =m.Id left JOIN CATEGORIAS as c on a.IdCategoria = c.Id");
                datos.ejecutarConsulta();

                while (datos.Lector.Read())
                {
                    Articulo articulo = new Articulo();

                    articulo.IDArticulo = (int)datos.Lector["Id"];
                    articulo.Codigo = (string)datos.Lector["Codigo"];
                    articulo.Nombre = (string)datos.Lector["Nombre"];
                    articulo.Descripcion = (string)datos.Lector["Descripcion"];

                    if (!(datos.Lector["marcaDescripcion"] is DBNull))
                    {
                        articulo.Marca = new Marca();
                        articulo.Marca.Nombre = (string)datos.Lector["marcaDescripcion"];
                        articulo.Marca.IDMarca = (int)datos.Lector["marcaId"];
                    }

                    if (!(datos.Lector["categoriaDescripcion"] is DBNull))
                    {
                        articulo.Categoria = new Categoria();
                        articulo.Categoria.Nombre = (string)datos.Lector["categoriaDescripcion"];
                        articulo.Categoria.IDCategoria = (int)datos.Lector["categoriaId"];
                    }

                    articulo.Precio = Convert.ToDecimal(datos.Lector["Precio"]);

                    ImagenNegocio negocioImg = new ImagenNegocio();
                    articulo.Imagenes = negocioImg.listarPorId(articulo.IDArticulo);

                    lista.Add(articulo);
                }
                return lista;
            }
            catch (Exception e)
            {

                throw e;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
    }
}
