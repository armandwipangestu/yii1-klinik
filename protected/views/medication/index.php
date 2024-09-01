<?php
/* @var $this MedicationController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Medications',
);

$this->menu=array(
	array('label'=>'Create Medication', 'url'=>array('create')),
	array('label'=>'Manage Medication', 'url'=>array('admin')),
);
?>

<h1>Medications</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
