<?php
/* @var $this TicketController */
/* @var $model Ticket */

$this->breadcrumbs = array(
	'Tickets' => array('index'),
	$model->id,
);

$this->menu = array(
	array('label' => 'List Ticket', 'url' => array('index')),
	array('label' => 'Create Ticket', 'url' => array('create')),
	array('label' => 'Update Ticket', 'url' => array('update', 'id' => $model->id)),
	array('label' => 'Delete Ticket', 'url' => '#', 'linkOptions' => array('submit' => array('delete', 'id' => $model->id), 'confirm' => 'Are you sure you want to delete this item?')),
	array('label' => 'Manage Ticket', 'url' => array('admin')),
);
?>

<h1>View Ticket #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data' => $model,
	'attributes' => array(
		'id',
		array(
			'label' => 'Created By',
			'value' => $model->user->username,
		),
		array(
			'label' => 'Patient',
			'value' => $model->patient->name,
		),
		array(
			'label' => 'Assigned To',
			'value' => $model->employee->name,
		),
		'ticket_status',
		array(
			'label' => 'Action',
			'value' => $model->action->name,
		),
		array(
			'label' => 'Medication',
			'value' => $model->medication->name,
		),
		'payment_status',
		array(
			'label' => 'Price',
			'value' => 'Rp.' . $model->price,
		),
		'created_at',
		'updated_at',
	),
)); ?>