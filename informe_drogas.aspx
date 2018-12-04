<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="informe_drogas.aspx.vb" Inherits="informe_clinicas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style26
        {
            width: 181px;
        }
        .auto-style28
        {
            width: 168px;
        }
        .auto-style29
        {
            width: 168px;
            height: 19px;
        }
        .auto-style30
        {
            width: 181px;
            height: 19px;
        }
        .auto-style31
        {
            height: 19px;
            width: 234px;
        }
        .auto-style32
        {
            width: 234px;
        }
        .auto-style33
        {
            text-align: left;
        }
        .auto-style34
        {
            height: 19px;
            text-align: left;
        }
        .auto-style35
        {
            width: 234px;
            height: 31px;
        }
        .auto-style36
        {
            text-align: left;
            height: 31px;
        }
        .auto-style37
        {
            height: 31px;
        }
        .auto-style38
        {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="text-align: center">
        <table style="width:100%;">
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style30"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style28">
                    <asp:Label ID="Label7" runat="server" Text="Seleccione droga"></asp:Label>
                </td>
                <td class="auto-style26">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="20px" Width="225px" AppendDataBoundItems="True" DataSourceID="SqlDataSource3" DataTextField="Expr1" DataValueField="id_medicamento">
                        <asp:ListItem Value="0">Seleccionar Droga</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
        <hr /> 

        <table style="width:100%;">
            <tr>
                <td class="auto-style31">
                    <asp:Label ID="Label8" runat="server" Text="Cantidad enviada a Clinicas"></asp:Label>
                </td>
                <td class="auto-style34">
                    <asp:TextBox ID="TextBox1" runat="server" ForeColor="Red" style="font-size: large" Width="70px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" style="font-size: x-small" Text="Ver listado" Width="64px" />
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style35">
                    <asp:Label ID="Label9" runat="server" Text="Cantidad recibida de Droguería"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="TextBox2" runat="server" ForeColor="Green" style="font-size: large" Width="70px"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" style="font-size: x-small" Text="Ver listado" Width="64px" />
                </td>
                <td class="auto-style37"></td>
            </tr>
            <tr>
                <td class="auto-style32">
                    <asp:Label ID="Label10" runat="server" style="font-weight: 700" Text="Saldo"></asp:Label>
                </td>
                <td class="auto-style33">
                    <asp:TextBox ID="TextBox3" runat="server" style="font-size: large; font-weight: 700" Width="70px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <br />
        <asp:Button ID="Button3" runat="server" style="font-size: x-small" 
            Text="Exportar a Ecel" />
        <asp:GridView ID="GridView4" runat="server" 
            style="font-size: xx-small; text-align: center;" AutoGenerateColumns="False" 
            Caption="Enviadas a Clinicas" DataSourceID="SqlDataSource6" Width="598px">
            <Columns>
                <asp:BoundField DataField="Nro Pedido" HeaderText="Nro Pedido" InsertVisible="False" SortExpression="Nro Pedido" />
                <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                <asp:BoundField DataField="Fecha" DataFormatString="{0:d}" HeaderText="Fecha" SortExpression="Fecha" />
                <asp:BoundField DataField="Clinica" HeaderText="Clinica" SortExpression="Clinica" />
            </Columns>
        </asp:GridView>
        
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <br />
        <asp:Button ID="Button4" runat="server" style="font-size: x-small" 
            Text="Exportar a Ecel" />
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
            Caption="Recibidas de Droguerías" DataSourceID="SqlDataSource7" 
            style="font-size: xx-small; text-align: center" Width="598px">
            <Columns>
                <asp:BoundField DataField="Droguería" HeaderText="Droguería" SortExpression="Droguería" />
                <asp:BoundField DataField="Cantidad Entrada" HeaderText="Cantidad Entrada" SortExpression="Cantidad Entrada" />
                <asp:BoundField DataField="Fecha Pedido" DataFormatString="{0:d}" HeaderText="Fecha Pedido" SortExpression="Fecha Pedido" />
                <asp:BoundField DataField="Fecha Entrada" DataFormatString="{0:d}" HeaderText="Fecha Entrada" SortExpression="Fecha Entrada" />
            </Columns>
        </asp:GridView>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style38">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT id_medicamento, medicamento + ', ' + presentacion AS Expr1 FROM medicamentos ORDER BY medicamento + ', ' + presentacion"></asp:SqlDataSource>
                </td>
                <td class="auto-style38">
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT SUM(pedidos_drogas.cant_salida) AS Expr1 FROM (pedidos_drogas INNER JOIN medicamentos ON pedidos_drogas.id_medicamento_sale = medicamentos.id_medicamento) WHERE (medicamentos.id_medicamento = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="?" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style38">
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT SUM(cant_entra) AS Expr1 FROM pedidos_drogas WHERE (id_medicamento_entra = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="?" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Width="75px">
                        <Columns>
                            <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" Width="75px">
                        <Columns>
                            <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT pedidos.id_pedido AS [Nro Pedido], pedidos_drogas.cant_salida AS Cantidad, pedidos.fecha_pedido AS Fecha, clinicas.clinica AS Clinica FROM (((pedidos_drogas INNER JOIN medicamentos ON pedidos_drogas.id_medicamento_sale = medicamentos.id_medicamento) INNER JOIN pedidos ON pedidos_drogas.id_pedido = pedidos.id_pedido) INNER JOIN clinicas ON pedidos.id_clinica = clinicas.id_clinica) WHERE (medicamentos.id_medicamento = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="?" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT droguerias.drogueria AS Droguería, pedidos_drogas.cant_entra AS [Cantidad Entrada], pedidos_drogas.fecha_pedido_drogueria AS [Fecha Pedido], pedidos_drogas.fecha_repuesto AS [Fecha Entrada] FROM (pedidos_drogas LEFT OUTER JOIN droguerias ON pedidos_drogas.id_drogueria = droguerias.id_drogueria) WHERE (pedidos_drogas.id_medicamento_entra = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="?" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
       
    </asp:Panel>
</asp:Content>

