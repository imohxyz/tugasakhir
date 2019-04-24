Public Class menuutama

    Private Sub Button11_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button11.Click
        If MessageBox.Show("Tutup Aplikasi ? ", "Peringatan", MessageBoxButtons.YesNo) = Windows.Forms.DialogResult.Yes Then
            End
        End If
    End Sub

    Private Sub menu_Load(ByVal sender As Object, ByVal e As EventArgs) Handles MyBase.Load
        PictureBox1.Load("1.png")
        PictureBox1.SizeMode = PictureBoxSizeMode.StretchImage
    End Sub

    Private Sub Button8_Click(ByVal sender As Object, ByVal e As EventArgs)
        OpenFileDialog1.ShowDialog()
        PictureBox1.Load(OpenFileDialog1.FileName)
        PictureBox1.SizeMode = PictureBoxSizeMode.StretchImage
    End Sub

    Private Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        user.Show()
    End Sub

    Private Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        profil.Show()
    End Sub

    Private Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        jabatan.Show()
    End Sub

    Private Sub Button10_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button10.Click
        If MessageBox.Show("Anda Yakin Ingin Logout ? ", "Peringatan", MessageBoxButtons.YesNo) = Windows.Forms.DialogResult.Yes Then
            Me.Close()
            login.Show()
            login.txt_password.Clear()
            login.txt_user.Clear()
            login.txt_user.Focus()
        End If
    End Sub

    Private Sub Button4_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button4.Click
        gaji.Show()
    End Sub

    Private Sub LogoutToolStripMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs)
        If MessageBox.Show("Anda Yakin Ingin Logout ? ", "Peringatan", MessageBoxButtons.YesNo) = Windows.Forms.DialogResult.Yes Then
            Me.Close()
            login.Show()
            login.txt_password.Clear()
            login.txt_user.Clear()
            login.txt_user.Focus()
        End If
    End Sub

    Private Sub TutupToolStripMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs)
        If MessageBox.Show("Tutup Aplikasi ? ", "Peringatan", MessageBoxButtons.YesNo) = Windows.Forms.DialogResult.Yes Then
            End
        End If
    End Sub

    Private Sub Button7_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button7.Click
        ganti_password.Show()
    End Sub

    Private Sub Button12_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button12.Click
        golongan.Show()
    End Sub

    Private Sub Button8_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button8.Click
        pendapatan.Show()
    End Sub

    Private Sub Button13_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button13.Click
        potongan.Show()
    End Sub

    Private Sub Button14_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button14.Click
        karyawan.Show()
    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        laporan_master.Show()
    End Sub

    Private Sub Button6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button6.Click
        lap_gaji.Show()
    End Sub
End Class