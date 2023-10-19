<?php 
include('session.php');
include('dbcon.php');
include('header.php');
 ?>
<?php
$pres=$_POST['pres'];
$vice=$_POST['vice'];
$gensec=$_POST['gensec'];
$tres=$_POST['tres'];
$finsec=$_POST['finsec'];
$pro=$_POST['pro'];

if ($pres == "--Select Candidate--") {
echo "<script>
alert('No candidate selected for President.');
window.location.href='voting.php';
</script>";

} 
else if ($vice == "--Select Candidate--") {
echo "<script>
alert('No candidate selected for Vice President.');
window.location.href='voting.php';
</script>";

}

else if ($gensec == "--Select Candidate--") {
echo "<script>
alert('No candidate selected for Gen. Secretary.');
window.location.href='voting.php';
</script>";

}

else if ($tres == "--Select Candidate--") {
echo "<script>
alert('No candidate selected for Treasurer.');
window.location.href='voting.php';
</script>";

}

else if ($finsec == "--Select Candidate--") {
echo "<script>
alert('No candidate selected for Fin. Secretary.');
window.location.href='voting.php';
</script>";

}

else if ($pro == "--Select Candidate--") {
echo "<script>
alert('No candidate selected for P.R.O.');
window.location.href='voting.php';
</script>";

}
else {

goto a ;


}

exit ;
a:
//------get voter name==================
//$voterid = $session_id ;

$sql="SELECT * FROM voters WHERE VoterID='$session_id'";
$result=mysqli_query($conn,$sql);

// Mysql_num_row is counting table row
$count=mysqli_num_rows($result);


// If result matched $myusername and $mypassword, table row must be 1 row
if($count==1){
while($rowval = mysqli_fetch_array($result))
 {
  $vnamekeep= $rowval['LastName'] . " " . $rowval['FirstName'] . " " . $rowval['MiddleName'] ;
  }
  }



if (isset($_POST['vote'])){
$pres=$_POST['pres'];
//========================get president====
$sql1="SELECT * FROM candidate WHERE CandidateID='$pres'";
$result1=mysqli_query($conn,$sql1);

while($rowval = mysqli_fetch_array($result1))
 {
  $cnamekeep1= $rowval['LastName'] . " " . $rowval['FirstName'] . " " . $rowval['MiddleName'] ;
  $cposition1= $rowval['Position']  ;
  }

//=================
mysqli_query($conn,"insert into votes (CandidateID,VoterID,Vname,Cposition,Cname)values('$pres','$session_id','$vnamekeep','$cnamekeep1','$cposition1')")or die(mysqli_error());

$vice=$_POST['vice'];
//========================get vice president====
$sql2="SELECT * FROM candidate WHERE CandidateID='$vice'";
$result2=mysqli_query($conn,$sql2);

while($rowval = mysqli_fetch_array($result2))
 {
  $cnamekeep2= $rowval['LastName'] . " " . $rowval['FirstName'] . " " . $rowval['MiddleName'] ;
  $cposition2= $rowval['Position']  ;
  }

//=================
mysqli_query($conn,"insert into votes (CandidateID,VoterID,Vname,Cposition,Cname)values('$vice','$session_id','$vnamekeep','$cnamekeep2','$cposition2')")or die(mysqli_error());

$gensec=$_POST['gensec'];
//========================get Gen. sec====
$sql3="SELECT * FROM candidate WHERE CandidateID='$gensec'";
$result3=mysqli_query($conn,$sql3);

while($rowval = mysqli_fetch_array($result3))
 {
  $cnamekeep3= $rowval['LastName'] . " " . $rowval['FirstName'] . " " . $rowval['MiddleName'] ;
  $cposition3= $rowval['Position']  ;
  }

//=================
mysqli_query($conn,"insert into votes (CandidateID,VoterID,Vname,Cposition,Cname)values('$gensec','$session_id','$vnamekeep','$cnamekeep3','$cposition3')")or die(mysqli_error());


$tres=$_POST['tres'];
//========================get Treasurer====
$sql4="SELECT * FROM candidate WHERE CandidateID='$tres'";
$result4=mysqli_query($conn,$sql4);

while($rowval = mysqli_fetch_array($result4))
 {
  $cnamekeep4= $rowval['LastName'] . " " . $rowval['FirstName'] . " " . $rowval['MiddleName'] ;
  $cposition4= $rowval['Position']  ;
  }

//=================
mysqli_query($conn,"insert into votes (CandidateID,VoterID,Vname,Cposition,Cname)values('$tres','$session_id','$vnamekeep','$cnamekeep4','$cposition4')")or die(mysqli_error());

$finsec=$_POST['finsec'];
//========================get Fin. sec====
$sql5="SELECT * FROM candidate WHERE CandidateID='$finsec'";
$result5=mysqli_query($conn,$sql5);

while($rowval = mysqli_fetch_array($result5))
 {
  $cnamekeep5= $rowval['LastName'] . " " . $rowval['FirstName'] . " " . $rowval['MiddleName'] ;
  $cposition5= $rowval['Position']  ;
  }

//=================
mysqli_query($conn,"insert into votes (CandidateID,VoterID,Vname,Cposition,Cname)values('$finsec','$session_id','$vnamekeep','$cnamekeep5','$cposition5')")or die(mysqli_error());

$pro=$_POST['pro'];
//========================get pro====
$sql6="SELECT * FROM candidate WHERE CandidateID='$pro'";
$result6=mysqli_query($conn,$sql6);

while($rowval = mysqli_fetch_array($result6))
 {
  $cnamekeep6= $rowval['LastName'] . " " . $rowval['FirstName'] . " " . $rowval['MiddleName'] ;
  $cposition6= $rowval['Position']  ;
  }

//=================
mysqli_query($conn,"insert into votes (CandidateID,VoterID,Vname,Cposition,Cname)values('$pro','$session_id','$vnamekeep','$cnamekeep6','$cposition6')")or die(mysqli_error());


mysqli_query($conn,"update voters set Status='Voted' where VoterID='$session_id'") or die(mysqli_error());

?>

<?php

_redirect('thankyou.php');
}
?>
 <link rel="stylesheet" type="text/css" href="admin/css/style.css" />
