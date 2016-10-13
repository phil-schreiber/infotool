<?php
namespace messetool\Modules\Modules\Backend\Controllers;
use messetool\Models\Quiz AS Quiz,
	messetool\Models\Questionitems AS Items;


/**
 * Class IndexController
 *
 * @package baywa-nltool\Controllers
 */

class ReportController extends ControllerBase

{
	
	public function indexAction()
	{
		$environment= $this->config['application']['debug'] ? 'development' : 'production';
		$baseUri=$this->config['application'][$environment]['staticBaseUri'];
		$path=$baseUri.'backend/'.$this->view->language.'/report/create/';
		$this->view->setVar('path',$path);
	}
	
	public function createAction()
	{
            //$this->assets->addJs('js/vendor/reportInit.js');
            $this->view->setMainView('report');

            if($this->dispatcher->getParam("uid")>0){
                $questionFile=  file_get_contents("quiz.json");
                $questions=json_decode($questionFile);
                $sessions=Quiz::find(array(
                    'conditions' => "uid > 51"
                ));
                
                $questionitemsRaw=Items::find();
                $questionitems=array();
                foreach($questionitemsRaw as $row){
                    $questionitems[$row->pid][$row->itemnumber]=array(
                     "uid"   => $row->uid,
                     "pid"   => $row->pid,
                     "questionnumber"   => $row->questionnumber,
                     "itemnumber"   => $row->itemnumber,
                        "truefalse"   => $row->truefalse
                    );
                }
                

                

                $this->view->setVar('questions',$questions);
                $this->view->setVar('sessions',$sessions);
                $this->view->setVar('questionitems',$questionitems);
            }
		
		
		
			
	}
	
	
	private function getComments($survey){
		if($survey==1){
			$questionNumber='>';
			
		}
	}
	
}