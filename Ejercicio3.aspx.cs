using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_Ejercicio3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtColoreado.Text = "Texto Coloreado";
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtColoreado.ForeColor = System.Drawing.Color.Empty;
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            pnlMasColores.Visible = true;
        }

        protected void btnCambiar_Click(object sender, EventArgs e)
        {
            txtColoreado.Text = TextBox1.Text;
            TextBox1.Text = "";
        }

        protected void btnRandom_Click(object sender, EventArgs e)
        {
            string[] coloresIngles = { "red", "blue", "green", "purple", "orange", "pink", "gray", "yellow" };
            string[] coloresEspanol = { "Rojo", "Azul", "Verde", "Violeta", "Naranja", "Rosa", "Gris", "Amarillo" };

            Random random = new Random();
            int indiceAleatorio = random.Next(coloresIngles.Length);

            string colorAleatorio = coloresIngles[indiceAleatorio];
            string nombreEspanol = coloresEspanol[indiceAleatorio];

            txtColoreado.ForeColor = System.Drawing.Color.FromName(colorAleatorio);
            
            lbHistorial.Items.Add(nombreEspanol);
        }

        protected void Color_Command(object sender, CommandEventArgs e)
        {
            string colorSeleccionado = e.CommandArgument.ToString();
            string nombreEspanol = ((LinkButton)sender).Text;

            txtColoreado.ForeColor = System.Drawing.Color.FromName(colorSeleccionado);

            lbHistorial.Items.Add(nombreEspanol);
        }

        protected void btnLimpiarHistorial_Click(object sender, EventArgs e)
        {
            lbHistorial.Items.Clear();
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}