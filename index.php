<?php

/*
 * 
 * Model View Controller FRAMEWORK Application
 * 
 * This is the main entry point for this MVC application
 * 
 * @author gerry.guinane
 * 
 * Release 02 Date 15 Feb 2021 Initial framework release
 * Release 03 Date 17 Feb 2021 Removed un-neccessary code from User class. Added sample dummy menu item for Customer 
 * Release 04 Date 19 Feb 2021 Modified Model Base Class 
 * Release 05 Date 08 Mar 2021 Modified 
 *          index.php - force logout for unknown user types 
 *          Model constructors modified to take $user as argument
 *          Improved logout process
 *          .htaccess files added to provide sub folder security
 * Release 06 Date 10 Mar 2021 Bug Fix HelperHTML class 
 * 
 */

//join/start a session between the browser client and Apache web server
session_start(); 

//load application configuration
include_once 'config/config.php';
include_once 'config/database.php';

//load class library

//Base Classes
include_once 'classlib/baseClasses/Controller.php';
include_once 'classlib/baseClasses/Model.php';
include_once 'classlib/baseClasses/TableEntity.php';

//System Classes
include_once 'classlib/system/Session.php';
include_once 'classlib/system/User.php';

//helper classes
include ('classlib/helperClasses/HelperHTML.php');

//Database Table Entities
include_once 'classlib/entities/MemberTable.php';
include_once 'classlib/entities/AdminTable.php';
include_once 'classlib/entities/FishTable.php';
include_once 'classlib/entities/BugTable.php';
include_once 'classlib/entities/ArtTable.php';
include_once 'classlib/entities/VillagerTable.php';

//Controller Clases for specific user types
include_once 'controllers/GeneralController.php';
include_once 'controllers/MemberController.php';
include_once 'controllers/AdminController.php';

//Navigation models
include_once 'models/NavigationGeneral.php';
include_once 'models/NavigationMember.php';
include_once 'models/NavigationAdmin.php';

//Page models - Common
include_once 'models/GeneralHome.php';
include_once 'models/UnderConstruction.php';
include_once 'models/Login.php';
include_once 'models/ViewInformation.php';
include_once 'models/Register.php';
include_once 'models/ChangePassword.php';
include_once 'models/RemoveAdmin.php';

//Page models - ADMIN user
include_once 'models/AdminHome.php';

//Page models MEMBER
include_once 'models/MemberHome.php';

//attempt to connect to the MySQL Server (with error reporting supression '@')
@$db=new mysqli($DBServer, $DBUser, $DBPass, $DBName, $DBportNr);
//check if there is an error in the connection
if($db->connect_errno){  
    if (DEBUG_MODE){
        $msg = '<h3>Unable to make Database Connection</h3>';
            //report on connection issue
    $msg.= '<p>There has been a proble making connection to MySQL Server - MySQLi Error message:';
    $msg.= '<ul>';
    $msg.= '<li>MySQLi Error Number  : ' . $db->connect_errno. '</li>';
    $msg.= '<li>MySQLi Error Message : '.$db->connect_error. '</li>';
    $msg.= '</ul>';
    
    }
    else{
        $msg= '<h4>Oops - something is not working!</h4>';
    }
    exit($msg);  //the script exits here if no database connection can be made
}

@$db->query("SET NAMES 'utf8'"); //make sure database connection is set to support UTF8 characterset

//Create the new session object
$session = new Session();
$user = new User($session, $db, false);


if ($user->getLoggedInState()) {
    //load the appropriate controller depending on the user type
    //
    //
 
    switch ($user->getUserType()) {
        case "MEMBER":  //create new MEMBER controller
            $controller = new MemberController($user, $db);
            break;

        case "ADMIN":  //create new ADMIN controller
            $controller = new AdminController($user, $db);
            break;        
        
        default :  //create new general/not logged in controller
            $controller = new GeneralController($user, $db);
            break;
    }
}
 else {
    //user is not logged in
    //create new general/not logged in controller
    $controller = new GeneralController($user, $db);
}


//run the application
$controller->run();

//Debug information
if (DEBUG_MODE) { 
    //Comment out whichever info you dont want to use.
    

    echo '<section>';
        echo '<!-- The Debug SECTION  of index.php-->';
        echo '<div class="container-fluid"   style="background-color: #AA44AA">'; //outer DIV

        echo '<h2>Index.php - Debug information</h2><br>';

        echo '<section style="background-color: #AAAAAA">';
            echo '<pre><h5>SESSION Class</h5>';
            $session->getDiagnosticInfo();
            echo '</pre>';
        echo '</section>';

        echo '<section style="background-color: #AAAAAA">';
            echo '<pre><h5>USER Class</h5>';
            $user->getDiagnosticInfo();
            echo '</pre>';
        echo '</section>';            

        echo '<section style="background-color: #AAAAAA" >';
            echo '<!-- $_COOKIE ARRAY SECTION  -->';
            echo '<div class="container-fluid"   style="background-color: #AAAAAA">'; //outer DIV  
            echo '<h3>$_COOKIE Array values</h3>';
            echo '<table border=1  style="background-color: #EEEEEE" >';
            foreach($_COOKIE as $key=>$value){
                echo '<tr><td>'.$key.'</td><td>'.$value.'</td></tr>';
            }
            echo '</table><hr>';
            echo '<!-- END $_COOKIE ARRAY SECTION  -->';
        echo '</section>'; 
    
    echo '</section>';
    echo '</br>';
    echo '</div>';
    //controller class debug info        
    $controller->debug();

};
echo '</body></html>'; //end of HTML Document

//close or release any open connections/resources
//close the DB Connection
$db->close();
