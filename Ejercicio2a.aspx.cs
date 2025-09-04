using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_Ejercicio2
{
    public partial class ejercicio2a : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Valida si se enviaron datos del form anterior, caso contrario redirige.
            if (PreviousPage == null)
            {
                Response.Redirect("Ejercicio2.aspx");
                return;
            }

            string nombre = Request["txtNombre"].ToString();
            string apellido =  Request["txtApellido"].ToString();
            string zona = Request["ddlCiudades"].ToString();
            string sexo = Request["ddlSexo"].ToString();





            lblNombre.Text = nombre;
            lblApellido.Text = apellido;
            lblZona.Text = zona;
            lblSexo.Text = sexo;

            // busca en la pagina anterior.
            CheckBoxList temas = (CheckBoxList)PreviousPage.FindControl("CheckBoxList1");
            string temasSeleccionados = "";
            //Recorre los elementos para saber cual fue elegido
            foreach (ListItem item in temas.Items)
            {
                if (item.Selected)
                {
                    temasSeleccionados += item.Text + "<br/>";
                }
            }
            lblTemasElegidos.Text = temasSeleccionados;

        }

        protected void linkBack_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("Ejercicio2.aspx");
        }
    }
}