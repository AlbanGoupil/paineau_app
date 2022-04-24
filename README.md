
# Paineau APP
Cette application est designée pour l'entreprise SARL Paineau afin de s'occuper de la gestion des véhicules.

Cette application permet de lister les véhicules de l'entreprise SARL Paineau Associés.
On peut également ajouter des véhicules ainsi que les sauvegarder dans les sharedpreferences en tant que véhicules préférés

Sur le Dashboard, on retrouve l'ensemble des anomalies des véhicules suivis comme une révision à effectuer ou encore changer la courroie de distribution d'un véhicule

L'API utilisée est l'api crée par moi même sur laquelle on retrouve 5 véhicules de l'entreprise. Ces véhicules sont des véhicules tests.
L'url de l'api est http://62593ac5cda73d132d120855.mockapi.io/api/paineau/ID

La version de flutter utilisée pour ce projet est 2.10.0 et la version de Dart est 2.9.2 

## Vues

En terme de vues, on retrouve la home qui est une vue sans fonctionnalités demandée par le client.

La vue Dashboard permet d'afficher les différentes annomalies des véhicules s'il y en. Pour l'instant il s'agit uniquement des véhicules favoris. 

La vue view-vehicules permet de voir l'ensemble des véhicules présents. On retrouve le bouton favori à droite d'un élément. Lors du clic sur un véhicule, on obtient l'ensemble de ses informations dans la vue view_vehicule.

La dernière vue est la vue add_vehicule permettant d'ajouter un véhicule à la base de données en envoyant en POST le véhicule à l'API.

## Auteur

- [@albangoupil](https://www.github.com/LAMONSTRUOSITE)
