
Partial Class pedidos
    Inherits System.Web.UI.Page

    Private Sub mostrar_panel2()
        Panel1.Visible = False
        Panel2.Visible = True
        Panel3.Visible = False
        Panel4.Visible = True
        Panel4.Enabled = False
        Panel6.Visible = False
        Panel7.Visible = False
        DropDownList1.SelectedIndex = 0
        Session("posicion") = 1
        posicionar()
    End Sub

    Private Sub mostrar_panel3()
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = True
        Panel4.Visible = False
        Panel6.Visible = False
        Panel7.Visible = False
    End Sub

    Private Sub mostrar_panel4()
        Panel1.Visible = False
        Panel2.Visible = True
        Panel2.Enabled = False
        Panel3.Visible = False
        Panel4.Visible = True
        Panel4.Enabled = True
        Panel6.Visible = False
        SqlDataSource7.DataBind()
        DropDownList4.DataBind()
        DropDownList4.SelectedIndex = 0
        TextBox2.Text = ""
        TextBox13.Text = ""
        Label5.Text = ""
        Session("posicion") = 2
        posicionar()
    End Sub

    Private Sub mostrar_panel6()
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel6.Visible = True
        Panel7.Visible = False
    End Sub

    Private Sub mostrar_panel7()
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel6.Visible = False
        Panel7.Visible = True
    End Sub

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Init
        limpia_panel2()
        mostrar_panel2()
    End Sub

    Protected Sub limpia_panel2()
        Panel2.Enabled = True
        DropDownList1.SelectedIndex = 0
        DropDownList1.Enabled = True
        TextBox13.Text = ""
        TextBox2.Text = ""
        GridView3.DataSource = Nothing
        GridView3.DataBind()
        GridView3.Visible = False
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        carga_drogas()
    End Sub
    Private Sub carga_drogas()
        SqlDataSource5.Insert()
        SqlDataSource6.DataBind()
        DropDownList5.DataBind()
        If DropDownList5.Items.Count > 0 Then
            Session("id_pedido") = DropDownList5.SelectedValue.ToString
            mostrar_panel4()
            TextBox13.Focus()
        End If

    End Sub
    Protected Sub Button8_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button8.Click
        If IsNumeric(TextBox2.Text) Then
            If Convert.ToInt16(TextBox2.Text) > 0 Then
                Label5.Text = ""
                guarda_pedidos_droga()
                actualiza_pedidos_drogas()
                Session("posicion") = 3

            Else
                Label5.Text = "La cantidad no puede ser cero"
                Session("posicion") = 4
            End If
        Else
            Label5.Text = "Revise Cantidad"
            Session("posicion") = 4
        End If
        posicionar()
    End Sub

    Private Sub guarda_pedidos_droga()
        SqlDataSource8.Insert()
        DropDownList4.SelectedIndex = 0
        TextBox2.Text = ""
    End Sub

    Private Sub actualiza_pedidos_drogas()
        SqlDataSource9.DataBind()
        GridView3.DataSourceID = SqlDataSource9.ID
        GridView3.DataBind()
        GridView3.Visible = True
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button5.Click
        mostrar_panel4()
    End Sub

    Protected Sub Button9_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button9.Click
        Dim nro_pedido As Integer
        nro_pedido = Convert.ToInt16(Session("id_pedido").ToString)
        Dim sUrl As String = "imprime_pedido.aspx?pedido=" & nro_pedido
        Dim sScript As String = "<script languaje=javascript>"
        sScript += "window.open('" & sUrl & "',null,'toolbar=1,scrollbars=1,location=1,statusbar=1,menubar=yes,resizable=1,width=900,height=450,left=100,top=100');"
        sScript += "</script> "

        If TextBox2.Text <> "" Then
            If IsNumeric(TextBox2.Text) Then
                If Convert.ToInt16(TextBox2.Text) > 0 Then
                    Label5.Text = ""
                    guarda_pedidos_droga()
                    Response.Write(sScript)
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "Carga Recetas", "<script languaje=javascript>alert('Recetas Cargadas Satisfactoriamente');</script>")
                    limpia_panel2()
                    mostrar_panel2()
                Else
                    Label5.Text = "La cantidad no puede ser cero ni menor"
                    Session("posicion") = 4
                End If
            Else
                Label5.Text = "Revise Cantidad"
                Session("posicion") = 4
            End If
        Else
            Response.Write(sScript)
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "Carga Recetas", "<script languaje=javascript>alert('Recetas Cargadas Satisfactoriamente');</script>")
            limpia_panel2()
            mostrar_panel2()
        End If
        posicionar()
    End Sub

    Private Sub posicionar()
        DropDownList1.BackColor = Drawing.Color.White
        TextBox13.BackColor = Drawing.Color.White
        DropDownList4.BackColor = Drawing.Color.White
        TextBox2.BackColor = Drawing.Color.White
        Select Case Session("posicion")
            Case 1
                DropDownList1.Focus()
            'DropDownList1.BackColor = Drawing.Color.SteelBlue
            Case 2
                TextBox13.ReadOnly = False
                TextBox13.Text = ""
                TextBox13.Focus()
            'TextBox13.BackColor = Drawing.Color.SteelBlue
            Case 3
                TextBox13.ReadOnly = True
                DropDownList4.Focus()
            'DropDownList4.BorderColor = Drawing.Color.SteelBlue
            Case 4
                TextBox2.Focus()
                'TextBox2.BackColor = Drawing.Color.SteelBlue
        End Select
    End Sub


    Protected Sub GridView3_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView3.SelectedIndexChanged
        Session("id_pedido_droga") = GridView3.SelectedDataKey.Value.ToString
        SqlDataSource10.Delete()
        actualiza_pedidos_drogas()
    End Sub

    Protected Sub TextBox13_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox13.TextChanged
        Session("posicion") = 3
        posicionar()
    End Sub

    Protected Sub DropDownList4_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList4.SelectedIndexChanged
        Session("posicion") = 4
        posicionar()
    End Sub

    Protected Sub TextBox2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox2.TextChanged
        Button8.Focus()
    End Sub

    Protected Sub Button20_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button20.Click
        If TextBox2.Text <> "" Then
            If IsNumeric(TextBox2.Text) Then
                If Convert.ToInt16(TextBox2.Text) > 0 Then
                    Label5.Text = ""
                    guarda_pedidos_droga()
                    actualiza_pedidos_drogas()
                    Session("posicion") = 2
                Else
                    Label5.Text = "La cantidad no puede ser cero ni menor"
                    Session("posicion") = 4
                End If
            Else
                Label5.Text = "Revise Cantidad"
                Session("posicion") = 4
            End If
        Else
            Session("posicion") = 2
        End If
        posicionar()
    End Sub


    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Button3.Focus()
    End Sub

    Protected Sub Button21_Click(sender As Object, e As EventArgs) Handles Button21.Click
        limpia_panel2()
        Session("posicion") = 1
        posicionar()
        SqlDataSource11.Delete()
    End Sub
End Class

