
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
        
</body>
</html>

<?php
      include 'connection.php';

      if(isset($_POST['generate_report'])){

      $patient_name = trim($_POST['patient_name']);
      $patient_age = trim($_POST['patient_age']);
      $patient_ssn = trim($_POST['patient_ssn']);
      $patient_gender = trim($_POST['patient_gender']);
      $patient_number = trim($_POST['patient_number']);
      $patient_no = trim($_POST['patient_no']);
      $stay_in_emergency = trim($_POST['stay_in_emergency']);
      $go_home = trim($_POST['go_home']);
      $transfer_to_icu = trim($_POST['transfer_to_icu']);
      $transfer_to_ward = trim($_POST['transfer_to_ward']);
      $before_condition = trim($_POST['before_condition']);
      $after_condition = trim($_POST['after_condition']);
      $given_treat = trim($_POST['given_treat']);
      $lab_test = trim($_POST['lab_test']);
      $given_medicine = trim($_POST['given_med']);}

     //   if(isset($_POST['generate_report'])){

     //   	if (empty($_POST['patient_name'])) {
    	// 	echo "Please enter your Name<br>";
    	// }else{
    	// 	$patient_name = trim($_POST['patient_name']);
    	// }//fname else

     //   }//if


      echo "<table border=1>
            <tr>
                  <th>Patient ssn</th>
                  <th>Patient Name</th>
                  <th>Patient Age</th>
                  <th>Patient Gender</th>
                  <th>Phone Number</th>
                  <th>Patient No</th>
                  <th>Stay in emergency</th>
                  <th>Go Home</th>
                  <th>Tranfer to icu</th>
                  <th>Tranfer to ward</th>
                  <th>Before Condition</th>
                  <th>After Condition</th>
                  <th>Given Treat</th>
                  <th>Given Medicine</th>
                  <th>Lab Test</th>
            </tr>


            <tr>
                  <td>$patient_ssn</td>
                  <td>$patient_name</td>
                  <td>$patient_age</td>
                  <td>$patient_gender</td>
                  <td>$patient_number</td>
                  <td>$patient_no</td>
                  <td>$stay_in_emergency</td>
                  <td>$go_home</td>
                  <td>$transfer_to_icu</td>
                  <td>$transfer_to_ward</td>
                  <td>$before_condition</td>
                  <td>$after_condition</td>
                  <td>$given_treat</td>
                  <td>$given_medicine</td>
                  <td>$lab_test</td>

            </tr>
        </table>"
?>
