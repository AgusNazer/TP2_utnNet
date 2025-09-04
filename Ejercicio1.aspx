<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP2_Grupo_7_v1.ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 281px;
        }
        .auto-style5 {
            width: 159px;
        }
        .auto-style7 {
            width: 281px;
            height: 23px;
        }
        .auto-style9 {
            width: 159px;
            height: 23px;
        }
        .auto-style10 {
            height: 23px;
        }
        .auto-style11 {
            width: 66px;
        }
        .auto-style12 {
            width: 66px;
            height: 23px;
        }
        .auto-style13 {
            width: 189px;
        }
        .auto-style14 {
            width: 189px;
            height: 23px;
        }
        .auto-style15 {
            width: 165px;
        }
        .auto-style16 {
            width: 165px;
            height: 31px;
        }
        .auto-style17 {
            height: 31px;
        }
        #errorLabel {
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <asp:Button ID="btnVolver" runat="server" Text="← Volver" OnClick="btnVolver_Click" />

                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="lblProducto1" runat="server" Text="Ingrese nombre del producto:"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtProducto1" runat="server" OnTextChanged="txtProducto1_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="lblCantidad1" runat="server" Text="Cantidad:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtCantidad1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="lblPrecioUnitario1" runat="server" Text="Precio unitario:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPrecioUnitario1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="lblProducto2" runat="server" Text="Ingrese nombre del producto:"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtProducto2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="lblCantidad2" runat="server" Text="Cantidad:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtCantidad2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="lblPrecioUnitario2" runat="server" Text="Precio unitario:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPrecioUnitario2" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Button ID="btnTabla" runat="server" Text="Generar Tabla" OnClick="btnTabla_Click" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnBorrarTabla" runat="server" Text="Borrar Tabla" OnClick="btnBorrarTabla_Click" />
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style3">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style15">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style15">
                                    <asp:Label ID="lblTabla" runat="server"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style16"></td>
                                <td class="auto-style17"></td>
                            </tr>
                            <tr>
                                <td class="auto-style15">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:Label ID="errorLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
