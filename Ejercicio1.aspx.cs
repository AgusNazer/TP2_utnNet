using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_Grupo_7_v1
{
    public partial class ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTabla_Click(object sender, EventArgs e)
        {
            txtProducto1.BorderColor = System.Drawing.Color.Empty;
            txtCantidad1.BorderColor = System.Drawing.Color.Empty;
            txtPrecioUnitario1.BorderColor = System.Drawing.Color.Empty;
            txtProducto2.BorderColor = System.Drawing.Color.Empty;
            txtCantidad2.BorderColor = System.Drawing.Color.Empty;
            txtPrecioUnitario2.BorderColor = System.Drawing.Color.Empty;
            errorLabel.Text = "";

            bool hayError = false;
            int numero;

            //  Valdar cada campo individualmente

            if (string.IsNullOrEmpty(txtProducto1.Text) || txtProducto1.Text.Trim().Any(char.IsDigit))
            {
                txtProducto1.BorderColor = System.Drawing.Color.Red;
                hayError = true;
            }

            if (!int.TryParse(txtCantidad1.Text, out numero) || numero < 0)
            {
                txtCantidad1.BorderColor = System.Drawing.Color.Red;
                hayError = true;
            }

            if (!int.TryParse(txtPrecioUnitario1.Text, out numero) || numero < 0)
            {
                txtPrecioUnitario1.BorderColor = System.Drawing.Color.Red;
                hayError = true;
            }

            if (string.IsNullOrEmpty(txtProducto2.Text) || txtProducto2.Text.Trim().Any(char.IsDigit))
            {
                txtProducto2.BorderColor = System.Drawing.Color.Red;
                hayError = true;
            }

            if (!int.TryParse(txtCantidad2.Text, out numero) || numero < 0)
            {
                txtCantidad2.BorderColor = System.Drawing.Color.Red;
                hayError = true;
            }

            if (!int.TryParse(txtPrecioUnitario2.Text, out numero) || numero < 0)
            {
                txtPrecioUnitario2.BorderColor = System.Drawing.Color.Red;
                hayError = true;
            }

            // Si encontramos algún error, mostramos el mensaje general y salimos
            if (hayError)
            {
                errorLabel.Text = "Existen valores inválidos. Por favor, verifíquelos y vuelva a intentar.";
                return;
            }

            errorLabel.Text = "";

            string tabla = "<table border='1'>";

            tabla += "<tr> <td> Producto </td> <td> Cantidad </td> <td> Precio unitario </td>" +
                "<td> Precio Total </td> </tr>";

            string producto1 = txtProducto1.Text.Trim();
            string cantidad1 = txtCantidad1.Text.Trim();
            string precio1 = txtPrecioUnitario1.Text.Trim();
            string Producto2 = txtProducto2.Text.Trim();
            string cantidad2 = txtCantidad2.Text.Trim();
            string precio2 = txtPrecioUnitario2.Text.Trim();

            //validacion para que no se ingresen numeros como nombre de productos
            if(!txtProducto1.Text.Trim().Any(char.IsDigit) && !txtProducto2.Text.Trim().Any(char.IsDigit))
            {
                int precioTotal1 = int.Parse(txtCantidad1.Text) * int.Parse(txtPrecioUnitario1.Text);
                int precioTotal2 = int.Parse(txtCantidad2.Text) * int.Parse(txtPrecioUnitario2.Text);

                tabla += "<tr>";
                tabla += "<td>" + producto1 + "</td>";
                tabla += "<td>" + cantidad1 + "</td>";
                tabla += "<td>" + precio1 + "</td>";
                tabla += "<td>" + precioTotal1 + "</td>";
                tabla += "</tr>";
                tabla += "<tr>";
                tabla += "<td>" + Producto2 + "</td>";
                tabla += "<td>" + cantidad2 + "</td>";
                tabla += "<td>" + precio2 + "</td>";
                tabla += "<td>" + precioTotal2 + "</td>";
                tabla += "</tr>";

                int tot1 = int.Parse(txtCantidad1.Text);
                int tot2 = int.Parse(txtCantidad2.Text);

                int total = tot1 + tot2;
                int total2 = precioTotal1 + precioTotal2;

                tabla += "<tr>";
                tabla += "<td>Total</td>";
                tabla += "<td>" + total + "</td>";
                tabla += "<td>Total Precios</td>";
                tabla += "<td>" + total2 + "</td>";
                tabla += "</tr>";

                tabla += "</table>";
                lblTabla.Text = tabla;
            }
            else
            {
                lblTabla.Text="El nombre ingresado no es valido";
                return;
            }

            //limpio textBox
            txtProducto1.Text = "";
            txtCantidad1.Text = "";
            txtPrecioUnitario1.Text = "";
            txtProducto2.Text = "";
            txtCantidad2.Text = "";
            txtPrecioUnitario2.Text = "";
        }

        protected void txtProducto1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnBorrarTabla_Click(object sender, EventArgs e)
        {
            errorLabel.Text = "";

            // la opcion q se me ocurrio es generar de nuevo la tabla pero vacia
            string tabla = "<table border='1'>";
            tabla += "<tr> <td> Producto </td> <td> Cantidad </td> </tr>";

            // filas vacias
            tabla += "<tr>";
            tabla += "<td>-</td>";
            tabla += "<td>-</td>";
            tabla += "</tr>";
            tabla += "<tr>";
            tabla += "<td>-</td>";
            tabla += "<td>-</td>";
            tabla += "</tr>";

            //total vacio
            tabla += "<tr>";
            tabla += "<td>Total</td>";
            tabla += "<td>-</td>";
            tabla += "</tr>";

            tabla += "</table>";

            lblTabla.Text = tabla;

            //limpio textBox
            txtProducto1.Text = "";
            txtCantidad1.Text = "";
            txtProducto2.Text = "";
            txtCantidad2.Text = "";
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}