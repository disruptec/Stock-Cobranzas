<%@ Page Language="VB" AutoEventWireup="false" CodeFile="pedido_droguerias.aspx.vb" Inherits="pedido_droguerias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 320px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="Imprimir" />
    
        <br />
    
    </div>
    
      <div id="etosi" >
          <table style="width: 100%;">
              <tr>
                  <td class="auto-style1" rowspan="2"><asp:Image ID="Image1" runat="server" Height="89px" ImageUrl="~/images/Logo_Curie.png" Width="290px" /></td>
                  <td><asp:Label ID="label_id_pedido" runat="server" style="font-size: x-large"></asp:Label></td>                  
              </tr>
              <tr>
                  <td><asp:Label ID="label_fecha" runat="server"></asp:Label></td>                  
              </tr>
              
          </table>
          <hr />
          <br />
    
          <asp:Label ID="Label1" runat="server" Text="Recetas: "></asp:Label>
          <asp:Label ID="label_recetas" runat="server"></asp:Label>
          <br />
          <hr />
          <br />
    
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
              DataSourceID="SqlDataSource1" style="text-align: center; font-size: x-small;" 
              Width="532px">
              <Columns>
                  <asp:BoundField DataField="Medicamento" HeaderText="Medicamento" SortExpression="Medicamento" />
                  <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
              </Columns>
          </asp:GridView>
    
    </div>
        <script type="text/javascript">
            function imprimir(nombre) {
                var ficha = document.getElementById(nombre);

                var ventimp = window.open(' ', 'popimpr');

                ventimp.document.write(ficha.innerHTML);

                ventimp.document.close();

                ventimp.print();

                ventimp.close();
            }
</script>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT medicamentos.medicamento + ' ' + medicamentos.presentacion AS Medicamento, SUM(pedidos_drogas.cant_salida) AS Cantidad FROM (pedidos_drogas INNER JOIN medicamentos ON pedidos_drogas.id_medicamento_sale = medicamentos.id_medicamento) WHERE (pedidos_drogas.id_pedido_drogueria = ?) GROUP BY medicamentos.medicamento + ' ' + medicamentos.presentacion ORDER BY medicamentos.medicamento + ' ' + medicamentos.presentacion">
            <SelectParameters>
                <asp:SessionParameter Name="?" SessionField="pedido_drog" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT pedidos_drogas.nro_receta FROM (pedidos_drogas INNER JOIN medicamentos ON pedidos_drogas.id_medicamento_sale = medicamentos.id_medicamento) WHERE (pedidos_drogas.id_pedido_drogueria = ?) GROUP BY pedidos_drogas.nro_receta">
                <SelectParameters>
                    <asp:SessionParameter Name="?" SessionField="pedido_drog" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="nro_receta" HeaderText="nro_receta" SortExpression="nro_receta" />
                </Columns>
            </asp:GridView>
        </asp:Panel>
    
    </form>
</body>
</html>
