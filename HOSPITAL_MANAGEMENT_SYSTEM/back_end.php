<?php
include 'connection.php';

//code for patient registeration
$patient_name = $_POST['patient_name'];
$patient_ssn = $_POST['patient_ssn'];
$patient_age = $_POST['patient_age'];
$patient_phone_number = $_POST['patient_phone_number'];
$patient_gender = $_POST['patient_gender'];
$patient_medical_condition = $_POST['patient_medical_condition'];
$patient_seriousness_level = $_POST['patient_seriousness_level'];
$police_case = $_POST['police_case'];
$bed_assigned = $_POST['bed_assigned'];
$ward_assigned = $_POST['ward_assigned'];
$patient_care_name = $_POST['patient_care_name'];
$patient_care_address = $_POST['patient_care_address'];
$patient_number = $_POST['patient_number'];
$patient_address = $_POST['patient_address'];
$Docs = $_POST['Docs'];

if(isset($_POST['patient_registeration'])){
	$sql_for_registeration = "INSERT INTO pat_reg(ssn,pat_no,name,age,gender) values('$patient_ssn','$patient_number','$patient_name','$patient_age','$patient_gender')";
	$query_for_registeration = mysqli_query($con,$sql_for_registeration);

	if ($query_for_registeration) {
		echo "Data inserted";
	}else{echo "Try Again";}//else

	$sql_for_patient_detail = "INSERT INTO patientdetail(ssn,name,mobile) values('$patient_ssn','$patient_name','$patient_number')";
    $query_for_detail = mysqli_query($con,$sql_for_patient_detail);

    	if ($query_for_detail) {
		echo "Data inserted";
	}else{echo "Try Again";}//else

    $sql_for_address = "INSERT INTO patientaddress(ssn,address) values('$patient_ssn','$patient_address')";
    $query_for_address = mysqli_query($con,$sql_for_address);


	if ($query_for_address) {
		echo "Data inserted";
	}else{echo "Try Again";}//else
}//if

?>