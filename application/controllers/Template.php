<?php

	class Template extends KZ_Controller
	{

		function __construct()
		{
			parent::__construct();
		}

		public function index()
		{
			$this->load->view( 'common/header' );
			$this->load->view( 'common/navigation' );
			$this->load->view( 'template' );
			$this->load->view( 'common/footer' );

		}
	}