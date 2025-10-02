using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TP_Web_Equipo_18_B
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            dgvCatalogo.DataSource = negocio.listarConSP();
            dgvCatalogo.DataBind();
        }
    }
}