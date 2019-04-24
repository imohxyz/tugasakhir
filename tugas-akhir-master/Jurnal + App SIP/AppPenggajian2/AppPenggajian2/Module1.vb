Imports System.Data.OleDb
Module Module1
    Public ds As DataSet
    Public da As OleDbDataAdapter
    Public dr As OleDbDataReader
    Public cmd As OleDbCommand
    Public conn As OleDbConnection

    Public Sub koneksi()
        conn = New OleDbConnection("provider=microsoft.jet.oledb.4.0;data source=gaji.mdb")
        conn.Open()
    End Sub
End Module
