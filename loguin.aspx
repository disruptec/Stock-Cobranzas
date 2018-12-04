<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageLogin.master" AutoEventWireup="false" CodeFile="loguin.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5
    {
        width: 87px;
        height: 26px;
    }
    .auto-style6
    {
        height: 26px;
    }
        .auto-style7
        {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
    <table style="width:94%;">
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"></td>
        <td class="auto-style7">
            <asp:Button ID="Button1" runat="server" style="margin-left: 0px; font-size: x-small;" Text="Entrar" />
            <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            
        </td>
    </tr>
</table>        
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT id_usuario, nombre, contraseña, descripcion, rol FROM usuarios WHERE (nombre = ?) AND (contraseña = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="?" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox2" Name="?" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_usuario" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" InsertVisible="False" ReadOnly="True" SortExpression="id_usuario" />
                            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                            <asp:BoundField DataField="contraseña" HeaderText="contraseña" SortExpression="contraseña" />
                            <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                            <asp:BoundField DataField="rol" HeaderText="rol" SortExpression="rol" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
            </asp:Panel>
</asp:Content>