<script src="jquery.iphone-switch.js" type="text/javascript"></script>
</head>
<body>
	<div class="navbar navbar-fixed-top">
	<div class="navbar-inner">
	<div class="container">
	     
		<a class="brand">
		<img src="admin/images/bhpa.png" width="60" height="60">
 	</a>
	<a class="brand">
	 <h2>Bishop Philips Academy Voting System</h2>
	 <div class="chmsc_nav"><font size="4" color="white"></font></div>
 	</a>

	<?php include('head.php'); ?>
 
	</div>
	</div>
	</div>
<div class="wrapper">

<div class="hero-body-voting">
<div class="vote_wise1"><font color="white" size="6">"Official Ballot"</font></div>
<div class="back">
<a class="btn btn-info" id="bak"  href="voting.php"><i class="icon-arrow-left icon-large"></i>&nbsp;Back</a>
</div>
</div>

<div class="hero-body-456">
</div>

<form method="POST">

<?php 

if (isset($_POST['vote'])){
$governor=$_POST['pres'];
$vice1=$_POST['vice'];
$gensec=$_POST['gensec'];
$representative2=$_POST['tres'];
$representative3=$_POST['finsec'];
$representative4=$_POST['pro'];
}

?>

<?php

//governor
$result=mysqli_query($conn,"select * from candidate where CandidateID='$governor'")or die(mysqli_query($conn,));
$row=mysqli_fetch_array($result);
$name=$row['FirstName']."  ".$row['LastName'];
//
//vice-governor
$vice=mysqli_query($conn,"select * from candidate where CandidateID='$vice1'")or die(mysqli_query($conn,));
$row_vice=mysqli_fetch_array($vice);

$name1=$row_vice['FirstName']."  ".$row_vice['LastName'];
//
//Representative1
$Representative1=mysqli_query($conn,"select * from candidate where CandidateID='$representative1'")or die(mysqli_query($conn,));
$Representative1_row=mysqli_fetch_array($Representative1);

