<?php
require_once('dbaccess.php');
$db = get_db();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Database Query</title>
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
</head>
<body>
<?php include 'header.php';?>
    <h1>Display Users</h1>
    <ul>
    <?php 

    try{
    $statment = $db->prepare('SELECT id, first, last FROM userinfo');
    $statment->execute();

    while ($row = $statment->fetch(PDO::FETCH_ASSOC))
    {
        echo '<p>';
		echo '<strong>' . $row['id'] . ' ' . $row['first'] . ' ' . $row['last'];
		echo '<br />';
		
    }

}
catch (PDOException $ex)
{
    echo "Error with DB. Details: $ex";
    die();
}
    ?>
    </ul>
    
   

       
    
</body>
</html>