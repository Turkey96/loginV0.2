<?php
	require 'db.php';

 		$sqltran = mysqli_query($con, "SELECT * FROM user ")or die(mysqli_error($con));
		$arrVal = array();

		$i=1;
 		while ($rowList = mysqli_fetch_array($sqltran)) {

						$name = array(
								'num'=>$i,
                                'id'=> $rowList['idPreguntas'],
                                'pre'=> $rowList['Pregunta']
                                'op1'=> $rowList['Opcion1']
                                'op2'=> $rowList['Opcion2']
                                'op3'=> $rowList['Opcion3']
                                'sol'=> $rowList['solucion']
                                'dif'=> $rowList['Dificultad']
		);


		array_push($arrVal, $name);
		$i++;
	}
		echo  json_encode($arrVal);


	mysqli_close($con);
?>