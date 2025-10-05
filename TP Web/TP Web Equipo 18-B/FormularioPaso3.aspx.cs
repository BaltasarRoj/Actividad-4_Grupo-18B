using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;


namespace TP_Web_Equipo_18_B
{
    public partial class FormularioPaso3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Fran aca estan los codigos de las secciones anteriores
            string idArticulo = Request.QueryString["id"];
            string codVoucher = Request.QueryString["voucher"];

        }

        protected void btnParticipar_Click(object sender, EventArgs e)
        {
            Cliente cliente = new Cliente();
            ClienteNegocio negocio = new ClienteNegocio();
            try
            {
                if (Validacion.ValidacionVacio(txtDni) ||
                    Validacion.ValidacionVacio(txtNombre) ||
                    Validacion.ValidacionVacio(txtApellido) ||
                    Validacion.ValidacionVacio(txtEmail) ||
                    Validacion.ValidacionVacio(txtDireccion) ||
                    Validacion.ValidacionVacio(txtCiudad) ||
                    Validacion.ValidacionVacio(txtCP))
                {
                    Session.Add("ERROR", "tienes que completar todos los campos");
                    Response.Redirect("ERROR.aspx");
                }
                else {
                    cliente.Documento = txtDni.Text;
                    cliente.Nombre = txtNombre.Text;
                    cliente.Apellido = txtApellido.Text;
                    cliente.Email = txtEmail.Text;
                    cliente.Direccion = txtDireccion.Text;
                    cliente.Ciudad = txtCiudad.Text;
                    cliente.codPostal = int.Parse(txtCP.Text);

                    negocio.AgregarCliente(cliente);
                }
                    
            }



            catch (Exception)
            {
                throw;
            }
        }

        protected void txtDni_TextChanged(object sender, EventArgs e)
        {
            string dni = txtDni.Text;

            if (string.IsNullOrWhiteSpace(dni))
            {
                LimpiarCamposCliente();
                return;
            }

            ClienteNegocio negocio = new ClienteNegocio();
            Cliente cliente = negocio.ObtenerPorDocumento(dni);

            if (cliente == null)
            {
                LimpiarCamposCliente();
                return;
            }

            txtNombre.Text = cliente.Nombre;
            txtApellido.Text = cliente.Apellido;
            txtEmail.Text = cliente.Email;
            txtDireccion.Text = cliente.Direccion;
            txtCiudad.Text = cliente.Ciudad;
            txtCP.Text = cliente.codPostal.ToString();
        }

        private void LimpiarCamposCliente()
        {
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtEmail.Text = "";
            txtDireccion.Text = "";
            txtCiudad.Text = "";
            txtCP.Text = "";
        }


    }
}