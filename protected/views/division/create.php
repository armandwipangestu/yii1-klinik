<?php
/* @var $this DivisionController */
/* @var $model Division */

$this->breadcrumbs=array(
	'Divisions'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Division', 'url'=>array('index')),
	array('label'=>'Manage Division', 'url'=>array('admin')),
);
?>

<h1>Create Division</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>