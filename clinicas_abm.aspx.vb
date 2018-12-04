
Partial Class clinicas_abm
    Inherits System.Web.UI.Page

    Private Sub mostrar_panel1()
        Panel1.Visible = True
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = False
        Panel6.Visible = False
        Panel7.Visible = False
    End Sub

    Private Sub mostrar_panel2()
        Panel1.Visible = True
        Panel2.Visible = True
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = False
        Panel6.Visible = False
        Panel7.Visible = False
        SqlDataSource3.DataBind()
        GridView2.DataBind()
        TextBox9.Text = ""
        TextBox9.Focus()
    End Sub

    Private Sub mostrar_panel3()
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = True
        Panel4.Visible = False
        Panel5.Visible = False
        Panel6.Visible = False
        Panel7.Visible = False
        limpia_text()
        TextBox1.Focus()
    End Sub

    Private Sub mostrar_panel4()
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = True
        Panel5.Visible = False
        Panel6.Visible = False
        Panel7.Visible = False
    End Sub

    Private Sub mostrar_panel5()
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = True
        Panel6.Visible = False
        Panel7.Visible = False
    End Sub

    Private Sub mostrar_panel6()
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = False
        Panel6.Visible = True
        Panel7.Visible = False
    End Sub

    Private Sub mostrar_panel7()
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = False
        Panel6.Visible = False
        Panel7.Visible = True
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        mostrar_panel2()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        mostrar_panel3()
    End Sub

    Protected Sub GridView2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView2.SelectedIndexChanged
        Session("id_clinica") = GridView2.SelectedDataKey.Value.ToString
        SqlDataSource5.DataBind()
        GridView3.DataBind()
        If GridView3.Rows.Count > 0 Then
            TextBox5.Text = HttpUtility.HtmlDecode(GridView3.Rows(0).Cells(0).Text)
            TextBox6.Text = HttpUtility.HtmlDecode(GridView3.Rows(0).Cells(1).Text)
            TextBox7.Text = HttpUtility.HtmlDecode(GridView3.Rows(0).Cells(2).Text)
            TextBox8.Text = HttpUtility.HtmlDecode(GridView3.Rows(0).Cells(3).Text)
        End If
        mostrar_panel4()
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        If TextBox1.Text = "" Then
            Label11.Text = "El campo nombre no puede estar vacio"
            TextBox1.Focus()
        Else
            SqlDataSource4.Insert()
            limpia_text()
            mostrar_panel2()
        End If
    End Sub

    Private Sub limpia_text()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        Label11.Text = ""
    End Sub

    Protected Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init
        mostrar_panel2()
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        limpia_text()
        mostrar_panel2()
    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        mostrar_panel2()
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        SqlDataSource6.Update()
        mostrar_panel2()
    End Sub

    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        If TextBox9.Text = "" Then
            GridView2.DataSourceID = SqlDataSource3.ID
            SqlDataSource3.DataBind()
        Else
            GridView2.DataSourceID = SqlDataSource7.ID
            SqlDataSource7.DataBind()
        End If
        GridView2.DataBind()
        TextBox9.Focus()
        If GridView2.Rows.Count > 0 Then
            Label17.Text = ""
        Else
            Label17.Text = "Sin resultados"
        End If
    End Sub

End Class
