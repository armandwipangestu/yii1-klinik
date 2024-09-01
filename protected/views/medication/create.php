<?php
/* @var $this MedicationController */
/* @var $model Medication */

$this->breadcrumbs=array(
	'Medications'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Medication', 'url'=>array('index')),
	array('label'=>'Manage Medication', 'url'=>array('admin')),
);
?>

<h1>Create Medication</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>