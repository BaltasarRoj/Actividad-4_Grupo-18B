using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_Web_Equipo_18_B
{
    public partial class Voucher1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSiguiente_Click(object sender, EventArgs e)
        {
            VoucherNegocio voucherNegocio = new VoucherNegocio();

            string cod_voucher = txtVoucher.Text;
            int condicion = voucherNegocio.VoucherFueCanjeado(cod_voucher);

            if (condicion == -1)
            {
                lblMensaje.Text = "El voucher no existe.";
            }
            else if (condicion == 1)
            {
                lblMensaje.Text = "El voucher ya estaba canjeado.";
            }
            else if (condicion == 0)
            {
                lblMensaje.Text = "Voucher ingresado con éxito.";
                Response.Redirect("Default.aspx", true);
                return;
            }
        }
    }
}