$name2=$Representative1_row['FirstName']."  ".$Representative1_row['LastName'];
//
//Representative2
$Representative2=mysqli_query($conn,"select * from candidate where CandidateID='$representative2'")or die(mysqli_query($conn,));
$Representative2_row=mysqli_fetch_array($Representative2);

$name3=$Representative2_row['FirstName']."  ".$Representative2_row['LastName'];
//

//Representative3
$Representative3=mysqli_query($conn,"select * from candidate where CandidateID='$representative3'")or die(mysqli_query($conn,));
$Representative3_row=mysqli_fetch_array($Representative3);

$name4=$Representative3_row['FirstName']."  ".$Representative3_row['LastName'];
//

//Representative4
$Representative4=mysqli_query($conn,"select * from candidate where CandidateID='$representative4'")or die(mysqli_query($conn,));
$Representative4_row=mysqli_fetch_array($Representative4);

$name5=$Representative4_row['FirstName']."  ".$Representative4_row['LastName'];
//


 ?>

<div class="ballot">

<div class="cent">
<p>President:&nbsp;&nbsp;</p>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<?php  echo $name; 
if ($governor == "--Select Candidate--"){
echo 'NO Candidate Selected'; 
}
?>
 <input type="hidden" name="pres" value="<?php echo $governor; ?>"/>
 
</div>
</br>
</br>
<div class="cent">
<p>Vice President:&nbsp;&nbsp;</p>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<?php  echo $name1;
if ($vice1 == "--Select Candidate--"){
echo 'NO Candidate Selected'; 
}

 ?>
 <input type="hidden" name="vice" value="<?php echo $vice1; ?>"/>
</div>
</br>
</br>

<div class="cent">
<p>Gen Secretary:&nbsp;&nbsp;</p>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<?php  echo $name2;
if ($Representative1 == "--Select Candidate--"){
echo 'NO Candidate Selected'; 
}

 ?>
 <input type="hidden" name="gensec" value="<?php echo $Representative1; ?>"/>
</div>
</br>
</br>

<div class="cent">
<p>Treasurer:&nbsp;&nbsp;</p>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<?php  echo $name3;
if ($Representative2 == "--Select Candidate--"){
echo 'NO Candidate Selected'; 
}

 ?>
 <input type="hidden" name="tres" value="<?php echo $Representative2; ?>"/>
</div>
</br>
</br>

<div class="cent">
<p>Fin Secretary:&nbsp;&nbsp;</p>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<?php  echo $name4;
if ($Representative3 == "--Select Candidate--"){
echo 'NO Candidate Selected'; 
}

 ?>
 <input type="hidden" name="finsec" value="<?php echo $Representative3; ?>"/>
</div>
</br>
</br>

<div class="cent">
<p>P.R.O:&nbsp;&nbsp;</p>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<?php  echo $name5;
if ($Representative4 == "--Select Candidate--"){
echo 'NO Candidate Selected'; 
}

 ?>
 <input type="hidden" name="pro" value="<?php echo $Representative4; ?>"/>
</div>
</br>
</br>

