<?php /* @var $this Controller */ ?>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="language" content="en">

	<!-- blueprint CSS framework -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print">
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection">
	<![endif]-->

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/app.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/bootstrap/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/apexcharts/apexcharts.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/iconly/iconly.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/dripicons/dripicons.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/dripicons/ui-icons-dripicons.css">
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/apexcharts/apexcharts.js"></script>

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<body>

	<div class="container" id="page">

		<div id="header">
			<div id="logo"><?php echo CHtml::encode(Yii::app()->name); ?></div>
		</div><!-- header -->
		<div id="mainmenu">
			<?php $this->widget('zii.widgets.CMenu', array(
				'items' => array(
					array('label' => 'Home', 'url' => array('/site/index')),
					array('label' => 'Report', 'url' => array('/report/index')),
					array('label' => 'User', 'url' => array('/user/index')),
					array('label' => 'Role', 'url' => array('/role/index')),
					array('label' => 'Region', 'url' => array('/region/index')),
					array('label' => 'Patient', 'url' => array('/patient/index')),
					array('label' => 'Division', 'url' => array('/division/index')),
					array('label' => 'Employee', 'url' => array('/employee/index')),
					array('label' => 'Action', 'url' => array('/action/index')),
					array('label' => 'Medication', 'url' => array('/medication/index')),
					array('label' => 'Ticket', 'url' => array('/ticket/index')),
					// array('label' => 'About', 'url' => array('/site/page', 'view' => 'about')),
					// array('label' => 'Contact', 'url' => array('/site/contact')),
					array('label' => 'Login', 'url' => array('/site/login'), 'visible' => Yii::app()->user->isGuest),
					array('label' => 'Logout (' . Yii::app()->user->name . ')', 'url' => array('/site/logout'), 'visible' => !Yii::app()->user->isGuest)
				),
			)); ?>
		</div><!-- mainmenu -->
		<?php if (isset($this->breadcrumbs)) : ?>
			<?php $this->widget('zii.widgets.CBreadcrumbs', array(
				'links' => $this->breadcrumbs,
			)); ?>
			<!-- breadcrumbs -->
		<?php endif ?>

		<?php echo $content; ?>

		<div class="clear"></div>

		<div id="footer">
			Copyright &copy; <?php echo date('Y'); ?> by My Company.<br />
			All Rights Reserved.<br />
			<?php echo Yii::powered(); ?>
		</div><!-- footer -->

	</div><!-- page -->

	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/bootstrap/bootstrap.js"></script>

</body>

</html>