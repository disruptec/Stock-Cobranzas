
Partial Class cambia_contraseña
    Inherits System.Web.UI.Page

    Private Sub mostrar_panel1()
        Panel1.Visible = True
        Panel3.Visible = False
        Panel5.Visible = False
        Panel6.Visible = False
        Panel7.Visible = False
        TextBox1.Focus()
    End Sub

    Private Sub mostrar_panel5()
        Panel1.Visible = False
        Panel3.Visible = False
        Panel5.Visible = True
        Panel6.Visible = False
        Panel7.Visible = False
        TextBox1.Focus()
    End Sub

    Protected Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init
        mostrar_panel1()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        SqlDataSource3.DataBind()
        GridView2.DataBind()
        If TextBox1.Text = "" Then
            Label5.Text = "Complete datos"
            TextBox1.Focus()
        Else
            If TextBox2.Text = "" Then
                Label5.Text = "Complete datos"
                TextBox2.Focus()
            Else
                If TextBox3.Text = "" Then
                    Label5.Text = "Complete datos"
                    TextBox3.Focus()
                Else
                    If GridView2.Rows.Count > 0 Then
                        If TextBox2.Text <> TextBox3.Text Then
                            Label5.Text = "La contraseña y su confirmacion no coinciden"
                        Else
                            Label5.Text = ""
                            SqlDataSource4.Update()
                            mostrar_panel5()
                        End If
                    Else
                        Label5.Text = "La contraseña es incorrecta"
                        TextBox1.Focus()
                    End If
                End If
            End If
        End If
    End Sub

End Class
