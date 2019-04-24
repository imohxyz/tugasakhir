Imports System.Data.OleDb
Public Class user
    Sub kosong()
        TextBox1.Clear()
        TextBox2.Clear()
        TextBox3.Clear()
        TextBox5.Clear()
        ComboBox1.Text = ""
        TextBox1.Focus()
    End Sub
    Sub baru()
        TextBox2.Clear()
        TextBox3.Clear()
        TextBox5.Clear()
        TextBox2.Focus()
        ComboBox1.Text = ""
    End Sub
    Sub ketemu()
        On Error Resume Next
        TextBox2.Text = dr.Item(1)
        ComboBox1.Text = dr.Item(2)
        TextBox3.Text = dr.Item(3)
        TextBox2.Focus()
    End Sub
    Sub tampil()
        da = New OleDbDataAdapter("select * from pengguna", conn)
        ds = New DataSet
        da.Fill(ds)
        dgv.DataSource = ds.Tables(0)
        dgv.ReadOnly = True
    End Sub
    Sub satuan()
        cmd = New OleDbCommand("select distinct status_user from pengguna", conn)
        dr = cmd.ExecuteReader
        Do While dr.Read
            ComboBox1.Items.Add(dr.Item("status_user"))
        Loop
    End Sub
    Sub carikode()
        cmd = New OleDbCommand("SELECT * FROM pengguna where id_user='" & TextBox1.Text & "'", conn)
        dr = cmd.ExecuteReader
        dr.Read()
    End Sub
    Sub awal()
        Call kosong()
        Call satuan()
        Call tampil()
    End Sub
    Private Sub barang_Load(ByVal sender As Object, ByVal e As EventArgs) Handles MyBase.Load
        Call koneksi()
        Call awal()
    End Sub

    Private Sub TextBox1_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs) Handles TextBox1.KeyDown
        If e.KeyCode = Keys.Enter Then
            carikode()
            If dr.HasRows Then
                ketemu()
            Else
                baru()
            End If
        End If
    End Sub

    Private Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        If TextBox1.Text = "" Or TextBox2.Text = "" Or ComboBox1.Text = "" Or TextBox3.Text = "" Then
            MsgBox("Kode Harus Diisi!")
            TextBox1.Focus()
            Exit Sub
        End If
        Try
            carikode()
            If Not dr.HasRows Then
                Dim simpan As String = "INSERT INTO pengguna VALUES ('" & TextBox1.Text & "', '" & TextBox2.Text & "', '" & ComboBox1.Text & "', '" & TextBox3.Text & "')"
                cmd = New OleDbCommand(simpan, conn)
                cmd.ExecuteNonQuery()
            Else
                Dim edit As String = "UPDATE pengguna SET nama_user = '" & TextBox2.Text & "', status_user = '" & ComboBox1.Text & "', pwd_user =  '" & TextBox3.Text & "' WHERE id_user = '" & TextBox1.Text & "'"
                cmd = New OleDbCommand(edit, conn)
                cmd.ExecuteNonQuery()
            End If
            awal()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        If TextBox1.Text = "" Then
            MsgBox("Kode Harus Diisi!")
            TextBox1.Focus()
            Exit Sub
        End If
        If MessageBox.Show("Yakin Ingin Dihapus ? ", "PERINGATAN", MessageBoxButtons.YesNo) = Windows.Forms.DialogResult.Yes Then
            Dim hapus As String = "DELETE * from pengguna WHERE id_user = '" & TextBox1.Text & "'"
            cmd = New OleDbCommand(hapus, conn)
            cmd.ExecuteNonQuery()
            awal()
        Else
            kosong()
        End If
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Call kosong()
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Me.Close()
    End Sub

    Private Sub TextBox5_TextChanged(sender As Object, e As EventArgs) Handles TextBox5.TextChanged
        da = New OleDbDataAdapter("select * from pengguna where nama_user like'%" & TextBox5.Text & "%'", conn)
        ds = New DataSet
        da.Fill(ds)
        dgv.DataSource = ds.Tables(0)
        dgv.ReadOnly = True
    End Sub

    Private Sub dgv_CellMouseClick(sender As Object, e As DataGridViewCellMouseEventArgs) Handles dgv.CellMouseClick
        On Error Resume Next
        TextBox1.Text = dgv.Rows(e.RowIndex).Cells(0).Value
        carikode()
        If dr.HasRows Then
            ketemu()
        End If
    End Sub
End Class