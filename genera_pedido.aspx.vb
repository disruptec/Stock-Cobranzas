
Partial Class genera_pedido
    Inherits System.Web.UI.Page


    Private Sub mostrar_panel2()
        Panel1.Visible = False
        Panel2.Visible = True
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = False
        SqlDataSource3.DataBind()
        GridView4.DataBind()
        If GridView4.Rows.Count > 0 Then
            Button3.Enabled = True
        Else
            Button3.Enabled = False
        End If
    End Sub

    Private Sub mostrar_panel3()
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = True
        Panel4.Visible = False
        Panel5.Visible = False
    End Sub

    Private Sub mostrar_panel4()
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = True
        Panel5.Visible = False
    End Sub

    Private Sub mostrar_panel5()
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = True
    End Sub

    Protected Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init
        mostrar_panel2()
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim i As Integer
        Dim row As GridViewRow
        Dim id_pedido_drogueria As Integer
        Dim sScript As String = "<script language =javascript> "
        SqlDataSource22.Insert()
        DropDownList1.DataBind()
        Session("id_pedido_drogueria") = DropDownList1.SelectedValue.ToString

        For i = 0 To GridView4.Rows.Count - 1
            row = GridView4.Rows(i)
            Dim isChecked As Boolean = DirectCast(row.FindControl("cbSelect"), CheckBox).Checked
            If isChecked = True Then
                SqlDataSource23.DataBind()
                Session("fecha_pedido") = Today.Date.ToString
                Session("id_pedido") = GridView4.DataKeys(i).Value.ToString

                id_pedido_drogueria = Convert.ToInt16(Session("id_pedido_drogueria").ToString)
                SqlDataSource24.Update() 'actualiza tabla pedidos
                SqlDataSource21.Update() 'actualiza tabla pedidos_drogas

            End If
        Next
        SqlDataSource3.DataBind()
        GridView4.DataBind()


        Dim sUrl As String = "pedido_droguerias.aspx?pedido_drog=" & id_pedido_drogueria
        sScript += "window.open('" & sUrl & "',null,'toolbar=1,scrollbars=1,location=1,statusbar=1,menubar=yes,resizable=1,width=900,height=450,left=100,top=100');</script>"
        Response.Write(sScript)

        If GridView4.Rows.Count > 0 Then
            Button3.Enabled = True
        Else
            Button3.Enabled = False
        End If
    End Sub
    Private Sub recorre_impresion(id_pedido_drogueria As Integer, sScript As String, i As Integer)

    End Sub
    Protected Sub cbSelect_CheckedChanged(sender As Object, e As EventArgs)
        Dim i As Integer
        Dim check As CheckBox
        Dim row As GridViewRow = DirectCast(DirectCast(sender, CheckBox).NamingContainer, GridViewRow)
        check = DirectCast(row.FindControl("cbSelect"), CheckBox)
        Session("receta") = row.Cells(3).Text
        Dim band As Integer
        band = 0
        For i = 0 To GridView4.Rows.Count - 1
            If GridView4.Rows(i).Cells(3).Text = Session("receta") Then
                If check.Checked = True Then
                    DirectCast(GridView4.Rows(i).FindControl("cbSelect"), CheckBox).Checked = True
                Else
                    DirectCast(GridView4.Rows(i).FindControl("cbSelect"), CheckBox).Checked = False
                End If
            End If
            If DirectCast(GridView4.Rows(i).FindControl("cbSelect"), CheckBox).Checked = True Then
                band = 1
            End If
        Next
        If band = 1 Then
            Button3.Enabled = True
        Else
            Button3.Enabled = False
        End If
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        mostrar_panel2()
    End Sub
    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        mostrar_panel3()
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_RowEditing(sender As Object, e As GridViewEditEventArgs)
        GridView1.EditIndex = e.NewEditIndex
        Me.DataBind()
    End Sub

    Protected Sub GridView1_RowUpdating(sender As Object, e As GridViewUpdateEventArgs)
        Session("id_pedido_droga") = GridView1.DataKeys(e.RowIndex).Value.ToString
        Session("cant_entregada") = TryCast(GridView1.Rows(e.RowIndex).FindControl("txbCantEnt"), TextBox).Text
        SqlDataSource4.Update()

    End Sub

    Protected Sub GridView1_RowCancelingEdit(sender As Object, e As GridViewCancelEditEventArgs)
        GridView1.EditIndex = -1
        DataBind()
    End Sub

    Protected Sub GridView1_RowDataBound(sender As Object, e As GridViewRowEventArgs)
        If e.Row.RowType = DataControlRowType.DataRow AndAlso GridView1.EditIndex = e.Row.RowIndex Then
            Dim txbCantEnt As TextBox = DirectCast(e.Row.FindControl("txbCantEnt"), TextBox)
            Dim lblCantEnt As Label = DirectCast(e.Row.FindControl("lblCantEnt"), Label)

            If lblCantEnt.Text <> "" Then
                txbCantEnt.Text = lblCantEnt.Text
            End If
        End If
    End Sub
End Class
