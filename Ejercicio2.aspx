<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="TP2_Ejercicio2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 31px;
        }
        .auto-style3 {
            height: 31px;
            width: 161px;
        }
        .auto-style4 {
            width: 161px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            width: 161px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <asp:Button ID="btnVolver" runat="server" Text="← Volver" OnClick="btnVolver_Click" />
                <td class="auto-style2"></td>
                <td class="auto-style3"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3">
                    <asp:Label ID="lblApellido" runat="server" Text="Apellido:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">
                    <br />
                    Sexo:</td>
                <td>
                    <asp:DropDownList ID="ddlSexo" runat="server">
                        <asp:ListItem Value="" Selected="True">-- Seleccione una opción --</asp:ListItem>
                        <asp:ListItem Text="Femenino" Value="F"></asp:ListItem>
                        <asp:ListItem Text="Masculino" Value="M"></asp:ListItem>
                        <asp:ListItem Text="Otro" Value="O"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">
                    <br />
                </td>
                <td>
                    <h2>Ciudad:</h2>
                    <asp:DropDownList ID="ddlCiudades" runat="server">
                        <asp:ListItem Value="" Selected="True">-- Seleccione una opción --</asp:ListItem>
                        <asp:ListItem Value="zona norte">Gral. Pacheco </asp:ListItem>
                        <asp:ListItem Value="zona oeste">San Miguel</asp:ListItem>
                        <asp:ListItem Value="zona sur">Boedo</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="lblTemas" runat="server" Text="Temas"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                        <asp:ListItem>Ciencias</asp:ListItem>
                        <asp:ListItem>Literatura</asp:ListItem>
                        <asp:ListItem>Historia</asp:ListItem>
                        <asp:ListItem>Matematicas </asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
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
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="btnResumen" runat="server" OnClick="btnResumen_Click" Text="Ver resumen" Width="121px" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Label ID="lblError" ForeColor="Red" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
