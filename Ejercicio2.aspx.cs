using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_Ejercicio2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private bool soloLetras(string texto)
        {
            foreach (char c in texto)
            {
                if (!char.IsLetter(c))
                {
                    return false;
                }
            }
            return true;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected bool ValidarNombreYApellido()
        {
            string nombre = txtNombre.Text.Trim();
            string apellido = txtApellido.Text.Trim();

            // valida antes de redirigir
            if (!soloLetras(nombre) || !soloLetras(apellido))
            {
                lblError.Text = "Error: El nombre y apellido solo pueden contener letras.";
                lblError.ForeColor = System.Drawing.Color.Red;
                lblError.Visible = true;
                return false;
            }

            if (string.IsNullOrWhiteSpace(nombre) || string.IsNullOrWhiteSpace(apellido))
            {
                lblError.Text = "Error: debe ingresar nombre y apellido.";
                lblError.ForeColor = System.Drawing.Color.Red;
                lblError.Visible = true;
                return false;
            }

            if (nombre.Equals(apellido, StringComparison.OrdinalIgnoreCase))
            {
                lblError.Text = "Error: el nombre y apellido no pueden ser iguales.";
                lblError.ForeColor = System.Drawing.Color.Red;
                lblError.Visible = true;
                return false;
            }

            return true;
        }

        protected bool ValidarTemas()
        {
            bool hayTemasSeleccionados = false;
            foreach (ListItem tema in CheckBoxList1.Items)
            {
                if (tema.Selected)
                {
                    hayTemasSeleccionados = true;
                    break;
                }
            }

            if (!hayTemasSeleccionados)
            {
                lblError.Text = "Error: Debes seleccionar al menos un tema.";
                lblError.ForeColor = System.Drawing.Color.Red;
                lblError.Visible = true;
                return false;
            }

            return true;
        }

        protected bool ValidarSexo()
        {
            string sexoElegido = ddlSexo.SelectedValue;

            if (sexoElegido == "")
            {
                lblError.Text = "Error: Debes seleccionar un género.";
                lblError.Visible = true;
                return false;
            }

            return true;
        }

        protected bool ValidarCiudad()
        {
            string ciudad = ddlCiudades.SelectedValue;

            if (ciudad == "")
            {
                lblError.Text = "Error: Debes seleccionar una ciudad.";
                lblError.Visible = true;
                return false;
            }

            return true;
        }

        protected void btnResumen_Click(object sender, EventArgs e)
        {
            if (!ValidarNombreYApellido()) return;
            if (!ValidarSexo()) return;
            if (!ValidarCiudad()) return;
            if (!ValidarTemas()) return;

            // si los datos estan bien va a la otra pagina
            lblError.Visible = false; // oculta el error

            Server.Transfer("Ejercicio2a.aspx");
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}