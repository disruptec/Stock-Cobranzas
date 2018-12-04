<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="usuarios_abm.aspx.vb" Inherits="clinicas_abm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2
        {
            text-align: center;
        }
        .auto-style3
        {
            height: 19px;
            width: 142px;
        }
        .auto-style4
        {
            width: 142px;
        }
        .auto-style5
        {
            width: 142px;
            height: 25px;
        }
        .auto-style6
        {
            height: 25px;
        }
        .auto-style7
        {
            width: 246px;
        }
        .auto-style8
        {
            text-align: center;
            width: 246px;
        }
        .auto-style9
        {
            width: 377px;
        }
        .auto-style10
        {
            text-align: center;
            width: 377px;
        }
        .auto-style11
        {
            height: 17px;
            width: 142px;
        }
        .auto-style12
        {
            height: 17px;
        }
        .auto-style13
        {
            height: 26px;
            width: 142px;
        }
        .auto-style14
        {
            height: 26px;
        }
        .auto-style15
        {
            width: 142px;
            height: 27px;
        }
        .auto-style16
        {
            height: 27px;
        }
        .auto-style17
        {
            height: 17px;
            width: 49px;
        }
        .auto-style18
        {
            height: 26px;
            width: 49px;
        }
        .auto-style19
        {
            height: 19px;
            width: 49px;
        }
        .auto-style20
        {
            height: 27px;
            width: 49px;
        }
        .auto-style21
        {
            width: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table style="width:100%; height: 65px;">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" style="font-size: x-small" Text="Agregar Usuario" UseSubmitBehavior="False" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button2" runat="server" CausesValidation="False" style="font-size: x-small" Text="Listado Usuarios" UseSubmitBehavior="False" />
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <hr />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_usuario" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" style="text-align: center" Width="909px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField SelectText="Detalle" ShowSelectButton="True" />
                <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" InsertVisible="False" SortExpression="id_usuario" Visible="False" />
                <asp:BoundField DataField="Nombre Usuario" HeaderText="Nombre Usuario" SortExpression="Nombre Usuario" />
                <asp:BoundField DataField="Apellido y Nombre" HeaderText="Apellido y Nombre" SortExpression="Apellido y Nombre" />
                <asp:BoundField DataField="Rol" HeaderText="Rol" SortExpression="Rol" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server" Text="Nombre Usuario"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label8" runat="server" Text="Contraseña"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label9" runat="server" Text="Apellido y Nombre"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label18" runat="server" Text="Rol"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource8" DataTextField="descripcion" DataValueField="id_rol" Height="23px" Width="185px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Label ID="Label11" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button3" runat="server" style="font-size: x-small; margin-left: 14px" Text="Guardar" Width="80px" />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button4" runat="server" style="font-size: x-small; margin-left: 27px" Text="Cancelar" Width="80px" />
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label12" runat="server" Text="Nombre Usuario"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style1"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label20" runat="server" Text="Apellido y Nombre"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style1"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label19" runat="server" Text="Rol"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource9" DataTextField="descripcion" DataValueField="id_rol" Height="23px" Width="185px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">
                    <asp:Label ID="Label16" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Button ID="Button5" runat="server" style="font-size: x-small; margin-left: 14px" Text="Guardar" Width="80px" />
                </td>
                <td class="auto-style16">
                    <asp:Button ID="Button6" runat="server" style="font-size: x-small; margin-left: 27px" Text="Cancelar" Width="80px" />
                </td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
    </asp:Panel>
    <asp:Panel ID="Panel6" runat="server">
    </asp:Panel>
    <asp:Panel ID="Panel7" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT usuarios.id_usuario, usuarios.nombre AS [Nombre Usuario], usuarios.descripcion AS [Apellido y Nombre], rol.descripcion AS Rol FROM (usuarios LEFT OUTER JOIN rol ON usuarios.rol = rol.id_rol) ORDER BY usuarios.descripcion"></asp:SqlDataSource>
                </td>
                <td class="auto-style1">
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" InsertCommand="INSERT INTO usuarios(nombre, contraseña, descripcion, rol) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="?" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox2" Name="?" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox3" Name="?" PropertyName="Text" />
                            <asp:ControlParameter ControlID="DropDownList2" Name="?" PropertyName="SelectedValue" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style1">
                    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT id_rol, descripcion FROM rol ORDER BY descripcion"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                </td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" UpdateCommand="UPDATE usuarios SET nombre = ?, descripcion = ?, rol = ? WHERE (id_usuario = ?)">
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="TextBox5" Name="?" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox7" Name="?" PropertyName="Text" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="?" PropertyName="SelectedValue" />
                            <asp:SessionParameter Name="?" SessionField="id_usuario2" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT id_rol, descripcion FROM rol ORDER BY descripcion"></asp:SqlDataSource>
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
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
 </asp:Content>

