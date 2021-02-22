<?php

include 'includes/connect.php';

$data = [];
?>

<table>
    <tr>
        <th>Nom</th>
        <th>Année de naissance</th>
        <th>Année de décès</th>
        <th>Description</th>
        <th>Pays</th>
    </tr>
    <?php foreach ($data as $composer) { ?>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    <?php } ?>
</table>
