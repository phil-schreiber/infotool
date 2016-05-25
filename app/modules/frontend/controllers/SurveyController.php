<?php
namespace messetool\Modules\Modules\Frontend\Controllers;
use messetool\Models\Quiz AS Quiz;
use messetool\Models\Questionitems AS Questionitem;
use messetool\Models\Surveysession AS Surveysession;

/**
 * Class IndexController
 *
 * @package baywa-nltool\Controllers
 */

class SurveyController extends ControllerBase

{
			
    /**
     * @return \Phalcon\Http\ResponseInterface
     */
    public function indexAction()
    {	
		$time=time();
		$uniqid = uniqid();
		$this->session->setOptions(array(
				'uniqueId' => $uniqid
		));
		$surveysession =new Surveysession();
		$surveysession->assign(array(
				'pid' => 0,
				'tstamp' => $time,
				'crdate' => $time,
				'cruser_id' => 0,
				'deleted' => 0,
				'hidden' => 0,
				'session' => $uniqid
				));
		$surveysession->save();
		$environment= $this->config['application']['debug'] ? 'development' : 'production';
		$baseUri=$this->config['application'][$environment]['staticBaseUri'];
		$path=$baseUri.'/'.$this->view->language.'/survey/';
		$this->view->setVar('uniqueId',$uniqid);
		$this->view->setVar('path',$path);        
    }
	
	public function createAction(){
		$time=time();
		if($this->request->isPost()){
                    if($this->request->hasPost('uniqueid')){
			$quiz=new Quiz();
			$quiz->assign(array(
				'pid' => 0,
				'tstamp' => $time,
				'crdate' => $time,
				'cruser_id' => 0,
				'deleted' => 0,
				'hidden' => 0,				
				'name' => $this->request->hasPost('name') ? $this->request->getPost('name') : 0,
				'email' => $this->request->hasPost('email') ? $this->request->getPost('email') : '',
                                'session' => $this->request->hasPost('uniqueid') ? $this->request->getPost('uniqueid') : '',
                                'result' => ''
			));
			$quiz->save();
                        die($quiz->uid);
                    }
			if($this->request->hasPost('question')){
				
					$radioitem=new Questionitem();
					$radioitem->assign(array(
						'pid' => $question->uid,
						'tstamp' => $time,
						'crdate' => $time,
						'cruser_id' => 0,
						'deleted' => 0,
						'hidden' => 0,
						'session' => $this->request->hasPost('sesid') ? $this->request->getPost('sesid') : 0,
						'questionnumber' => $this->request->hasPost('questionnumber') ? $this->request->getPost('questionnumber') : 0,
						'itemnumber' => $this->request->hasPost('question') ? $this->request->getPost('question') : 0,
						'answernumber' => 0,
						'truefalse' => $this->request->hasPost('answer') ? $this->request->getPost('answer') : 0,
						
						
					));
					$radioitem->save();
				die();
			}
			
			
		}
	}
}