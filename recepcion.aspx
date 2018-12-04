<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="recepcion.aspx.vb" Inherits="recepcion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   <script>
       
       function focusBuscarButton(e) {
            document.getElementById('<%=Button17.ClientID%>').disabled = true;
           document.getElementById('<%=Button19.ClientID%>').click();
       }
    </script>
   
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            margin-left: 0px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <asp:Panel ID="Panel1" runat="server">
        
    </asp:Panel>


    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style2">
            <tr>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Solo Estupefaciente" AutoPostBack="True" CausesValidation="False" />
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" Text="Sin Vale" Visible="False" />
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Falta Devolución" AutoPostBack="True" CausesValidation="True" Visible="false" />
                </td>
                <td>
                    <asp:Button ID="Button17" runat="server" Style="font-size: x-small" Text="Recibir Seleccionados" Width="150px" />
                    &nbsp;&nbsp;
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox4" runat="server" AutoPostBack="True" Style="font-size: x-small" Text="Marcar Todos " />
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2"></td>
                <td>
                    <asp:Button ID="Button16" runat="server" Style="font-size: x-small" Text="Recibir todo el pedido" CausesValidation="False" Width="150px" />
                </td>
                <td></td>
            </tr>
            <tr>
                <td colspan="5">
                    <asp:Label ID="Label1" runat="server" Style="font-size: x-small" Text="Buscar por pedido:"></asp:Label>&nbsp; &nbsp;
                    <asp:TextBox ID="TextBox14" runat="server" Style="font-size: x-small" onchange="focusBuscarButton(event);"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:Button ID="Button19" runat="server" Height="18px" Style="font-size: x-small" Text="Buscar"  Width="81px" />
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server">
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">        
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_medicamento, id_pedido_droga" DataSourceID="SqlDataSource13" Style="text-align: center; font-size: x-small" Width="1200px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Id Pedido" HeaderText="Id Pedido" ReadOnly="True" InsertVisible="False" SortExpression="Id Pedido" />
                <asp:BoundField DataField="Fecha Pedido" DataFormatString="{0:d}" HeaderText="Fecha Pedido" ReadOnly="True" SortExpression="Fecha Pedido" />
                <asp:BoundField DataField="Clínica" HeaderText="Clínica" ReadOnly="True" SortExpression="Clínica" />
                <asp:BoundField DataField="Receta" HeaderText="Receta" ReadOnly="True" SortExpression="nro_receta" />
                <asp:BoundField DataField="Medicamento" HeaderText="Medicamento" ReadOnly="True" SortExpression="Medicamento" />
                <asp:CheckBoxField DataField="Estupefaciente" HeaderText="Estupefaciente" ReadOnly="True" SortExpression="Estupefaciente" />
                <asp:BoundField DataField="Cant Solicitada" HeaderText="Cant Solicitada" ReadOnly="True" SortExpression="Cant Solicitada" />
                <asp:BoundField DataField="Cant Entregada" HeaderText="Cant Entregada" ReadOnly="true" SortExpression="Cant Entregada" />
                <asp:TemplateField HeaderText="Cant Recibida">
                    <ItemTemplate>
                        <asp:Label ID="lblCantRec" runat="server" Text='<%# Eval("Cant Recibida")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="lblCantRec" runat="server" Text='<%# Eval("Cant Recibida")%>' Visible="false"></asp:Label>
                        <asp:TextBox ID="txbCantRec" runat="server" Width="50px" Style="text-align: center" ></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Fecha Recibido" DataFormatString="{0:d}" HeaderText="Fecha Recibido" ReadOnly="True" SortExpression="Fecha Recibido" />
                <asp:BoundField DataField="Fecha Vale" DataFormatString="{0:d}" HeaderText="Fecha Vale" ReadOnly="true" SortExpression="Fecha Vale" />
                <asp:TemplateField HeaderText="Nro vale">
                    <ItemTemplate>
                        <asp:Label ID="lblNroVale" runat="server" Text='<%# Eval("Nro vale")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="lblNroVale" runat="server" Text='<%# Eval("Nro vale")%>' Visible="false"></asp:Label>
                        <asp:TextBox ID="txbNroVale" runat="server" Width="50px" Style="text-align: center" ></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="id_medicamento" HeaderText="id_medicamento" InsertVisible="False" SortExpression="id_medicamento" Visible="False" />
                <asp:BoundField DataField="id_pedido_droga" HeaderText="id_pedido_droga" InsertVisible="False" SortExpression="id_pedido_droga" Visible="False" />
                <asp:TemplateField HeaderText="Seleccionar"> 
                    <ItemTemplate>
                        <asp:checkbox ID="cbSelect" CssClass="gridCB" runat="server" />
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

     <asp:Panel ID="Panel5" runat="server">
         <table style="width: 100%;">
             <tr>
                 <td>
                     <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT pedidos_drogas.id_pedido_drogueria AS [Id Pedido], pedidos_drogas.fecha_pedido_drogueria AS [Fecha Pedido], clinicas.clinica AS Clínica, pedidos_drogas.nro_receta AS Receta, medicamentos_1.medicamento + ' - ' + medicamentos_1.presentacion AS Medicamento, medicamentos_1.estupefaciente AS Estupefaciente, pedidos_drogas.cant_salida AS [Cant Solicitada], pedidos_drogas.cant_entrega_clinica AS [Cant Entregada], pedidos_drogas.cant_entra AS [Cant Recibida], pedidos_drogas.fecha_repuesto AS [Fecha Recibido], pedidos_drogas.vale_fecha AS [Fecha Vale], pedidos_drogas.nro_vale AS [Nro Vale], medicamentos_1.id_medicamento, pedidos_drogas.id_pedido_droga FROM (((((pedidos_drogas INNER JOIN pedidos ON pedidos_drogas.id_pedido = pedidos.id_pedido) INNER JOIN clinicas ON pedidos.id_clinica = clinicas.id_clinica) LEFT OUTER JOIN medicamentos ON pedidos_drogas.id_medicamento_entra = medicamentos.id_medicamento) LEFT OUTER JOIN medicamentos medicamentos_1 ON pedidos_drogas.id_medicamento_sale = medicamentos_1.id_medicamento) LEFT OUTER JOIN droguerias droguerias_1 ON pedidos_drogas.id_drogueria = droguerias_1.id_drogueria) 
