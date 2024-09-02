<?php
/* @var $this TicketDetailController */
/* @var $model TicketDetail */

$this->breadcrumbs = array(
	'Ticket Details' => array('index'),
	$model->id => array('view', 'id' => $model->id),
	'Update',
);

$this->menu = array(
	array('label' => 'List TicketDetail', 'url' => array('index')),
	array('label' => 'Create TicketDetail', 'url' => array('create')),
	array('label' => 'View TicketDetail', 'url' => array('view', 'id' => $model->id)),
	array('label' => 'Manage TicketDetail', 'url' => array('admin')),
);
?>

<h1>Update TicketDetail <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model' => $model, 'ticketOptions' => $ticketOptions, 'actionOptions' => $actionOptions, 'medicationOptions' => $medicationOptions)); ?>