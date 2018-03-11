<?php

	if( !defined( 'BASEPATH' ) )
	{
		exit( 'No direct script access allowed' );
	}

	/**
	 * Add you custom models here
	 * ---------------------- Custom modules ----------------------
	 * You can add you custom libraries here!
	 * Like:
	 *
	 * ---------------------- CodeIgniter modules ----------------------
	 * @property CI_Benchmark        $benchmark
	 * @property CI_Cache            $cache
	 * @property CI_Calendar         $calendar
	 * @property CI_Cart             $cart
	 * @property CI_Config           $config
	 * @property CI_Email            $email
	 * @property CI_Encrypt          $encrypt
	 * @property CI_Exceptions       $exceptions
	 * @property CI_Upload           $upload
	 * @property CI_Form_validation  $form_validation
	 * @property CI_Ftp              $ftp
	 * @property CI_Image_lib        $image_lib
	 * @property CI_Input            $input
	 * @property CI_Javascript       $javascript
	 * @property CI_Lang             $lang
	 * @property CI_Loader           $load
	 * @property CI_Migration        $migration
	 * @property CI_Output           $output
	 * @property CI_Pagination       $pagination
	 * @property CI_Parser           $parser
	 * @property CI_Security         $security
	 * @property CI_Session          $session
	 * @property CI_Table            $table
	 * @property CI_Trackback        $trackback
	 * @property CI_Typography       $typography
	 * @property CI_Unit_test        $unit_test
	 * @property CI_URI              $uri
	 * @property CI_User_agent       $agent
	 * @property CI_Xmlrpc           $xmlrpc
	 * @property CI_Xmlrpcs          $xmlrpcs
	 * @property CI_Zip              $zip
	 * @property CI_DB_query_builder $db
	 */

	/**
	 * Class MY_Controller
	 */
	class KZ_Controller extends CI_Controller
	{

		/**
		 * MY_Controller constructor.
		 * Tout Controller yo pral extend My_Controller
		 */
		function __construct()
		{
			parent::__construct();
			$this->load->helper( 'form' );
			$this->load->helper( 'url' );
			$this->load->helper( 'security' );
			$this->load->helper( 'language' );
		}

	}