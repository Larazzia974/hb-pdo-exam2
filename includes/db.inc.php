<?php

$dbName = 'composer_exam';
$dbUser = 'root';
$dbPass = ''; // root si vous utilisez un Mac avec MAMP
$dbHost = 'localhost'; // ou 127.0.0.1, en cas de soucis (mais les deux devraient être identiques)
$dbDsn = 'mysql:dbname=' . $dbName . ';host=' . $dbHost;

// Connexion à la base de données
try {
    $bdd = new PDO('mysql:host=localhost;dbname=composer_exam;charset=utf8', 'root', '');
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}
