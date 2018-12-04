
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init
        TextBox1.Focus()
        mostrar_panel1()
    End Sub

    Private Sub mostrar_panel1()
        Panel1.Visible = True
        Panel2.Visible = False
    End Sub

    Private Sub mostrar_panel2()
        Panel1.Visible = False
        Panel2.Visible = True
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        SqlDataSource1.DataBind()
        GridView1.DataBind()
        If TextBox1.Text = "" Or TextBox2.Text = "" Then
            Label3.Text = "Completar campos"
            TextBox1.Focus()
        Else
            If GridView1.Rows.Count > 0 Then
                Label3.Text = ""
                Session("id_usuario") = GridView1.Rows(0).Cells(0).Text
                Session("desc_usuario") = GridView1.Rows(0).Cells(3).Text
                Session("rol_usuario") = GridView1.Rows(0).Cells(4).Text
                Session("activa") = 1
                Response.Redirect("Default.aspx")
            Else
                Label3.Text = "Usuario o contraseña incorrectos"
            End If
        End If
    End Sub

End Class
