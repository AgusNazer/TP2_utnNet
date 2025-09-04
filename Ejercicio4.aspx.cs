using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_Ejercicio4
{
    public partial class Ejercicio4 : System.Web.UI.Page
    {
        private string[] codigos = { "XKEH-9256-BFWP", "LEQM-1834-OQNX", "UENV-1901-MVNB" };
        protected void Page_Load(object sender, EventArgs e)
        {
            //lee la cantidad de errores
            string errores = Request.QueryString["fallos"];
            int fallos = 0;

            if (!string.IsNullOrEmpty(errores)) {

                //convierte el texto en un entero
                int.TryParse(errores, out fallos);
            }
            //muestra el numero
            lblContadorErrores.Text = fallos.ToString();
        }

        protected void btnValidar_Click(object sender, EventArgs e)
        {
            string usuario = "claudio";
            string contrasenia = "casas";

            string usuarioIngresado = txtUsuario.Text;
            string contraseniaIngresada = txtClave.Text;

            if (string.IsNullOrWhiteSpace(usuarioIngresado) || string.IsNullOrWhiteSpace(contraseniaIngresada))
            {
                lblErrores.Text = "Debe ingresar un usuario y contraseña";
                lblErrores.ForeColor = System.Drawing.Color.Red;
                return;
            }

            //obtener errores
            int errores = 0;           
            int.TryParse(lblContadorErrores.Text, out errores);

            if (errores == 3)
            {
                lblErrores.Enabled = false;
                lblContadorErrores.Text = "CUENTA BLOQUEADA";
                lblContadorErrores.ForeColor = System.Drawing.Color.DarkRed;
                txtUsuario.Enabled = false;
                txtClave.Enabled = false;
                btnValidar.Enabled = false;

                btnRecuperarContrasenia.Visible = true;
                txtCodigo.Visible = true;
                btnCorreo.Visible = true;
                return;
            }

            if (usuario == usuarioIngresado && contrasenia == contraseniaIngresada)
            {
                Response.Redirect("Valido.aspx?Nombre="+txtUsuario.Text);
            }
            else
            {
                errores++;//incrementa el contador
                Response.Redirect("Error.aspx?fallos="+errores);
            }
        }
    
        protected void btnRecuperarContrasenia_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < codigos.Length; i++)
            {
                if (txtCodigo.Text.Trim() == codigos[i])
                {
                    lblMensaje.ForeColor = System.Drawing.Color.Green;
                    lblMensaje.Text = "Su contraseña es: casas.\n Recargue el sitio e intente nuevamente.";
                    btnRecargar.Visible = true;
                    return;
                }
            }

            lblMensaje.ForeColor = System.Drawing.Color.Red;
            lblMensaje.Text = "Codigo inválido.";
            btnRecargar.Visible = false;
        }

        protected void btnCorreo_Click(object sender, EventArgs e)
        {
            if (listCodigos.Items.Count != 0)
            {
                return;
            }

            listCodigos.Visible = true;

            for (int i = 0; i < codigos.Length; i++)
            {
                listCodigos.Items.Add(codigos[i]);
            }
        }

        protected void btnRecargar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ejercicio4.aspx?fallos=0");
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}