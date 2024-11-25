# Journal de bord du projet encadré

## Séance 2

J'ai pour l'instant créé mon premier dépôt sur Github, crée le fichier journal.md et fait un "git pull"

## Séance 3

Pendant l'exercice de "sauvetage" j'ai eu un problème après avoir créé "oups.md" je ne voulais pas m'avancer et faire n'importe quoi vu que ça allait sans doute casser le scénario

## Séance 4

J'avoue pour le script j'ai eu pas mal de problèmes, je sais que j'ai du mal avec les scripts et que je devrais m'investir dessus mais je me suis permis de prioriser mon temps cette semaine à l'examen de GIM et profiter de la semaine de vacances pour ratrapper mon retard. J'ai oublié de rajotuer aussi j'ai eu pas mal de soucis aussi pour l'exercice sauvetage, avec avec les conflits que j'avais j'ai opté pour le git reset --hard pour me remettre sur de bonnes bases au moins pour l'instant

## Séance 5

Je n'arrive pas à faire autre chose que l'exercice 1 dans les exercices sur les scripts, je vais demander de l'aide à d'autres étudiants 

Je rencontre d'autres problèmes en fait, je n'arrive pas à commit mon rendu mais je n'ai pas les erreurs qu'on a pu voir en cours mais ce genre d'erreur-là : 

```
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
```
J'ai essayé de voir ce que je pouvais faire avec 'git pull' mais j'ai vraiment peur de faire n'importe quoi pour le coups 

## Séance 6

#### Exercice 1 : Pourquoi ne pas utiliser cat ?

On a pas besoin d'utiliser 'cat' parce que quand on utilise 'done < "urls/fr.txt"' il utilise toutes les lignes une par une, donc pas besoin d'utiliser 'cat'.

#### Exercice 2 : Comment transformer "urls/fr.txt" en paramètre du script ?

On peut remplacer "urls/fr.txt" par "$1"

#### Exercice 3 : Comment afficher le numéro de ligne avant chaque URL (sur la même ligne) ?

J'ai utilisé pour ça la fonction counter, j'ai commencé par lui donné une valeur : ``counter=1`` et ensuite utilisé la ligne : 
``echo -e "${counter}\t${site_name}\t``

## Séance 8 ?

J'ai eu un peu de mal à refaire le script miniprojet.sh je me suis fais aidé par un ami
