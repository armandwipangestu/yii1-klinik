<?php
/* @var $this TicketDetailController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Ticket Details',
);

$this->menu=array(
	array('label'=>'Create TicketDetail', 'url'=>array('create')),
	array('label'=>'Manage TicketDetail', 'url'=>array('admin')),
);
?>

<h1>Ticket Details</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
