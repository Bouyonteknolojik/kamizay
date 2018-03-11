<?php

	if( !defined( 'BASEPATH' ) )
	{
		exit( 'No direct script access allowed' );
	}

	/**
	 * Class MY_Model
	 */
	class KZ_Model extends CI_Model
	{

		protected $tableName = '';

		/**
		 * MY_Model constructor.
		 * Tout Model yo pral extend My_Model
		 */
		function __construct()
		{
			parent::__construct();
		}

		/**
		 * Create a new record, automatically set .created, .updated and .users_id and .status
		 *
		 * @param $record
		 *
		 * @return mixed
		 */
		public function create( $record )
		{
			$response = new PSFunctResponse();

			$record[ 'created' ] = date( 'Y-m-d H:i:s' );
			$record[ 'updated' ] = date( 'Y-m-d H:i:s' );
			$record[ 'status' ]  = 1;

			$res = $this->db->insert( $this->tableName, $record );

			return $res;
		}

		/**
		 * fetches all records in table unless given a fieldname (masteridField) and a value (masterId) to filter by
		 *
		 * @param string $masteridField
		 * @param null   $masterId
		 *
		 * @return mixed
		 */
		public function read( $masteridField = '', $masterId = NULL )
		{
			if( $masterId == NULL )
			{
				$res = $this->db->get( $this->tableName );
			}
			else
			{
				$res = $this->db->get_where( $this->tableName, array( $masteridField => $masterId ) );
			}

			return $res;
		}

		/**
		 * returns the record whose id field matches recordid
		 *
		 * @param $recordId
		 *
		 * @return mixed
		 */
		public function readById( $recordId )
		{
			$res = $this->db->get_where( $this->tableName, array( 'id' => $recordId ) );

			return $res;
		}

		/**
		 * updates a record using its id field to identify it. automatically sets .updated
		 *
		 * @param $record
		 *
		 * @return mixed
		 */
		public function update( $record )
		{
			$record[ 'updated' ] = date( 'Y-m-d H:i:s' );

			$this->db->where( 'id', $record[ 'id' ] );
			$res = $this->db->update( $this->tableName, $record );

			return $res;
		}

		/**
		 * Delete function deletes or updates status of record matching recordid based on fakeDelete being true or false
		 *
		 * @param $recordId
		 *
		 * @return mixed
		 */
		public function delete( $recordId )
		{
			$record              = array();
			$record[ 'status' ]  = 0;
			$record[ 'updated' ] = date( 'Y-m-d H:i:s' );

			$this->db->where( 'id', $recordId );
			$res = $this->db->update( $this->tableName, $record );

			return $res;
		}

	}