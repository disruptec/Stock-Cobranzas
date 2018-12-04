<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="pedidos.aspx.vb" Inherits="pedidos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        function setDisabedTextBox() {           
                //var ControlName = document.getElementById(ddl.id);
            document.getElementById('<%=TextBox13.ClientID%>').readOnly = true;            
        }
        function focusNuevaDroga() {
            document.getElementById('<%=Button8.ClientID%>').focus();
        }
    </script>
    
    <style type="text/css">
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            text-align: right;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Enabled="False" Visible="False">        
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table style="width:100%;">
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Label ID="Label7" runat="server" style="font-size: medium; font-weight: 700" Text="Nuevo Pedido"></asp:Label>
                </td>                
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Clínica"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource4" DataTextField="clinica" 
                        DataValueField="id_clinica" Height="28px" Width="238px" AppendDataBoundItems="True" >                        
                        <asp:ListItem Value="Seleccione Clínica">Seleccione Clínica</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;&nbsp;<asp:Button ID="Button3" runat="server" style="font-size: x-small; height: 21px;" Text="Siguiente" Width="115px" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="Label11" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td></td>
            </tr>
            
            <tr>
                <td colspan="3">
                    <hr />
                </td>
            </tr>
        </table>
    </asp:Panel>


    <asp:Panel ID="Panel4" runat="server">
   <table style="width:100%;">
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Label ID="Label1" runat="server" style="font-size: medium; font-weight: 700" Text="Drogas Pedido"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label38" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2"></td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label36" runat="server" Text="Nro Receta"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox13" runat="server" Height="19px" Width="58px" Onchange="setDisabedTextBox();"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Medicamento"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:DropDownList ID="DropDownList4" runat="server" 
                        DataSourceID="SqlDataSource7" DataTextField="Expr1" 
                        DataValueField="id_medicamento" Height="25px" Width="240px">
                    </asp:DropDownList>
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2"></td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Cantidad"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="19px" Width="39px" onchange="focusNuevaDroga();"></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="3">
                    <asp:Label ID="Label5" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button8" runat="server" 
                        Text="Nueva Droga" UseSubmitBehavior="False" />
                </td>
                <td>
                    <asp:Button ID="Button20" runat="server" 
                        Text="Nueva Receta"  CausesValidation="False" 
                        UseSubmitBehavior="False" />
                </td>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="Cancelar" Width="100px" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button9" runat="server"
                        Text="Finalizar Pedido"  CausesValidation="False" 
                        UseSubmitBehavior="False" Width="120px"  /> &nbsp; &nbsp;<asp:Button ID="Button21" runat="server" Text="Cancelar Pedido" Width="120px" />
                    &nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_pedido_droga" DataSourceID="SqlDataSource9" ForeColor="#333333" GridLines="None" style="text-align: center" Width="523px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField SelectText="Eliminar" ShowSelectButton="True" />
                        <asp:BoundField DataField="id_pedido_droga" HeaderText="id_pedido_droga" InsertVisible="False" SortExpression="id_pedido_droga" Visible="False" />
                        <asp:BoundField DataField="Medicamento" HeaderText="Medicamento" SortExpression="Medicamento" />
                        <asp:BoundField DataField="Presentación" HeaderText="Presentación" SortExpression="Presentación" />
                        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
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
    </asp:Panel>

    <asp:Panel ID="Panel6" runat="server">       
    </asp:Panel>
  
    <asp:Panel ID="Panel7" runat="server">
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT id_clinica, clinica FROM clinicas ORDER BY clinica"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" InsertCommand="INSERT INTO pedidos(fecha_pedido, id_clinica, solicitado) VALUES (NOW(), ?, false)" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="?" PropertyName="SelectedValue" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT MAX(id_pedido) AS Expr1 FROM pedidos"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource6" DataTextField="Expr1" DataValueField="Expr1">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT medicamento + ' - ' + presentacion AS Expr1, id_medicamento FROM medicamentos ORDER BY medicamento + ' - ' + presentacion"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" InsertCommand="INSERT INTO pedidos_drogas(id_pedido, id_medicamento_sale, cant_salida, nro_receta, cant_entrega_clinica) VALUES (?, ?, ?, ?,?)" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>">
                        <InsertParameters>
                            <asp:SessionParameter Name="?" SessionField="id_pedido" />
                            <asp:ControlParameter ControlID="DropDownList4" Name="?" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="TextBox2" Name="?" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox13" Name="?" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox2" Name="?" PropertyName="Text" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT pedidos_drogas.id_pedido_droga, medicamentos.medicamento AS Medicamento, medicamentos.presentacion AS Presentación, pedidos_drogas.cant_salida AS Cantidad FROM (pedidos_drogas INNER JOIN medicamentos ON pedidos_drogas.id_medicamento_sale = medicamentos.id_medicamento) WHERE (pedidos_drogas.id_pedido = ?)">
                        <SelectParameters>
                            <asp:SessionParameter Name="?" SessionField="id_pedido" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td><asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" DeleteCommand="DELETE FROM pedidos_drogas WHERE (id_pedido_droga = ?)" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>">
                        <DeleteParameters>
                            <asp:SessionParameter Name="?" SessionField="id_pedido_droga" />
                        </DeleteParameters>
                    </asp:SqlDataSource></td>
                <td><asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" DeleteCommand="DELETE * FROM pedidos WHERE id_pedido=?" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>">  
                    <DeleteParameters>
                        <asp:SessionParameter Name="?" SessionField="id_pedido" />
                    </DeleteParameters>
                    </asp:SqlDataSource></td>
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
