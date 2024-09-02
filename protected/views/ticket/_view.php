<?php
/* @var $this TicketController */
/* @var $data Ticket */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id' => $data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('created_by')); ?>:</b>
	<?php echo CHtml::encode($data->user->username); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('patient_id')); ?>:</b>
	<?php echo CHtml::encode($data->patient->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('assigned_to')); ?>:</b>
	<?php echo CHtml::encode($data->employee->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ticket_status')); ?>:</b>
	<?php echo CHtml::encode($data->ticket_status); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('action_id')); ?>:</b>
	<?php echo CHtml::encode($data->action->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('medication_id')); ?>:</b>
	<?php echo CHtml::encode($data->medication->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('payment_status')); ?>:</b>
	<?php echo CHtml::encode($data->payment_status); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('price')); ?>:</b>
	<?php echo "Rp." . CHtml::encode($data->price); ?>
	<br />

	<!-- <b><?php echo CHtml::encode($data->getAttributeLabel('created_at')); ?>:</b>
	<?php echo CHtml::encode($data->created_at); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('updated_at')); ?>:</b>
	<?php echo CHtml::encode($data->updated_at); ?>
	<br /> -->

</div>