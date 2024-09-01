<?php
/* @var $this SiteController */

$this->pageTitle = Yii::app()->name;
?>

<h1>Selamat datang di aplikasi <i><?php echo CHtml::encode(Yii::app()->name); ?></i></h1>

<p>Aplikasi ini adalah hasil Tes Skill Web Programmer GRIT dari PT Inova Medika Solusindo</p>

<p>Aplikasi ini mempunyai kriteria sebagai berikut:</p>
<ol>
	<li>Terdapat user login berdasarkan hak aksesnya (SRBAC)</li>
	<li>Terdapat master CRUD untuk pembuatan master wilayah, user, dan pegawai, tindakan, obat</li>
	<li>Terdapat menu transaksi untuk pendaftaran pasien</li>
	<li>Terdapat menu transaksi untuk memberikan tindakan dan obat pada pasien</li>
	<li>Terdapat menu informasi untuk melakukan pembayaran tagihan pasien</li>
	<li>Terdapat menu laporan yang dapat ditampilkan dengan grafik</li>
</ol>

<p>Aplikasi ini dibuat oleh <a href="https://armandwipangestu.vercel.app" target="_blank">Arman Dwi Pangestu</a>. Source code aplikasi ini tersedia di <a href="https://github.com/armandwipangestu/yii1-klinik" target="_blank">GitHub - yii1-klinik</a></p>