<?php
class profile{
  
    // database connection and table name
    private $conn;
    private $table_name = "profile";
  
    // object properties
    public $id;
    public $Name;
    public $Contact;
    public $Email;
  
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
// read profile
function read(){
  
    // select all query
    $query = "SELECT
                e.Institution as Institution, p.id, p.Name, p.Contact, p.Email
            FROM
                " . $this->table_name . " p
                LEFT JOIN
                    education e
                        ON p.id = e.id
            ORDER BY
                p.id";
  
    // prepare query statement
    $stmt = $this->conn->prepare($query);
  
    // execute query
    $stmt->execute();
  
    return $stmt;
}

}
?>
