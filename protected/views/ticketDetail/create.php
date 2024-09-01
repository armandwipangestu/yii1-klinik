<?php
/* @var $this TicketDetailController */
/* @var $model TicketDetail */

$this->breadcrumbs=array(
	'Ticket Details'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List TicketDetail', 'url'=>array('index')),
	array('label'=>'Manage TicketDetail', 'url'=>array('admin')),
);
?>

<h1>Create TicketDetail</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>