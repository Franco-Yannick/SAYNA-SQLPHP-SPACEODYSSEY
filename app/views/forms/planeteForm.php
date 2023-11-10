<?php
// Incluez le fichier en utilisant le chemin absolu
include '../header.php';
?>
       <h1>Liste des Planètes</h1>



<h2>Ajouter une nouvelle planète</h2>
<form action="add_planet.php" method="post">
    <label for="name">Nom de la planète:</label>
    <input type="text" name="name" required>

    <label for="circumference">Circonférence (en km):</label>
    <input type="number" name="circumference" required>

    <label for="distance">Distance à la Terre (en km):</label>
    <input type="number" name="distance" required>

    <label for="documentation">Documentation:</label>
    <textarea name="documentation" rows="4" required></textarea>

    <button type="submit">Ajouter la planète</button>
</form>

    

    <!-- terminer ici-->
    <?php
     function getAllPlanets() {
      global $conn;
      $sql = "SELECT * FROM planete";
      $result = $conn->query($sql);
      
      if ($result->num_rows > 0) {
          return $result->fetch_all(MYSQLI_ASSOC);
      } else {
          return [];
      }
  }
  
    ?> 
    

</body>
</html>

