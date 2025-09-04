using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_Ejercicio4
{
    public partial class Valido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nombre;
            nombre = Request.QueryString["Nombre"];
            lblBienvenido.Text = "Bienvenido a mi página Sr./a " + nombre;
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ejercicio4.aspx");
        }
    }
}