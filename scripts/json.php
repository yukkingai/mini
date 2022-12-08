<?php
    header("Access-Control-All-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    ini_set('display_errors', 1); // turn off on live server
    error_reporting(E_ALL); // turn off on live server
    require_once('config.php');

    // $getContent = getFilter('tbl_mini', 'tbl_mini_types', 'tbl_mini_models', 'mini_id', 'type_id', 'type_name', '3 doors');
    $getContent = getAll('tbl_mini');
    // $getContent = getSingle('tbl_mini','type_id', '3');
    $label = "name";
    // return result

    // $grpResult = "";
    // $grpResult .= "{";
    // if(!is_string($getContent)) {
    //     while ($conResult = mysqli_fetch_assoc($getContent)) {
    //         $jsonResult = "\"".$conResult[$label]."\"".": ".json_encode
    //         ($conResult, JSON_PRETTY_PRINT);
    //         $grpResult .= $jsonResult.",";
    //     }
    //     $grpResult = substr($grpResult, 0, -1);
    //     $grpResult .= "}";
    //     echo $grpResult;
        
    // }else {
    //     echo "<p>{$getContent}</p>";
    // }

    if(!is_string($getContent)) {
        $result = [];
        while($conResult = mysqli_fetch_assoc($getContent)){
            $result[$conResult[$label]] = $conResult;
        }
        echo json_encode($result, JSON_PRETTY_PRINT);

    }else{
        echo $getContent;
    }

?>