<?php

include 'connection.php';

echo "Entered BSDK";

if(isset($_POST['patient_registeration_btn']))
    {

        $ssn = $_POST['ssn'];
        $patient_name = $_POST['patient_name'];
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
        $RelevantDocs = $_POST['RelevantDocs'];

$query1 = "INSERT INTO `patient_registration` ( assn, name , pat_number , medical_cond , ward_assigned , bed_assigned , seriousness_level , relevant_docs_assigned , police_case , pat_care_name) VALUES (  2, '$patient_name' , $patient_number ,'$patient_medical_condition', $ward_assigned , $bed_assigned , '$patient_seriousness_level' , '$RelevantDocs', '$police_case' , '$patient_care_name')";

$query2 = "INSERT INTO `patient` (ASSN,name,MOB,AGE,Gender,Address) VALUES ( 1 , '$patient_name' , '$patient_phone_number' , $patient_age  , '$patient_gender' , '$patient_care_address' ) ";



    $res1= mysqli_query($con, $query1);
    $res2= mysqli_query($con, $query2);
    if($res2 && $res1)
    echo "New record created successfully  QUERY 2";
 else {
     echo "Error: " . $query1 . "<br>" . mysqli_error($con);
     echo "<br> Error: ";

    }
    
}
    ?>