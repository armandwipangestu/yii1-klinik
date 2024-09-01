<?php
/* @var $this MedicationController */
/* @var $model Medication */

$this->breadcrumbs=array(
	'Medications'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List Medication', 'url'=>array('index')),
	array('label'=>'Create Medication', 'url'=>array('create')),
	array('label'=>'Update Medication', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Medication', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Medication', 'url'=>array('admin')),
);
?>

<h1>View Medication #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
		'price',
		'created_at',
		'updated_at',
	),
)); ?>
