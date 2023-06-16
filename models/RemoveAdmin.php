<?php
/**
 * Class: Class: Content Model for generation of view content for Login
 *
 * @author Gerry Guinane 
 * 
 */

class RemoveAdmin extends Model{
    
//CLASS properties
    /**
     *
     * @var type 
     * 
     * @var MySQLi object $db the database connection  
    * @var String $pageTitle containing page title
    * @var String $pageHeading Containing Page Heading
    * @var Array $postArray Containing copy of $_POST array
    * @var String $panelHead_1 Panel 1 Heading
    * @var String $panelHead_2 Panel 2 Heading
    * @var String $panelHead_3 Panel 3 Heading
    * @var String $panelContent_1 Panel 1 Content
    * @var String $panelContent_2 Panel 2 Content     
    * @var String $panelContent_3 Panel 3 Content
     * 
     */
    protected $db;                //MySQLi object: the database connection ( 
    protected $pageTitle;         //String: containing page title
    protected $pageHeading;       //String: Containing Page Heading
    protected $postArray;         //Array: Containing copy of $_POST array
    protected $panelHead_1;       //String: Panel 1 Heading
    protected $panelHead_2;       //String: Panel 2 Heading
    protected $panelHead_3;       //String: Panel 3 Heading
    protected $panelContent_1;    //String: Panel 1 Content
    protected $panelContent_2;    //String: Panel 2 Content     
    protected $panelContent_3;    //String: Panel 3 Content
        
//CLASS methods
        //METHOD: constructor 
    /**
     * 
     * @param Array $postArray Containing copy of $_POST array
     * @param String $pageTitle containing page title
     * @param String $pageHead Containing Page Heading
     * @param MySQLi object $database the database connection
     * @param User object $user the current user
     */
	function __construct($postArray,$pageTitle,$pageHead,$database,$user,$pageID)
	{   
            parent::__construct('Login',$user);
            
            $this->db=$database;  
            
            //set the PAGE title
            $this->setPageTitle($pageTitle);
            
            //set the PAGE heading
            $this->setPageHeading($pageHead);

            //get the postArray
            $this->postArray=$postArray;
            
            //get the PAGE ID
            $this->pageID = $pageID;
            
            //set the FIRST panel content
            $this->setPanelHead_1();
            $this->setPanelContent_1();


            //set the DECOND panel content
            $this->setPanelHead_2();
            $this->setPanelContent_2();
        
            //set the THIRD panel content
            $this->setPanelHead_3();
            $this->setPanelContent_3();
	}
        //END METHOD: constructor 
      
        //SETTER METHODS
        
        //Headings
        public function setPageTitle($pageTitle){ //set the page title    
                $this->pageTitle=$pageTitle;
        }  //end METHOD -   set the page title       
        public function setPageHeading($pageHead){ //set the page heading  
                $this->pageHeading=$pageHead;
        }  //end METHOD -   set the page heading
        
        //Panel 1
        public function setPanelHead_1(){//set the panel 1 heading
            $this->panelHead_1='<h3>Remove An Admin</h3>';
                 
        }//end METHOD - //set the panel 1 heading
        public function setPanelContent_1(){//set the panel 1 content
            $this->panelContent_1 = file_get_contents('forms/form_remove_admin.html');  //this reads an external form file into the string 
            
        }//end METHOD - //set the panel 1 content        

        //Panel 2
        public function setPanelHead_2(){ //set the panel 2 heading
            $this->panelHead_2='<h3>Result</h3>'; 
            
        }//end METHOD - //set the panel 2 heading     
        public function setPanelContent_2(){//set the panel 2 content  
            if(isset($this->postArray['btnRemove'])){  //check that the login button is pressed
                $data = new AdminTable($this->db);
                
                if($data->deleteRecordbyID($_POST['username'])){
                            $this->panelContent_2 = 'User removed';
                        }
                        else{
                            $this->panelContent_2 = 'Cannot find user';
                        }
            }
            else{
                $this->panelContent_2='Please enter the username of the admin you would like to remove';
            }
        }//end METHOD - //set the panel 2 content  
        
        //Panel 3
        public function setPanelHead_3(){ //set the panel 3 heading
            $this->panelHead_3='<h3>Panel 3</h3>'; 
            
        } //end METHOD - //set the panel 3 heading
        public function setPanelContent_3(){ //set the panel 2 content
            $this->panelContent_3='Panel 3 content - under construction';
            
            
        }  //end METHOD - //set the panel 2 content        
       
        //GETTER METHODS
        public function getPageTitle(){return $this->pageTitle;}
        public function getPageHeading(){return $this->pageHeading;}
        public function getMenuNav(){return $this->menuNav;}
        public function getPanelHead_1(){return $this->panelHead_1;}
        public function getPanelContent_1(){return $this->panelContent_1;}
        public function getPanelHead_2(){return $this->panelHead_2;}
        public function getPanelContent_2(){return $this->panelContent_2;}
        public function getPanelHead_3(){return $this->panelHead_3;}
        public function getPanelContent_3(){return $this->panelContent_3;}
        public function getUser(){return $this->user;}
     
        //END GETTER METHODS

        
}//end class
        