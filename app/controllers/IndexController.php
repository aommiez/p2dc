<?php

class IndexController extends ControllerBase
{

    public function initialize()
    {
        if ($this->session->has("user")) {
            $this->response->redirect("main");
        }
    }

    public function indexAction()
    {
        //$this->view->setTemplateBefore('public');
    }

    public function statusAction()
    {
        \Phalcon\Tag::setTitle('P2DC Admin');
    }

    public function loginAction() {
        if ($this->request->isPost() == true) {
            if ($this->request->getPost("user") != "" || $this->request->getPost("password") != "") {
                $user = $this->request->getPost("user");
                $pass = $this->request->getPost("password");
                if ($this->auth($user,$pass)) {
                    $this->session->set("user", $user);
                    $this->response->redirect('main');
                } else {
                    $this->response->redirect('index');
                }
            } else {
                $this->response->redirect('index');
            }
        } else {
            $this->response->redirect('index');
        }
    }


    private function auth ($user,$pass) {
        $this->view->disable();
        $count = Staff::count(array(
            "conditions" => "user = ?1 and password = ?2",
            "bind"       => array(1 => $user , 2 => md5($pass))
        ));
        if ($count >= 1) {
            return true;
        } else {
            return false;
        }
    }

}

