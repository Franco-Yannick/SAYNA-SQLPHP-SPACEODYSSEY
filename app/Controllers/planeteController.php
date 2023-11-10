<?php
include('db.php');


function getAllPlanets() {
    global $conn;
    $sql = "SELECT * FROM planets";
    $result = $conn->query($sql);
    
    if ($result->num_rows > 0) {
        return $result->fetch_all(MYSQLI_ASSOC);
    } else {
        return [];
    }
}

function getPlanetById($planetId) {
    global $conn;
    $sql = "SELECT * FROM planets WHERE id = $planetId";
    $result = $conn->query($sql);

    if ($result->num_rows == 1) {
        return $result->fetch_assoc();
    } else {
        return null;
    }
}

function addPlanet($name, $circumference, $distance, $documentation) {
    global $conn;
    $sql = "INSERT INTO planets (name, circumference, distance, documentation) VALUES ('$name', $circumference, $distance, '$documentation')";
    
    if ($conn->query($sql) === TRUE) {
        return true;
    } else {
        return false;
    }
}

function updatePlanet($planetId, $name, $circumference, $distance, $documentation) {
    global $conn;
    $sql = "UPDATE planets SET name='$name', circumference=$circumference, distance=$distance, documentation='$documentation' WHERE id=$planetId";
    
    if ($conn->query($sql) === TRUE) {
        return true;
    } else {
        return false;
    }
}

function deletePlanet($planetId) {
    global $conn;
    $sql = "DELETE FROM planets WHERE id=$planetId";
    
    if ($conn->query($sql) === TRUE) {
        return true;
    } else {
        return false;
    }
}

?>
