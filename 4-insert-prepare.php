<?php

include 'includes/connect.php';
$ids = [];
$data = [
    [
        'composer' => 'Joseph-François Garnier',
        'name'     => "Air d'Echo et Narcis",
        'year'     => 1789,
    ],
    [
        'composer' => 'Vincenzo Manfredini',
        'name'     => "La musica trionfante",
        'year'     => 1761,
    ],
    [
        'composer' => 'Antonio Tozzi',
        'name'     => "Il Rinaldo... da rappresentarsi nel teatro dell'eccellentissima Casa Vendramin",
        'year'     => 1775,
    ],
    [
        'composer' => 'Joseph-François Garnier',
        'name'     => "Blaise et Babet ou la suite des trois fermiers",
        'year'     => 1810,
    ],
    [
        'composer' => 'Vincenzo Manfredini',
        'name'     => "La pace degli eroi",
        'year'     => 1762,
    ],
];


$bddMusic = "INSERT INTO music (name, year, composer_id) VALUES (:name, :year, :composer_id)";
$stmt = $bdd->prepare($bddMusic);
if ($stmt === false) {
    exit("Erreur à de l'insertion de la donnée :");
}
foreach ($data as $music) {
    $composerId = $music['composer'];
    $bddComposer = "SELECT id FROM composer WHERE name LIKE '$composerId'";
    $rep = $bdd->query($bddComposer);
    $donnees = $rep->fetch();

    echo $donnees['id'];
    $stmt->bindParam(':name', $music['name'], PDO::PARAM_STR);
    $stmt->bindParam(':year', $music['year'], PDO::PARAM_INT);
    $stmt->bindParam(':composer_id', $donnees['id'], PDO::PARAM_INT);
    $stmt->execute();
}
