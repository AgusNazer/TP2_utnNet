using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_Ejercicio5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtElijaConfig_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnPrecio_Click(object sender, EventArgs e)
        {
            string valorSeleccionadoMemoria = dldMemoria.SelectedValue;
            double iva = 1.21;
            double precioConIVA = 0;
            double precioSinIVA = 0;

            if (valorSeleccionadoMemoria == "1")
            {
                precioConIVA = 200;
                precioSinIVA = precioConIVA / iva;
            } else if (valorSeleccionadoMemoria == "2")
            {
                precioConIVA = 375;
                precioSinIVA = precioConIVA / iva;
            }
            else if (valorSeleccionadoMemoria == "3")
            {
                precioConIVA = 500;
                precioSinIVA = precioConIVA / iva;
            }
            else if (valorSeleccionadoMemoria == "4")
            {
                precioConIVA = 650;
                precioSinIVA = precioConIVA / iva;
            }

            lblPrecioSinImpMemoria.Text = "$" + precioSinIVA.ToString("F2");
            // calcular precio de los accesorios
            foreach (ListItem item in cblAccesorio.Items)
            {
                if (item.Selected)  
                {
                    if (item.Text == "Monitor LCD")
                        precioConIVA += 2000.50;
                    else if (item.Text == "HD 500 GB")
                        precioConIVA += 550.50;
                    else if (item.Text == "Grabador DVD")
                        precioConIVA += 1200;
                   
                }
            }

            // Sistema operativo
            string OSSeleccionado = ddlSistemasOperativos.SelectedValue;
            int valorWindows10 = 120;
            int valorWindows11 = 200;
            int valorLinux = 0;

            switch (OSSeleccionado)
            {
                case "Windows10":
                    precioConIVA += valorWindows10;
                    break;
                case "Windows11":
                    precioConIVA += valorWindows11;
                    break;
                case "Linux":
                    precioConIVA += valorLinux;
                    break;
                default:
                    precioConIVA += 0;
                    break;
            }

            // Procesador
            int valorIntelI3 = 500;
            int valorIntelI5 = 1000;
            int valorIntelI7 = 1500;
            int valorIntelI9 = 2000;
            int valorAmd3 = 750;
            int valorAmd5 = 1250;
            int valorAmd7 = 1750;
            int valorAmd9 = 2500;

            switch (ddlProcesador.SelectedIndex)
            {
                case 0:
                    precioConIVA += valorIntelI3;
                    break;
                case 1:
                    precioConIVA += valorIntelI5;
                    break;
                case 2:
                    precioConIVA += valorIntelI7;
                    break;
                case 3:
                    precioConIVA += valorIntelI9;
                    break;
                case 4:
                    precioConIVA += valorAmd3;
                    break;
                case 5:
                    precioConIVA += valorAmd5;
                    break;
                case 6:
                    precioConIVA += valorAmd7;
                    break;
                case 7:
                    precioConIVA += valorAmd9;
                    break;
                default:
                    precioConIVA = 0;
                    break;
            }

            lblSubtotal.Text = "Subtotal: $" + (precioConIVA / 1.21).ToString("F2");
            lblIva.Text = "IVA: $" + (precioConIVA - (precioConIVA / 1.21)).ToString("F2");
            lblPrecioFinal.Text = "El precio final es de $" + precioConIVA.ToString("F2");
        }

        protected void cblAccesorio_SelectedIndexChanged(object sender, EventArgs e) 
        {

            /* string valorSeleccionadoMemoria = dldMemoria.SelectedValue;
             double precio = 0;
             if (valorSeleccionadoMemoria == "1")
                 precio = 158; //200-21% de impuesto
             else if (valorSeleccionadoMemoria == "2")
                 precio = 296.25;//375-21% de impuesto
             else if (valorSeleccionadoMemoria == "4")
                 precio = 474;//600-21% de impuesto
             else
                 precio = 395; //500-21% de impuesto*/

            double precio = 0;

            //sumar accesorios seleccionados
            foreach (ListItem item in cblAccesorio.Items)
            {
                double iva = 1.21;

                if (item.Selected)
                {
                    if (item.Text == "Monitor LCD")
                        precio = 2000.50/iva;
                    else if (item.Text == "HD 500 GB")
                        precio += 550.50/iva;
                    else if (item.Text == "Grabador DVD")
                        precio += 1200/iva;
                }
            }
            lblPrecioSubTotal.Text = "$" + precio.ToString("F2");
        }
        
        protected void btnVaciar_Click(object sender, EventArgs e)
        {
            //resetea la selecion de memoria
            dldMemoria.SelectedIndex = 0;
            //deselecciona los accesorios
            foreach (ListItem item in cblAccesorio.Items)
            {
                item.Selected = false;
            }
            //limpia los label
            lblPrecioFinal.Text = "El precio final es de $0,00";
            lblPrecioSubTotal.Text = "$0,00";
            lblPrecioSinImpMemoria.Text = "$165,29";
            lblSubtotal.Text = "Subtotal: $0,00";
            lblIva.Text = "IVA: $0,00";

            // Sistema operativo
            ddlSistemasOperativos.SelectedIndex = 0;
            LblPrecioSistemasOperativos.Text = "$0,00";
            LblPrecioSistemasOperativos.Text = "$99,17";
        }

        protected void dldMemoria_SelectedIndexChanged(object sender, EventArgs e)
        {
            string valorSeleccionadoMemoria = dldMemoria.SelectedValue;
            double iva = 1.21;
            double precioConIVA = 0;
            double precioSinIVA = 0;

            switch (valorSeleccionadoMemoria)
            {
                case "1":
                    precioConIVA = 200;
                    break;
                case "2":
                    precioConIVA = 375;
                    break;
                case "3":
                    precioConIVA = 500;
                    break;
                case "4":
                    precioConIVA = 650;
                    break;
                default:
                    precioConIVA = 0;
                    break;
            }

            precioSinIVA = precioConIVA / iva;

            lblPrecioSinImpMemoria.Text = "$" + precioSinIVA.ToString("F2");
        }

        protected void ddlSistemasOperativos_SelectedIndexChanged(object sender, EventArgs e)
        {
            string OSSeleccionado = ddlSistemasOperativos.SelectedValue;
            double iva = 1.21;
            double precioConIVA = 0;
            double precioSinIVA = 0;
            int valorWindows10 = 120;
            int valorWindows11 = 200;
            int valorLinux = 0;

            switch (OSSeleccionado)
            {
                case "Windows10":
                    precioConIVA += valorWindows10;
                    break;
                case "Windows11":
                    precioConIVA += valorWindows11;
                    break;
                case "Linux":
                    precioConIVA += valorLinux;
                    break;
                default:
                    precioConIVA += 0;
                    break;
            }

            precioSinIVA = precioConIVA / iva;

            LblPrecioSistemasOperativos.Text = "$" + precioSinIVA.ToString("F2");
        }

        protected void ddlProcesador_SelectedIndexChanged(object sender, EventArgs e)
        {
            double iva = 1.21;
            double precioConIVA = 0;
            double precioSinIVA = 0;
            int valorIntelI3 = 500;
            int valorIntelI5 = 1000;
            int valorIntelI7 = 1500;
            int valorIntelI9 = 2000;
            int valorAmd3 = 750;
            int valorAmd5 = 1250;
            int valorAmd7 = 1750;
            int valorAmd9 = 2500;

            switch (ddlProcesador.SelectedIndex)
            {
                case 0:
                    precioConIVA += valorIntelI3;
                    break;
                case 1:
                    precioConIVA += valorIntelI5;
                    break;
                case 2:
                    precioConIVA += valorIntelI7;
                    break;
                case 3:
                    precioConIVA += valorIntelI9;
                    break;
                case 4:
                    precioConIVA += valorAmd3;
                    break;
                case 5:
                    precioConIVA += valorAmd5;
                    break;
                case 6:
                    precioConIVA += valorAmd7;
                    break;
                case 7:
                    precioConIVA += valorAmd9;
                    break;
                default:
                    precioConIVA = 0;
                    break;
            }

            precioSinIVA = precioConIVA / iva;
            lblPrecioProcesador.Text = "$" + precioSinIVA.ToString("F2");
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}