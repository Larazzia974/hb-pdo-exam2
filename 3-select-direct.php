<?php

include 'includes/connect.php';

$data = [];

$sql = 'SELECT * FROM composer';
$reponses = $bdd->query($sql);

?>

<table>
    <tr>
        <th>Nom</th>
        <th>Année de naissance</th>
        <th>Année de décès</th>
        <th>Description</th>
        <th>Pays</th>
    </tr>
    <?php foreach ($reponses->fetchAll(PDO::FETCH_ASSOC) as $data) { ?>
        <tr>
            <td><?php echo $data['name']; ?></td>
            <td><?php echo $data['birth']; ?></td>
            <td><?php echo $data['death']; ?></td>
            <td><?php echo $data['description']; ?></td>
            <td><?php echo $data['country']; ?></td>
        </tr>
    <?php } ?>
</table>