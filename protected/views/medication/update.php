<?php
/* @var $this MedicationController */
/* @var $model Medication */

$this->breadcrumbs=array(
	'Medications'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Medication', 'url'=>array('index')),
	array('label'=>'Create Medication', 'url'=>array('create')),
	array('label'=>'View Medication', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Medication', 'url'=>array('admin')),
);
?>

<h1>Update Medication <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>