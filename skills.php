<?php
class skills{
  
    // database connection and table name
    private $conn;
    private $table_name = "skills";
  
    // object properties
    public $id;
    public $Skills;
  
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
// read skills
function read(){
  
    // select all query
    $query = "SELECT
                p.Name as Name, s.id, s.Skills
            FROM
                " . $this->table_name . " s
                LEFT JOIN
                    profile p
                        ON s.id = p.id
            ORDER BY
                s.id";
  
    // prepare query statement
    $stmt = $this->conn->prepare($query);
  
    // execute query
    $stmt->execute();
  
    return $stmt;
}

}
?>
