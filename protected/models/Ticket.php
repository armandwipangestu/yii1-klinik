<?php

/**
 * This is the model class for table "{{ticket}}".
 *
 * The followings are the available columns in table '{{ticket}}':
 * @property string $id
 * @property string $created_by
 * @property string $patient_id
 * @property string $assigned_to
 * @property string $ticket_status
 * @property string $action_id
 * @property string $medication_id
 * @property string $payment_status
 * @property string $price
 * @property string $created_at
 * @property string $updated_at
 */
class Ticket extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return '{{ticket}}';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('created_by, patient_id, assigned_to, ticket_status, action_id, medication_id, payment_status, price', 'required'),
			array('created_by, patient_id, assigned_to, action_id, medication_id', 'length', 'max' => 36),
			array('ticket_status', 'length', 'max' => 11),
			array('payment_status', 'length', 'max' => 6),
			array('price', 'length', 'max' => 8),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('created_by, patient_id, assigned_to, ticket_status, action_id, medication_id, payment_status, price', 'safe', 'on' => 'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'user' => array(self::BELONGS_TO, 'User', 'created_by'),
			'patient' => array(self::BELONGS_TO, 'Patient', 'patient_id'),
			'employee' => array(self::BELONGS_TO, 'Employee', 'assigned_to'),
			'action' => array(self::BELONGS_TO, 'Action', 'action_id'),
			'medication' => array(self::BELONGS_TO, 'Medication', 'medication_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'created_by' => 'Created By',
			'patient_id' => 'Patient',
			'assigned_to' => 'Assigned To',
			'ticket_status' => 'Ticket Status',
			'action_id' => 'Action',
			'medication_id' => 'Medication',
			'payment_status' => 'Payment Status',
			'price' => 'Price',
			'created_at' => 'Created At',
			'updated_at' => 'Updated At',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria = new CDbCriteria;

		$criteria->compare('id', $this->id, true);
		$criteria->compare('created_by', $this->created_by, true);
		$criteria->compare('patient_id', $this->patient_id, true);
		$criteria->compare('assigned_to', $this->assigned_to, true);
		$criteria->compare('ticket_status', $this->ticket_status, true);
		$criteria->compare('action_id', $this->action_id, true);
		$criteria->compare('medication_id', $this->medication_id, true);
		$criteria->compare('payment_status', $this->payment_status, true);
		$criteria->compare('price', $this->price, true);
		$criteria->compare('created_at', $this->created_at, true);
		$criteria->compare('updated_at', $this->updated_at, true);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Ticket the static model class
	 */
	public static function model($className = __CLASS__)
	{
		return parent::model($className);
	}

	protected function beforeSave()
	{
		if ($this->isNewRecord) {
			// Generate UUID jika record baru
			$this->id = $this->generateUuid();
		}

		return parent::beforeSave();
	}

	private function generateUuid()
	{
		// Generate UUID versi 4
		return sprintf(
			'%04x%04x-%04x-%04x-%04x-%04x%04x%04x',
			mt_rand(0, 0xffff),
			mt_rand(0, 0xffff),
			mt_rand(0, 0xffff),
			mt_rand(0, 0x0fff) | 0x4000,
			mt_rand(0, 0x3fff) | 0x8000,
			mt_rand(0, 0xffff),
			mt_rand(0, 0xffff),
			mt_rand(0, 0xffff)
		);
	}
}
