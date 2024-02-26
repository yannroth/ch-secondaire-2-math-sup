# ch-secondaire-2-math-sup
Ce repository est pour centraliser les corrigés des anciens examen pour les mathématiques niveau supérieur pour le niveau secondaire 2 en Suisse.

## Contribuer
Pour contribuer, commencez par ajouter l'examen dont vous souhaitez fournir le corriger dans le tableau ci-dessous afin de garantir qu'il n'y aura pas de duplication du travail. Ensuite, baser vous sur un example existant et respecter l'organisation mise en place. Modifier le fichier `0_header.md` pour qu'il contienne les informations relatives à l'examen que vous ajoutez. Ainsi que le script de compilation `compile.sh` où il faut modifier le nom du fichier qui sera généré.

Les données des examens sont disponibles sur demande sur le site du [SEFRI](https://www.sbfi.admin.ch/sbfi/fr/home/formation/maturite/maturite-gymnasiale/sujets-d-anciens-examens-suisse-de-maturite.html).

### Status
| Session | Status réponse | Status résolution  | Autheur(s)  | Relecteur(s) |
| ------- | -------------- | ------------------ | ----------- | ------------ |
| 2020a   | Terminé        | En attente         | Yann ROTH   | En attente   |

### Dependences logicielles
Le langage utilisé est markdown, dont l'extension de fichier est `.md`. Afin de générer des documents, Pandoc est utilisé pour convertir les fichiers markdown en fichier PDF. En arrière plan, Pandoc utilise LaTeX et nottament pdflatex pour générer les documents. Sur une machine Ubuntu, voici la liste des commandes pour installer les packages nécéssaire à la génération de ces fichiers:

```
sudo apt install texlive
sudo apt install texlive-latex-extra
sudo apt install texlive-fonts-extra
sudo apt install pandoc
```

Il faut vérifier que la version de pandoc n'est pas obsolète, la version 2.5 n'est pas compatible avec certain template, la version 3.1 fonctionne.
Installer `texlive-full` installe automatiquement TOUS les packages optionnel de texlive.

### Génération de documents
Chaque dossier d'examen contient un script bash `compile.sh` qui contient la commande pour compiler les différents fichiers d'un examen dans un PDF qui sera écrit dans le dossier `output`.

Un script `compile_all.sh` se trouve à la source du dossier et appelle chaque `compile.sh` qu'il trouve.

### Générer PDF
Pour générer un fichier PDF depuis un fichier markdown manuellement, utiliser la commande suivante:
```
pandoc file.md -o file.pdf
```

### Générer LaTeX
Pour générer un fichier LaTeX depuis un fichier markdown, utiliser la commande suivante:
```
pandoc file.md -o file.tex -s
```

L'option `-s` est pour "standalone" et ajoute le header, le footer et les metadata en fonction du template employé.

### Utilisation de template
Pour spécifier un template à utiliser, il faut ajouter l'option `--template`. Ceci s'applique aussi bien à la génération d'un PDF directement ou pour la génération d'un fichier LaTeX. Par example pour utiliser le template [Eisvogel](https://github.com/Wandmalfarbe/pandoc-latex-template) présent de le dossier template, il faut utiliser la commande:
```
pandoc file.md -o file.pdf --template=template/eisvogel.latex
```
