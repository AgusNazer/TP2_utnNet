<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3.aspx.cs" Inherits="TP2_Ejercicio3.WebForm1" %>

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
            width: 417px;
        }
        .auto-style3 {
            width: 417px;
            height: 38px;
        }
        .auto-style4 {
            height: 38px;
        }
        .auto-style5 {
            height: 38px;
            width: 215px;
        }
        .auto-style6 {
            width: 215px;
        }
    </style>
</head>
<body style="height: 234px">
    <form id="form1" runat="server">
        <asp:Button ID="btnVolver" runat="server" Text="← Volver" OnClick="btnVolver_Click" />
        <br />
            <asp:LinkButton ID="lnkRojo" runat="server"
                CommandArgument="red" OnCommand="Color_Command" CausesValidation="false">Rojo</asp:LinkButton><br />
            <asp:LinkButton ID="lnkAzul" runat="server"
                CommandArgument="blue" OnCommand="Color_Command" CausesValidation="false">Azul</asp:LinkButton><br />
            <asp:LinkButton ID="lnkVerde" runat="server"
                CommandArgument="green" OnCommand="Color_Command" CausesValidation="false">Verde</asp:LinkButton><br />
            <asp:LinkButton ID="lnkAmarillo" runat="server"
                CommandArgument="yellow" OnCommand="Color_Command" CausesValidation="false">Amarillo</asp:LinkButton><br />

            <asp:Panel ID="pnlMasColores" runat="server" Visible="false">
                 <asp:LinkButton ID="lnkRosa" runat="server"
                    CommandArgument="pink" OnCommand="Color_Command" CausesValidation="false">Rosa</asp:LinkButton><br />
                <asp:LinkButton ID="lnkPurple" runat="server"
                    CommandArgument="purple" OnCommand="Color_Command" CausesValidation="false">Violeta</asp:LinkButton><br />
                <asp:LinkButton ID="lnkNaranja" runat="server"
                    CommandArgument="orange" OnCommand="Color_Command" CausesValidation="false">Naranja</asp:LinkButton><br />
            </asp:Panel>

            <br />
            <br />
            <br />
            <asp:Label ID="txtColoreado" runat="server"></asp:Label>
        
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
            <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Limpiar color" Width="107px" />
        
            <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" style="margin-left: 87px" Text="Agregar colores" Width="126px" />
        
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
            <asp:Button ID="btnRandom" runat="server" Height="27px" OnClick="btnRandom_Click" Text="Color aleatorio" Width="106px" />
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lblHistorial" runat="server" Text="Historial de colores  utilizados:"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="98px"></asp:TextBox>
                <asp:Button ID="btnCambiar" runat="server" OnClick="btnCambiar_Click" Text="Cambiar Texto" Width="123px" style="margin-left: 95px; margin-bottom: 0px" />
                    </td>
                    <td class="auto-style6">
                        <asp:ListBox ID="lbHistorial" runat="server" Width="201px"></asp:ListBox>
                    </td>
                    <td>
                        <asp:Button ID="btnLimpiarHistorial" runat="server" Text="Limpiar historial" OnClick="btnLimpiarHistorial_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        
            <br />
        
            <br />
            <br />
            <p>
&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
        
    </form>
</body>
</html>
