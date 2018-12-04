
Partial Class pedido_droguerias
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim script As String = "<script type=text/javascript>imprimir('etosi');</script>"
        ScriptManager.RegisterStartupScript(Me, GetType(Page), "imprimir", script, False)
    End Sub

    Protected Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init
        Session("pedido_drog") = Request.QueryString("pedido_drog")
        SqlDataSource1.DataBind()
        GridView1.DataBind()
        busca_recetas()
        label_id_pedido.Text = "Id Pedido: " + Session("pedido_drog")
        label_fecha.Text = "Fecha Pedido: " + Session("fecha_pedido")
    End Sub

    Private Sub busca_recetas()
        SqlDataSource2.DataBind()
        GridView2.DataBind()
        Dim i As Integer
        For i = 0 To GridView2.Rows.Count - 1
            If label_recetas.Text = "" Then
                label_recetas.Text = GridView2.Rows(i).Cells(0).Text
            Else
                label_recetas.Text = label_recetas.Text + " - " + GridView2.Rows(i).Cells(0).Text
            End If   
        Next
    End Sub

End Class
