<?php
/* @var $this PatientController */
/* @var $model Patient */
/* @var $form CActiveForm */
?>

<div class="form">

	<?php $form = $this->beginWidget('CActiveForm', array(
		'id' => 'patient-form',
		// Please note: When you enable ajax validation, make sure the corresponding
		// controller action is handling ajax validation correctly.
		// There is a call to performAjaxValidation() commented in generated controller code.
		// See class documentation of CActiveForm for details on this.
		'enableAjaxValidation' => false,
	)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model, 'name'); ?>
		<?php echo $form->textField($model, 'name', array('size' => 60, 'maxlength' => 255)); ?>
		<?php echo $form->error($model, 'name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model, 'birth_date'); ?>
		<?php echo $form->textField($model, 'birth_date'); ?>
		<?php echo $form->error($model, 'birth_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model, 'gender'); ?>
		<?php echo $form->dropDownList($model, 'gender', array('Male' => 'Male', 'Female' => 'Female')); ?>
		<?php echo $form->error($model, 'gender'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model, 'address'); ?>
		<?php echo $form->textArea($model, 'address', array('rows' => 6, 'cols' => 50)); ?>
		<?php echo $form->error($model, 'address'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model, 'phone_number'); ?>
		<?php echo $form->textField($model, 'phone_number', array('size' => 60, 'maxlength' => 255)); ?>
		<?php echo $form->error($model, 'phone_number'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model, 'region_id'); ?>
		<?php echo $form->dropDownList($model, 'region_id', $regionOptions, array('empty' => 'Select a region')); ?>
		<?php echo $form->error($model, 'region_id'); ?>
	</div>

	<!-- <div class="row">
		<?php echo $form->labelEx($model, 'created_at'); ?>
		<?php echo $form->textField($model, 'created_at'); ?>
		<?php echo $form->error($model, 'created_at'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model, 'updated_at'); ?>
		<?php echo $form->textField($model, 'updated_at'); ?>
		<?php echo $form->error($model, 'updated_at'); ?>
	</div> -->

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

	<?php $this->endWidget(); ?>

</div><!-- form -->