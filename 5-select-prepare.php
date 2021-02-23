<?php

include 'includes/connect.php';

$music = [];

$requete = ('SELECT * FROM music');
$stmt = $bdd->prepare($requete);
if ($stmt === false) {
    exit("erreur lors de la requete");
}

?>

<table>
    <tr>
        <th>Nom du morceau</th>
        <th>Année de composition</th>
        <th>Nom du compositeur</th>
    </tr>
    <?php foreach ($stmt->fetchAll(PDO::FETCH_ASSOC) as $music) { ?>
        <tr>
            <?php
            $composerId = $music['composer_id'];
            $bddComposer = "SELECT name FROM composer WHERE id LIKE $composerId";
            $rep = $bdd->query($bddComposer);
            $donnees = $rep->fetch();
            $stmt->execute();
            ?>
            <td><?php echo $music['name']; ?></td>
            <td><?php echo $music['year']; ?></td>
            <td><?php echo $donnees['name']; ?></td>
        </tr>
    <?php
    } ?>
</table>