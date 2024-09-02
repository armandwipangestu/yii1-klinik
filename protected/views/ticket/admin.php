<?php
/* @var $this TicketController */
/* @var $model Ticket */

$this->breadcrumbs = array(
	'Tickets' => array('index'),
	'Manage',
);

$this->menu = array(
	array('label' => 'List Ticket', 'url' => array('index')),
	array('label' => 'Create Ticket', 'url' => array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#ticket-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Tickets</h1>

<p>
	You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
	or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search', '#', array('class' => 'search-button')); ?>
<div class="search-form" style="display:none">
	<?php $this->renderPartial('_search', array(
		'model' => $model,
	)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id' => 'ticket-grid',
	'dataProvider' => $model->search(),
	'filter' => $model,
	'columns' => array(
		'id',
		array(
			'name' => 'created_by', // Menampilkan nama kolom created_by
			'value' => function ($data) {
				return $data->user ? $data->user->username : 'N/A'; // Menampilkan username jika ada
			},
			'filter' => CHtml::listData(User::model()->findAll(), 'id', 'username'), // Menambahkan filter dropdown jika perlu
		),
		array(
			'name' => 'patient_id', // Menampilkan nama kolom patient_id
			'value' => function ($data) {
				return $data->patient ? $data->patient->name : 'N/A'; // Menampilkan nama patient jika ada
			},
			'filter' => CHtml::listData(Patient::model()->findAll(), 'id', 'name'), // Menambahkan filter dropdown jika perlu
		),
		array(
			'name' => 'assigned_to', // Menampilkan nama kolom assigned_to
			'value' => function ($data) {
				return $data->employee ? $data->employee->name : 'N/A'; // Menampilkan nama employee jika ada
			},
			'filter' => CHtml::listData(Employee::model()->findAll(), 'id', 'name'), // Menambahkan filter dropdown jika perlu
		),
		array(
			'name' => 'ticket_status',
			'value' => '$data->ticket_status', // Menampilkan nilai ticket_status
			'filter' => array(
				'Open' => 'Open',
				'In Progress' => 'In Progress',
				'Closed' => 'Closed',
			), // Dropdown filter untuk gender
		),
		array(
			'name' => 'action_id', // Menampilkan nama kolom action_id
			'value' => function ($data) {
				return $data->action ? $data->action->name : 'N/A'; // Menampilkan nama action jika ada
			},
			'filter' => CHtml::listData(Action::model()->findAll(), 'id', 'name'), // Menambahkan filter dropdown jika perlu
		),
		array(
			'name' => 'medication_id', // Menampilkan nama kolom medication_id
			'value' => function ($data) {
				return $data->medication ? $data->medication->name : 'N/A'; // Menampilkan nama medication jika ada
			},
			'filter' => CHtml::listData(Medication::model()->findAll(), 'id', 'name'), // Menambahkan filter dropdown jika perlu
		),
		array(
			'name' => 'payment_status',
			'value' => '$data->payment_status', // Menampilkan nilai payment_status
			'filter' => array(
				'Paid' => 'Paid',
				'Unpaid' => 'Unpaid',
			), // Dropdown filter untuk gender
		),
		'price',
		// 'created_at',
		// 'updated_at',
		array(
			'class' => 'CButtonColumn',
		),
	),
)); ?>