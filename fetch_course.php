<?php

 $conn = mysqli_connect('localhost','root','','big_form');

 $courseID = $_POST['courseid'];

 $sql = "SELECT DISTINCT stream_name,streamid FROM course_stream INNER JOIN main_course ON course_stream.main_course_id = $courseID";

 $query = mysqli_query($conn,$sql);

    $table = '';
    while($row = mysqli_fetch_array($query))
    { 
        $table .=  '<option value="'.$row["streamid"].'">'.$row['stream_name'].'</option>';
    }
    echo $table;


?>