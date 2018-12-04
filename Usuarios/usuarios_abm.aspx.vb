
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
        Session("id_usuario2") = GridView2.SelectedDataKey.Value.ToString
        TextBox5.Text = HttpUtility.HtmlDecode(GridView2.SelectedRow.Cells(2).Text)
        TextBox7.Text = HttpUtility.HtmlDecode(GridView2.SelectedRow.Cells(3).Text)
        DropDownList1.SelectedIndex = DropDownList1.Items.IndexOf(DropDownList1.Items.FindByText(GridView2.SelectedRow.Cells(4).Text))
        mostrar_panel4()
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        If InStr(TextBox1.Text, " ", CompareMethod.Text) = 0 Then
            If TextBox1.Text = "" Then
                Label11.Text = "Completa Nombre de Usuario"
                TextBox1.Focus()
            Else
                If TextBox2.Text = "" Then
                    Label11.Text = "Completa Contraseña"
                    TextBox2.Focus()
                Else
                    If TextBox3.Text = "" Then
                        Label11.Text = "Apellido y Nombre"
                        TextBox3.Focus()
                    Else
                        Label11.Text = ""
                        SqlDataSource4.Insert()
                        limpia_text()
                        mostrar_panel2()
                    End If
                End If
            End If
        Else
            Label11.Text = " No se pueden incluir espacios vacios en el nombre de usuario"
            TextBox1.Focus()
        End If
    End Sub

    Private Sub limpia_text()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
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
        If InStr(TextBox5.Text, " ", CompareMethod.Text) = 0 Then
            If TextBox5.Text = "" Then
                Label16.Text = "Completa Nombre de Usuario"
                TextBox5.Focus()
            Else
                If TextBox7.Text = "" Then
                    Label16.Text = "Completa Apellido y Nombre"
                    TextBox7.Focus()
                Else
                    Label16.Text = ""
                    SqlDataSource6.Update()
                    mostrar_panel2()
                End If
            End If
        Else
            Label16.Text = " No se pueden incluir espacios vacios en el nombre de usuario"
            TextBox5.Focus()
        End If

    End Sub

End Class
