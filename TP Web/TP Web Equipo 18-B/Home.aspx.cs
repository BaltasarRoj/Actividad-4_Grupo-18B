using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_Web_Equipo_18_B
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCanjearVoucher_Click(object sender, EventArgs e)
        {
            // Redirige al formulario de voucher
            Response.Redirect("Voucher.aspx");
        }
    }
}