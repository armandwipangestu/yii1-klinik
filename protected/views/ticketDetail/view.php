<?php
/* @var $this TicketDetailController */
/* @var $model TicketDetail */

$this->breadcrumbs=array(
	'Ticket Details'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List TicketDetail', 'url'=>array('index')),
	array('label'=>'Create TicketDetail', 'url'=>array('create')),
	array('label'=>'Update TicketDetail', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete TicketDetail', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TicketDetail', 'url'=>array('admin')),
);
?>

<h1>View TicketDetail #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'ticket_id',
		'action_id',
		'medication_id',
		'quantity',
		'total_price',
		'created_at',
		'updated_at',
	),
)); ?>
