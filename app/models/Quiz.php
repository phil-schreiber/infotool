<?php
namespace messetool\Models;
use Phalcon\Mvc\Model;
Model::setup(['notNullValidations' => false]);

/**
 * Description of Quiz
 *
 * @author Philipp Schreiber
 */
class Quiz extends \Phalcon\Mvc\Model{
	 public function initialize()
    {
       

        $this->hasOne('session', 'messetool\Models\Surveysession','session', array(
            'alias' => 'Surveysession'
        ));
		
		 $this->hasMany('uid', 'messetool\Models\Questionitems','pid', array(
            'alias' => 'Questionitems'
        ));
    }
}