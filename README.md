# Festival du Jeu - app iOS !

Bonjour ! Voici notre application Swift destinée aux visiteurs du Festival du Jeu de Montpellier.
Ceci est un projet étudiant de Polytech Montpellier créé par Audiger Florian, Duban Timi et Pratlong Florine.
L'application est un prototype, de nombreux ajouts sont encore envisageables.


## Architecture

L'application servant uniquement à afficher une liste de jeux, éditeurs ou zones, elle est créée principalement selon le pattern model-viewModel (**MVVM**).
Pour la récupération des jeux, elle se fait via le back de notre application web par un pattern model-view-intent (**MVI**). Une première récupération des jeux est effectuée au lancement de l'application, et un bouton "Refresh" permet de dynamiquement mettre à jour la liste de jeux.
#
Nous espérons que vous passerez un bon moment sur notre application !
La team dev, Florian Timi et Florine.
