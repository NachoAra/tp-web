using dominio;

namespace negocio
{
    public class ClienteNegocio
    {
        private AccesoDatos accesoDatos;
        public ClienteNegocio()
        {
            accesoDatos = new AccesoDatos();
        }

        public bool BuscarDNI(int DNI)
        {
            try
            {
                accesoDatos.setearConsulta("SELECT Documento FROM Clientes WHERE Documento = @documento");
                accesoDatos.setearParametro("@documento", DNI);
                accesoDatos.ejecutarConsulta();

                if (accesoDatos.Lector.Read())
                    return true;
            }
            catch (System.Exception ex)
            {
                throw ex;
            }
            finally
            {
                accesoDatos.cerrarConexion();
            }
            return false;
        }

        public Cliente ObtenerDatos(int DNI)
        {
            Cliente cliente = new Cliente();
            try
            {
                if (BuscarDNI(DNI))
                {
                    accesoDatos.setearConsulta("SELECT * FROM Clientes WHERE Documento = @doc");
                    accesoDatos.setearParametro("@doc", DNI);
                    accesoDatos.ejecutarConsulta();

                    while (accesoDatos.Lector.Read())
                    {
                        cliente.Nombre = (string)accesoDatos.Lector["Nombre"];
                        cliente.Apellido = (string)accesoDatos.Lector["Apellido"];
                        cliente.Email = (string)accesoDatos.Lector["Email"];
                        cliente.Direccion = (string)accesoDatos.Lector["Direccion"];
                        cliente.Ciudad = (string)accesoDatos.Lector["Ciudad"];
                        cliente.CodigoPostal = (int)accesoDatos.Lector["CP"];
                    }
                }
            }
            catch (System.Exception ex)
            {
                throw ex;
            }
            finally
            {
                accesoDatos.cerrarConexion();
            }

            return cliente; // Si no existe se retorna un client vacio.
        }
    }
}
