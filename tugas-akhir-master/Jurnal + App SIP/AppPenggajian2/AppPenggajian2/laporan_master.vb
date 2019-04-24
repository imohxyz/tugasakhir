Public Class laporan_master

    Private Sub TextBox1_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles TextBox1.KeyDown
        If e.KeyCode = Keys.Enter Then
            crv.SelectionFormula = "{karyawan.nik}='" & TextBox1.Text & "'"
            crv.ReportSource = "lapkaryawan1.rpt"
            crv.RefreshReport()
        End If
    End Sub

    Private Sub TextBox2_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles TextBox2.KeyDown
        If e.KeyCode = Keys.Enter Then
            crv.SelectionFormula = "{karyawan.nama_karyawan}='" & TextBox2.Text & "'"
            crv.ReportSource = "lapkaryawan1.rpt"
            crv.RefreshReport()
        End If
    End Sub

    Private Sub Button6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button6.Click
        Me.Close()
    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        crv.ReportSource = "lapkaryawan1.rpt"
        crv.RefreshReport()
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        crv.ReportSource = "lapjabatan1.rpt"
        crv.RefreshReport()
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        crv.ReportSource = "lapgolongan1.rpt"
        crv.RefreshReport()
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        crv.ReportSource = "lappendapatan1.rpt"
        crv.RefreshReport()
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        crv.ReportSource = "lappotongan1.rpt"
        crv.RefreshReport()
    End Sub
End Class