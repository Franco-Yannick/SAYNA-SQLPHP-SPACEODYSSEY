<?php
include('../app//views/forms/planeteForm.php')
?>
<?php
   
    if (isset($_GET['page'])) {
        $page = $_GET['page'];
        $allowedPages = ['planets', 'astronauts', 'missions', 'dashboard', 'apod'];


        if (in_array($page, $allowedPages)) {
         

            include("views/$page.php");
        } else {
            echo "Page non autorisée.";
        }
    } else {

        echo "Gestion de Missions Intergalactique !";
    }
    ?>

