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

        }
    }
}