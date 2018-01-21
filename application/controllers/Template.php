<?php

	class Template extends MY_Controller
	{

		function __construct()
		{
			parent::__construct();
		}

		public function index()
		{
			$this->load->view( 'template' );
		}
	}