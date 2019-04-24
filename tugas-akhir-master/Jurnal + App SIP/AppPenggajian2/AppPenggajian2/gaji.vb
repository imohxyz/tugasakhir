Imports System.Data.OleDb
Public Class gaji
    Dim sesion As String
    Sub kosong()
        txt_nik.Clear()
        txt_namakar.Text = ""
        txt_status.Text = ""
        txt_anak.Text = ""
        txt_gol.Text = ""
        txt_jab.Text = ""
        txt_divisi.Text = ""
        txt_ket.Text = "-"
        txt_totpen.Text = 0
        txt_totpot.Text = 0
        TextBox1.Text = 0
        txt_idgol.Text = ""
        txt_idjab.Text = ""
        txt_pend.Text = ""
        dgv1.Columns(0).ReadOnly = True
        dgv1.Columns(1).ReadOnly = True
        For baris1 As Integer = 0 To dgv1.RowCount - 1
            dgv1.Rows(baris1).Cells(2).Value = 0
            dgv1.Columns(2).AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill
        Next

        dgv2.Columns(0).ReadOnly = True
        dgv2.Columns(1).ReadOnly = True
        For baris2 As Integer = 0 To dgv2.RowCount - 1
            dgv2.Rows(baris2).Cells(2).Value = 0
            dgv2.Columns(2).AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill
        Next
    End Sub

    Sub otomatis()
        cmd = New OleDbCommand("select id_gaji from gaji order by id_gaji desc", conn)
        dr = cmd.ExecuteReader
        dr.Read()
        If Not dr.HasRows Then
            txt_idgaji.Text = "0000000001"
        Else
            txt_idgaji.Text = Format(Microsoft.VisualBasic.Right(dr.Item("id_gaji"), 10) + 1, "0000000000")
        End If
    End Sub

    Sub tampilPendapatan()
        dgv1.Columns.Clear()
        da = New OleDbDataAdapter("select id_pendapatan,nama_pendapatan from pendapatan ORDER BY id_pendapatan ASC", conn)
        ds = New DataSet
        da.Fill(ds)
        dgv1.DataSource = ds.Tables(0)
        dgv1.Columns.Add("Jumlah", "Jumlah Pendapatan")
        dgv1.Columns(2).DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight
        dgv1.Columns(0).HeaderText = "ID Pendapatan"
        dgv1.Columns(1).HeaderText = "Nama Pendapatan"
    End Sub

    Sub tampilPotongan()
        dgv2.Columns.Clear()
        da = New OleDbDataAdapter("select id_potongan,nama_potongan from potongan ORDER BY id_potongan ASC", conn)
        ds = New DataSet
        da.Fill(ds)
        dgv2.DataSource = ds.Tables(0)
        dgv2.Columns.Add("Jumlah", "Jumlah Potongan")
        dgv2.Columns(2).DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight
        dgv2.Columns(0).HeaderText = "ID Potongan"
        dgv2.Columns(1).HeaderText = "Nama Potongan"
    End Sub
    Private Sub gaji_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Call koneksi()
        Call otomatis()
        txt_tglentri.Text = Today
        txt_nik.Focus()
        txt_totpen.Enabled = False
        txt_totpot.Enabled = False
        TextBox1.Enabled = False
        Call tampilPendapatan()
        Call tampilPotongan()
        Call kosong()
    End Sub

    Sub cariTotalPendapatan()
        Try
            Dim hitung As Integer = 0
            For baris As Integer = 0 To dgv1.RowCount - 1
                hitung = hitung + dgv1.Rows(baris).Cells(2).Value
                txt_totpen.Text = FormatNumber(hitung, 0)
            Next
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Sub cariTotalPotongan()
        Try
            Dim hitung As Integer = 0
            For baris As Integer = 0 To dgv2.RowCount - 1
                hitung = hitung + dgv2.Rows(baris).Cells(2).Value
                txt_totpot.Text = FormatNumber(hitung, 0)
            Next
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub txt_nik_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txt_nik.KeyPress
        If e.KeyChar = Chr(13) Then
            cmd = New OleDbCommand("select nik from gaji where nik='" & txt_nik.Text & "' and month(tgl_gaji)='" & Month(txt_tglentri.Text) & "' and year(tgl_gaji)='" & Year(txt_tglentri.Text) & "'", conn)
            dr = cmd.ExecuteReader
            dr.Read()
            If dr.HasRows Then
                Call kosong()
                MsgBox("Data Gaji Karyawan Tersebut Bulan dan Tahun Ini Sudah Dientri")
                Exit Sub
            End If
        End If

        If e.KeyChar = Chr(13) Then
            cmd = New OleDbCommand("select * from karyawan where nik='" & txt_nik.Text & "'", conn)
            dr = cmd.ExecuteReader
            dr.Read()
            If dr.HasRows Then
                txt_namakar.Text = dr.Item("nama_karyawan")
                txt_status.Text = dr.Item("status_nikah")
                txt_pend.Text = dr.Item("pend_akhir")
                txt_anak.Text = dr.Item("jumlah_anak")
                txt_idjab.Text = dr.Item("id_jabatan")
                txt_idgol.Text = dr.Item("id_golongan")
                txt_divisi.Text = dr.Item("divisi")

                '========================================GOLONGAN
                cmd = New OleDbCommand("select * from golongan where id_golongan='" & txt_idgol.Text & "'", conn)
                dr = cmd.ExecuteReader
                dr.Read()
                If dr.HasRows Then
                    txt_gol.Text = dr.Item("nama_golongan")

                    If txt_status.Text = "Belum Nikah" Then
                        dgv1.Rows(2).Cells(2).Value = 0
                    Else
                        dgv1.Rows(2).Cells(2).Value = dr.Item("tunjangan_keluarga")
                    End If

                    If txt_anak.Text > 3 Then
                        dgv1.Rows(3).Cells(2).Value = 3 * dr.Item("tunjangan_anak")
                    Else
                        dgv1.Rows(3).Cells(2).Value = txt_anak.Text * dr.Item("tunjangan_anak")
                    End If

                    dgv1.Rows(0).ReadOnly = True
                    dgv1.Rows(1).ReadOnly = True
                    dgv1.Rows(2).ReadOnly = True
                    dgv1.Rows(3).ReadOnly = True
                    dgv1.Rows(6).ReadOnly = True
                    dgv1.Rows(7).ReadOnly = True
                End If
                '=======================================jabatan
                cmd = New OleDbCommand("select * from jabatan where id_jabatan='" & txt_idjab.Text & "'", conn)
                dr = cmd.ExecuteReader
                dr.Read()
                If dr.HasRows Then
                    dgv1.Rows(1).Cells(2).Value = dr.Item("tunjangan_jabatan")
                    dgv1.Rows(0).Cells(2).Value = dr.Item("gaji_pokok")
                    txt_jab.Text = dr.Item("nama_jabatan")

                    If txt_pend.Text = "SD" Or txt_pend.Text = "SMP" Or txt_pend.Text = "SMA" Then
                        dgv2.Rows(4).Cells(2).Value = 0.1 * dr.Item("gaji_pokok")
                    ElseIf txt_pend.Text = "D1" Or txt_pend.Text = "D2" Or txt_pend.Text = "D3" Then
                        dgv2.Rows(4).Cells(2).Value = 0.05 * dr.Item("gaji_pokok")
                    Else
                        dgv2.Rows(4).Cells(2).Value = 0
                    End If
                End If
                '=======bpjs 1% dari total pendapatan = 4% DIBAYAR OLEH PERUSAHAAN

                Call cariTotalPendapatan()

                dgv2.Rows(1).Cells(2).Value = Val(Microsoft.VisualBasic.Str(txt_totpen.Text) * 1 / 100)
                Call cariTotalPotongan()
            Else

                Call kosong()
                MsgBox("NIK Tidak Terdaftar")
            End If
        End If
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Call kosong()
    End Sub

    Private Sub dgv1_CellEndEdit(ByVal sender As Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv1.CellEndEdit
        If e.ColumnIndex = 2 Then
            Call cariTotalPendapatan()
        End If
    End Sub

    Private Sub dgv2_CellEndEdit(ByVal sender As Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv2.CellEndEdit
        If e.ColumnIndex = 2 Then
            Call cariTotalPotongan()
        End If
    End Sub

    Private Sub txt_totpen_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txt_totpen.TextChanged
        On Error Resume Next
        TextBox1.Text = Val(Microsoft.VisualBasic.Str(txt_totpen.Text)) - Val(Microsoft.VisualBasic.Str(txt_totpot.Text))
        dgv2.Rows(0).Cells(2).Value = Val(Microsoft.VisualBasic.Str(txt_totpen.Text)) * 10 / 100
        TextBox1.Text = FormatNumber(TextBox1.Text, 0)
    End Sub

    Private Sub txt_totpot_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txt_totpot.TextChanged
        On Error Resume Next
        TextBox1.Text = Val(Microsoft.VisualBasic.Str(txt_totpen.Text)) - Val(Microsoft.VisualBasic.Str(txt_totpot.Text))
        TextBox1.Text = FormatNumber(TextBox1.Text, 0)
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Me.Close()
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        On Error Resume Next
        If txt_nik.Text = "" Then
            MsgBox("Harap Masukkan NIK Karyawan!")
            Exit Sub
        End If
        sesion = menuutama.Panel1.Text
        Dim simpan As String = "INSERT INTO gaji VALUES('" & txt_idgaji.Text & "', '" & txt_tglentri.Text & "', '" & txt_nik.Text & "', '" & txt_totpen.Text & "', '" & txt_totpot.Text & "', '" & TextBox1.Text & "', '" & txt_ket.Text & "','" & sesion & "') "
        cmd = New OleDbCommand(simpan, conn)
        cmd.ExecuteNonQuery()

        For baris As Integer = 0 To dgv1.RowCount And dgv2.RowCount
            Dim simpandetail As String = "INSERT INTO gajidetail VALUES('" & txt_idgaji.Text & "', '" & dgv1.Rows(baris).Cells(0).Value & "', '" & dgv1.Rows(baris).Cells(2).Value & "', '" & dgv2.Rows(baris).Cells(0).Value & "', '" & dgv2.Rows(baris).Cells(2).Value & "') "
            cmd = New OleDbCommand(simpandetail, conn)
            cmd.ExecuteNonQuery()
        Next

        If MessageBox.Show("Cetak Slip Gaji ? ", "Pertayaan", MessageBoxButtons.YesNo) = Windows.Forms.DialogResult.Yes Then
            cetak.Show()
            cetak.crv.SelectionFormula = "{gaji.id_gaji} = '" & txt_idgaji.Text & "'"
            cetak.crv.ReportSource = "slipgaji1.rpt"
            cetak.crv.RefreshReport()
        End If
        Call kosong()
        Call otomatis()
    End Sub
End Class