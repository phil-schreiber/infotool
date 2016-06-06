<?php
namespace messetool\Modules\Modules\Frontend\Controllers;
use messetool\Models\Feusers AS Feusers,
	messetool\Models\Messages AS Messages;
require_once '../app/library/Swiftmailer/swift_required.php';
require_once '../app/library/Html2Plain/Html2Text.php';
/**
 * Class IndexController
 *
 * @package baywa-nltool\Controllers
 */

class MessageController extends ControllerBase

{
	private $_loginForm;
	
	

    /**
     * @return \Phalcon\Http\ResponseInterface
     */
    public function indexAction()
    {			    
    }
	
	public function createAction()
	{
		if($this->request->isPost() && $this->request->getPost('consultant')){
		$feuser=Feusers::findFirstByUid(
					$this->request->getPost('consultant')
				);
		$time=time();
		$message=new Messages();
		$message->assign(array(
			'pid' => 0,
			'tstamp' => $time,
			'crdate' => $time,
			'cruser_id' => 0,
			'deleted' => 0,
			'hidden' => 0,
			'session' => $_SERVER['REMOTE_ADDR'],
			'feuserid' => $this->request->hasPost('consultant') ? $this->request->getPost('consultant') : 0,
			'message' =>$this->request->hasPost('message') ? $this->request->getPost('message') : ' ',			
			'firstname' => $this->request->hasPost('firstname') ? $this->request->getPost('firstname') : ' ',
			'lastname' => $this->request->hasPost('lastname') ? $this->request->getPost('lastname') : ' ',
			'phone' => $this->request->hasPost('email') ? $this->request->getPost('email') : ' ',
			'zip' => $this->request->hasPost('zip') ? $this->request->getPost('zip') : ' ',
			'city' => $this->request->hasPost('city') ? $this->request->getPost('city') : ' ',
			'farmer' => $this->request->hasPost('farmer') ? $this->request->getPost('farmer') : 0,
			'termsagreed' => $this->request->hasPost('terms') ? $this->request->getPost('terms') : 0
		));
		if(!$message->save()){
			$this->flash->error($feuser->getMessages());
		}
                $mailtext='Nachricht von Messebesucher '.$this->request->getPost('firstname').' '.$this->request->getPost('lastname').' ('.$this->request->getPost('email').'): <br><br>'.$message->message;
                if($feuser){
		$sendMessage=array(		
			'text' => $mailtext,
			'to' => $feuser->email,
                        'name' => $feuser->fullname
		);
		$this->sendEmail($sendMessage);
                }
		}
		
	}
	
        private function sendEmail($messageData){
             $transport = \Swift_SmtpTransport::newInstance()
							->setHost($this->config['smtp']['host'])
							->setPort($this->config['smtp']['port'])
							->setEncryption($this->config['smtp']['security'])
							->setUsername($this->config['smtp']['username'])
							->setPassword($this->config['smtp']['password']);
			$mailer = \Swift_Mailer::newInstance($transport);
			$mailer->registerPlugin(new \Swift_Plugins_AntiFloodPlugin(100,30));
			$message = \Swift_Message::newInstance('Kontakt über DLG Feldtage Info-Tool')
                                                ->setSender(array($this->config['admin']['email'] => $this->config['admin']['name']))
						->setFrom(array($this->config['admin']['email'] => $this->config['admin']['name']))
						->setReplyTo($this->request->getPost('email'))
						->setReturnPath($this->config['admin']['email']);
			$message->setBody($messageData['text'], 'text/html');
			$message->setTo(array($messageData['to'] => $messageData['name']));
			$h2t = new \Html2Text\Html2Text($messageData);
                        $message->addPart($h2t->getText(), 'text/plain');

			//pull the trigger
			$mailer->send($message, $failures);
        }
        
	/*
	 * Guess what it does
	 */	
	private function sendMessage($message){
		
		$session = curl_init('http://www.lox24.eu/API/httpsms.php'); 
                                         
		curl_setopt($session, CURLOPT_POST, True); 
		curl_setopt($session, CURLOPT_POSTFIELDS, $message); 		
		curl_setopt($session, CURLOPT_RETURNTRANSFER, True); 
		curl_setopt($session, CURLOPT_TIMEOUT, 10);


		$content = curl_exec($session); 

		$response = curl_getinfo($session); 
		var_dump($response);
		if($response['http_code'] != 200) { 
			$info= "Awww this did not work out because: ".  $response['http_code'] . "\n".$content."\n This was pushed: ".http_build_query($message); 
		} else { 
			$info= "Sweet success: ".$response['http_code']."\n".$content."\n This was pushed: ".http_build_query($message); 

		} 
		echo($info);
		curl_close($session);
	}
	
	
	  
	
}