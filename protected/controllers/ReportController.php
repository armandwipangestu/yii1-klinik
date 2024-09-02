<?php

class ReportController extends Controller
{
	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array(
				'allow',  // allow all users to perform 'index' and 'view' actions
				'actions' => array('index', 'view'),
				// 'users' => array('*'),
				'roles' => array('user', 'admin'),
			),
			// array('allow', // allow authenticated user to perform 'create' and 'update' actions
			// 	'actions'=>array('create','update'),
			// 	'users'=>array('@'),
			// ),
			array(
				'allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions' => array('admin', 'create', 'update', 'delete'),
				'roles' => array('admin'),
			),
			array(
				'deny',  // deny all users
				'users' => array('*'),
			),
		);
	}

	public function actionIndex()
	{
		$total_user = User::model()->count();
		$total_role = Role::model()->count();
		$total_region = Region::model()->count();
		$total_patient = Patient::model()->count();

		$divisionCounts = Yii::app()->db->createCommand()
			->select('d.name, COUNT(e.id) as total')
			->from('tbl_employee e')
			->join('tbl_division d', 'e.division_id = d.id')
			->group('d.name')
			->queryAll();

		$divisionNames = array_column($divisionCounts, 'name'); // Mendapatkan nama-nama divisi
		$divisionTotals = array_column($divisionCounts, 'total'); // Mendapatkan jumlah setiap divisi

		$division_names = json_encode($divisionNames);
		$division_totals = json_encode($divisionTotals);

		$recent_users = Patient::model()->findAll(array(
			'order' => 'created_at DESC',
			'limit' => 3,
		));

		$recent_tickets = Ticket::model()->findAll(array(
			'order' => 'created_at DESC',
			'limit' => 5,
		));

		$patientsGenderCount = Yii::app()->db->createCommand()
			->select('gender, COUNT(*) as total')
			->from('tbl_patient')
			->group('gender')
			->queryAll();

		// Encode data menjadi JSON
		$user_gender = json_encode($patientsGenderCount);


		$this->render('index', array(
			'total_user' => $total_user,
			'total_role' => $total_role,
			'total_region' => $total_region,
			'total_patient' => $total_patient,
			'division_names' => $division_names,
			'division_totals' => $division_totals,
			'recent_users' => $recent_users,
			'recent_tickets' => $recent_tickets,
			'user_gender' => $user_gender,
		));
	}

	// Uncomment the following methods and override them if needed
	/*
	public function filters()
	{
		// return the filter configuration for this controller, e.g.:
		return array(
			'inlineFilterName',
			array(
				'class'=>'path.to.FilterClass',
				'propertyName'=>'propertyValue',
			),
		);
	}

	public function actions()
	{
		// return external action classes, e.g.:
		return array(
			'action1'=>'path.to.ActionClass',
			'action2'=>array(
				'class'=>'path.to.AnotherActionClass',
				'propertyName'=>'propertyValue',
			),
		);
	}
	*/
}
