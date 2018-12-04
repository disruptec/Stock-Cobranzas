
Partial Class informe_clinicas
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
    End Sub

    Private Sub mostrar_panel3()
        Panel1.Visible = True
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

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        busca()
    End Sub

    Protected Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init
        TextBox1.Text = Today
        TextBox2.Text = Today
        mostrar_panel1()
    End Sub

    Protected Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles TextBox2.TextChanged
        busca()
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        busca()
    End Sub

    Private Sub busca()
        Session("fecha_desde") = Convert.ToDateTime(TextBox1.Text)
        Session("fecha_hasta") = Convert.ToDateTime(TextBox2.Text).AddDays(1)
        SqlDataSource4.DataBind()
        GridView2.DataBind()
        If GridView2.Rows.Count > 0 Then
            SqlDataSource5.DataBind()
            DropDownList2.DataBind()
            calcula_total()
            TextBox3.Text = DropDownList2.Items.Count
            TextBox4.Text = GridView2.Rows.Count
            mostrar_panel2()
        Else
            mostrar_panel3()
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        busca()
    End Sub

    Private Sub calcula_total()
        Dim total As Decimal
        total = 0
        Dim i As Integer
        For i = 0 To GridView2.Rows.Count - 1
            total = total + Convert.ToDecimal(GridView2.Rows(i).Cells(6).Text)
        Next
        TextBox5.Text = total.ToString
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim gvEstadisticas As GridView
        gvEstadisticas = GridView2
        Dim sb As StringBuilder = New StringBuilder()
        Dim SW As System.IO.StringWriter = New System.IO.StringWriter(sb)
        Dim htw As HtmlTextWriter = New HtmlTextWriter(SW)
        Dim Page As Page = New Page()
        Dim form As HtmlForm = New HtmlForm()
        gvEstadisticas.EnableViewState = False
        Page.EnableEventValidation = False
        Page.DesignerInitialize()
        Page.Controls.Add(form)
        form.Controls.Add(gvEstadisticas)
        Page.RenderControl(htw)
        Response.Clear()
        Response.Buffer = True
        Response.ContentType = "application/vnd.ms-excel"
        Response.AddHeader("Content-Disposition", "attachment;filename=data.xls")
        Response.Charset = "UTF-8"
        Response.ContentEncoding = Encoding.Default
        Response.Write(sb.ToString())
        Response.End()
    End Sub
End Class
