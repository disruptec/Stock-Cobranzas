
Partial Class imprime_pedido
    Inherits System.Web.UI.Page

    Private Sub imprime_pedido_Init(sender As Object, e As EventArgs) Handles Me.Init

        Session("pedido") = Request.QueryString("pedido")
        mostrar_panel1()
        rellenar_campos()
    End Sub
    Sub mostrar_panel1()
        Panel1.Visible = True
        Panel2.Visible = False
    End Sub

    Protected Sub rellenar_campos()
        SqlDataSource1.DataBind()
        GridView1.DataBind()
        SqlDataSource2.Databind
        DropDownList1.DataBind()
        Label4.Text = DropDownList1.Items(0).Text
        Label5.Text = Today
        Label6.Text = Session("pedido").ToString

    End Sub

    Dim subtotal As Decimal = 0
    Private Sub GridView1_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridView1.RowDataBound

        Dim aux As Decimal
        If e.Row.RowType = DataControlRowType.DataRow Then
            Decimal.TryParse(e.Row.Cells(2).Text, aux)
            subtotal = subtotal + aux

        End If
        If e.Row.RowType = DataControlRowType.Footer Then
            e.Row.Cells(1).Text = "Total"
            e.Row.Cells(2).Text = Convert.ToString(subtotal / 2)
            'e.Row.Cells(3).HorizontalAlign = True
            e.Row.Font.Bold = True
        End If
    End Sub
End Class