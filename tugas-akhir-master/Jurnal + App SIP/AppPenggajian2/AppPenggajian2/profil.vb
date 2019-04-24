Imports System.Data.OleDb
Public Class profil

    Sub tampil()
        cmd = New OleDbCommand("SELECT * FROM profil", conn)
        dr = cmd.ExecuteReader
        dr.Read()
        On Error Resume Next
        TextBox1.Text = dr.Item(0)
        TextBox2.Text = dr.Item(1)
        TextBox3.Text = dr.Item(2)
        TextBox4.Text = dr.Item(3)
        TextBox5.Text = dr.Item(4)
    End Sub

    Private Sub profil_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Call koneksi()
        Call tampil()
        TextBox1.Enabled = False
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Me.Close()
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If TextBox2.Text = "" Or TextBox3.Text = "" Or TextBox4.Text = "" Or TextBox5.Text = "" Then
            MsgBox("Semua Field Harus Diisi!")
            TextBox1.Focus()
            Exit Sub
        End If

        Dim edit As String = "UPDATE profil SET nama = '" & TextBox2.Text & "', alamat =  '" & TextBox3.Text & "', telp =  '" & TextBox4.Text & "', email =  '" & TextBox5.Text & "' WHERE id_profil = '" & TextBox1.Text & "'"
        cmd = New OleDbCommand(edit, conn)
        cmd.ExecuteNonQuery()
        MsgBox("Data Berhasil Disimpan!")
    End Sub
End Class