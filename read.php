<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
  
// include database and object files
include_once '../config/database.php';
include_once '../objects/work_experience.php';
  
// instantiate database and work_experience object
$database = new Database();
$db = $database->getConnection();
  
// initialize object
$work_experience = new Work_experience($db);
  
// query work_experience
$stmt = $work_experience->read();
$num = $stmt->rowCount();
  
// check if more than 0 record found
if($num>0){
  
    // work_experience array
    $work_experience_arr=array();
    $work_experience_arr["records"]=array();
  
    // retrieve our table contents
    // fetch() is faster than fetchAll()
    // http://stackoverflow.com/questions/2770630/pdofetchall-vs-pdofetch-in-a-loop
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        // extract row
        // this will make $row['name'] to
        // just $name only
        extract($row);
  
        $work_experience_item=array(
            "id" => $id,
            "institution" => $Institution,
            "title" => $Title,
            "year" => $Year
            
        );
  
        array_push($work_experience_arr["records"], $work_experience_item);
    }
  
    // set response code - 200 OK
    http_response_code(200);
  
    // show work_experience data in json format
    echo json_encode($work_experience_arr);
}
  
else{
  
    // set response code - 404 Not found
    http_response_code(404);
  
    // tell the user no work_experience found
    echo json_encode(
        array("message" => "No work_experience found.")
    );
}
?>



