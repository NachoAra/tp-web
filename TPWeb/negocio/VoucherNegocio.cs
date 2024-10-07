using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;

namespace negocio
{
    public class VoucherNegocio
    {
        private AccesoDatos accesoDatos;
        public VoucherNegocio()
        {
            accesoDatos = new AccesoDatos();
        }
        public bool existeVoucher(string Voucher) 
        {
            try
            {
                accesoDatos.setearConsulta("Select * from Vouchers where CodigoVoucher=@voucher and FechaCanje is null ");
                accesoDatos.setearParametro("@voucher", Voucher);
                
                accesoDatos.ejecutarConsulta();

                if (accesoDatos.Lector.Read())
                {
                    return true;
                }
                return false;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                accesoDatos.cerrarConexion();
            }
        }

        public bool Asociar(Cliente cliente, string CodigoVoucher, int codigoArticulo )// Tambien hay que asociar el articulo.
        {
            try
            {
                accesoDatos.setearConsulta("UPDATE Vouchers SET IdCliente = @IDCliente, FechaCanje = @Fecha , IdArticulo = @IDArticulo WHERE CodigoVoucher = @CodigoVoucher");
                accesoDatos.setearParametro("@IDCliente", cliente.IDCliente);
                accesoDatos.setearParametro("@Fecha", DateTime.Now);
                accesoDatos.setearParametro("@IDArticulo", codigoArticulo);
                accesoDatos.setearParametro("@CodigoVoucher", CodigoVoucher);
                
                if(accesoDatos.EjecutarAccion())
                    return true;
                else
                    return false;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                accesoDatos.Cerrar();
            }
        }
    }
}


