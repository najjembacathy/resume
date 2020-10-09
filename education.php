<?php
class education{
  
    // database connection and table name
    private $conn;
    private $table_name = "education";
  
    // object properties
    public $id;
    public $Institution;
    public $Award;
    public $Year;
  
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
// read education
function read(){
  
    // select all query
    $query = "SELECT
                p.Name as Name, e.id, e.Institution, e.Award, e.Year
            FROM
                " . $this->table_name . " e
                LEFT JOIN
                    profile p
                        ON e.id = p.id
            ORDER BY
                e.id";
  
    // prepare query statement
    $stmt = $this->conn->prepare($query);
  
    // execute query
    $stmt->execute();
  
    return $stmt;
}

}
?>
