
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("activa") = 1 Then
            Label5.Text = Session("desc_usuario").ToString
            Session("hora2") = Now.TimeOfDay
            Session("fecha2") = Now.Date
            Label6.Text = Left(Now.Date.ToString, 10) + ", " + Left(Now.TimeOfDay.ToString, 5)
            If Session("rol_usuario") = 1 Then    'Administrador
                GridView1.DataSourceID = SqlDataSource2.ID
                SqlDataSource2.DataBind()
                GridView1.DataBind()
                NavigationMenu.Items.Clear()
                Dim i As Integer
                For i = 0 To GridView1.Rows.Count - 1
                    If GridView1.Rows(i).Cells(3).Text = 0 Then 'es menu padre
                        Dim nuevo_item As MenuItem
                        nuevo_item = New MenuItem
                        nuevo_item.Text = GridView1.Rows(i).Cells(1).Text
                        nuevo_item.NavigateUrl = GridView1.Rows(i).Cells(2).Text
                        Dim id_padre As Integer
                        id_padre = GridView1.Rows(i).Cells(0).Text
                        Dim j As Integer
                        For j = 0 To GridView1.Rows.Count - 1 'buscamos hijos
                            If GridView1.Rows(j).Cells(3).Text = id_padre Then 'es hijo
                                Dim hijo_item As MenuItem
                                hijo_item = New MenuItem
                                hijo_item.Text = GridView1.Rows(j).Cells(1).Text
                                hijo_item.NavigateUrl = GridView1.Rows(j).Cells(2).Text
                                nuevo_item.ChildItems.Add(hijo_item) 'incorporamos menuitem hijo al menuitem padre
                                nuevo_item.Selectable = False 'si tiene hijos entonces lo hacemos inseleccionable
                            End If
                        Next
                        NavigationMenu.Items.Add(nuevo_item) 'agregamos item al menu
                    End If
                Next
            Else     'otros roles
                GridView1.DataSourceID = SqlDataSource1.ID
                SqlDataSource1.DataBind()
                GridView1.DataBind()
                NavigationMenu.Items.Clear()
                Dim i As Integer
                For i = 0 To GridView1.Rows.Count - 1
                    If GridView1.Rows(i).Cells(3).Text = 0 Then 'es menu padre
                        Dim nuevo_item As MenuItem
                        nuevo_item = New MenuItem
                        nuevo_item.Text = GridView1.Rows(i).Cells(1).Text
                        nuevo_item.NavigateUrl = GridView1.Rows(i).Cells(2).Text
                        Dim id_padre As Integer
                        id_padre = GridView1.Rows(i).Cells(0).Text
                        Dim j As Integer
                        For j = 0 To GridView1.Rows.Count - 1 'buscamos hijos
                            If GridView1.Rows(j).Cells(3).Text = id_padre Then 'es hijo
                                Dim hijo_item As MenuItem
                                hijo_item = New MenuItem
                                hijo_item.Text = GridView1.Rows(j).Cells(1).Text
                                hijo_item.NavigateUrl = GridView1.Rows(j).Cells(2).Text
                                nuevo_item.ChildItems.Add(hijo_item)
                                nuevo_item.Selectable = False 'si tiene hijos entonces lo hacemos inseleccionable
                            End If
                        Next
                        NavigationMenu.Items.Add(nuevo_item)
                    End If
                Next
            End If
        Else
            Response.Redirect("loguin.aspx")
        End If
    End Sub
End Class

