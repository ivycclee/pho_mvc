<?php

/** 
 * Class: Helper class for regular HTML generation such as html tables
 * 
 * Automates some common HTML generating tasks
 * 
 **/
Class HelperHTML {
    
    
    
   
    public static function generateTABLE($resultSet){
        //This STATIC method returns a HTML table as a string
        //It takes one argument - $resultSet which must contain an object
        //of the $resultSet class
        $table='';  //start with an empty string
        
        //generate the HTML table
        $i=0;
        $resultSet->data_seek(0);  //point to the first row in the result set
        $table.= '<table class="table table-striped">';
        while ($row = $resultSet->fetch_assoc()) {  //fetch associative array
            while ($i===0)  //trick to generate the HTML table headings
            {   $table.=  '<tr>';
                foreach($row as $key=>$value){
                    $table.=  "<th>$key</th>"; //echo the keys as table headings for the first row of the HTML table
                }
                $table.=  '</tr>';
                $i=1;  
            }

            $table.=  '<tr>';
            foreach($row as $value){
                $table.=  "<td>$value</td>";
                }
            $table.=  '</tr>';
        }
        $table.=  '</table>';
        
        return $table;
    }
    
}

