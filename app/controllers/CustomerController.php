<?php

class CustomerController extends \Phalcon\Mvc\Controller
{

    public function initialize()
    {
        if ($this->session->get("user") == null) {
            $this->response->redirect("index");
        } else {
            $this->view->setTemplateBefore("main");
        }
    }

    public function indexAction()
    {

    }

}

