<?php
class Database {
	public static $db;
	public static $con;
	function Database(){
		$this->user="root";$this->pass="";$this->host="127.0.0.1";$this->ddbb="inn";
	}

	function connect(){
		$con = new mysqli($this->host,$this->user,$this->pass,$this->ddbb);
		$con->query("set sql_mode=''");
		return $con;
	}

	public static function getCon(){
		if(self::$con==null && self::$db==null){
			self::$db = new Database();
			self::$con = self::$db->connect();
		}
		return self::$con;
	}
	
}
?>
