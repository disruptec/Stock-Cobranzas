<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="roles_abm.aspx.vb" Inherits="roles_abm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2
        {
            width: 320px;
        }
        .auto-style3
        {
            width: 376px;
        }
        .auto-style6
        {
            height: 19px;
            width: 111px;
        }
        .auto-style7
        {
            width: 111px;
        }
        .auto-style12
        {
            width: 179px;
        }
        .auto-style13
        {
            width: 286px;
        }
        .auto-style14
        {
            width: 286px;
            height: 19px;
        }
        .auto-style15
        {
            width: 179px;
            height: 19px;
        }
        .auto-style16
        {
            width: 112px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" style="font-size: x-small" Text="Agregar Rol" Width="105px" />
                </td>
                <td class="auto-style3" style="text-align: center">
                    <asp:Button ID="Button2" runat="server" style="font-size: x-small; text-align: center" Text="Listado Roles" Width="105px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16" style="text-align: center">
                    <asp:Label ID="Label8" runat="server" Text="Seleccione Rol"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource4" DataTextField="descripcion" DataValueField="id_rol" Height="24px" style="margin-left: 0px" Width="210px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
     
        <table style="width:100%;">
                        <tr>
                            <td class="auto-style14">
                                <asp:Label ID="Label9" runat="server" Text="Menús que posee"></asp:Label>
                            </td>
                            <td class="auto-style15"></td>
                            <td class="auto-style1">
                                <asp:Label ID="Label10" runat="server" Text="Menús que no posee"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13">
                                <asp:ListBox ID="ListBox1" runat="server" Height="239px" Width="284px" DataSourceID="SqlDataSource6" DataTextField="desc_menu" DataValueField="id_menu" AutoPostBack="True"></asp:ListBox>
                            </td>
                            <td class="auto-style12">
                                <table style="width: 100%; height: 188px;">
                                    <tr>
                                        <td style="text-align: center">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <asp:ListBox ID="ListBox2" runat="server" Height="233px" Width="284px" DataSourceID="SqlDataSource5" DataTextField="desc_menu" DataValueField="id_menu" AutoPostBack="True"></asp:ListBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13">&nbsp;</td>
                            <td class="auto-style12">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label7" runat="server" Text="Nombre Rol"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server" Width="184px"></asp:TextBox>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="Button3" runat="server" style="font-size: x-small; margin-left: 19px" Text="Guardar" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" style="font-size: x-small; margin-left: 25px" Text="Cancelar" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" InsertCommand="INSERT INTO rol(descripcion) VALUES (?)" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="?" PropertyName="Text" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT id_rol, descripcion FROM rol ORDER BY descripcion"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT menus.desc_menu, menus.id_menu FROM (rol_posee_menu INNER JOIN menus ON rol_posee_menu.id_menu = menus.id_menu) WHERE (rol_posee_menu.Id_rol = ?) ORDER BY menus.id_menu_padre, menus.orden">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="?" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" InsertCommand="INSERT INTO rol_posee_menu(Id_rol, id_menu) VALUES (?, ?)" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="?" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="ListBox2" Name="?" PropertyName="SelectedValue" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT desc_menu, id_menu FROM menus WHERE (id_menu NOT IN (SELECT menus_1.id_menu FROM (rol_posee_menu rol_posee_menu_1 INNER JOIN menus menus_1 ON rol_posee_menu_1.id_menu = menus_1.id_menu) WHERE (rol_posee_menu_1.Id_rol = ?))) ORDER BY id_menu_padre, orden">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="?" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" DeleteCommand="DELETE FROM rol_posee_menu WHERE (Id_rol = ?) AND (id_menu = ?)" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="?" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="ListBox1" Name="?" PropertyName="SelectedValue" />
                        </DeleteParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

