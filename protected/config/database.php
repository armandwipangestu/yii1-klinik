<?php

// This is the database connection configuration.
return array(
	// 'connectionString' => 'sqlite:'.dirname(__FILE__).'/../data/testdrive.db',
	// uncomment the following lines to use a MySQL database
	'connectionString' => 'mysql:host=localhost;dbname=yii1_klinik',
	'emulatePrepare' => true,
	'username' => 'user_yii1_klinik',
	'password' => 'yii',
	'charset' => 'utf8',
	'tablePrefix' => 'tbl_',
);
