using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class VoucherNegocio
    {

        public List<Voucher> listar()
        {
            List<Voucher> lista = new List<Voucher>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("SELECT * From Vouchers");
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Voucher aux = new Voucher();
                    aux.CodigoVoucher = (string)datos.Lector["CodigoVoucher"];
                    // aux.FechaCanje = (DateTime)datos.Lector["FechaCanje"];

                    if (!(datos.Lector["FechaCanje"] is DBNull))
                        aux.FechaCanje = (DateTime)datos.Lector["FechaCanje"];
                    else
                        aux.FechaCanje = null;

                    lista.Add(aux);

                }

                return lista;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }


        public int VoucherFueCanjeado(string CodigoVoucher)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("SELECT FechaCanje FROM Vouchers WHERE CodigoVoucher = @codigoVoucher");
                datos.setearParametro("@codigoVoucher", CodigoVoucher);
                datos.ejecutarLectura();

                if (datos.Lector.Read())
                {
                    if (datos.Lector["FechaCanje"] != DBNull.Value)
                        return 1; // Existe y está canjeado
                    else
                        return 0; // Existe y NO está canjeado
                }
                else
                {
                    return -1; // No existe el código de voucher
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }


        public void CanjearVoucher(Voucher cambio)
        {
           
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta(
                           "UPDATE Vouchers " +
                           "SET IdCliente = @idCliente, " +
                           "    FechaCanje = @fechaCanje, " +
                           "    IdArticulo = @idArticulo " +
                           "WHERE CodigoVoucher = @codVoucher"
                       ); 
                datos.setearParametro("@codVoucher", cambio.CodigoVoucher);
                datos.setearParametro("@idCliente", cambio.IDCliente);
                datos.setearParametro("@fechaCanje", cambio.FechaCanje);
                datos.setearParametro("@idArticulo", cambio.IDArticulo);

                datos.ejecutarAccion();

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
    }
}
