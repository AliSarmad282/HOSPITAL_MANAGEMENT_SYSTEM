<?php

include 'connection.php';

  if(isset($_POST['billBTN'])){

    $ssn = $_POST['ssn'];
    $medicine = $_POST['medicine'];
    $patient_number = $_POST['patient_number'];
    $fee = $_POST['fee'];
    $room_charges = $_POST['room_charges'];
    $ward_charges = $_POST['ward_charges'];
    $Surgeon_fee = $_POST['Surgeon_fee'];
    $icu_cost = $_POST['icu_cost'];
    $expenses = $_POST['expenses'];
    $labfee = $_POST['labfee'];
    $food = $_POST['food'];
    $days = $_POST['daysStayed'];
    $theater_fee = $_POST['theater_fee'];


$query = "INSERT INTO `bill` (pat_ssn , assn , pat_number , surgeon_fee , ward_charges , room_charges , doc_fee , icu_cost , lab_fee , theater_fee , food , number_of_days_stay , other_expenses , medicine ) VALUES ('$ssn' , 2 , $patient_number , $Surgeon_fee , $ward_charges , $room_charges , $fee , $icu_cost , $labfee , $theater_fee , '$food' , $days , $expenses , $medicine ) ";


$res = mysqli_query($con , $query);

    if($res)
      {
        echo "successfully Iserted Bill";
      }
    else{
        echo "successfully Iserted Bill";
      }





     	// echo "<table border=1>

     	//         <tr>
      //                <th>SSN</th>
      //                // <th>Medicine</th>
      //                <th>Fee</th>
      //                <th>Room Charges</th>
      //                <th>Ward Charges</th>
      //                <th>Surgeon Fee</th>
      //                <th>ICU Cost</th>
      //                <th>Expenses</th>
      //                <th>Lab Fee</th>
      //                <th>Food</th>
      //                <th>Days</th>
      //                <th>Theater Fee</th>
     	//         </tr>

     	//         <tr>
      //                <td>$ssn</td>
      //                  // <td>$medicine</td>
      //                <td>$fee</td>
      //                <td>$room_charges</td>
      //                <td>$ward_charges</td>
      //                <td>$surgeon_fee</td>
      //                <td>$icu_cost</td>
      //                <td>$expenses</td>
      //                <td>$labfee</td>
      //                <td>$food</td>
      //                <td>$days</td>
      //                <td>$theater_fee</td>
                     
     	//         </tr>
      //     </table>
     	// ";
  }
