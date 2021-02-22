# PHP Data Object (PDO) - Exam

Pour travailler sur ce projet : 
- **créer un fork** du projet (sur la page [https://github.com/Dreeckan/hb-pdo-exam2](https://github.com/Dreeckan/hb-pdo-exam2), cliquer sur le bouton `fork`, en haut à droite de la page)
- Cloner **votre** projet (commande `git clone` par exemple)
- Créer une branche pour faire tout l'exam
- À la fin de l'examen, vous **devez** envoyer un zip de votre code sur Moodle et vous **pouvez** faire une PR à destination du projet d'origine (afin de faciliter mes retours pour la correction)

La durée prévue est d'environ 3h. Des points peuvent être perdus pour le retard du rendu :
- 1 point si le rendu est fait après 18h
- 2 point si le rendu est fait après 20h

Liste des exercices
0. Importer la base de données
1. Se connecter et utiliser la base de données (2 points)
2. Exécution d'une requête directe (INSERT) (2 points)
3. Exécution d'une requête directe (SELECT) (2 points)
4. Exécution d'une requête préparée (INSERT) (3 points)
5. Exécution d'une requête préparée (SELECT) (4 points)
6. Mise à jour de la table de liaison (product_has_category) (3 points)
7. Insertion de données dans plusieurs tables en parallèle (5 points)

## 0. Importer la base de données

- À la racine de ce projet, vous trouverez un fichier `composer_exam.sql`. Il vous faudra :
  - [ ] Importer la base de données `composer_exam` dans PhpMyAdmin (la base de données est créée automatiquement)
  - [ ] Parcourez-la pour en comprendre le fonctionnement (elle contient 3 tables)
- [ ] Faire un commit

## 1. Se connecter et utiliser la base de données (2 points)

- [ ] Mettre à jour le fichier `includes/db.inc.php` si nécessaire (si vous utilisez un Mac, par exemple)
- Dans le fichier `includes/connect.php`
  - [ ] Créer une connexion à la base de données, qui sera utilisée dans tous les autres fichiers
  - [ ] En cas d'erreur de la connexion, arrêter le script et affiche un message `Connexion échouée : ` suivi du message d'erreur de l'exception PDO
- [ ] Faire un commit
  
## 2. Exécution d'une requête directe (INSERT) (2 points)

- Dans le fichier `2-insert-direct.php`
  - [ ] Utiliser la connexion créée dans le fichier `includes/connect.php` pour insérer les données du tableau `$data` dans la table `composer` à l'aide d'une requête directe de PDO (méthode `exec`)
  - [ ] En cas d'erreur de l'insertion, afficher un message d'erreur `Erreur lors de l'insertion de la donnée : ` et afficher l'index `name` du tableau (afin de retrouver la ligne provoquant l'erreur).
- [ ] Faire un commit

## 3. Exécution d'une requête directe (SELECT) (2 points)

- Dans le fichier `3-select-direct.php`
  - [ ] Utiliser la connexion créée dans le fichier `includes/connect.php` pour récupérer les données contenues dans la table `composer` et les mettre dans le tableau `$data` à l'aide d'une requête directe (méthode `query`)
    - [ ] Les données doivent être dans un tableau associatif ou un objet (voir les constantes de PDO `PDO::FETCH_`, il n'y a pas besoin de créer des classes ici)
  - [ ] Compléter l'affichage HTML déjà présent dans le fichier (les données doivent s'afficher)
- [ ] Faire un commit
  
## 4. Exécution d'une requête préparée (INSERT) (3 points)

- Dans le fichier `4-insert-prepare.php`
  - [ ] Utiliser la connexion créée dans le fichier `includes/connect.php`
  - [ ] Pour chaque ligne du tableau `$data`, récupérer le compositeur indiqué à l'index `composer` (requête `SELECT`, préparée ou directe, comme vous préférez)
  - [ ] insérer les données du tableau `$data` dans la table `music` à l'aide d'une requête préparée, avec la bonne valeur pour le champ `composer_id`
  - [ ] En cas d'erreur de l'insertion, afficher un message d'erreur `Erreur lors de l'insertion de la donnée : ` et afficher l'index `name` du tableau (afin de retrouver la ligne provoquant l'erreur).
- [ ] Faire un commit

## 5. Exécution d'une requête préparée (SELECT) (4 points)

- Dans le fichier `5-select-prepare.php`
  - [ ] Utiliser la connexion créée dans le fichier `includes/connect.php` pour récupérer les données contenues dans la table `music` et les mettre dans le tableau `$data` à l'aide d'une requête préparée
    - [ ] Les données doivent être dans un tableau associatif ou un objet (voir les constantes de PDO `PDO::FETCH_`, il n'y a pas besoin de créer des classes ici)
    - [ ] /!\ Contrairement au tableau précédent, nous voulons également récupérer le nom du compositeur (dans la table `composer`, il faudra donc utiliser une jointure dans votre requête)
  - [ ] Compléter l'affichage HTML déjà présent dans le fichier (les données doivent s'afficher)
- [ ] Faire un commit
