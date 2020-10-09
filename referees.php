<?php
class referees{
  
    // database connection and table name
    private $conn;
    private $table_name = "referees";
  
    // object properties
    public $id;
    public $Name;
    public $Title;
    public $Contact;
    public $Email;
  
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
// read referees
function read(){
  
    // select all query
    $query = "SELECT
                p.Name as Name, r.id, r.Name, r.Title, r.Contact, r.Email
            FROM
                " . $this->table_name . " r
                LEFT JOIN
                    profile p
                        ON r.id = p.id
            ORDER BY
                r.id";
  
    // prepare query statement
    $stmt = $this->conn->prepare($query);
  
    // execute query
    $stmt->execute();
  
    return $stmt;
}

}
?>
