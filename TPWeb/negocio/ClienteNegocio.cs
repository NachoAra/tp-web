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

        public bool ExisteDNI(string DNI)
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

        public Cliente GetCliente(string DNI)
        {
            Cliente cliente = new Cliente();
            try
            {
                    accesoDatos.setearConsulta("SELECT * FROM Clientes WHERE Documento = @doc");
                    accesoDatos.setearParametro("@doc", DNI);
                    accesoDatos.ejecutarConsulta();

                if(accesoDatos.Lector.Read())
                    {
                        cliente.Documento = DNI;
                        cliente.IDCliente = (int)accesoDatos.Lector["Id"];
                        cliente.Nombre = (string)accesoDatos.Lector["Nombre"];
                        cliente.Apellido = (string)accesoDatos.Lector["Apellido"];
                        cliente.Email = (string)accesoDatos.Lector["Email"];
                        cliente.Direccion = (string)accesoDatos.Lector["Direccion"];
                        cliente.Ciudad = (string)accesoDatos.Lector["Ciudad"];
                        cliente.CodigoPostal = (int)accesoDatos.Lector["CP"];
                    }

                return cliente;
            }
            catch (System.Exception ex)
            {
                throw ex;
            }
            finally
            {
                accesoDatos.cerrarConexion();
            }
        }

        public bool RegistrarCliente(Cliente cliente)
        {
            bool response = false;

            try
            {
                AccesoDatos accesoDatos = new AccesoDatos();
                accesoDatos.setearConsulta("INSERT INTO Clientes (Documento, Nombre, Apellido, Email, Direccion, Ciudad, CP)VALUES(@Documento, @Nombre, @Apellido, @Email, @Direccion, @Ciudad, @CP)");
                accesoDatos.setearParametro("@Documento", cliente.Documento);
                accesoDatos.setearParametro("@Nombre", cliente.Nombre);
                accesoDatos.setearParametro("@Apellido", cliente.Apellido);
                accesoDatos.setearParametro("@Email", cliente.Email);
                accesoDatos.setearParametro("@Direccion", cliente.Direccion);
                accesoDatos.setearParametro("@Ciudad", cliente.Ciudad);
                accesoDatos.setearParametro("@CP", cliente.CodigoPostal);
                if (accesoDatos.EjecutarAccion())
                    response = true; ;
            }
            catch (System.Exception ex)
            {
                throw ex;
            }
            finally
            {
                accesoDatos.cerrarConexion();
            }
            return response;
        }
    }
}
