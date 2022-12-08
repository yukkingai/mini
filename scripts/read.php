<?php

    ini_set('display_errors', 1); // turn off on live server
    error_reporting(E_ALL); // turn off on live server
    // this file is for running our queries

    // how u want ur files, objects, and structure them and fetch
    // get all of something...

    // $tbl = "tbl_marvel"; // remove this when done testing
    // $col = "marvel_id";
    // $id = "4";
    // getSignle($tbl, $col, $id); // this is for TESTING ONLY!! 
    // filterType('tbl_mini', 'tbl_mini_types', 'tbl_mini_models', 'mini_id', 'type_id', 'type_name', '3 doors');

    function getAll($tbl) {
        // echo "Working from getAll";
        // echo $tbl;
        // gives me access to my database through the connect scripts
        include("connect.php"); //access to token and link access that connect to db
        $queryAll = "SELECT * FROM {$tbl}";
        // echo $queryAll;

        //this will query our database and return an object back to the variable
        $runAll = mysqli_query($link, $queryAll);
        if($runAll) {
            return $runAll;
        }else {
            $error = "Error from the read.php getAll function";
            return $error;
        }
        
        mysqli_close($link);

    }

    function getSingle($tbl, $col, $id) {
        include('connect.php');
        $querySingle = "SELECT * FROM {$tbl} WHERE {$col} = {$id}";
        // echo $querySingle; 
        $runSingle = mysqli_query($link, $querySingle);
        if($runSingle) {
            return $runSingle;
        }else {
            $error = "Error from the read.php getSingle function";
            return $error;
        }
        
        mysqli_close($link);
    }

    // table, coloum, 
    function filterType($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter) { // screen capture on phone, mind the "" at the end maybe wrong
        include('connect.php');
        $queryFilter = "SELECT * FROM {$tbl}, {$tbl2}, {$tbl3} WHERE {$tbl}.{$col} = {$tbl3}.{$col3} AND {$tbl2}.{$col} = {$tbl3}.{$col2} AND {$tbl2}.{$col2} = \"{$filter}\""; 

        // $queryFilter = "SELECT * FROM {$tbl}, {$tbl2}, {$tbl3} WHERE {$tbl}.{$col} = {$tbl3}.{$col} AND {$tbl2}.{$col2} = {$tbl3}.{$col2} AND {$tbl2}.{$col3} = \"{$filter}\""; // see FOL

        // echo $querySingle; 
        $runFilter = mysqli_query($link, $queryFilter);
        if($runFilter) {
            return $runFilter;
        }else {
            $error = "Error from the read.php getFilter function";
            return $error;
        }
        
        mysqli_close($link);
    }

?>