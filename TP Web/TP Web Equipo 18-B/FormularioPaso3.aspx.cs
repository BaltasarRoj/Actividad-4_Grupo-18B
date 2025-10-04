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
        protected void btnEstoyRegistrado_Click(object sender, EventArgs e)
        {
            CargarCliente();
        }
        protected void btnParticipar_Click(object sender, EventArgs e)
        {

        }


        private void CargarCliente()
        {
            Cliente aux = null;
            ClienteNegocio clienteNegocio = new ClienteNegocio();
            if (!string.IsNullOrEmpty(txtDni.Text))
            {
                aux = clienteNegocio.ExisteCliente(txtDni.Text);
            }
            if (aux != null && !string.IsNullOrEmpty(aux.Nombre))
            {
                txtNombre.Text = aux.Nombre;
                txtApellido.Text = aux.Apellido;
                txtCiudad.Text = aux.Ciudad;
                txtCP.Text = aux.CodPostal.ToString();
                txtDireccion.Text = aux.Direccion;
                txtEmail.Text = aux.Email;
                txtCiudad.Text = aux.Ciudad;

            }
        }
    }
}