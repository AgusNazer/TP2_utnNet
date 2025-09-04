using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_Ejercicio4
{
    public partial class Error : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
   
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            string errores = Request.QueryString["fallos"];

            //busca si errores esta vacio
            if (string.IsNullOrEmpty(errores))
            {
                //alor por defecto
                errores = "0";
            }
            //vuele al formulario principal con el numero de errores
            Response.Redirect("Ejercicio4.aspx?fallos="+errores);
        }
    }
}