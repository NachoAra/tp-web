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

        public bool existeVoucher(string Voucher )//, int FechaCanje = 0
        {
           
            try
            {
                accesoDatos.setearConsulta("Select * from Vouchers where CodigoVoucher=@voucher");
                accesoDatos.setearParametro("@voucher", Voucher);
                //  datos.setearParametro("@fechacanje", FechaCanje);
                accesoDatos.ejecutarConsulta();

                if (accesoDatos.Lector.Read())//&& (datetime)datos.Lector[0] > 0
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


