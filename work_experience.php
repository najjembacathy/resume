<?php
class work_experience{
  
    // database connection and table name
    private $conn;
    private $table_name = "work_experience";
  
    // object properties
    public $id;
    public $Institution;
    public $Title;
    public $Year;
  
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
// read work_experience
function read(){
  
    // select all query
    $query = "SELECT
                p.Name as Name, w.id, w.Institution, w.Title, w.Year
            FROM
                " . $this->table_name . " w
                LEFT JOIN
                    profile p
                        ON w.id = p.id
            ORDER BY
                w.id";
  
    // prepare query statement
    $stmt = $this->conn->prepare($query);
  
    // execute query
    $stmt->execute();
  
    return $stmt;
}

}
?>
