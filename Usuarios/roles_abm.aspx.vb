
Partial Class roles_abm
    Inherits System.Web.UI.Page

    Private Sub mostrar_panel1()
        Panel1.Visible = True
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = False
    End Sub

    Private Sub mostrar_panel2()
        Panel1.Visible = True
        Panel2.Visible = True
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = False
        SqlDataSource4.DataBind()
        DropDownList1.DataBind()
        Session("id_rol") = DropDownList1.SelectedValue.ToString
        actualiza()
    End Sub

    Private Sub mostrar_panel3()
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = True
        Panel4.Visible = False
        Panel5.Visible = False
        TextBox1.Text = ""
    End Sub

    Private Sub mostrar_panel4()
        Panel1.Visible = True
        Panel2.Visible = True
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

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        mostrar_panel2()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        mostrar_panel3()
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        SqlDataSource3.Insert()
        mostrar_panel2()
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        mostrar_panel2()
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Session("id_rol") = DropDownList1.SelectedValue.ToString
        actualiza()
        mostrar_panel4()
    End Sub

    Private Sub actualiza()
        SqlDataSource5.DataBind()
        SqlDataSource6.DataBind()
        ListBox1.DataBind()
        ListBox2.DataBind()
    End Sub

    Protected Sub ListBox2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListBox2.SelectedIndexChanged
        SqlDataSource7.Insert()
        actualiza()
    End Sub

    Protected Sub ListBox1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListBox1.SelectedIndexChanged
        SqlDataSource8.Delete()
        actualiza()
    End Sub
End Class
