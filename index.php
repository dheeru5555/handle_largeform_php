<?php $conn = mysqli_connect('localhost','root','','big_form');  ?>

<link rel="stylesheet" href="assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/dist/css/AdminLTE.min.css">
<link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">


<?php include('sidebar.php'); ?>
 <?php //include('sidebar.php')  ?>
 <div class="content-wrapper">
   <section class="content">
      <div class="shortform-create">
         <div class="shortform-form box box-success"><br>
         <h3><center><b>Lead Generate Details </b></center></h3>

            <form action="insert.php" method="post" enctype="multipart/form-data">

               <div class="box-body">

                  <div class="row">
                   <h4 style="color:green"><center><b>Student Personal Details</b></center></h4><br>
                     <div class="col-md-3">
                        <div class="form-group">
                           <label class="control-label">First Name</label>
                           <input type="text" class="form-control" name="first_name" maxlength="50">
                        </div>
                     </div>
                     <div class="col-md-3">
                        <div class="form-group">
                           <label class="control-label">Middle Name</label>
                           <input type="text" class="form-control" name="middle_name" maxlength="50">
                        </div>
                     </div>
                     <div class="col-md-3">
                        <div class="form-group">
                           <label class="control-label">Last Name</label>
                           <input type="text" class="form-control" name="last_name" maxlength="50">
                        </div>
                     </div>
                     <div class="col-md-3">
                        <div class="form-group">
                           <label class="control-label">DOB</label>
                           <input type="date" name="student_dob" class="input-group">
                        </div>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col-md-4">
                        <div class="form-group">
                           <label class="control-label">Mobile No.</label>
                           <input type="text" class="form-control" name="student_mobileno">
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="form-group">
                           <label class="control-label">Alternate Mobile No</label>
                           <input type="text" class="form-control" name="student_alterno">
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="form-group">
                           <label class="control-label">Email ID</label>
                           <input type="email" class="form-control" name="student_email">
                        </div>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col-md-6">
                        <div class="form-group">
                           <label class="control-label">Student Photo</label>
                             <input type="file" class="form-control" name="student_photo">
                        </div>
                     </div>
                   </div>
                   <br>
                  <div class="row">
                   <h4 style="color:green"><center><b>Student Lead Details</b></center></h4><br>
                     <div class="col-md-6">
                        <div class="form-group">
                           <label class="control-label">Lead Source</label>
                           <select class="form-control" name="lead_source">
                              <option value="">Select Source</option>
                                <?php  $sql = "SELECT * from lead_source";
                                     $query = mysqli_query($conn,$sql);
                                     while($row = mysqli_fetch_array($query))
                                     {
                                        echo"<option value='".$row['leid']."'>".$row['lead_source']."</option>";
                                     }
                                 ?>
                           </select>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="form-group">
                           <label class="control-label">Lead Source Medium </label>
                           <select class="form-control" name="lead_medium">
                              <option value="">Select Medium</option>
                              <?php  
                                     $sql = "SELECT * from lead_medium";
                                     $query = mysqli_query($conn,$sql);
                                     while($row = mysqli_fetch_array($query))
                                     {
                                        echo"<option value='".$row['leadmediumid']."'>".$row['lead_mediums']."</option>";
                                     }
                               ?>
                           </select>
                        </div>
                     </div>
                  </div><br>
                  
                  <div class="row">
                     <div class="col-md-6">
                        <div class="form-group">
                           <label class="control-label">Student's Interested State</label>
                           <input type="hidden" name="" value="">
                           <div selected="selected" multiple="true">
                              <label><input type="checkbox" name="states[]" value="Haryana"> Haryana</label>
                              <label><input type="checkbox" name="states[]" value="Gujrat"> Gujrat</label>
                              <label><input type="checkbox" name="states[]" value="Maharshtra"> Maharshtra</label>
                              <label><input type="checkbox" name="states[]" value="Delhi"> Delhi</label>
                              <label><input type="checkbox" name="states[]" value="Madhya Pradesh"> Madhya Pradesh</label>
                          </div>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="form-group">
                           <label class="control-label">Lead Status </label>
                           <select class="form-control" name="lead_status">
                             <option value="">Select Lead Status</option>
                             <?php  
                                   $sql = "SELECT * from lead_status";
                                   $query = mysqli_query($conn,$sql);
                                   while($row = mysqli_fetch_array($query))
                                     {
                                        echo"<option value='".$row['leadstatusid']."'>".$row['lead_status']."</option>";
                                     }
                              ?>
                           </select>
                        </div>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col-md-2">
                        <div class="form-group">
                           <label class="control-label">Start Year</label>
                           <select  class="form-control" name="startyear">
                              <option value="">Select Year</option>
                              <option value="2020">2020</option>
                              <option value="2021">2021</option>
                              <option value="2022">2022</option>
                              <option value="2023">2023</option>
                              <option value="2024">2024</option>
                              <option value="2025">2025</option>
                           </select>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <div class="form-group">
                           <label class="control-label">Start Month</label>
                           <select class="form-control" name="startmonth">
                              <option value="">Select Month</option>
                              <option value="Jan">Jan</option>
                              <option value="Feb">Feb</option>
                              <option value="March">March</option>
                              <option value="Apr">Apr</option>
                              <option value="May">May</option>
                              <option value="June">June</option>
                              <option value="July">July</option>
                              <option value="Aug">Aug</option>
                              <option value="Spet">Spet</option>
                              <option value="Oct">Oct</option>
                              <option value="Nov">Nov</option>
                              <option value="Dec">Dec</option>
                           </select>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <div class="form-group">
                           <label class="control-label">Main Course</label>
                           <select class="form-control" name="main_course" id="main_course">
                              <option value="">Select Course Category</option>
                              <?php  
                                   $sql = "SELECT * from main_course";
                                   $query = mysqli_query($conn,$sql);
                                   while($row = mysqli_fetch_array($query))
                                     {
                                        echo"<option value='".$row['courseid']."'>".$row['course_name']."</option>";
                                     }
                              ?>
                           </select>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <div class="form-group">
                           <label class="control-label">Course Stream</label>
                           <select class="form-control" name="course_stream" id="show" disabled>
                           <option value="">Select Course Stream</option>
                           </select>
                        </div>
                     </div>
                  </div><br>
                  
                  <div class="row">
                     <h4 style="color:green"><center><b>Student Educational Details</b></center></h4><br>
                     <div class="col-md-2">
                        <div class="form-group">
                           <label class="control-label">10th % </label>
                           <input type="text" class="form-control" name="10_marks">
                        </div>
                     </div>
                     <div class="col-md-2">
                        <div class="form-group">
                           <label class="control-label">12th % </label>
                           <input type="text" class="form-control" name="20_marks"">
                        </div>
                     </div>
                     <div class="col-md-2">
                        <div class="form-group ">
                           <label class="control-label">Graduation % </label>
                           <input type="text" class="form-control" name="graduation_marks">
                        </div>
                     </div>
                     <div class="col-md-3">
                        <div class="form-group field-shortform-graduationstream">
                           <label class="control-label">Graduation Stream</label>
                           <div  role="radiogroup"><label>
                              <input type="radio" name="graduationstream" value="BCom"> B.Com</label>
                              <label><input type="radio" name="graduationstream" value="BSc"> B.Sc</label>
                              <label><input type="radio" name="graduationstream" value="BA"> BA</label>
                              <label><input type="radio" name="graduationstream" value="BEngg"> BEngg</label>
                              <label><input type="radio" name="graduationstream" value="Diploma"> Diploma</label>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <div class="form-group">
                           <label class="control-label">Graduate Year</label>
                           <input type="date" name="graduateyear">
                        </div>
                     </div>
                  </div>
                  <div class="row">
                   <div class="col-md-4">
                        <div class="form-group">
                           <label class="control-label" for="">Current Job Profile</label>
                           <input type="text" id="" class="form-control" name="jobprofile">
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="form-group">
                           <label class="control-label">Experience Year</label>
                           <input type="text" id="shortform-experienceyear" class="form-control" name="expyear">
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="form-group">
                           <label class="control-label">Experience Month</label>
                           <input type="text" class="form-control" name="expmonth">
                        </div>
                     </div>
                  </div>
            
                  <div class="row">
                  <h4 style="color:green"><center><b>Friends Recommendation</b></center></h4><br>
                     <div class="col-md-6">
                        <div class="form-group">
                           <label class="control-label">Name One</label>
                           <input type="text"  class="form-control" name="name_one" maxlength="100">
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="form-group">
                           <label class="control-label">Contact</label>
                           <input type="text" class="form-control" name="contact_one">
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="form-group ">
                           <label class="control-label">Name Two</label>
                           <input type="text" class="form-control" name="name_two">
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="form-group">
                           <label class="control-label">Contact </label>
                           <input type="text" class="form-control" name="contact_two">
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <div class="form-group">
                           <label class="control-label">Add Comment</label>
                           <textarea class="form-control" name="add_comment" rows="4" minlength="25"></textarea>
                        </div>
                     </div>
                     <!-- <div class="col-md-6">
                        <div class="form-group">
                           <label class="label-class">Show Comment</label>
                           <textarea  class="form-control" name="" rows="4"></textarea>
                        </div>
                     </div> -->
                  </div>
               </div>
               <div class="box-footer">
                  <input type="submit" name="submit" class="btn btn-success btn-flat" value="Save Student Details">  
               </div>
            </form>
         </div>
      </div>
   </section>
</div>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script>

$(document).ready(function(){
   $('#main_course').change(function(){ 
      
      $('#show').css('border','2px solid green');

      var courseID = $('#main_course').val();
   
      $.ajax({
        type: 'POST',
        url: 'fetch_course.php',
        data:{courseid:courseID},
        success:function(data)
        {
         $('#show').html(data);
         $( "#show" ).prop( "disabled", false ); // For Enabling Disabling
        }
      });
   });
});
</script>

