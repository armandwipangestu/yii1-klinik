<?php
/* @var $this TicketController */
/* @var $model Ticket */

$this->breadcrumbs = array(
	'Tickets' => array('index'),
	$model->id => array('view', 'id' => $model->id),
	'Update',
);

$this->menu = array(
	array('label' => 'List Ticket', 'url' => array('index')),
	array('label' => 'Create Ticket', 'url' => array('create')),
	array('label' => 'View Ticket', 'url' => array('view', 'id' => $model->id)),
	array('label' => 'Manage Ticket', 'url' => array('admin')),
);
?>

<h1>Update Ticket <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model' => $model, 'userOptions' => $userOptions, 'patientOptions' => $patientOptions, 'employeeOptions' => $employeeOptions)); ?>