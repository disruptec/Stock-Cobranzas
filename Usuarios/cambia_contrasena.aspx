<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="cambia_contrasena.aspx.vb" Inherits="cambia_contraseña" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 200px;
        }
        .auto-style2
        {
            width: 180px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:Panel ID="Panel1" runat="server">
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Ingrese Contraseña Actual"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Ingrese Contraseña Nueva"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Confirme Contraseña Nueva"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                        &nbsp;
                        <asp:Label ID="Label5" runat="server" ForeColor="#FF3300"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="style3">&nbsp;</td>
                    <td class="style3"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" style="margin-left: 38px; font-size: x-small; width: 56px;" Text="Guardar" UseSubmitBehavior="False" />
                    </td>
                    <td class="style3">
                        <asp:Button ID="Button2" runat="server" CausesValidation="False" style="margin-left: 33px; font-size: x-small;" Text="Cancelar" UseSubmitBehavior="False" />
                    </td>
                    <td class="style3">&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">La contraseña se cambio correctamente</asp:HyperLink>
        </asp:Panel>
        <asp:Panel ID="Panel6" runat="server">
        </asp:Panel>
    <asp:Panel ID="Panel7" runat="server">
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT contraseña FROM usuarios WHERE (contraseña = ?) AND (id_usuario = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="?" PropertyName="Text" />
                            <asp:SessionParameter Name="?" SessionField="id_usuario" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                        <Columns>
                            <asp:BoundField DataField="contraseña" HeaderText="contraseña" SortExpression="contraseña" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" UpdateCommand="UPDATE usuarios SET contraseña = ? WHERE (id_usuario = ?)">
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="TextBox3" Name="?" PropertyName="Text" />
                            <asp:SessionParameter Name="?" SessionField="id_usuario" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
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

