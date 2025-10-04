using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace TP_Web_Equipo_18_B
{
    public partial class _Default : Page
    {

        public List<Articulo> listaArticulo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["VoucherValido"] == null || (bool)Session["VoucherValido"] == false)
            //{
            //    Response.Redirect("Voucher.aspx");
            //}
            ArticuloNegocio negocio = new ArticuloNegocio();
            listaArticulo = negocio.listar();
            if (!IsPostBack)
            {
                repRepetidor.DataSource = listaArticulo;
                repRepetidor.DataBind();
            }
        }
        protected void btnSeleccionar_Click(object sender, EventArgs e)
        {
            string id = ((Button)sender).CommandArgument;
        }
    }
}