WHERE (pedidos_drogas.id_pedido_drogueria = ?) AND (pedidos_drogas.pedido_drogueria = True)
 ORDER BY pedidos_drogas.fecha_pedido_drogueria DESC" UpdateCommand="UPDATE       pedidos_drogas
SET                fecha_repuesto = ?, id_drogueria = 4, id_medicamento_entra = ?, cant_entra = ?
WHERE        (id_pedido_droga = ?)
                         ">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="TextBox14" Name="?" PropertyName="Text" />
                         </SelectParameters>
                         <UpdateParameters>
                             <asp:SessionParameter Name="?" SessionField="fecha" />
                             <asp:SessionParameter Name="?" SessionField="medicamento" />
                             <asp:SessionParameter Name="?" SessionField="cantidad" />
                             <asp:SessionParameter Name="?" SessionField="id_pedido_droga" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                 </td>
                 <td>
                     <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT pedidos_drogas.id_pedido_drogueria AS [Id Pedido], pedidos_drogas.fecha_pedido_drogueria AS [Fecha Pedido], clinicas.clinica AS Clínica, pedidos_drogas.nro_receta AS Receta, medicamentos_1.medicamento + ' - ' + medicamentos_1.presentacion AS [Medicamento], medicamentos_1.estupefaciente AS Estupefaciente, pedidos_drogas.cant_salida AS [Cant Solicitada], pedidos_drogas.cant_entrega_clinica AS [Cant Entregada], pedidos_drogas.cant_entra AS [Cant Recibida], pedidos_drogas.fecha_repuesto AS [Fecha Recibido], pedidos_drogas.vale_fecha AS [Fecha Vale], pedidos_drogas.nro_vale AS [Nro Vale], medicamentos_1.id_medicamento, pedidos_drogas.id_pedido_droga FROM (((((pedidos_drogas INNER JOIN pedidos ON pedidos_drogas.id_pedido = pedidos.id_pedido) INNER JOIN clinicas ON pedidos.id_clinica = clinicas.id_clinica) LEFT OUTER JOIN medicamentos ON pedidos_drogas.id_medicamento_entra = medicamentos.id_medicamento) LEFT OUTER JOIN medicamentos medicamentos_1 ON pedidos_drogas.id_medicamento_sale = medicamentos_1.id_medicamento) LEFT OUTER JOIN droguerias droguerias_1 ON pedidos_drogas.id_drogueria = droguerias_1.id_drogueria) WHERE ((pedidos_drogas.fecha_pedido_drogueria &gt; DATE () - 5) AND (pedidos_drogas.pedido_drogueria = True)) ORDER BY pedidos_drogas.fecha_pedido_drogueria DESC;" UpdateCommand="UPDATE       pedidos_drogas
