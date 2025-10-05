using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Linq;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace Negocio
{
    public class ClienteNegocio
    {
        public Cliente ObtenerPorDocumento(string documento)
        {
            Cliente cli = new Cliente();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("select top 1 Documento,Nombre,Apellido,Email,Direccion,Ciudad,CP from Clientes");
                datos.setearParametro("@doc", documento);
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    cli.Documento = (string)datos.Lector["Documento"];
                    cli.Nombre = (string)datos.Lector["Nombre"];
                    cli.Apellido = (string)datos.Lector["Apellido"];
                    cli.Email = (string)datos.Lector["Email"];
                    cli.Direccion = (string)datos.Lector["Direccion"];
                    cli.Ciudad = (string)datos.Lector["Ciudad"];
                    cli.codPostal = (int)datos.Lector["CP"];

                }
                   return cli;

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


        public List<Cliente> listar()
        {

            List<Cliente> lista = new List<Cliente>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("select Id,Documento,Nombre,Apellido,Email,Direccion,Ciudad,CP from Clientes");
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {

                    Cliente aux = new Cliente();
                    aux.Id = (int)datos.Lector["Id"];
                    aux.Documento = (string)datos.Lector["Documento"];
                    aux.Nombre = (string)datos.Lector["Nombre"];
                    aux.Apellido = (string)datos.Lector["Apellido"];
                    aux.Email = (string)datos.Lector["Email"];
                    aux.Direccion = (string)datos.Lector["Direccion"];
                    aux.Ciudad = (string)datos.Lector["Ciudad"];
                    aux.codPostal = (int)datos.Lector["CP"];

                    lista.Add(aux);
                }

                return lista;
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

        public Cliente ExisteCliente(string DNI)
        {
            Cliente aux = new Cliente();
            aux.Nombre = "";
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("select Id,Documento,Nombre,Apellido,Email,Direccion,Ciudad,CP from Clientes WHERE Documento = @DNI");
                datos.setearParametro("@DNI", DNI);
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {

                    aux.Id = (int)datos.Lector["Id"];
                    aux.Documento = (string)datos.Lector["Documento"];
                    aux.Nombre = (string)datos.Lector["Nombre"];
                    aux.Apellido = (string)datos.Lector["Apellido"];
                    aux.Email = (string)datos.Lector["Email"];
                    aux.Direccion = (string)datos.Lector["Direccion"];
                    aux.Ciudad = (string)datos.Lector["Ciudad"];
                    aux.CodPostal = (int)datos.Lector["CP"];

                }

                return aux;
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
        public void AgregarCliente(Cliente nuevo) {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("insert into Clientes (Documento,Nombre,Apellido,Email,Direccion,Ciudad,CP) values (@Documento,@Nombre,@Apellido,@Email,@Direccion,@Ciudad,@CP");
                datos.setearParametro("@Codigo", nuevo.Documento);
                datos.setearParametro("@Nombre", nuevo.Nombre);
                datos.setearParametro("@Apellido", nuevo.Apellido);
                datos.setearParametro("@Email", nuevo.Email);
                datos.setearParametro("@Direccion", nuevo.Direccion);
                datos.setearParametro("@Ciudad", nuevo.Ciudad);
                datos.setearParametro("@CP", nuevo.codPostal);

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

        public bool validarDocumento()
        {
            throw new NotImplementedException();
        }
    }
}

    