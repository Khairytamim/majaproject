<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class detailevent extends CI_Controller {
	public function __construct(){
        parent::__construct();
        $this->load->database();
    }
	public function index()
	{
		$this->load->view('header/header_1');
		$this->load->view('navbar/no_menu');
		$this->load->view('event/detailindex');
		$this->load->view('footer/footerbar');
	}
}