SET                fecha_repuesto = ?, id_drogueria = 4, id_medicamento_entra = ?, cant_entra = ?
WHERE        (id_pedido_droga = ?)">
                         <UpdateParameters>                             
                             <asp:SessionParameter Name="?" SessionField="fecha" />
                             <asp:SessionParameter Name="?" SessionField="medicamento" />
                             <asp:SessionParameter Name="?" SessionField="cantidad" />
                             <asp:SessionParameter Name="?" SessionField="id_pedido_droga" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                 </td>
                 <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" UpdateCommand="UPDATE       pedidos_drogas
SET                fecha_repuesto = ?, id_drogueria = 4, id_medicamento_entra = ?, cant_entra = ?
WHERE        (id_pedido_droga = ?)">
                     <UpdateParameters>
                         <asp:SessionParameter Name="?" SessionField="fecha2" />
                         <asp:SessionParameter Name="?" SessionField="medicamento2" />
                         <asp:SessionParameter Name="?" SessionField="cantidad2" />
                         <asp:SessionParameter Name="?" SessionField="id_pedido_droga2" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
             </tr>
             <tr>
                 <td>
                     <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT pedidos_drogas.id_pedido_drogueria AS [Id Pedido], pedidos_drogas.fecha_pedido_drogueria AS [Fecha Pedido], clinicas.clinica AS Clínica, pedidos_drogas.nro_receta AS Receta, medicamentos_1.medicamento + ' - ' + medicamentos_1.presentacion AS Medicamento, medicamentos_1.estupefaciente AS Estupefaciente, pedidos_drogas.cant_salida AS [Cant Solicitada], pedidos_drogas.cant_entrega_clinica AS [Cant Entregada], pedidos_drogas.cant_entra AS [Cant Recibida], pedidos_drogas.fecha_repuesto AS [Fecha Recibido], pedidos_drogas.vale_fecha AS [Fecha Vale], pedidos_drogas.nro_vale AS [Nro Vale], medicamentos_1.id_medicamento, pedidos_drogas.id_pedido_droga FROM (((((pedidos_drogas INNER JOIN pedidos ON pedidos_drogas.id_pedido = pedidos.id_pedido) INNER JOIN clinicas ON pedidos.id_clinica = clinicas.id_clinica) LEFT OUTER JOIN medicamentos ON pedidos_drogas.id_medicamento_entra = medicamentos.id_medicamento) LEFT OUTER JOIN medicamentos medicamentos_1 ON pedidos_drogas.id_medicamento_sale = medicamentos_1.id_medicamento) LEFT OUTER JOIN droguerias droguerias_1 ON pedidos_drogas.id_drogueria = droguerias_1.id_drogueria) 
