# StereoLab

[Manuel d'utilisation  - StereoLab ( Danny DOMINGUES et Anatole TAILLEUR, 2022 ).pdf](https://github.com/RouniGit/StereoLab/files/8694565/Manuel.d.utilisation.-.StereoLab.Danny.DOMINGUES.et.Anatole.TAILLEUR.2022.pdf)

## Manuel d’utilisation

![image](https://user-images.githubusercontent.com/105498300/168464673-f4a774d5-43df-4fc5-863a-98435a9be2d2.png)


Application créé dans le cadre de l’UE LU3ST063-S2

Groupe : Anatole TAILLEUR & Danny DOMINGUES

Encadrant : Laetitia LE POURHIET

2022
### Sommaire



I - Préambule …………………………………………………………….....................................................................……….…… 3


II - Se procurer le code et contacts ………………………………………….........................................................…….... 3


III - Guide d’utilisation ………………………………………………………….............................................................………. 4

 1. Données à intégrer …………………………………………………..…...............................................................………. 4

 2. Détail de l’interface …………………………………………..…………...........................................................…………. 7

   - Le bouton “Tracer” …………………………………………..……….……...........................................................………. 8

   - Le bouton “Plans conjugués des stries” ………………….................................………..................……………. 9

   - Le bouton “Effacer” …………………………………………..……………….............................…............................... 10

   - Le bouton “Ajouter” …………………………………………..…………..….........................................................……. 11

   - Le bouton “Ajouter Plan conjugué” ………………..………..............................………......................…………. 12


### I - Préambule 

StereoLab est une application codée sur matlab qui permet de projeter des plans de failles, de fente de tension ou encore des pics stylolithiques en 3D ou en 2D dans un stéréographe. Il permet aussi, si les données sont présentes, de tracer le pitch de la faille et son plan conjugué.
Utile pour de la démonstration, de la pédagogie et pour de l’étude de données, car rapide et facile à prendre en main.

![image](https://user-images.githubusercontent.com/105498300/168465071-899904a6-d404-423e-bb26-e7d92ca71ec2.png)


### II - Se procurer le code et contacts

Le code est open source et utilisable. Toutes les fonctions de l’application peuvent être téléchargées sur ce lien : https://github.com/RouniGit/StereoLab

Vous avez aussi la possibilité de contribuer à l’amélioration du projet, car tout seul on va plus vite mais ensemble on va plus loin !!! 

Pour nous contacter :

Danny DOMINGUES : danny.domingues@outlook.fr 

Anatole TAILLEUR :

### III - Guide d’utilisation

Après avoir téléchargé les fonctions vous obtenez ceci :

![image](https://user-images.githubusercontent.com/105498300/168465088-b8ab9661-8f47-4784-b60b-18615be36c30.png)

Pour lancer l’application il suffit de lancer le fichier “projection.mlapp”.

#### 1. Données à intégrer


Création d’une liste de données :

Mais avant cela il faudra modifier les données dans le tableur “Stereo” ou le remplacer par un autre tableur (excel, sheet, etc) lisible par matlab, qui devra récupérer le nom “Stereo” (majuscule compris, sans accent) afin qu’il puisse être reconnu par le programme.

Attention le fichier “Stereo” qui vous sera fourni contient des données de démo, donc si vous voulez vos propres données, n’oubliez pas de les supprimer/modifier.




Si vous voulez intégrer votre propre tableau, il y a quelque consigne à respecter :

![image](https://user-images.githubusercontent.com/105498300/168465106-f3f1110e-afa5-4cc3-b2ba-fce1621481a3.png)

Il faudra bien nommer les colonnes, mais leur nom est libre et peut être nommé comme vous le souhaitez, cela ne sera pas pris en compte.
Cependant il faudra bien respecter l’ordre d’acquisition des données :

##### - 1er colonne : le type de faille.  

N = faille normale
I = faille inverse
S = faille senestre
D = faille dextre
Fe = fente de tension
Pi = Pics
St = Stylolithes

##### - 2ème colonne : l'azimut.

Un azimut ne peut être compris qu’entre 0° et 180°.  Les azimut supérieur ou égal à 180 ne sont donc pas utilisables.

##### - 3ème colonne : le pendage.

Le pendage ne peut être compris qu’entre 0° et 90°.

##### - 4ème colonne : l'orientation du plan.

À écrire en Majuscule :

N = Nord
E = Est
W = Ouest
S = Sud

Attention à bien vérifier qu’il est compatible avec l’azimut. Par exemple, un azimut de 0° ne peut pas être orienté Nord.

##### - 5ème colonne : le pitch.

Peut être compris entre 0° et 360°, 360° exclu car est égal à 0°.
Si vous laissez la case vide pour l’orientation du pitch, ce sera considéré comme un  azimut de strie.

##### - 6ème colonne : l'orientation du pitch.

À écrire en Majuscule :

N = Nord
E = Est
W = Ouest
S = Sud

Attention à bien vérifier qu’il ait un pitch compris entre 0° et 90°.

 ...................................................................................................................................................................................................................................................................................................


Après avoir bien rentré vos données dans votre tableau, n'oubliez pas de glisser votre fichier que vous nommerais “Stereo” dans votre dossier contenant l’application et ses fonctions, et supprimer le fichier “Stereo” de démo déjà existant.
Détail de l’interface

#### 2. Détail de l’interface

Utilisation stereolab :

Vous pouvez directement lancer l’application en cliquant ou double cliquant sur “projection.mlapp”. Si tout se passe bien, vous devriez voir ceci :

![image](https://user-images.githubusercontent.com/105498300/168465119-b0045059-129b-4dfd-8920-06eefb2d73a6.png)

Les boutons ont été coloriés pour le guide, mais ne le sont pas !!!

Tous les boutons ne sont pas actifs en même temps (c’est normal, certains ont besoin de conditions pour s’activer).

Vous aurez à disposition un tableau dont la première ligne est éditable (celle qui est remplie par des 0 et des O, surlignée en jaune).

___________________________________________________________________

###### Le bouton “**Tracer**”

Le bouton tracer vous permettra en un clic de tracer toutes les données de votre tableau excel :

![image](https://user-images.githubusercontent.com/105498300/168465132-37cf3eb8-7d91-4d11-afcf-30a625d9dfe6.png)


Vous pourrez ensuite effacer votre tracé, afficher les plans conjugués des failles de votre tableau ou ajouter des données que vous pouvez insérer dans la première ligne du tableau de l’application.

___________________________________________________________________


###### Le bouton “**Plans conjugués des stries**”

Le bouton plans conjugués des stries vous permettra de tracer les plans conjugués des failles de votre tableau “Stereo” :

![image](https://user-images.githubusercontent.com/105498300/168465145-dc0ff699-d502-4dc1-bc5d-addcbecd4a34.png)


Vous pourrez ensuite effacer vos tracés ou ajouter des données que vous pouvez insérer dans la première ligne du tableau de l’application.
___________________________________________________________________

###### Le bouton “**Effacer**”

Le bouton effacer vous permet de revenir à l’état initial de l’application avec un stéréographe vide, tout beau, tout propre !

![image](https://user-images.githubusercontent.com/105498300/168465155-db8dd896-feee-40c8-80c3-fb6d09efaaba.png)


Et vous repartez à 0, avec à nouveau la possibilité de “Tracer” ou “Ajouter”.

___________________________________________________________________

###### Le bouton “**Ajouter**”

Le bouton ajouter vous permet d’ajouter la ligne éditable du tableau. Attention : ça ne marchera évidemment pas si vous n’avez pas édité la ligne ! Si vous n’avez pas de pitch, assurez-vous de vider les cases correspondantes (pitch_azimuth affichera NaN, c’est normal, ça veut dire que la case est vide !).

Le plan ajouté se cumule à vos tracés précédents si vous ne les avez pas effacés.

![image](https://user-images.githubusercontent.com/105498300/168465174-b16f3a60-5eb1-4096-ae1f-0a599827f037.png)


Vous pourrez ensuite effacer vos tracés, tracer vos données, du tableau “Stereo”, par dessus si ce n’est pas déjà fait, ajouter le plan conjugué (uniquement des données de la ligne éditable) à l’aide du bouton “Ajouter Plan conjugués’ ou vous pouvez à nouveau ajouter un autre plan.

___________________________________________________________________

###### Le bouton “**Ajouter Plan conjugués**”

Ce bouton vous permet de tracer le plan conjugués du plan des données de la première ligne du tableau éditable.

![image](https://user-images.githubusercontent.com/105498300/168466076-d01852a7-0b57-4f50-8732-e4b603844d03.png)


Vous pourrez ensuite effacer vos tracés, tracer vos données, du tableau “Stereo”, par dessus si ce n’est pas déjà fait, ou vous pouvez à nouveau ajouter un autre plan.




**Et voilà ! Félicitation, vous savez utiliser tous les boutons de Stereolab !**
