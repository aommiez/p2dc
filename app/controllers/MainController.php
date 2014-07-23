<?php

class MainController extends \Phalcon\Mvc\Controller
{

    public function initialize()
    {
        if ($this->session->get("user") == null) {
            $this->response->redirect("index");
        }
    }

    public function indexAction()
    {
        //$this->view->setVar("user",$this->session->get("user"));
    }

    public function logoutAction () {
        $this->session->remove("user");
        $this->session->destroy();
        $this->response->redirect("index");
    }

}

