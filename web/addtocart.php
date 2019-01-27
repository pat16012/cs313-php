<?php
	$_SESSION['cart'] = array();
	if (isset($_POST['glow'])) {
		$glow = $_POST['glow'];
		$_SESSION["cart"][] = $glow;
	}

	if (isset($_POST['shiny'])) {
		$shiny = $_POST['shiny'];
		$_SESSION["cart"][] = $shiny;
	}

	if (isset($_POST['Jaged'])) {
		$Jaged = $_POST['Jaged'];
		$_SESSION["cart"][] = $Jaged;
	}

	if (isset($_POST['pointy'])) {
		$pointy = $_POST['pointy'];
		$_SESSION["cart"][] = $pointy;
	}

	if (isset($_POST['river'])) {
		$river = $_POST['river'];
		$_SESSION["cart"][] = $river;
	}

	if (isset($_POST['Stripy'])) {
		$stripy = $_POST['Stripy'];
		$_SESSION["cart"][] = $stripy;
	}

?>

