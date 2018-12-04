<%@ Page Language="VB" AutoEventWireup="false" CodeFile="imprime_pedido.aspx.vb" Inherits="imprime_pedido" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 65px;
        }

        body {
            height: 842px;
            width: 595px;
            /* to centre page on screen*/
            margin-left: auto;
            margin-right: auto;
        }
        @page Section1 {
            size:8.27in 11.69in; 
            margin:.5in .5in .5in .5in; 
            mso-header-margin:.5in; 
            mso-footer-margin:.5in; 
            mso-paper-source:0;
        }
        
        div.Section1 {
            page:Section1;
        } 
        .auto-style3 {
            width: 135px;
            float: right;
            height: 48px;
        }
        .auto-style4 {
            width: 359px;
        }
    </style>
</head>

    <body>
        <form id="form1" runat="server">
        <div class="Section1">
        
        
        <asp:Panel ID="Panel1" runat="server">
        <table style="width:100%;">
            
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Clínica:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td rowspan="3">
                    <img alt="Logo" src="images/Logo_Curie.png" class="auto-style3" />
                </td>
                
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Fecha:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Pedido:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
       
        <hr />
            <div style="margin-left:20%;" >
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" ShowFooter="True" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="medicamento" HeaderText="medicamento" SortExpression="medicamento" />
                        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                        <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                    </Columns>
                </asp:GridView>
            </div>
     </asp:Panel>
            
        <asp:Panel ID="Panel2" runat="server">
            <table style="width: 100%;">
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT medicamentos.medicamento, SUM(pedidos_drogas.cant_salida) AS Cantidad, SUM(pedidos_drogas.cant_salida * medicamentos.precio) AS Total 
FROM ((pedidos 
INNER JOIN pedidos_drogas ON pedidos.id_pedido = pedidos_drogas.id_pedido) 
INNER JOIN medicamentos ON pedidos_drogas.id_medicamento_sale = medicamentos.id_medicamento) 
WHERE (pedidos.id_pedido = ?) 
GROUP BY medicamentos.medicamento 
ORDER BY medicamentos.medicamento">
                        <SelectParameters>
                            <asp:SessionParameter Name="?" SessionField="pedido" />
                        </SelectParameters>
                        </asp:SqlDataSource></td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:modo_local %>" ProviderName="<%$ ConnectionStrings:modo_local.ProviderName %>" SelectCommand="SELECT clinicas.clinica, clinicas.id_clinica FROM (clinicas INNER JOIN pedidos ON clinicas.id_clinica = pedidos.id_clinica) WHERE (pedidos.id_pedido = ?)">
                            <SelectParameters>
                                <asp:SessionParameter Name="?" SessionField="pedido" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="clinica" DataValueField="id_clinica" Visible="False">
                        </asp:DropDownList>
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
        
            </div>
        </form>
</body>
</html>
