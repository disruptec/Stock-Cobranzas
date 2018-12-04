
Partial Class informe_clinicas
    Inherits System.Web.UI.Page

    Private Sub mostrar_panel1()
        Panel1.Visible = True
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
    End Sub

    Private Sub mostrar_panel2()
        Panel1.Visible = True
        Panel2.Visible = True
        Panel3.Visible = False
        Panel4.Visible = False
        SqlDataSource6.DataBind()
        GridView4.DataBind()
    End Sub

    Private Sub mostrar_panel3()
        Panel1.Visible = True
        Panel2.Visible = False
        Panel3.Visible = True
        Panel4.Visible = False
    End Sub

    Private Sub mostrar_panel4()
        Panel1.Visible = True
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = True
        SqlDataSource7.DataBind()
        GridView5.DataBind()
    End Sub

    Protected Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init
        mostrar_panel1()
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        SqlDataSource4.DataBind()
        SqlDataSource5.DataBind()
        GridView2.DataBind()
        GridView3.DataBind()
        If IsNumeric(GridView2.Rows(0).Cells(0).Text) Then
            TextBox1.Text = GridView2.Rows(0).Cells(0).Text
        Else
            TextBox1.Text = 0
        End If
        If IsNumeric(GridView3.Rows(0).Cells(0).Text) Then
            TextBox2.Text = GridView3.Rows(0).Cells(0).Text
        Else
            TextBox2.Text = 0
        End If
        TextBox3.Text = Convert.ToInt16(TextBox1.Text) * -1 + Convert.ToInt16(TextBox2.Text)
        If Convert.ToInt16(TextBox3.Text) < 0 Then
            TextBox3.ForeColor = Drawing.Color.Red
        Else
            TextBox3.ForeColor = Drawing.Color.Green
        End If

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        mostrar_panel2()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        mostrar_panel4()
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim gvEstadisticas As GridView
        gvEstadisticas = GridView4
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

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim gvEstadisticas As GridView
        gvEstadisticas = GridView5
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
