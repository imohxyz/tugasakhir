Imports System.Data.OleDb
Public Class login
    Dim gagal As Integer = 0

    Private Sub OK_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OK.Click
        Call koneksi()
        cmd = New OleDbCommand("SELECT * FROM pengguna where nama_user = '" & txt_user.Text & "' AND pwd_user = '" & txt_password.Text & "'", conn)
        dr = cmd.ExecuteReader
        dr.Read()
        If Not dr.HasRows Then
            MsgBox("Login Gagal!")
            gagal = gagal + 1
            If gagal > 2 Then
                End
            End If
            Exit Sub
        Else
            If txt_password.Text <> dr.Item("pwd_user") Then
                MsgBox("Password Salah!")
                txt_password.Focus()
                Exit Sub
            End If
            Me.Visible = False
            menuutama.Show()

            menuutama.Panel1.Text = dr.Item("id_user")
            menuutama.Panel2.Text = dr.Item("nama_user")
            menuutama.Panel3.Text = dr.Item("status_user")

            If menuutama.Panel3.Text <> "admin" Then
                menuutama.GroupBox2.Visible = False
            End If
        End If
    End Sub

    Private Sub Cancel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Cancel.Click
        If MessageBox.Show("Keluar Dari Aplikasi ? ", "Peringatan", MessageBoxButtons.YesNo) = Windows.Forms.DialogResult.Yes Then
            End
        End If
    End Sub

    Private Sub login_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        LogoPictureBox.SizeMode = PictureBoxSizeMode.StretchImage
    End Sub
End Class
