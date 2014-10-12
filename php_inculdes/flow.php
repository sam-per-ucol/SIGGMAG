<?php
$mysqli = new mysqli("localhost", "root", "", "isis");

/* check connection */
if ($mysqli->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
    exit();
}

    // A QUICK QUERY ON A FAKE USER TABLE
    $query = "SELECT * FROM inventario WHERE letra_inv = 'C'";
    $result = $mysqli->query($query) or die($mysqli->error.__LINE__);

// GOING THROUGH THE DATA
    if($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo stripslashes($row['material']);    
        }
    }
    else {
        echo 'NO RESULTS';  
    }
    

$mysqli->close();
?>