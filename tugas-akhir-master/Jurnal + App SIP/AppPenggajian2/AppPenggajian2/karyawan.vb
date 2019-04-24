Imports System.Data.OleDb
Public Class karyawan
    Sub kosong()
        TextBox1.Clear()
        TextBox2.Clear()
        ComboBox1.Text = ""
        ComboBox2.Text = ""
        ComboBox3.Text = ""
        ComboBox4.Text = ""
        ComboBox5.Text = ""
        TextBox4.Clear()
        TextBox5.Clear()
        TextBox1.Focus()
    End Sub
    Sub baru()
        TextBox2.Clear()
        ComboBox1.Text = ""
        ComboBox2.Text = ""
        ComboBox3.Text = ""
        ComboBox4.Text = ""
        ComboBox5.Text = ""
        TextBox4.Clear()
        TextBox5.Clear()
        TextBox2.Focus()
    End Sub
    Sub ketemu()
        On Error Resume Next
        TextBox2.Text = dr.Item(1)
        ComboBox1.Text = dr.Item(2)
        ComboBox2.Text = dr.Item(3)
        ComboBox5.Text = dr.Item(4)
        ComboBox3.Text = dr.Item(5)
        ComboBox4.Text = dr.Item(6)
        TextBox4.Text = dr.Item(7)
        TextBox2.Focus()
    End Sub
    Sub tampil()
        da = New OleDbDataAdapter("select * from karyawan", conn)
        ds = New DataSet
        da.Fill(ds)
        dgv.DataSource = ds.Tables(0)
        dgv.ReadOnly = True
    End Sub
    Sub golongan()
        cmd = New OleDbCommand("select distinct id_golongan from golongan", conn)
        dr = cmd.ExecuteReader
        Do While dr.Read
            ComboBox1.Items.Add(dr.Item("id_golongan"))
        Loop
    End Sub
    Sub jabatan()
        cmd = New OleDbCommand("select distinct id_jabatan from jabatan", conn)
        dr = cmd.ExecuteReader
        Do While dr.Read
            ComboBox2.Items.Add(dr.Item("id_jabatan"))
        Loop
    End Sub
    Sub divisi()
        cmd = New OleDbCommand("select distinct divisi from karyawan", conn)
        dr = cmd.ExecuteReader
        Do While dr.Read
            ComboBox3.Items.Add(dr.Item("divisi"))
        Loop
    End Sub
    Sub carikode()
        cmd = New OleDbCommand("SELECT * FROM karyawan where nik='" & TextBox1.Text & "'", conn)
        dr = cmd.ExecuteReader
        dr.Read()
    End Sub
    Sub awal()
        Call kosong()
        Call golongan()
        Call jabatan()
        Call divisi()
        Call tampil()
    End Sub
    Private Sub karyawan_Load(ByVal sender As Object, ByVal e As EventArgs) Handles MyBase.Load
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
        If TextBox1.Text = "" Or TextBox2.Text = "" Or ComboBox1.Text = "" Or ComboBox2.Text = "" Or ComboBox3.Text = "" Or ComboBox4.Text = "" Or ComboBox5.Text = "" Or TextBox4.Text = "" Then
            MsgBox("Kode Harus Diisi!")
            TextBox1.Focus()
            Exit Sub
        End If
        Try
            carikode()
            If Not dr.HasRows Then
                Dim simpan As String = "INSERT INTO karyawan VALUES ('" & TextBox1.Text & "', '" & TextBox2.Text & "', '" & ComboBox1.Text & "', '" & ComboBox2.Text & "', '" & ComboBox5.Text & "', '" & ComboBox3.Text & "', '" & ComboBox4.Text & "', '" & TextBox4.Text & "')"
                cmd = New OleDbCommand(simpan, conn)
                cmd.ExecuteNonQuery()
            Else
                Dim edit As String = "UPDATE karyawan SET nama_karyawan = '" & TextBox2.Text & "', id_golongan = '" & ComboBox1.Text & "', id_jabatan = '" & ComboBox2.Text & "', pend_akhir = '" & ComboBox5.Text & "', divisi = '" & ComboBox3.Text & "', status_nikah = '" & ComboBox4.Text & "', jumlah_anak =  '" & TextBox4.Text & "' WHERE nik = '" & TextBox1.Text & "'"
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
            Dim hapus As String = "DELETE * from karyawan WHERE nik = '" & TextBox1.Text & "'"
            cmd = New OleDbCommand(hapus, conn)
            cmd.ExecuteNonQuery()
            awal()
        Else
            kosong()
        End If
    End Sub

    Private Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        Call kosong()
    End Sub

    Private Sub Button4_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button4.Click
        Me.Close()
    End Sub

    Private Sub TextBox5_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles TextBox5.TextChanged
        da = New OleDbDataAdapter("select * from karyawan where nama_karyawan like'%" & TextBox5.Text & "%'", conn)
        ds = New DataSet
        da.Fill(ds)
        dgv.DataSource = ds.Tables(0)
        dgv.ReadOnly = True
    End Sub

    Private Sub dgv_CellMouseClick(ByVal sender As Object, ByVal e As DataGridViewCellMouseEventArgs) Handles dgv.CellMouseClick
        On Error Resume Next
        TextBox1.Text = dgv.Rows(e.RowIndex).Cells(0).Value
        carikode()
        If dr.HasRows Then
            ketemu()
        End If
    End Sub

    Private Sub ComboBox4_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ComboBox4.SelectedIndexChanged
        If ComboBox4.Text = "Belum Nikah" Then
            TextBox4.Text = 0
            TextBox4.Enabled = False
        Else
            TextBox4.Text = ""
            TextBox4.Enabled = True
        End If
    End Sub
End Class