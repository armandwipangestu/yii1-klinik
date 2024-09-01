<?php
/* @var $this PatientController */
/* @var $model Patient */

$this->breadcrumbs = array(
	'Patients' => array('index'),
	'Manage',
);

$this->menu = array(
	array('label' => 'List Patient', 'url' => array('index')),
	array('label' => 'Create Patient', 'url' => array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#patient-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Patients</h1>

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
	'id' => 'patient-grid',
	'dataProvider' => $model->search(),
	'filter' => $model,
	'columns' => array(
		'id',
		'name',
		'birth_date',
		'gender',
		'address',
		'phone_number',
		array(
			'name' => 'region_id', // Menampilkan nama kolom region_id
			'value' => function ($data) {
				return $data->region ? $data->region->name : 'N/A'; // Menampilkan nama region jika ada
			},
			'filter' => CHtml::listData(Region::model()->findAll(), 'id', 'name'), // Menambahkan filter dropdown jika perlu
		),
		/*
		'region_id',
		'created_at',
		'updated_at',
		*/
		array(
			'class' => 'CButtonColumn',
		),
	),
)); ?>