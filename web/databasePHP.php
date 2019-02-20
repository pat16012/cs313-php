<?php
require_once('dbaccess.php');
$db = get_db();

$query =  'SELECT id, first, last FROM userinfo';
$stmt = $db->prepare($query);
$stmt->execute();
$users = $stmt->fetchAll(PDO::FETCH_ASSOC);

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
    foreach ($users as $user)
    {
        $id = $userinfo('id');
        $first = $userinfo('first');
        $last = $userinfo('last');

        echo "<li><p>$id - $first - $last</p></li>";
    }
    ?>

       
    
</body>
</html>