<?php
if (isset($_POST['vote'])){
$pres=$_POST['pres'];
//========================get president====
$sql1="SELECT * FROM candidate WHERE CandidateID='$pres'";
$result1=mysqli_query($conn,$sql1);

while($rowval = mysqli_fetch_array($result1))
 {
  $cnamekeep1= $rowval['LastName'] . " " . $rowval['FirstName'] . " " . $rowval['MiddleName'] ;
  $cposition1= $rowval['Position']  ;
  }

//=================
mysqli_query($conn,"insert into votes (CandidateID,VoterID,Vname,Cposition,Cname)values('$pres','$session_id','$vnamekeep','$cnamekeep1','$cposition1')")or die(mysqli_error());

$vice=$_POST['vice'];
//========================get vice president====
$sql2="SELECT * FROM candidate WHERE CandidateID='$vice'";
$result2=mysqli_query($conn,$sql2);

while($rowval = mysqli_fetch_array($result2))
 {
  $cnamekeep2= $rowval['LastName'] . " " . $rowval['FirstName'] . " " . $rowval['MiddleName'] ;
  $cposition2= $rowval['Position']  ;
  }

//=================
mysqli_query($conn,"insert into votes (CandidateID,VoterID,Vname,Cposition,Cname)values('$vice','$session_id','$vnamekeep','$cnamekeep2','$cposition2')")or die(mysqli_error());

$gensec=$_POST['gensec'];
//========================get Gen. sec====
$sql3="SELECT * FROM candidate WHERE CandidateID='$gensec'";
$result3=mysqli_query($conn,$sql3);

while($rowval = mysqli_fetch_array($result3))
 {
  $cnamekeep3= $rowval['LastName'] . " " . $rowval['FirstName'] . " " . $rowval['MiddleName'] ;
  $cposition3= $rowval['Position']  ;
  }

//=================
mysqli_query($conn,"insert into votes (CandidateID,VoterID,Vname,Cposition,Cname)values('$gensec','$session_id','$vnamekeep','$cnamekeep3','$cposition3')")or die(mysqli_error());


$tres=$_POST['tres'];
//========================get Treasurer====
$sql4="SELECT * FROM candidate WHERE CandidateID='$tres'";
$result4=mysqli_query($conn,$sql4);

while($rowval = mysqli_fetch_array($result4))
 {
  $cnamekeep4= $rowval['LastName'] . " " . $rowval['FirstName'] . " " . $rowval['MiddleName'] ;
  $cposition4= $rowval['Position']  ;
  }

//=================
mysqli_query($conn,"insert into votes (CandidateID,VoterID,Vname,Cposition,Cname)values('$tres','$session_id','$vnamekeep','$cnamekeep4','$cposition4')")or die(mysqli_error());

$finsec=$_POST['finsec'];
//========================get Fin. sec====
$sql5="SELECT * FROM candidate WHERE CandidateID='$finsec'";
$result5=mysqli_query($conn,$sql5);

while($rowval = mysqli_fetch_array($result5))
 {
  $cnamekeep5= $rowval['LastName'] . " " . $rowval['FirstName'] . " " . $rowval['MiddleName'] ;
  $cposition5= $rowval['Position']  ;
  }

//=================
mysqli_query($conn,"insert into votes (CandidateID,VoterID,Vname,Cposition,Cname)values('$finsec','$session_id','$vnamekeep','$cnamekeep5','$cposition5')")or die(mysqli_error());

$pro=$_POST['pro'];
//========================get pro====
$sql6="SELECT * FROM candidate WHERE CandidateID='$pro'";
$result6=mysqli_query($conn,$sql6);

while($rowval = mysqli_fetch_array($result6))
 {
  $cnamekeep6= $rowval['LastName'] . " " . $rowval['FirstName'] . " " . $rowval['MiddleName'] ;
  $cposition6= $rowval['Position']  ;
  }

//=================
mysqli_query($conn,"insert into votes (CandidateID,VoterID,Vname,Cposition,Cname)values('$pro','$session_id','$vnamekeep','$cnamekeep6','$cposition6')")or die(mysqli_error());

mysqli_query($conn,"update voters set Status='Voted' where VoterID='$session_id'") or die(mysqli_error());

?>

<?php

_redirect('thankyou.php');
}
?>

<div class="hero-body-456">
<div class="ok_vote">

		<a class="btn btn-success" id="logout" data-toggle="modal" href="#myModal"><i class="icon-off"></i>&nbsp;Submit Final Votes</a>
	<div class="modal hide fade" id="myModal">
	<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal">�</button>
	    <h3> </h3>
	  </div>
	  <div class="modal-body">
	    <p><font color="gray">Are You Sure you Want to Submit Final Votes?</font></p>
	  </div>
	  <div class="modal-footer">
	    <a href="#" class="btn" data-dismiss="modal">No</a>
		<button id="save_voter" class="btn btn-success" name="vote"><i class="icon-save icon-large"></i>&nbsp;Yes</button>
		</div>
		</div>
	</div>
</div>



</form>
	<?php include('footer1.php')?>	
</div>

    </body>
	
</html>
												
											
	