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

    }
}


