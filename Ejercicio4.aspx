<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio4.aspx.cs" Inherits="TP2_Ejercicio4.Ejercicio4" %>

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
        }
        .auto-style3 {
            height: 21px;
        }
        .auto-style4 {
            width: 123px;
            height: 21px;
        }
        .auto-style5 {
            height: 49px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            height: 34px;
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
                        <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style7">
                        <asp:Label ID="lblClave" runat="server" Text="Clave:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtClave" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnValidar" runat="server" Text="Validar" Width="75px" OnClick="btnValidar_Click" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style6">
                        <asp:Label ID="lblErrores" runat="server" Text="Numero de errores:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lblContadorErrores" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <br />
                    </td>
                    <td class="auto-style5" colspan="6">
                        <br />
                        Si llega a 3 errores se bloqueara la cuenta
                    </td>
                    <td>
                        <asp:Button ID="btnRecuperarContrasenia" runat="server" Text="Recuperar contraseña" OnClick="btnRecuperarContrasenia_Click" Visible="false"/>
                        <asp:TextBox ID="txtCodigo" Visible="false" runat="server"></asp:TextBox>
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                        <asp:Button ID="btnRecargar" runat="server" Text="Recargar" OnClick="btnRecargar_Click" Visible="false"/>
                        <asp:Button ID="btnCorreo" runat="server" Text="Simular correo y obtener códigos" OnClick="btnCorreo_Click" Visible="false"/>
                        <asp:BulletedList ID="listCodigos" runat="server" DisplayMode="Text" Visible="false">
                        </asp:BulletedList>

                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
