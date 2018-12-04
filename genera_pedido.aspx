<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="genera_pedido.aspx.vb" Inherits="genera_pedido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10
        {
            height: 37px;
        }
        .auto-style12 {
            width: 100%;
        }
        .auto-style13 {
            margin-bottom: 0px;
        }
        .auto-style14 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style12">
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Style="font-size: xx-small" Text="Generar Pedido a Droguería" Width="160px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="Button4" runat="server" Style="font-size: xx-small" Text="Entregado a Clinicas" Width="100px" BackColor="#33CC33" BorderColor="#003300" />
                </td>
            </tr>
        </table>
        <br />

        <asp:GridView ID="GridView4" runat="server" AllowSorting="True" AutoGenerateColumns="False" Caption="No pedidos" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Style="text-align: center; font-size: x-small" Width="955px" DataKeyNames="id_pedido">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id_pedido" HeaderText="id_pedido" InsertVisible="False" SortExpression="id_pedido" />
                <asp:BoundField DataField="fecha_pedido" HeaderText="fecha_pedido" SortExpression="fecha_pedido" />
                <asp:BoundField DataField="clinica" HeaderText="clinica" SortExpression="clinica" />
                <asp:TemplateField HeaderText="Seleccionar">
                    <ItemTemplate>
                        <asp:CheckBox ID="cbSelect" runat="server" CssClass="gridCB" AutoPostBack="true" Checked="True" OnCheckedChange="cbSelect_CheckedChange" />
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:Button ID="Button1" runat="server" Style="font-size: xx-small" Text="Volver" Width="100px" BackColor="#33CC33" BorderColor="#003300" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Caption="Carga Entregados a Clinica" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" OnRowEditing="GridView1_RowEditing" OnRowDataBound="GridView1_RowDataBound" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" Style="text-align: center; font-size: x-small" Width="955px" DataKeyNames="id_pedido_droga">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Id_Pedido" HeaderText="Id_Pedido" SortExpression="Id_Pedido" ReadOnly="True"/>
                <asp:BoundField DataField="Receta" HeaderText="Receta" SortExpression="Receta" ReadOnly="True" />
                <asp:BoundField DataField="Medicamento" HeaderText="Medicamento" ReadOnly="True" SortExpression="Medicamento"/>
                <asp:BoundField DataField="Pedidas" HeaderText="Pedidas" SortExpression="Pedidas" ReadOnly="True" />                
                <asp:TemplateField HeaderText="Entrega Clínica">
                    <ItemTemplate>
                        <asp:Label ID="lblCantEnt" runat="server" Text='<%# Eval("Entrega Clinica")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="lblCantEnt" runat="server" Text='<%# Eval("Entrega Clinica")%>' Visible="false"></asp:Label>
                        <asp:TextBox ID="txbCantEnt" runat="server" Width="50px" Style="text-align: center" ></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="id_pedido_droga" HeaderText="id_pedido_droga" Visible="False" />
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
    <asp:Panel ID="Panel4" runat="server">
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        <table style="width: 100%;">
            <tr>
                <td class="auto-style10">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT pedidos.id_pedido, pedidos.fecha_pedido, clinicas.clinica FROM (clinicas INNER JOIN pedidos ON clinicas.id_clinica = pedidos.id_clinica) WHERE (pedidos.solicitado = False) ORDER BY pedidos.id_pedido"></asp:SqlDataSource>
                </td>
                <td class="auto-style10">
                    <asp:SqlDataSource ID="SqlDataSource24" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT pedidos.id_pedido, pedidos.fecha_pedido, clinicas.clinica FROM (clinicas INNER JOIN pedidos ON clinicas.id_clinica = pedidos.id_clinica) WHERE (pedidos.solicitado = False) ORDER BY pedidos.id_pedido" UpdateCommand="UPDATE pedidos SET solicitado = 1 WHERE (id_pedido = ?)">
                        <UpdateParameters>
                            <asp:SessionParameter Name="?" SessionField="id_pedido" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style10">
                    <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" UpdateCommand="UPDATE pedidos_drogas SET pedido_drogueria = 1, fecha_pedido_drogueria = NOW(), id_pedido_drogueria = ? WHERE (id_pedido = ?)">
                        <UpdateParameters>
                            <asp:SessionParameter Name="?" SessionField="id_pedido_drogueria" />
                            <asp:SessionParameter Name="?" SessionField="id_pedido" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" InsertCommand="INSERT INTO pedidos_droguerias(fecha_pedido) VALUES (NOW())" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource23" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT MAX(id_pedidos_droguerias) AS id_pedido_drogueria FROM pedidos_droguerias"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource23" DataTextField="id_pedido_drogueria" DataValueField="id_pedido_drogueria">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT pedidos_drogas.id_pedido AS Id_Pedido, pedidos_drogas.nro_receta AS Receta, medicamentos.medicamento + '-' + medicamentos.presentacion AS Medicamento, pedidos_drogas.cant_salida AS Pedidas, pedidos_drogas.cant_entrega_clinica AS [Entrega Clinica], pedidos_drogas.id_pedido_droga FROM (pedidos_drogas INNER JOIN medicamentos ON pedidos_drogas.id_medicamento_sale = medicamentos.id_medicamento) WHERE (pedidos_drogas.pedido_drogueria = False)" UpdateCommand="UPDATE pedidos_drogas SET cant_entrega_clinica = ? WHERE (id_pedido_droga=?)" >
                        <UpdateParameters>
                            <asp:SessionParameter Name="?" SessionField="cant_entregada" />
                            <asp:SessionParameter Name="?" SessionField="id_pedido_droga" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td><asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" UpdateCommand="UPDATE pedidos_drogas SET cant_entrega_clinica = ? WHERE (id_pedido_droga=?)">
                    <UpdateParameters>
                        <asp:SessionParameter Name="?" SessionField="cant_entregada" />
                        <asp:SessionParameter Name="?" SessionField="id_pedido_droga" />
                    </UpdateParameters>
                    </asp:SqlDataSource></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

