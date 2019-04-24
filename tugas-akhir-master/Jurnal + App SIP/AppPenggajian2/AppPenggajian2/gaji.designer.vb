<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class gaji
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.txt_nik = New System.Windows.Forms.TextBox
        Me.txt_jab = New System.Windows.Forms.Label
        Me.txt_idjab = New System.Windows.Forms.Label
        Me.Label17 = New System.Windows.Forms.Label
        Me.txt_gol = New System.Windows.Forms.Label
        Me.txt_idgol = New System.Windows.Forms.Label
        Me.Label14 = New System.Windows.Forms.Label
        Me.txt_divisi = New System.Windows.Forms.Label
        Me.Label12 = New System.Windows.Forms.Label
        Me.txt_anak = New System.Windows.Forms.Label
        Me.Label10 = New System.Windows.Forms.Label
        Me.txt_status = New System.Windows.Forms.Label
        Me.Label8 = New System.Windows.Forms.Label
        Me.txt_namakar = New System.Windows.Forms.Label
        Me.Label6 = New System.Windows.Forms.Label
        Me.Label5 = New System.Windows.Forms.Label
        Me.txt_tglentri = New System.Windows.Forms.Label
        Me.Label3 = New System.Windows.Forms.Label
        Me.txt_idgaji = New System.Windows.Forms.Label
        Me.Label1 = New System.Windows.Forms.Label
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.TextBox1 = New System.Windows.Forms.TextBox
        Me.GroupBox3 = New System.Windows.Forms.GroupBox
        Me.GroupBox4 = New System.Windows.Forms.GroupBox
        Me.txt_ket = New System.Windows.Forms.TextBox
        Me.Button3 = New System.Windows.Forms.Button
        Me.Button2 = New System.Windows.Forms.Button
        Me.Button1 = New System.Windows.Forms.Button
        Me.GroupBox5 = New System.Windows.Forms.GroupBox
        Me.GroupBox7 = New System.Windows.Forms.GroupBox
        Me.txt_totpot = New System.Windows.Forms.TextBox
        Me.GroupBox6 = New System.Windows.Forms.GroupBox
        Me.txt_totpen = New System.Windows.Forms.TextBox
        Me.GroupBox8 = New System.Windows.Forms.GroupBox
        Me.dgv2 = New System.Windows.Forms.DataGridView
        Me.id_potongan = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.nama_potongan = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.jumlah_potongan = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.dgv1 = New System.Windows.Forms.DataGridView
        Me.id_pendapatan = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.nama_pendapatan = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.jumlah_pendapatan = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.txt_pend = New System.Windows.Forms.Label
        Me.Label4 = New System.Windows.Forms.Label
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        Me.GroupBox4.SuspendLayout()
        Me.GroupBox5.SuspendLayout()
        Me.GroupBox7.SuspendLayout()
        Me.GroupBox6.SuspendLayout()
        Me.GroupBox8.SuspendLayout()
        CType(Me.dgv2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.dgv1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.txt_pend)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.txt_nik)
        Me.GroupBox1.Controls.Add(Me.txt_jab)
        Me.GroupBox1.Controls.Add(Me.Label17)
        Me.GroupBox1.Controls.Add(Me.txt_gol)
        Me.GroupBox1.Controls.Add(Me.Label14)
        Me.GroupBox1.Controls.Add(Me.txt_divisi)
        Me.GroupBox1.Controls.Add(Me.Label12)
        Me.GroupBox1.Controls.Add(Me.txt_anak)
        Me.GroupBox1.Controls.Add(Me.Label10)
        Me.GroupBox1.Controls.Add(Me.txt_status)
        Me.GroupBox1.Controls.Add(Me.Label8)
        Me.GroupBox1.Controls.Add(Me.txt_namakar)
        Me.GroupBox1.Controls.Add(Me.Label6)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Controls.Add(Me.txt_tglentri)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.txt_idgaji)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.GroupBox2)
        Me.GroupBox1.Dock = System.Windows.Forms.DockStyle.Top
        Me.GroupBox1.Location = New System.Drawing.Point(0, 0)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(868, 115)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        '
        'txt_nik
        '
        Me.txt_nik.Location = New System.Drawing.Point(106, 64)
        Me.txt_nik.Name = "txt_nik"
        Me.txt_nik.Size = New System.Drawing.Size(100, 20)
        Me.txt_nik.TabIndex = 20
        '
        'txt_jab
        '
        Me.txt_jab.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.txt_jab.Location = New System.Drawing.Point(530, 39)
        Me.txt_jab.Name = "txt_jab"
        Me.txt_jab.Size = New System.Drawing.Size(100, 23)
        Me.txt_jab.TabIndex = 19
        '
        'txt_idjab
        '
        Me.txt_idjab.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.txt_idjab.Location = New System.Drawing.Point(109, 16)
        Me.txt_idjab.Name = "txt_idjab"
        Me.txt_idjab.Size = New System.Drawing.Size(100, 23)
        Me.txt_idjab.TabIndex = 18
        Me.txt_idjab.Visible = False
        '
        'Label17
        '
        Me.Label17.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.Label17.Location = New System.Drawing.Point(424, 39)
        Me.Label17.Name = "Label17"
        Me.Label17.Size = New System.Drawing.Size(100, 23)
        Me.Label17.TabIndex = 17
        Me.Label17.Text = "Jabatan"
        '
        'txt_gol
        '
        Me.txt_gol.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.txt_gol.Location = New System.Drawing.Point(530, 16)
        Me.txt_gol.Name = "txt_gol"
        Me.txt_gol.Size = New System.Drawing.Size(100, 23)
        Me.txt_gol.TabIndex = 16
        '
        'txt_idgol
        '
        Me.txt_idgol.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.txt_idgol.Location = New System.Drawing.Point(6, 16)
        Me.txt_idgol.Name = "txt_idgol"
        Me.txt_idgol.Size = New System.Drawing.Size(100, 23)
        Me.txt_idgol.TabIndex = 15
        Me.txt_idgol.Visible = False
        '
        'Label14
        '
        Me.Label14.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.Label14.Location = New System.Drawing.Point(424, 16)
        Me.Label14.Name = "Label14"
        Me.Label14.Size = New System.Drawing.Size(100, 23)
        Me.Label14.TabIndex = 14
        Me.Label14.Text = "Golongan"
        '
        'txt_divisi
        '
        Me.txt_divisi.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.txt_divisi.Location = New System.Drawing.Point(318, 62)
        Me.txt_divisi.Name = "txt_divisi"
        Me.txt_divisi.Size = New System.Drawing.Size(100, 23)
        Me.txt_divisi.TabIndex = 13
        '
        'Label12
        '
        Me.Label12.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.Label12.Location = New System.Drawing.Point(212, 62)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(100, 23)
        Me.Label12.TabIndex = 12
        Me.Label12.Text = "Divisi"
        '
        'txt_anak
        '
        Me.txt_anak.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.txt_anak.Location = New System.Drawing.Point(318, 39)
        Me.txt_anak.Name = "txt_anak"
        Me.txt_anak.Size = New System.Drawing.Size(100, 23)
        Me.txt_anak.TabIndex = 11
        '
        'Label10
        '
        Me.Label10.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.Label10.Location = New System.Drawing.Point(212, 39)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(100, 23)
        Me.Label10.TabIndex = 10
        Me.Label10.Text = "Jumlah Anak"
        '
        'txt_status
        '
        Me.txt_status.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.txt_status.Location = New System.Drawing.Point(318, 16)
        Me.txt_status.Name = "txt_status"
        Me.txt_status.Size = New System.Drawing.Size(100, 23)
        Me.txt_status.TabIndex = 9
        '
        'Label8
        '
        Me.Label8.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.Label8.Location = New System.Drawing.Point(212, 16)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(100, 23)
        Me.Label8.TabIndex = 8
        Me.Label8.Text = "Status Nikah"
        '
        'txt_namakar
        '
        Me.txt_namakar.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.txt_namakar.Location = New System.Drawing.Point(106, 85)
        Me.txt_namakar.Name = "txt_namakar"
        Me.txt_namakar.Size = New System.Drawing.Size(312, 23)
        Me.txt_namakar.TabIndex = 7
        '
        'Label6
        '
        Me.Label6.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.Label6.Location = New System.Drawing.Point(3, 85)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(100, 23)
        Me.Label6.TabIndex = 6
        Me.Label6.Text = "Nama Karyawan"
        '
        'Label5
        '
        Me.Label5.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.Label5.Location = New System.Drawing.Point(3, 62)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(100, 23)
        Me.Label5.TabIndex = 5
        Me.Label5.Text = "NIK"
        '
        'txt_tglentri
        '
        Me.txt_tglentri.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.txt_tglentri.Location = New System.Drawing.Point(106, 39)
        Me.txt_tglentri.Name = "txt_tglentri"
        Me.txt_tglentri.Size = New System.Drawing.Size(100, 23)
        Me.txt_tglentri.TabIndex = 4
        '
        'Label3
        '
        Me.Label3.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.Label3.Location = New System.Drawing.Point(3, 39)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(100, 23)
        Me.Label3.TabIndex = 3
        Me.Label3.Text = "Tanggal Entri"
        '
        'txt_idgaji
        '
        Me.txt_idgaji.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.txt_idgaji.Location = New System.Drawing.Point(106, 16)
        Me.txt_idgaji.Name = "txt_idgaji"
        Me.txt_idgaji.Size = New System.Drawing.Size(100, 23)
        Me.txt_idgaji.TabIndex = 2
        '
        'Label1
        '
        Me.Label1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.Label1.Location = New System.Drawing.Point(3, 16)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(100, 23)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "ID Gaji"
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.TextBox1)
        Me.GroupBox2.Dock = System.Windows.Forms.DockStyle.Right
        Me.GroupBox2.Location = New System.Drawing.Point(636, 16)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(229, 96)
        Me.GroupBox2.TabIndex = 0
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Gaji Bersih"
        '
        'TextBox1
        '
        Me.TextBox1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.TextBox1.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TextBox1.Location = New System.Drawing.Point(3, 16)
        Me.TextBox1.Multiline = True
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(223, 77)
        Me.TextBox1.TabIndex = 0
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.GroupBox4)
        Me.GroupBox3.Controls.Add(Me.Button3)
        Me.GroupBox3.Controls.Add(Me.Button2)
        Me.GroupBox3.Controls.Add(Me.Button1)
        Me.GroupBox3.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.GroupBox3.Location = New System.Drawing.Point(0, 505)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(868, 65)
        Me.GroupBox3.TabIndex = 1
        Me.GroupBox3.TabStop = False
        '
        'GroupBox4
        '
        Me.GroupBox4.Controls.Add(Me.txt_ket)
        Me.GroupBox4.Dock = System.Windows.Forms.DockStyle.Fill
        Me.GroupBox4.Location = New System.Drawing.Point(228, 16)
        Me.GroupBox4.Name = "GroupBox4"
        Me.GroupBox4.Size = New System.Drawing.Size(637, 46)
        Me.GroupBox4.TabIndex = 3
        Me.GroupBox4.TabStop = False
        Me.GroupBox4.Text = "Keterangan"
        '
        'txt_ket
        '
        Me.txt_ket.Dock = System.Windows.Forms.DockStyle.Fill
        Me.txt_ket.Location = New System.Drawing.Point(3, 16)
        Me.txt_ket.Multiline = True
        Me.txt_ket.Name = "txt_ket"
        Me.txt_ket.Size = New System.Drawing.Size(631, 27)
        Me.txt_ket.TabIndex = 0
        '
        'Button3
        '
        Me.Button3.Dock = System.Windows.Forms.DockStyle.Left
        Me.Button3.Location = New System.Drawing.Point(153, 16)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(75, 46)
        Me.Button3.TabIndex = 2
        Me.Button3.Text = "Tutup"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'Button2
        '
        Me.Button2.Dock = System.Windows.Forms.DockStyle.Left
        Me.Button2.Location = New System.Drawing.Point(78, 16)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 46)
        Me.Button2.TabIndex = 1
        Me.Button2.Text = "Batal"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Dock = System.Windows.Forms.DockStyle.Left
        Me.Button1.Location = New System.Drawing.Point(3, 16)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(75, 46)
        Me.Button1.TabIndex = 0
        Me.Button1.Text = "Simpan"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'GroupBox5
        '
        Me.GroupBox5.Controls.Add(Me.GroupBox7)
        Me.GroupBox5.Controls.Add(Me.GroupBox6)
        Me.GroupBox5.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.GroupBox5.Location = New System.Drawing.Point(0, 442)
        Me.GroupBox5.Name = "GroupBox5"
        Me.GroupBox5.Size = New System.Drawing.Size(868, 63)
        Me.GroupBox5.TabIndex = 2
        Me.GroupBox5.TabStop = False
        '
        'GroupBox7
        '
        Me.GroupBox7.Controls.Add(Me.txt_totpot)
        Me.GroupBox7.Controls.Add(Me.txt_idgol)
        Me.GroupBox7.Controls.Add(Me.txt_idjab)
        Me.GroupBox7.Dock = System.Windows.Forms.DockStyle.Right
        Me.GroupBox7.Location = New System.Drawing.Point(424, 16)
        Me.GroupBox7.Name = "GroupBox7"
        Me.GroupBox7.Size = New System.Drawing.Size(441, 44)
        Me.GroupBox7.TabIndex = 1
        Me.GroupBox7.TabStop = False
        Me.GroupBox7.Text = "Total Potongan"
        '
        'txt_totpot
        '
        Me.txt_totpot.Dock = System.Windows.Forms.DockStyle.Right
        Me.txt_totpot.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txt_totpot.Location = New System.Drawing.Point(215, 16)
        Me.txt_totpot.Multiline = True
        Me.txt_totpot.Name = "txt_totpot"
        Me.txt_totpot.Size = New System.Drawing.Size(223, 25)
        Me.txt_totpot.TabIndex = 0
        '
        'GroupBox6
        '
        Me.GroupBox6.Controls.Add(Me.txt_totpen)
        Me.GroupBox6.Dock = System.Windows.Forms.DockStyle.Left
        Me.GroupBox6.Location = New System.Drawing.Point(3, 16)
        Me.GroupBox6.Name = "GroupBox6"
        Me.GroupBox6.Size = New System.Drawing.Size(415, 44)
        Me.GroupBox6.TabIndex = 0
        Me.GroupBox6.TabStop = False
        Me.GroupBox6.Text = "Total Pendapatan"
        '
        'txt_totpen
        '
        Me.txt_totpen.Dock = System.Windows.Forms.DockStyle.Right
        Me.txt_totpen.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txt_totpen.Location = New System.Drawing.Point(209, 16)
        Me.txt_totpen.Multiline = True
        Me.txt_totpen.Name = "txt_totpen"
        Me.txt_totpen.Size = New System.Drawing.Size(203, 25)
        Me.txt_totpen.TabIndex = 0
        '
        'GroupBox8
        '
        Me.GroupBox8.Controls.Add(Me.dgv2)
        Me.GroupBox8.Controls.Add(Me.dgv1)
        Me.GroupBox8.Dock = System.Windows.Forms.DockStyle.Fill
        Me.GroupBox8.Location = New System.Drawing.Point(0, 115)
        Me.GroupBox8.Name = "GroupBox8"
        Me.GroupBox8.Size = New System.Drawing.Size(868, 327)
        Me.GroupBox8.TabIndex = 3
        Me.GroupBox8.TabStop = False
        '
        'dgv2
        '
        Me.dgv2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgv2.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.id_potongan, Me.nama_potongan, Me.jumlah_potongan})
        Me.dgv2.Dock = System.Windows.Forms.DockStyle.Right
        Me.dgv2.Location = New System.Drawing.Point(424, 16)
        Me.dgv2.Name = "dgv2"
        Me.dgv2.Size = New System.Drawing.Size(441, 308)
        Me.dgv2.TabIndex = 1
        '
        'id_potongan
        '
        Me.id_potongan.HeaderText = "ID Potongan"
        Me.id_potongan.Name = "id_potongan"
        Me.id_potongan.Width = 95
        '
        'nama_potongan
        '
        Me.nama_potongan.HeaderText = "Nama Potongan"
        Me.nama_potongan.Name = "nama_potongan"
        Me.nama_potongan.Width = 200
        '
        'jumlah_potongan
        '
        Me.jumlah_potongan.HeaderText = "Jumlah Potongan"
        Me.jumlah_potongan.Name = "jumlah_potongan"
        '
        'dgv1
        '
        Me.dgv1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgv1.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.id_pendapatan, Me.nama_pendapatan, Me.jumlah_pendapatan})
        Me.dgv1.Dock = System.Windows.Forms.DockStyle.Left
        Me.dgv1.Location = New System.Drawing.Point(3, 16)
        Me.dgv1.Name = "dgv1"
        Me.dgv1.Size = New System.Drawing.Size(415, 308)
        Me.dgv1.TabIndex = 0
        '
        'id_pendapatan
        '
        Me.id_pendapatan.HeaderText = "ID Pendapatan"
        Me.id_pendapatan.Name = "id_pendapatan"
        Me.id_pendapatan.Width = 70
        '
        'nama_pendapatan
        '
        Me.nama_pendapatan.HeaderText = "Nama Pendapatan"
        Me.nama_pendapatan.Name = "nama_pendapatan"
        Me.nama_pendapatan.Width = 200
        '
        'jumlah_pendapatan
        '
        Me.jumlah_pendapatan.HeaderText = "Jumlah Pendapatan"
        Me.jumlah_pendapatan.Name = "jumlah_pendapatan"
        '
        'txt_pend
        '
        Me.txt_pend.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.txt_pend.Location = New System.Drawing.Point(530, 62)
        Me.txt_pend.Name = "txt_pend"
        Me.txt_pend.Size = New System.Drawing.Size(100, 23)
        Me.txt_pend.TabIndex = 22
        '
        'Label4
        '
        Me.Label4.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.Label4.Location = New System.Drawing.Point(424, 62)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(100, 23)
        Me.Label4.TabIndex = 21
        Me.Label4.Text = "Pend Terakhir"
        '
        'gaji
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(128, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(868, 570)
        Me.Controls.Add(Me.GroupBox8)
        Me.Controls.Add(Me.GroupBox5)
        Me.Controls.Add(Me.GroupBox3)
        Me.Controls.Add(Me.GroupBox1)
        Me.Name = "gaji"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "PENGGAJIAN"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox4.ResumeLayout(False)
        Me.GroupBox4.PerformLayout()
        Me.GroupBox5.ResumeLayout(False)
        Me.GroupBox7.ResumeLayout(False)
        Me.GroupBox7.PerformLayout()
        Me.GroupBox6.ResumeLayout(False)
        Me.GroupBox6.PerformLayout()
        Me.GroupBox8.ResumeLayout(False)
        CType(Me.dgv2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.dgv1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents txt_jab As System.Windows.Forms.Label
    Friend WithEvents txt_idjab As System.Windows.Forms.Label
    Friend WithEvents Label17 As System.Windows.Forms.Label
    Friend WithEvents txt_gol As System.Windows.Forms.Label
    Friend WithEvents txt_idgol As System.Windows.Forms.Label
    Friend WithEvents Label14 As System.Windows.Forms.Label
    Friend WithEvents txt_divisi As System.Windows.Forms.Label
    Friend WithEvents Label12 As System.Windows.Forms.Label
    Friend WithEvents txt_anak As System.Windows.Forms.Label
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents txt_status As System.Windows.Forms.Label
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents txt_namakar As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents txt_tglentri As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents txt_idgaji As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents txt_nik As System.Windows.Forms.TextBox
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents GroupBox4 As System.Windows.Forms.GroupBox
    Friend WithEvents txt_ket As System.Windows.Forms.TextBox
    Friend WithEvents GroupBox5 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox7 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox6 As System.Windows.Forms.GroupBox
    Friend WithEvents txt_totpot As System.Windows.Forms.TextBox
    Friend WithEvents txt_totpen As System.Windows.Forms.TextBox
    Friend WithEvents GroupBox8 As System.Windows.Forms.GroupBox
    Friend WithEvents dgv2 As System.Windows.Forms.DataGridView
    Friend WithEvents dgv1 As System.Windows.Forms.DataGridView
    Friend WithEvents id_pendapatan As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents nama_pendapatan As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents jumlah_pendapatan As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents id_potongan As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents nama_potongan As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents jumlah_potongan As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents txt_pend As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
End Class
