<?php 

 $conn = mysqli_connect('localhost','root','','big_form');

 mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

 if(isset($_POST['submit']))
 {   
     //Student Personal Details
     $firstName = $_POST['first_name'];
     $middleName = $_POST['middle_name'];
     $last_name = $_POST['last_name'];
     $student_dob = $_POST['student_dob'];
     $student_mobileno = $_POST['student_mobileno'];
     $student_alterno = $_POST['student_alterno'];
     $student_email = $_POST['student_email'];
    
     // Code for Image upload and Its name will be saved in db
     $original = $_FILES['student_photo']['name'];
     $tmpname = $_FILES['student_photo']['tmp_name'];
     $path = "images/". $original;
     $move = move_uploaded_file($tmpname,$path);
     
     //Student Lead Details 
     $lead_source = $_POST['lead_source'];
     $lead_medium = $_POST['lead_medium'];
     $states = $_POST["states"];  // Below code is for Inserting Checkbox Selected States
      $data = array();
       foreach($states as $state_list)
       {
             $data[] = $state_list;  
             $interested_states = implode(',',$data); 
       }
         
     $leadstatus = $_POST['lead_status'];
     $startyear = $_POST['startyear'];
     $startmonth = $_POST['startmonth'];
     $main_course = $_POST['main_course'];
     $course_stream = $_POST['course_stream'];

     //Student Educational Details
     $marks_10 = $_POST['10_marks'];
     $marks_20 = $_POST['20_marks'];
     $graduation_marks = $_POST['graduation_marks'];
     $graduationstream = $_POST['graduationstream'];
     $graduateyear = $_POST['graduateyear'];
     $jobprofile = $_POST['jobprofile'];
     $expyear = $_POST['expyear'];
     $expmonth = $_POST['expmonth'];
     
     // For Friends Recommendation 
     $name_one = $_POST['name_one'];
     $contact_one = $_POST['contact_one'];
     $name_two = $_POST['name_two'];
     $contact_two = $_POST['contact_two'];
     $add_comment = $_POST['add_comment'];
 
     mysqli_begin_transaction($conn);
     
     try
      {        

     $sql = "INSERT INTO student_details(f_name, m_name, l_name, date_ofbirth, mobile_num, mobile_num_alter, email_id,stu_image)
            VALUES ('$firstName','$middleName','$last_name','$student_dob','$student_mobileno','$student_alterno','$student_email','$original')";
    
     $sql1 = "INSERT INTO student_leads_details(start_year,start_month,interested_states,lead_source_id,lead_meduim_id,lead_status_id,main_courses_id,course_stream_id)
            VALUES('$startyear','$startmonth','$interested_states','$lead_source','$lead_medium','$leadstatus','$main_course','$course_stream')";
      
    
     $sql2 = "INSERT INTO student_educational_detail(10_marks,12_marks,graduation_marks,graduation_stream,graduation_year,job_profile,exp_year,exp_month)
     VALUES('$marks_10','$marks_20','$graduation_marks','$graduationstream','$graduateyear','$jobprofile','$expyear','$expmonth')";

     
     $sql3 = "INSERT INTO student_recommend(name_one,name_two,contact_no1,contact_no2,add_comment)
     VALUES('$name_one','$name_two','$contact_one','$contact_two','$add_comment')";

     $query2 = mysqli_query($conn,$sql);
     $query3 = mysqli_query($conn,$sql1);
     $query4 = mysqli_query($conn,$sql2);
     $query4 = mysqli_query($conn,$sql3);

     mysqli_commit($conn);
     echo "Data Submitted";

     }
   catch (mysqli_sql_exception $exception) 
     {
      mysqli_rollback($conn);
      throw $exception;
      echo "ErrorW";

    } 
}


?>


<?php 
//      if($query && $query2 && $query3 && $query4)
//      {
//         echo "Successfully Inserted".mysqli_commit($conn);
//      }
//      else
//      {
//         echo mysqli_error($conn);     
//         echo "<h3 style='color:red'>Commit Transaction Failed.....So Your Data not Inserted</h3>".mysqli_rollback($conn);
//      }