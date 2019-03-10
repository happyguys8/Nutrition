<?php 

	header("Content-Type: application/json; charset=UTF-8");

	include_once '../config/database.php';
	$conn = getDBConnection();

	$LngTyp = $_REQUEST["LngTyp"];
	
	$result = mysqli_query($conn, "CALL usp_GetOrnList('$LngTyp')") or die("Query fail: " . mysqli_error());
	if($result->num_rows > 0)
	{
		$itemlist=array();
		while($row=$result->fetch_array())
		{
			array_push(
				$itemlist, 
				array(
					"id"=>$row['ORNCD'],
					"seq"=>$row['ORNSEQ'],
					"name"=>$row['ORNNAM'],
					"spec"=>$row['ORNSPEC'],
					"image_url"=>$row['ORNIMG']
				)
			);
		}
		print(json_encode(array_reverse($itemlist)));
	}
	else
	{
		print(json_encode(array("PHP EXCEPTION : CAN'T RETRIEVE FROM MYSQL. ")));
	}
	/*
		if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	} 

	$result = $conn->query("SELECT * FROM noices");
	
	$outp = array();
	$outp = $result->fetch_all(MYSQLI_ASSOC);
	echo json_encode($outp);
*/
	$conn->close();
/*
	//run the store proc
	$result = mysqli_query($conn, "CALL usp_GetItmList('$LngTyp')") or die("Query fail: " . mysqli_error());

	if($result->num_rows > 0)
	{
		$itemlist=array();
		while($row=$result->fetch_array())
		{
			array_push(
				$itemlist, 
				array(
					"ITMITMNO"=>$row['ITMITMNO']
					//,
					//"ITMNAM"=>$row['ITMNAM'],
					//"ITMSPEC"=>$row['ITMSPEC'],
					//"ITMTYPE"=>$row['ITMTYPE'],
					//"ITMCAGCD"=>$row['ITMCAGCD']
				)
			);
		}
		print(json_encode(array_reverse($itemlist)));
	}
	else
	{
		print(json_encode(array("PHP EXCEPTION : CAN'T RETRIEVE FROM MYSQL. ")));
	}
	$con->close();
	*/
/*
	//loop the result set
	while ($row = mysqli_fetch_array($result)){   
		 echo $row[0] . " - " . + $row[1]; 
  }
  */
/*
  	if ($conn->query($sql) === TRUE) {
		echo "New record created successfully";
	} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}
	
	$conn->close();
*/  
?>
