<?php

/**
 * This is the model class for table "{{patient}}".
 *
 * The followings are the available columns in table '{{patient}}':
 * @property string $id
 * @property string $name
 * @property string $birth_date
 * @property string $gender
 * @property string $address
 * @property string $phone_number
 * @property string $region_id
 * @property string $created_at
 * @property string $updated_at
 */
class Patient extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return '{{patient}}';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('name, birth_date, gender, address, phone_number, region_id', 'required'),
			array('name, phone_number', 'length', 'max' => 255),
			array('gender', 'length', 'max' => 6),
			array('created_at, updated_at', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, name, birth_date, gender, address, phone_number, region_id, created_at, updated_at', 'safe', 'on' => 'search'),
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
			'region' => array(self::BELONGS_TO, 'Region', 'region_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'name' => 'Name',
			'birth_date' => 'Birth Date',
			'gender' => 'Gender',
			'address' => 'Address',
			'phone_number' => 'Phone Number',
			'region_id' => 'Region',
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
		$criteria->compare('name', $this->name, true);
		$criteria->compare('birth_date', $this->birth_date, true);
		$criteria->compare('gender', $this->gender, true);
		$criteria->compare('address', $this->address, true);
		$criteria->compare('phone_number', $this->phone_number, true);
		$criteria->compare('region_id', $this->region_id, true);
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
	 * @return Patient the static model class
	 */
	public static function model($className = __CLASS__)
	{
		return parent::model($className);
	}
}
