Imports System.Data.OleDb
Public Class lap_gaji

    Private Sub lap_gaji_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Call koneksi()
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        da = New OleDbDataAdapter("SELECT gaji.id_gaji,tgl_gaji,karyawan.nik,nama_karyawan,gaji.total_pendapatan,total_potongan,gaji_bersih FROM GAJI,karyawan where gaji.nik=karyawan.nik and month(gaji.tgl_gaji)='" & Month(dtp1.Text) & "' and year(gaji.tgl_gaji)='" & Year(dtp1.Text) & "'", conn)
        ds = New DataSet
        da.Fill(ds)
        dgv.DataSource = ds.Tables(0)
        dgv.ReadOnly = True
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        For baris As Integer = 0 To dgv.RowCount - 2
            cetak.Show()
            cetak.crv.SelectionFormula = "month({gaji.tgl_gaji})=(" & Month(dtp1.Text) & ") and year({gaji.tgl_gaji})=(" & Year(dtp1.Text) & ")"
            cetak.crv.ReportSource = "lapgaji1.rpt"
            cetak.crv.RefreshReport()
        Next
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        da = New OleDbDataAdapter("SELECT gaji.id_gaji,karyawan.nik,nama_karyawan,gajidetail.jumlah_potongan FROM gaji,karyawan,gajidetail WHERE gaji.nik = karyawan.nik and gajidetail.id_potongan ='PTG01'", conn)
        ds = New DataSet
        da.Fill(ds)
        dgv.DataSource = ds.Tables(0)
        dgv.ReadOnly = True
    End Sub

    Private Sub Button6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button6.Click
        cetak.Show()
        cetak.crv.SelectionFormula = "{gajidetail.id_potongan}='PTG02' and month({gaji.tgl_gaji})=(" & Month(dtp3.Text) & ") and year({gaji.tgl_gaji})=(" & Year(dtp3.Text) & ")"
        cetak.crv.ReportSource = "lapbpjs.rpt"
        cetak.crv.RefreshReport()
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        cetak.Show()
        cetak.crv.SelectionFormula = "{gajidetail.id_potongan}='PTG01' and month({gaji.tgl_gaji})=(" & Month(dtp2.Text) & ") and year({gaji.tgl_gaji})=(" & Year(dtp2.Text) & ")"
        cetak.crv.ReportSource = "lappph21.rpt"
        cetak.crv.RefreshReport()
    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        da = New OleDbDataAdapter("SELECT gaji.id_gaji,karyawan.nik,nama_karyawan,gajidetail.jumlah_potongan FROM gaji,karyawan,gajidetail WHERE gaji.nik = karyawan.nik and gajidetail.id_potongan ='PTG01'", conn)
        ds = New DataSet
        da.Fill(ds)
        dgv.DataSource = ds.Tables(0)
        dgv.ReadOnly = True
    End Sub

    Private Sub ListBox1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ListBox1.SelectedIndexChanged
        cetak.Show()
        cetak.crv.SelectionFormula = "{gaji.id_gaji} = '" & Microsoft.VisualBasic.Left(ListBox1.Text, 10) & "'"
        cetak.crv.ReportSource = "slipgaji1.rpt"
        cetak.crv.RefreshReport()
    End Sub

    Private Sub TextBox1_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextBox1.TextChanged
        cmd = New OleDbCommand("select gaji.id_gaji,tgl_gaji,karyawan.nik,nama_karyawan from gaji, karyawan where gaji.nik = karyawan.nik and karyawan.nama_karyawan like'%" & TextBox1.Text & "%'", conn)
        dr = cmd.ExecuteReader
        ListBox1.Items.Clear()
        Do While dr.Read
            ListBox1.Items.Add(dr.Item(0) & Space(1) & "-" & Space(1) & dr.Item(1))
        Loop
    End Sub
End Class