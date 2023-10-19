<?php

include('dbcon.php');
 a:
function GeraHash($qtd){
//Under the string $Caracteres you write all the characters you want to be used to randomly generate the code.
$Caracteres = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890';
$QuantidadeCaracteres = strlen($Caracteres);
$QuantidadeCaracteres--;

$Hash=NULL;
    for($x=1;$x<=$qtd;$x++){
        $Posicao = rand(0,$QuantidadeCaracteres);
        $Hash .= substr($Caracteres,$Posicao,1);
    }

return $Hash;
}

//Here you specify how many characters the returning string must have
$vid = GeraHash(6);
$_SESSION['supplyid'] = $vid;


//===== check if orderid exist
	

$sql="SELECT * FROM voters WHERE vid='$vid'";

			$result=mysqli_query($conn,$sql);
			$count=mysqli_num_rows($result);
if($count==1){

goto a;
}
else{
goto b;
}

exit ;
 
 b:
$FirstName=$_POST['FirstName'];
$LastName=$_POST['LastName'];
$UserName=$_POST['UserName'];
$Section=$_POST['Section'];
$mobileno=$_POST['mobileno'];
$Year=$_POST['Year'];
$Password=$_POST['Password'];
$VoterID=$_POST['VoterID'];
$vid=$_POST['vid'];

$pc_date = $_POST['pc_date'];
$pc_time = $_POST['pc_time'];
$user_name=$_POST['user_name'];
mysqli_query($conn,"insert into voters (FirstName,LastName,UserName,Password,VoterID,Status,Year,MiddleName,mobileno,vid)
values('$FirstName','$LastName','$UserName','$Password','$VoterID','Unvoted','$Year','$Section','$mobileno','$vid')");

mysqli_query($conn,"INSERT INTO history (data,action,date,user)VALUES('$FirstName $LastName', 'Added Voter', '$pc_date $pc_time','$user_name')")or die(mysqli_error());
?>
