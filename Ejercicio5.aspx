<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio5.aspx.cs" Inherits="TP2_Ejercicio5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 111%;
            background-color: white;
        }
        .auto-style2 {
            width: 331px;
        }
        #Select1 {
            width: 116px;
        }
        #slcMemoria {
            width: 175px;
            margin-bottom: 0px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            width: 331px;
            height: 23px;
        }
        .auto-style5 {
            height: 31px;
        }
        .auto-style6 {
            width: 331px;
            height: 31px;
        }
        .auto-style7 {
            height: 39px;
        }
        .auto-style8 {
            width: 331px;
            height: 39px;
        }
        .auto-style9 {
            height: 72px;
        }
        .auto-style10 {
            width: 331px;
            height: 72px;
        }
        .auto-style11 {
            height: 82px;
        }
        .auto-style12 {
            width: 331px;
            height: 82px;
        }
        .flex {
            display: flex;
            flex-direction: column;
        }
        .italic {
            font-style: italic;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnVolver" runat="server" Text="← Volver" OnClick="btnVolver_Click" />
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblElijaConfig" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="XX-Large" Text="Elija su configuración"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblElijaConfig0" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="Medium" Text="Seleccione cantidad de memoria:"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="dldMemoria" runat="server" Height="18px" Width="131px" OnSelectedIndexChanged="dldMemoria_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Value="1">2 GB</asp:ListItem>
                            <asp:ListItem Value="2">4 GB</asp:ListItem>
                            <asp:ListItem Value="3">6 GB</asp:ListItem>
                            <asp:ListItem Value="4">8 GB</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6">
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    <asp:Label ID="lblMemoria" runat="server" Text="Precio sin IVA: "></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblPrecioSinImpMemoria" Text="$165,29" Font-Bold="true" runat="server"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <asp:Label ID="lblElijaConfig1" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="Medium" Text="Selecciona accesorios:"></asp:Label>
                    </td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12">
                        <asp:CheckBoxList ID="cblAccesorio" runat="server" AutoPostBack="true" OnSelectedIndexChanged="cblAccesorio_SelectedIndexChanged">
                            <asp:ListItem Value="1">Monitor LCD</asp:ListItem>
                            <asp:ListItem Value="2">HD 500 GB</asp:ListItem>
                            <asp:ListItem Value="3">Grabador DVD</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">
                        <asp:Label ID="lblSinImpuestos" runat="server" Text="Precio sin IVA: "></asp:Label>
                        <br />
                        <asp:Label ID="lblPrecioSubTotal" Text="$0,00" Font-Bold="true" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                </tr>

                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12 flex">
                        <span class="italic">Selecciona un sistema operativo:</span> 
                        <br />
                        <asp:DropDownList ID="ddlSistemasOperativos" runat="server" OnSelectedIndexChanged="ddlSistemasOperativos_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Value="Windows10">Windows 10</asp:ListItem>
                            <asp:ListItem Value="Windows11">Windows 11</asp:ListItem>
                            <asp:ListItem Value="Linux">Linux</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">
                        <asp:Label ID="lblSinImpuSistema" runat="server" Text="Precio sin IVA: "></asp:Label>
                        <br />
                        <asp:Label ID="LblPrecioSistemasOperativos" Text="$99,17" Font-Bold="true" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                </tr>


                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="italic">
                        Selecciona un procesador:<br />
                        <br />
                        <asp:DropDownList ID="ddlProcesador" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProcesador_SelectedIndexChanged">
                            <asp:ListItem Value="IntelCorei3">Intel Core i3</asp:ListItem>
                            <asp:ListItem Value="IntelCorei5">Intel Core i5</asp:ListItem>
                            <asp:ListItem Value="IntelCorei7">Intel Core i7</asp:ListItem>
                            <asp:ListItem Value="IntelCorei9">Intel Core i9</asp:ListItem>
                            <asp:ListItem Value="AMDRyzen3">AMD Ryzen 3</asp:ListItem>
                            <asp:ListItem Value="AMDRyzen5">AMD Ryzen 5</asp:ListItem>
                            <asp:ListItem Value="AMDRyzen7 ">AMD Ryzen 7 </asp:ListItem>
                            <asp:ListItem Value="AMDRyzen9">AMD Ryzen 9</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>


                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Label ID="lblSinImpuProcesador" runat="server" Text="Precio sin IVA:"></asp:Label>
                        <br />
                        <asp:Label ID="lblPrecioProcesador" runat="server" Font-Bold="True" Text="$413,22"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>


                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">
                        <asp:Button ID="btnPrecio" runat="server" Text="Calcular Precio" OnClick="btnPrecio_Click" />
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6 flex">
                        <asp:Label ID="lblSubtotal" text="Subtotal: $0,00" runat="server"></asp:Label>
                        <asp:Label ID="lblIva" text="IVA: $0,00" runat="server"></asp:Label>
                        <asp:Label ID="lblPrecioFinal" text="El precio final es de $0,00" Font-Bold="true" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnVaciar" runat="server" OnClick="btnVaciar_Click" Text="Vaciar" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
