<?php

/**
 * This is the model class for table "{{user}}".
 *
 * The followings are the available columns in table '{{user}}':
 * @property string $id
 * @property string $username
 * @property string $password
 * @property string $role_id
 * @property string $created_at
 * @property string $updated_at
 */
class User extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return '{{user}}';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('username, password, role_id', 'required'),
			array('username, password', 'length', 'max' => 255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, username, password, role_id', 'safe', 'on' => 'search'),
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
			'role' => array(self::BELONGS_TO, 'Role', 'role_id'),
			'ticket' => array(self::HAS_MANY, 'Ticket', 'created_by'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'username' => 'Username',
			'password' => 'Password',
			'role_id' => 'Role',
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
		$criteria->compare('username', $this->username, true);
		$criteria->compare('password', $this->password, true);
		$criteria->compare('role_id', $this->role_id, true);
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
	 * @return User the static model class
	 */
	public static function model($className = __CLASS__)
	{
		return parent::model($className);
	}

	public function validatePassword($password)
	{
		return CPasswordHelper::verifyPassword($password, $this->password);
	}

	public function hashPassword($password)
	{
		return CPasswordHelper::hashPassword($password);
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

	public function beforeSave()
	{
		if (parent::beforeSave()) {
			// Generate UUID jika record baru
			$this->id = $this->generateUuid();
			// Cek apakah password sudah diubah
			if ($this->isNewRecord || $this->password !== $this->getOldAttribute('password')) {
				$this->password = $this->hashPassword($this->password);
			}
			return true;
		} else {
			return false;
		}
	}

	public function getOldAttribute($attribute)
	{
		return $this->isNewRecord ? null : $this->getOldAttributes()[$attribute];
	}

	private $_oldAttributes = [];

	protected function afterFind()
	{
		// Simpan nilai-nilai asli setelah model ditemukan
		$this->_oldAttributes = $this->attributes;
		parent::afterFind();
	}

	public function getOldAttributes()
	{
		return $this->_oldAttributes;
	}
}
