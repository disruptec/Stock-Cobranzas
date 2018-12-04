<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="informe_clinicas.aspx.vb" Inherits="informe_clinicas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6
        {
            width: 1002px;
        }
        .auto-style11
        {
            text-align: center;
            width: 143px;
        }
        .auto-style12
        {
            width: 143px;
            text-align: center;
        }
        .auto-style13
        {
            text-align: center;
            width: 86px;
            height: 19px;
        }
        .auto-style14
        {
            text-align: center;
            width: 143px;
            height: 19px;
        }
        .auto-style15
        {
            width: 143px;
            height: 19px;
        }
        .auto-style16
        {
            text-align: center;
            width: 86px;
        }
        .auto-style17
        {
            height: 19px;
            width: 138px;
        }
        .auto-style18
        {
            width: 138px;
        }
        .auto-style19
        {
            height: 19px;
            width: 272px;
        }
        .auto-style21
        {
            height: 19px;
            width: 166px;
        }
        .auto-style22
        {
            width: 166px;
        }
        .auto-style23
        {
            width: 272px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="text-align: center">
        <table class="auto-style6">
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14"></td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Label ID="Label7" runat="server" Text="Desde"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox1" runat="server" Width="137px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:Label ID="Label8" runat="server" Text="Hasta"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox2" runat="server" Width="137px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:Label ID="Label9" runat="server" Text="Clínica"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="160px" DataSourceID="SqlDataSource3" DataTextField="clinica" DataValueField="id_clinica" AppendDataBoundItems="True" AutoPostBack="True">
                        <asp:ListItem Value="0">Seleccionar Clínica</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" style="font-size: x-small" Text="Buscar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
        </table>
        
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style1"></td>
                <td class="auto-style19"></td>
                <td class="auto-style21"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Label11" runat="server" Text="Cantidad de Pedidos"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Enabled="False" style="margin-left: 0px; margin-right: 0px" Width="82px"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:Label ID="Label12" runat="server" Text="Cantidad de Medicamentos Solicitados"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox4" runat="server" Enabled="False" style="margin-left: 0px; margin-right: 0px" Width="82px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Total Dinero"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Enabled="False" style="margin-left: 0px; margin-right: 0px" Width="82px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button2" runat="server" style="font-size: x-small" 
            Text="Exportar a Ecel" />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource4" Width="964px" 
            style="text-align: center; font-size: xx-small;">
            <Columns>
                <asp:BoundField DataField="id_pedido" HeaderText="Id Pedido" InsertVisible="False" SortExpression="id_pedido" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                <asp:BoundField DataField="Clinica" HeaderText="Clinica" SortExpression="Clinica" />
                <asp:BoundField DataField="medicamento" HeaderText="Medicamento" SortExpression="medicamento" />
                <asp:BoundField DataField="cant_salida" HeaderText="Cantidad" SortExpression="cant_salida" />
                <asp:BoundField DataField="precio" HeaderText="Precio" SortExpression="precio" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
            </Columns>
        </asp:GridView>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="Sin Resultados"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT clinica, id_clinica FROM clinicas ORDER BY clinica"></asp:SqlDataSource>
                </td>
                <td class="auto-style1">
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT pedidos.id_pedido, pedidos.fecha_pedido AS Fecha, clinicas.clinica AS Clinica, medicamentos.medicamento, pedidos_drogas.cant_salida, medicamentos.precio, pedidos_drogas.cant_salida * medicamentos.precio AS Total FROM (((pedidos INNER JOIN clinicas ON pedidos.id_clinica = clinicas.id_clinica) INNER JOIN pedidos_drogas ON pedidos.id_pedido = pedidos_drogas.id_pedido) INNER JOIN medicamentos ON pedidos_drogas.id_medicamento_sale = medicamentos.id_medicamento) WHERE (pedidos.id_clinica = ?) AND (pedidos.fecha_pedido BETWEEN ? AND ?) ORDER BY pedidos.fecha_pedido DESC">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="?" PropertyName="SelectedValue" />
                            <asp:SessionParameter Name="?" SessionField="fecha_desde" />
                            <asp:SessionParameter Name="?" SessionField="fecha_hasta" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style1">
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT pedidos.id_pedido, pedidos.fecha_pedido AS Fecha, clinicas.clinica AS Clinica FROM (pedidos INNER JOIN clinicas ON pedidos.id_clinica = clinicas.id_clinica) WHERE (pedidos.id_clinica = ?) AND (pedidos.fecha_pedido BETWEEN ? AND ?) ORDER BY pedidos.fecha_pedido DESC">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="?" PropertyName="SelectedValue" />
                            <asp:SessionParameter Name="?" SessionField="fecha_desde" />
                            <asp:SessionParameter Name="?" SessionField="fecha_hasta" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT pedidos.id_pedido, pedidos.fecha_pedido AS Fecha, clinicas.clinica AS Clinica, medicamentos.medicamento, pedidos_drogas.cant_salida, medicamentos.precio, pedidos_drogas.cant_salida * medicamentos.precio AS Total FROM (((pedidos INNER JOIN clinicas ON pedidos.id_clinica = clinicas.id_clinica) INNER JOIN pedidos_drogas ON pedidos.id_pedido = pedidos_drogas.id_pedido) INNER JOIN medicamentos ON pedidos_drogas.id_medicamento_sale = medicamentos.id_medicamento) WHERE (pedidos.id_clinica = ?) AND (pedidos.fecha_pedido BETWEEN ? AND ?) ORDER BY pedidos.fecha_pedido DESC">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="?" PropertyName="SelectedValue" />
                            <asp:SessionParameter Name="?" SessionField="fecha_desde" />
                            <asp:SessionParameter Name="?" SessionField="fecha_hasta" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource5" DataTextField="id_pedido" DataValueField="id_pedido">
                    </asp:DropDownList>
                </td>
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

