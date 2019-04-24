Imports System.Data.OleDb
Public Class ganti_password

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        If TextBox1.Text <> menuutama.Panel2.Text Then
            MsgBox("Username Anda Salah!")
            Exit Sub
        End If

        Call koneksi()
        cmd = New OleDbCommand("SELECT * FROM pengguna WHERE nama_user = '" & TextBox1.Text & "' AND pwd_user = '" & TextBox2.Text & "'", conn)
        dr = cmd.ExecuteReader
        dr.Read()
        If Not dr.HasRows Then
            MsgBox("Password Lama Salah")
            TextBox2.Focus()
            Exit Sub
        End If

        If TextBox3.Text = TextBox2.Text Then
            MsgBox("Password Lama dan Password Baru Sama")
            TextBox3.Focus()
            Exit Sub
        End If

        If MessageBox.Show("Yakin Ingin Mengganti Password ? ", "Peringatan", MessageBoxButtons.YesNo) = Windows.Forms.DialogResult.Yes Then
            Dim ganti As String = "UPDATE pengguna SET pwd_user = '" & TextBox3.Text & "' WHERE id_user = '" & menuutama.Panel1.Text & "'"
            cmd = New OleDbCommand(ganti, conn)
            cmd.ExecuteNonQuery()
            MsgBox("Password Berhasil Diganti")
            Me.Close()
        Else
            Me.Close()
        End If

    End Sub

    Private Sub ganti_password_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        TextBox1.Enabled = False
        TextBox1.Text = menuutama.Panel2.Text
        TextBox2.Focus()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Me.Close()
    End Sub
End Class