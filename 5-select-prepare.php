<?php

include 'includes/connect.php';

$data = [];
?>

<table>
    <tr>
        <th>Nom du morceau</th>
        <th>Année de composition</th>
        <th>Nom du compositeur</th>
    </tr>
    <?php foreach ($data as $music) { ?>
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    <?php } ?>
</table>
