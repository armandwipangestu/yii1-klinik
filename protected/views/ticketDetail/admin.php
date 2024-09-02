<?php
/* @var $this TicketDetailController */
/* @var $model TicketDetail */

$this->breadcrumbs = array(
	'Ticket Details' => array('index'),
	'Manage',
);

$this->menu = array(
	array('label' => 'List TicketDetail', 'url' => array('index')),
	array('label' => 'Create TicketDetail', 'url' => array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#ticket-detail-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Ticket Details</h1>

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
	'id' => 'ticket-detail-grid',
	'dataProvider' => $model->search(),
	'filter' => $model,
	'columns' => array(
		'id',
		'ticket_id',
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
		'quantity',
		'total_price',
		/*
		'created_at',
		'updated_at',
		*/
		array(
			'class' => 'CButtonColumn',
		),
	),
)); ?>