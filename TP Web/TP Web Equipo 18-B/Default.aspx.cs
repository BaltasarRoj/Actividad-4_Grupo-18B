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
            Button btn = (Button)sender;            
            string idArticulo = btn.CommandArgument;// Tomamos el ID del articulo desde el CommandArgument
            string codVoucher = Request.QueryString["voucher"];
            string cod_voucher = (string)Session["cod_voucher"];
            Response.Redirect("FormularioPaso3.aspx?voucher=" + codVoucher + "&id=" + idArticulo);
        }
        protected void repRepetidor_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Articulo articulo = (Articulo)e.Item.DataItem;
                Repeater repImagenes = (Repeater)e.Item.FindControl("repImagenes");
                Panel pnlControles = (Panel)e.Item.FindControl("pnlControles");

                if (articulo.Imagenes != null && articulo.Imagenes.Count > 0)
                {
                    repImagenes.DataSource = articulo.Imagenes;
                    repImagenes.DataBind();

                    // Mostrar controles solo si hay más de una imagen
                    pnlControles.Visible = articulo.Imagenes.Count > 1;
                }
                else
                {
                    repImagenes.DataSource = new List<string> { "https://via.placeholder.com/150" };
                    repImagenes.DataBind();
                    pnlControles.Visible = false;
                }
            }
        }

    }
}