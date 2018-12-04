
Partial Class recepcion
    Inherits System.Web.UI.Page
    Private Sub mostrar_panel1()
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = False
    End Sub
    Private Sub mostrar_panel2()
        Panel1.Visible = False
        Panel2.Visible = True
        Panel3.Visible = False
        Panel4.Visible = True
        Panel5.Visible = False
        Session("txtbox_value") = ""
        Session("band") = 1
    End Sub
    Private Sub mostrar_panel3()
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = False
    End Sub
    Private Sub mostrar_panel5()
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel4.Enabled = False
        Panel5.Visible = True
    End Sub

    Protected Sub Button17_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button17.Click
        completa()
    End Sub
    Private Sub completa()
        Dim i As Integer
        Dim cont As Integer
        cont = 0
        Dim row As GridViewRow
        Dim estupefaciente As CheckBox
        For i = 0 To GridView1.Rows.Count - 1
            row = GridView1.Rows(i)
            Dim isChecked As Boolean = DirectCast(row.FindControl("cbSelect"), CheckBox).Checked
            estupefaciente = CType(row.Cells(6).Controls(0), CheckBox)
            If isChecked = True Then
                If estupefaciente.Checked = True And GridView1.Rows(i).Cells(13).Text = "&nbsp;" Then

                Else
                    If GridView1.Rows(i).Cells(10).Text <> "&nbsp;" Then
                        Session("fecha2") = GridView1.Rows(i).Cells(10).Text
                    Else
                        Session("fecha2") = DateTime.Now.ToString
                    End If
                    Session("medicamento2") = GridView1.DataKeys(i).Values(0).ToString
                    Session("id_pedido_droga2") = GridView1.DataKeys(i).Values(1).ToString
                    Session("cantidad2") = GridView1.Rows(i).Cells(7).Text

                    SqlDataSource4.Update()
                    cont = cont + 1
                End If
            End If
        Next
        GridView1.DataBind()
    End Sub

    Protected Sub Button16_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button16.Click
        Dim i As Integer
        For i = 0 To GridView1.Rows.Count - 1
            If GridView1.Rows(i).Cells(10).Text <> "&nbsp;" Then
                Session("fecha2") = GridView1.Rows(i).Cells(10).Text
            Else
                Session("fecha2") = DateTime.Now.ToString
            End If

            Session("medicamento2") = GridView1.DataKeys(i).Values(0).ToString
            Session("id_pedido_droga2") = GridView1.DataKeys(i).Values(1).ToString
            Session("cantidad2") = GridView1.Rows(i).Cells(7).Text
            SqlDataSource4.Update()
        Next
        GridView1.DataBind()
    End Sub

    Protected Sub Button19_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button19.Click
        Session("txtbox_value") = TextBox14.Text
        Session("band") = 2
        busca()
    End Sub
    Private Sub busca()
        CheckBox1.Checked = False
        CheckBox2.Checked = False
        CheckBox3.Checked = False
        CheckBox3.Visible = False
        If TextBox14.Text = "" Then
            GridView1.DataSourceID = SqlDataSource13.ID
            SqlDataSource13.DataBind()
        Else
            GridView1.DataSourceID = SqlDataSource11.ID
            SqlDataSource11.DataBind()
        End If
        GridView1.DataBind()
        TextBox14.Focus()
    End Sub

    Protected Sub CheckBox1_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles CheckBox1.CheckedChanged
        CheckBox3.Checked = False
        SoloEstupefaciente()
    End Sub
    Private Sub SoloEstupefaciente()
        If CheckBox1.Checked = True Then
            CheckBox3.Visible = True
            If Session("txtbox_value").ToString <> "" Then
                GridView1.DataSourceID = SqlDataSource16.ID
                Session("band") = 4
            Else
                GridView1.DataSourceID = SqlDataSource17.ID
                Session("band") = 3
            End If
        Else
            CheckBox3.Visible = False
            If Session("txtbox_value").ToString <> "" Then
                'MsgBox(Session("txtbox_value").ToString + " " + "TextBox LLENO")
                GridView1.DataSourceID = SqlDataSource11.ID
                Session("band") = 2
            Else
                'MsgBox(Session("txtbox_value").ToString + " " + "TextBox VACIO")
                GridView1.DataSourceID = SqlDataSource13.ID
                Session("band") = 1
            End If
        End If

    End Sub
    Protected Sub CheckBox2_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles CheckBox2.CheckedChanged

    End Sub
    Protected Sub CheckBox3_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles CheckBox3.CheckedChanged
        If CheckBox3.Checked = True Then
            For Each r As GridViewRow In GridView1.Rows
                If r.Cells(12).Text <> "&nbsp;" Then
                    r.Visible = False
                End If
            Next
        Else
            For Each r As GridViewRow In GridView1.Rows
                r.Visible = True
            Next
        End If
    End Sub


    Protected Sub CheckBox4_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles CheckBox4.CheckedChanged
        Dim row As GridViewRow
        If CheckBox4.Checked = True Then
            For i = 0 To GridView1.Rows.Count - 1
                row = GridView1.Rows(i)
                DirectCast(row.FindControl("cbSelect"), CheckBox).Checked = True
            Next
        Else
            For i = 0 To GridView1.Rows.Count - 1
                row = GridView1.Rows(i)
                DirectCast(row.FindControl("cbSelect"), CheckBox).Checked = False
            Next
        End If
    End Sub

    Protected Sub GridView1_RowCancelingEdit(sender As Object, e As GridViewCancelEditEventArgs) Handles GridView1.RowCancelingEdit
        GridView1.EditIndex = -1

    End Sub
    Protected Sub GridView1_RowEditing(sender As Object, e As GridViewEditEventArgs) Handles GridView1.RowEditing
        GridView1.EditIndex = e.NewEditIndex
        Me.DataBind()
    End Sub
    Protected Sub GridView1_RowUpdating(sender As Object, e As GridViewUpdateEventArgs) Handles GridView1.RowUpdating

        If GridView1.Rows(e.RowIndex).Cells(10).Text <> "&nbsp;" Then
            Session("fecha") = GridView1.Rows(e.RowIndex).Cells(10).Text
        Else
            Session("fecha") = DateTime.Now.ToString
        End If
        'MsgBox(Session("fecha").ToString)

        Session("medicamento") = GridView1.DataKeys(e.RowIndex).Values(0).ToString
        Session("id_pedido_droga") = GridView1.DataKeys(e.RowIndex).Values(1).ToString

        Dim txbCanRec As TextBox = DirectCast(GridView1.Rows(e.RowIndex).FindControl("txbCantRec"), TextBox)
        Session("cantidad") = txbCanRec.Text

        Dim esEstupefaciente As Boolean = TryCast(GridView1.Rows(e.RowIndex).Cells(6).Controls(0), CheckBox).Checked

        Dim txbNroVale As TextBox = DirectCast(GridView1.Rows(e.RowIndex).FindControl("txbNroVale"), TextBox)

        If esEstupefaciente = True Then
            Session("nro_vale") = txbNroVale.Text
            'MsgBox("Estupefaciente es Verdadero")
            If txbNroVale.Text <> "" Then
                'MsgBox("HOLA")
                SqlDataSource18.Update()
            End If
        End If

    End Sub
    Protected Sub GridView1_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow AndAlso GridView1.EditIndex = e.Row.RowIndex Then
            Dim txbCantRec As TextBox = DirectCast(e.Row.FindControl("txbCantRec"), TextBox)
            Dim txbNroVale As TextBox = DirectCast(e.Row.FindControl("txbNroVale"), TextBox)
            Dim lblCantRec As Label = DirectCast(e.Row.FindControl("lblCantRec"), Label)
            Dim lblNroVale As Label = DirectCast(e.Row.FindControl("lblNroVale"), Label)

            If lblCantRec.Text <> "" Then
                txbCantRec.Text = lblCantRec.Text
            End If

            If lblNroVale.Text <> "" Then
                txbNroVale.Text = lblNroVale.Text
            End If
        End If
    End Sub

    Private Sub recepcion_Init(sender As Object, e As EventArgs) Handles Me.Init
        If Not Page.IsPostBack Then
            mostrar_panel2()
        End If
    End Sub
End Class
