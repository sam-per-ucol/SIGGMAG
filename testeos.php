<?php 

class MysqlConectionClass{

	protected $DB_NAME;
	protected $DB_HOST;
	protected $DB_USER;
	protected $DB_PASS;
	protected $query;
	protected $result;
	public $mysqli;


	public function __construct(){ /*Aditar parametros para la conexion de la base de datos*/

		$this->DB_NAME = 'isis';
		$this->DB_HOST = 'localhost';
		$this->DB_USER = 'root';
		$this->DB_PASS = '';
		$this->mysqli = new mysqli($this->DB_HOST, $this->DB_USER, $this->DB_PASS, $this->DB_NAME);
		
		if (mysqli_connect_errno()) {
			printf("Fallo de conexion: %s\n", mysqli_connect_error());
			exit();
		}
	}


	public function __destruct() { /*Cuando ya no se use este objeto, se cierra la conexion*/
        mysql_close($this->mysqli);
        echo "Conexion cerrada";
    }

	public function consulta($le_new_overpawa_consulta_suag){
		$this->query = $le_new_overpawa_consulta_suag;
		$this->result = $this->mysqli->query($this->query) or die($this->mysqli->error.__LINE__);


	 	if($this->result->num_rows > 0) {
	 		return $this->result;
	 	}
	 	else {
	 		echo 'NO RESULTS';	
	 	}

	}



}
error_reporting(E_ERROR | E_PARSE | E_NOTICE);
$conexion = new MysqlConectionClass();
$le_result = $conexion->consulta("SELECT * FROM inventario WHERE material ='Opalina'");

while($row = $le_result->fetch_assoc()) {
	echo $row['material']." As new<br>";	
}


?>
