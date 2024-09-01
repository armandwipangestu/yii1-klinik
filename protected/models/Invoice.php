<?php

/**
 * This is the model class for table "{{invoice}}".
 *
 * The followings are the available columns in table '{{invoice}}':
 * @property string $id
 * @property string $ticket_id
 * @property string $invoice_date
 * @property string $total_amount
 * @property string $payment_status
 * @property string $created_at
 * @property string $updated_at
 */
class Invoice extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return '{{invoice}}';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('ticket_id, invoice_date, total_amount, payment_status', 'required'),
			array('total_amount', 'length', 'max'=>8),
			array('payment_status', 'length', 'max'=>6),
			array('created_at, updated_at', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, ticket_id, invoice_date, total_amount, payment_status, created_at, updated_at', 'safe', 'on'=>'search'),
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
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'ticket_id' => 'Ticket',
			'invoice_date' => 'Invoice Date',
			'total_amount' => 'Total Amount',
			'payment_status' => 'Payment Status',
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

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id,true);
		$criteria->compare('ticket_id',$this->ticket_id,true);
		$criteria->compare('invoice_date',$this->invoice_date,true);
		$criteria->compare('total_amount',$this->total_amount,true);
		$criteria->compare('payment_status',$this->payment_status,true);
		$criteria->compare('created_at',$this->created_at,true);
		$criteria->compare('updated_at',$this->updated_at,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Invoice the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
