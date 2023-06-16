<?php


class ViewInformation extends Model{

//CLASS properties
    protected $pageTitle;         //String: containing page title
    protected $pageHeading;       //String: Containing Page Heading
    protected $panelHead_1;       //String: Panel 1 Heading
    protected $panelHead_2;       //String: Panel 2 Heading
    protected $panelHead_3;       //String: Panel 3 Heading
    protected $panelContent_1;    //String: Panel 1 Content
    protected $panelContent_2;    //String: Panel 2 Content     
    protected $panelContent_3;    //String: Panel 3 Content    

    protected $db;
    protected $postArray;
    protected $pageID;
    
    
//CLASS methods	

    //METHOD: constructor 
    function __construct($loggedin,$pageTitle,$pageHead, $pageID, $db) {   
        parent::__construct('Information Page',$loggedin);

        //Initialise class members
        $this->pageID=$pageID;
        $this->db = $db;
        
        //set the PAGE title
        $this->setPageTitle($pageTitle);

        //set the PAGE heading
        $this->setPageHeading($pageHead);

        //set the FIRST panel content
        $this->setPanelHead_1();
        $this->setPanelContent_1();

        //set the SECOND panel content
        $this->setPanelHead_2();
        $this->setPanelContent_2();

        //set the THIRD panel content
        $this->setPanelHead_3();
        $this->setPanelContent_3();
    }
    //END METHOD: constructor 

    //setter methods
    
    //headings
    public function setPageTitle($pageTitle){ //set the page title    
            $this->pageTitle=$pageTitle;
    }  //end METHOD -   set the page title       
    public function setPageHeading($pageHead){ //set the page heading  
            $this->pageHeading=$pageHead;
    }  //end METHOD -   set the page heading

    //Panel 1
    public function setPanelHead_1(){//set the panel 1 heading
        switch ($this->pageID)
        {
            case "villagers":
                    $this->panelHead_1='<h3>View All Villagers</h3>';
                    break;         
            case "fish":
                    $this->panelHead_1='<h3>View All Fish</h3>';
                    break;
            case "bugs":
                    $this->panelHead_1='<h3>View All Bugs</h3>';
                    break;
            case "art":
                    $this->panelHead_1='<h3>View All Artwork</h3>';
                    break;
            case "viewAll":
                    $this->panelHead_1='<h3>View All Admins</h3>';
                    break;
            default:
                    $this->panelHead_1='Test';
                    break;
        }
    }//end METHOD - //set the panel 1 heading
    public function setPanelContent_1(){//set the panel 1 content
       switch ($this->pageID)
        {
            case "villagers":
                $this->panelContent_1 = "This page is to view all villagers that exist in the game, that can move into your island!"
                . "<p>There are 397 villagers in total in this game, so I've only added a select few for the moment. </p>";
                break;         
            case "fish":
                $this->panelContent_1 = "This page is to view all fish that can be caught and donated to the museum.";
                break;
            case "bugs":
                $this->panelContent_1 = "This page is to view all bugs that can be caught and donated to the museum.";
                break;
            case "art":
                $this->panelContent_1 = "This page is to view all art that can be bought from Crazy Redd and donated to the museum.";
                break;
            case "viewAll":
                $admins = new AdminTable($this->db);
                $this->panelContent_1 = HelperHTML::generateTABLE($admins->getAllRecords());
                break;
            default:
                $this->panelContent_1 = "";
                break;

        }
        
    }//end METHOD - //set the panel 1 content        

    //Panel 2
    public function setPanelHead_2(){ //set the panel 2 heading
        switch ($this->pageID)
        {
            case "villagers":
                    $this->panelHead_2='<h3>Villager Information</h3>';
                    break;         
            case "fish":
                    $this->panelHead_2='<h3>Fish Information</h3>';
                    break;
            case "bugs":
                    $this->panelHead_2='<h3>Bug Information</h3>';
                    break;
            case "art":
                    $this->panelHead_2='<h3>Artwork Information</h3>';
                    break; 
            case "viewAll":
                    $this->panelHead_2='<h3>View All Members</h3>';
                    break;
            default:
                    $this->panelHead_2='Test';
                    break;
        }
    }//end METHOD - //set the panel 2 heading        
    
    
    public function setPanelContent_2(){//set the panel 2 content
        switch ($this->pageID)
        {
            case "villagers":
                    $villager = new VillagerTable($this->db);
                    $this->panelContent_2 = HelperHTML::generateTABLE($villager->getAllRecords());
                    break;         
            case "fish":
                    $fishInfo = new FishTable($this->db);
                    $this->panelContent_2 = HelperHTML::generateTABLE($fishInfo->getAllRecords());
                    break;
            case "bugs":
                    $bugInfo = new BugTable($this->db);
                    $this->panelContent_2 = HelperHTML::generateTABLE($bugInfo->getAllRecords());
                    break;
            case "art":
                    $artInfo = new ArtTable($this->db);
                    $this->panelContent_2 = HelperHTML::generateTABLE($artInfo->getAllRecords());
                    break;
            case "viewAll":
                    $members = new MemberTable($this->db);
                    $this->panelContent_2 = HelperHTML::generateTABLE($members->getAllRecords());
                    break;
            default:
                    $this->panelContent_2 = "";
                    break;
        }
    }//end METHOD - //set the panel 2 content  

    //Panel 3
    public function setPanelHead_3(){ //set the panel 3 heading
        if($this->loggedin){
            $this->panelHead_3='<h3>Panel 3</h3>';   
        }
        else{        
            $this->panelHead_3='<h3>Panel 3</h3>'; 
        }
    } //end METHOD - //set the panel 3 heading
    public function setPanelContent_3(){ //set the panel 2 content
        if($this->loggedin){
            $this->panelContent_3="Panel 3 content for <b>$this->pageHeading</b> menu item is under construction.  This message appears if user is in logged ON state.";;
        }
        else{        
            $this->panelContent_3="Panel 3 content for <b>$this->pageHeading</b> menu item is under construction.  This message appears if user is in logged OFF state.";;
        }
    }  //end METHOD - //set the panel 2 content        


    //getter methods
    public function getPageTitle(){return $this->pageTitle;}
    public function getPageHeading(){return $this->pageHeading;}
    public function getMenuNav(){return $this->menuNav;}
    public function getPanelHead_1(){return $this->panelHead_1;}
    public function getPanelContent_1(){return $this->panelContent_1;}
    public function getPanelHead_2(){return $this->panelHead_2;}
    public function getPanelContent_2(){return $this->panelContent_2;}
    public function getPanelHead_3(){return $this->panelHead_3;}
    public function getPanelContent_3(){return $this->panelContent_3;}
        
        
}//end class
        