WHERE (pedidos_drogas.id_pedido_drogueria = ?) AND (pedidos_drogas.pedido_drogueria = True) AND (medicamentos_1.estupefaciente = True)
 ORDER BY pedidos_drogas.fecha_pedido_drogueria DESC" UpdateCommand="UPDATE       pedidos_drogas
SET                fecha_repuesto = ?, id_drogueria = 4, id_medicamento_entra = ?, cant_entra = ?
WHERE        (id_pedido_droga = ?)
                         ">
                         <SelectParameters>
                             <asp:SessionParameter Name="?" SessionField="txtbox_value" />
                         </SelectParameters>
                         <UpdateParameters>
                             <asp:SessionParameter Name="?" SessionField="fecha" />
                             <asp:SessionParameter Name="?" SessionField="medicamento" />
                             <asp:SessionParameter Name="?" SessionField="cantidad" />
                             <asp:SessionParameter Name="?" SessionField="id_pedido_droga" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                 </td>
                 <td>
                     <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT pedidos_drogas.id_pedido_drogueria AS [Id Pedido], pedidos_drogas.fecha_pedido_drogueria AS [Fecha Pedido], clinicas.clinica AS Clínica, pedidos_drogas.nro_receta AS Receta, medicamentos_1.medicamento + ' - ' + medicamentos_1.presentacion AS [Medicamento], medicamentos_1.estupefaciente AS Estupefaciente, pedidos_drogas.cant_salida AS [Cant Solicitada], pedidos_drogas.cant_entrega_clinica AS [Cant Entregada], pedidos_drogas.cant_entra AS [Cant Recibida], pedidos_drogas.fecha_repuesto AS [Fecha Recibido], pedidos_drogas.vale_fecha AS [Fecha Vale], pedidos_drogas.nro_vale AS [Nro Vale], medicamentos_1.id_medicamento, pedidos_drogas.id_pedido_droga FROM (((((pedidos_drogas INNER JOIN pedidos ON pedidos_drogas.id_pedido = pedidos.id_pedido) INNER JOIN clinicas ON pedidos.id_clinica = clinicas.id_clinica) LEFT OUTER JOIN medicamentos ON pedidos_drogas.id_medicamento_entra = medicamentos.id_medicamento) LEFT OUTER JOIN medicamentos medicamentos_1 ON pedidos_drogas.id_medicamento_sale = medicamentos_1.id_medicamento) LEFT OUTER JOIN droguerias droguerias_1 ON pedidos_drogas.id_drogueria = droguerias_1.id_drogueria) WHERE ((pedidos_drogas.fecha_pedido_drogueria &gt; DATE () - 5) AND (pedidos_drogas.pedido_drogueria = True) AND (medicamentos_1.estupefaciente =True)) ORDER BY pedidos_drogas.fecha_pedido_drogueria DESC"
                         UpdateCommand="UPDATE       pedidos_drogas
SET                fecha_repuesto = ?, id_drogueria = 4, id_medicamento_entra = ?, cant_entra = ?
WHERE        (id_pedido_droga = ?)">
                         <UpdateParameters>
                             <asp:SessionParameter Name="?" SessionField="fecha" />
                             <asp:SessionParameter Name="?" SessionField="medicamento" />
                             <asp:SessionParameter Name="?" SessionField="cantidad" />
                             <asp:SessionParameter Name="?" SessionField="id_pedido_droga" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                 </td>
                 <td>
                     <asp:SqlDataSource ID="SqlDataSource18" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" UpdateCommand="UPDATE pedidos_drogas SET vale_fecha = NOW(), nro_vale = ? WHERE (id_pedido_droga = ?)">
                         <UpdateParameters>
                             <asp:SessionParameter Name="?" SessionField="nro_vale" />
                             <asp:SessionParameter DefaultValue="" Name="?" SessionField="id_pedido_droga" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
         </table>
    </asp:Panel>

</asp:Content>

