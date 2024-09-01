<?php
/* @var $this TicketDetailController */
/* @var $data TicketDetail */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ticket_id')); ?>:</b>
	<?php echo CHtml::encode($data->ticket_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('action_id')); ?>:</b>
	<?php echo CHtml::encode($data->action_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('medication_id')); ?>:</b>
	<?php echo CHtml::encode($data->medication_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('quantity')); ?>:</b>
	<?php echo CHtml::encode($data->quantity); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('total_price')); ?>:</b>
	<?php echo CHtml::encode($data->total_price); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('created_at')); ?>:</b>
	<?php echo CHtml::encode($data->created_at); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('updated_at')); ?>:</b>
	<?php echo CHtml::encode($data->updated_at); ?>
	<br />

	*/ ?>

</div>