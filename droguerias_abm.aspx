<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="droguerias_abm.aspx.vb" Inherits="clinicas_abm" %>

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
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" style="font-size: x-small" Text="Agregar Droguería" UseSubmitBehavior="False" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button2" runat="server" CausesValidation="False" style="font-size: x-small" Text="Listado Droguerias" UseSubmitBehavior="False" />
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
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <asp:Button ID="Button8" runat="server" style="font-size: x-small" Text="Buscar" />
        <br />
        <asp:Label ID="Label17" runat="server" ForeColor="Red"></asp:Label>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_drogueria" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" style="text-align: center" Width="420px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField SelectText="Detalles" ShowSelectButton="True" />
                <asp:BoundField DataField="id_drogueria" HeaderText="id_drogueria" InsertVisible="False" ReadOnly="True" SortExpression="id_drogueria" Visible="False" />
                <asp:BoundField DataField="drogueria" HeaderText="Drogueria" SortExpression="drogueria" />
                <asp:BoundField DataField="activa" HeaderText="activa" SortExpression="activa" Visible="False" />
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
                    <asp:Label ID="Label7" runat="server" Text="Nombre Droguería"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label8" runat="server" Text="Domicilio"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label9" runat="server" Text="Teléfono"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="134px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
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
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label12" runat="server" Text="Nombre Droguería"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label13" runat="server" Text="Domicilio"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label14" runat="server" Text="Teléfono"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox7" runat="server" Width="134px"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style1">
                    <asp:Label ID="Label16" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button5" runat="server" style="font-size: x-small; margin-left: 14px" Text="Guardar" Width="80px" />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button6" runat="server" style="font-size: x-small; margin-left: 27px" Text="Cancelar" Width="80px" />
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
    <asp:Panel ID="Panel5" runat="server">
    </asp:Panel>
    <asp:Panel ID="Panel6" runat="server">
    </asp:Panel>
    <asp:Panel ID="Panel7" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT id_drogueria, drogueria, activa FROM droguerias WHERE (activa = 1) ORDER BY drogueria"></asp:SqlDataSource>
                </td>
                <td class="auto-style1">
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" InsertCommand="INSERT INTO droguerias(drogueria, domicilio, telefono, fecha_alta, activa) VALUES (?, ?, ?, NOW(), 1)" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="?" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox2" Name="?" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox3" Name="?" PropertyName="Text" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style1">
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT drogueria, domicilio, telefono FROM droguerias WHERE (id_drogueria = ?)">
                        <SelectParameters>
                            <asp:SessionParameter Name="?" SessionField="id_drogueria" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5">
                        <Columns>
                            <asp:BoundField DataField="drogueria" HeaderText="drogueria" SortExpression="drogueria" />
                            <asp:BoundField DataField="domicilio" HeaderText="domicilio" SortExpression="domicilio" />
                            <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" UpdateCommand="UPDATE droguerias SET drogueria = ?, domicilio = ?, telefono = ? WHERE (id_drogueria = ?)">
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="TextBox5" Name="?" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox6" Name="?" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox7" Name="?" PropertyName="Text" />
                            <asp:SessionParameter Name="?" SessionField="id_drogueria" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT id_drogueria, drogueria, activa FROM droguerias WHERE (drogueria LIKE '%' + ? + '%') ORDER BY drogueria">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox9" Name="?" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
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

