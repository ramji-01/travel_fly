<?php
if (isset($_POST['Name'])) {
    $Name = $_POST['Name'];
}
if (isset($_POST['gender'])) {
    $gender = $_POST['gender'];
}
if (isset($_POST['email'])) {
    $email = $_POST['email'];
}
if (isset($_POST['number'])) {
    $number = $_POST['number'];
}
if (isset($_POST['fromdate'])) {
    $fromdate = $_POST['fromdate'];
}
if (isset($_POST['arrival'])) {
    $arrival = $_POST['arrival'];
}
if (isset($_POST['flightname'])) {
    $flightname = $_POST['flightname'];
}
if (isset($_POST['class'])) {
    $class = $_POST['class'];
}
if (isset($_POST['members'])) {
    $members = $_POST['members'];
}
	// Database connection
	$conn = new mysqli('localhost','root','','flight');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		$stmt = $conn->prepare("insert into registration(Name, gender, email, number, fromdate, arrival, flightname, class, members ) values(?, ?, ?, ?, ?, ?, ?, ?, ?)");
		$stmt->bind_param("sssissssi", $Name, $gender, $email, $number, $fromdate, $arrival, $flightname, $class, $members);
		$execval = $stmt->execute();
		echo $execval;
		echo "Registration succeeded...";
		$stmt->close();
		$conn->close();
	}
?>