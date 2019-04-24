Imports System.Data.OleDb
Public Class hisjabatan
    Sub kosong()
        TextBox1.Clear()
        TextBox2.Clear()
        lbl_nama.Text = ""
        lbl_idjab.Text = ""
        lbl_lama.Text = ""
        TextBox3.Clear()
        ComboBox1.Text = ""
        lbl_baru.Text = ""
        TextBox5.Clear()
        TextBox1.Focus()
    End Sub
    Sub baru()
        TextBox2.Clear()
        lbl_nama.Text = ""
        lbl_idjab.Text = ""
        lbl_lama.Text = ""
        TextBox3.Clear()
        ComboBox1.Text = ""
        lbl_baru.Text = ""
        TextBox5.Clear()
        TextBox2.Focus()
    End Sub
    Sub ketemu()
        On Error Resume Next
        lbl_nama.Text = dr.Item("nama_karyawan")
        lbl_idjab.Text = dr.Item("id_jabatan")
        cmd = New OleDbCommand("SELECT * FROM jabatan where id_jabatan='" & lbl_idjab.Text & "'", conn)
        dr = cmd.ExecuteReader
        dr.Read()
        If dr.HasRows Then
            lbl_lama.Text = dr.Item("nama_jabatan")
        End If
        dtp.Focus()
    End Sub
    Sub satuanJabatan()
        cmd = New OleDbCommand("select distinct id_jabatan from jabatan", conn)
        dr = cmd.ExecuteReader
        Do While dr.Read
            ComboBox1.Items.Add(dr.Item("id_jabatan"))
        Loop
    End Sub
    Sub tampil()
        da = New OleDbDataAdapter("select * from hisjabatan", conn)
        ds = New DataSet
        da.Fill(ds)
        dgv.DataSource = ds.Tables(0)
        dgv.ReadOnly = True
    End Sub
    Sub carikode()
        cmd = New OleDbCommand("SELECT * FROM karyawan where nik='" & TextBox2.Text & "'", conn)
        dr = cmd.ExecuteReader
        dr.Read()
    End Sub
    Sub otomatis()
        cmd = New OleDbCommand("select id_hisjabatan from hisjabatan order by id_hisjabatan desc", conn)
        dr = cmd.ExecuteReader
        dr.Read()
        If Not dr.HasRows Then
            TextBox1.Text = "00001"
        Else
            TextBox1.Text = Format(Microsoft.VisualBasic.Right(dr.Item("id_hisjabatan"), 5) + 1, "00000")
        End If
    End Sub
    Sub awal()
        Call kosong()
        Call tampil()
        Call satuanJabatan()
        Call otomatis()
    End Sub
    Private Sub barang_Load(ByVal sender As Object, ByVal e As EventArgs) Handles MyBase.Load
        Call koneksi()
        Call awal()
        TextBox2.Focus()
        TextBox1.Enabled = False
    End Sub

    Private Sub TextBox2_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs) Handles TextBox2.KeyDown
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
        If TextBox1.Text = "" Or TextBox3.Text = "" Or TextBox2.Text = "" Or ComboBox1.Text = "" Then
            MsgBox("Kode Harus Diisi!")
            TextBox1.Focus()
            Exit Sub
        End If
        Try
            carikode()
            If Not dr.HasRows Then
                Dim simpan As String = "INSERT INTO hisjabatan VALUES ('" & TextBox1.Text & "', '" & TextBox2.Text & "', '" & lbl_idjab.Text & "', '" & ComboBox1.Text & "', '" & dtp.Text & "', '" & TextBox3.Text & "')"
                cmd = New OleDbCommand(simpan, conn)
                cmd.ExecuteNonQuery()

                Dim update As String = "UPDATE karyawan SET id_jabatan = '" & ComboBox1.Text & "' WHERE nik = '" & TextBox2.Text & "'"
                cmd = New OleDbCommand(update, conn)
                cmd.ExecuteNonQuery()
            Else
                Dim edit As String = "UPDATE hisjabatan SET nik = '" & TextBox2.Text & "', id_jabatan = '" & lbl_idjab.Text & "', id_jabatanbaru =  '" & ComboBox1.Text & "', tgl_naik =  '" & dtp.Text & "', keterangan =  '" & TextBox3.Text & "' WHERE id_hisjabatan = '" & TextBox1.Text & "'"
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
            Dim hapus As String = "DELETE * from hisjabatan WHERE id_hisjabatan = '" & TextBox1.Text & "'"
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
        da = New OleDbDataAdapter("select * from hisjabatan where nik like'%" & TextBox5.Text & "%'", conn)
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

    Private Sub ComboBox1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ComboBox1.SelectedIndexChanged
        cmd = New OleDbCommand("SELECT * FROM jabatan where id_jabatan='" & ComboBox1.Text & "'", conn)
        dr = cmd.ExecuteReader
        dr.Read()
        If dr.HasRows Then
            lbl_baru.Text = dr.Item("nama_jabatan")
        End If
    End Sub
End Class