# J'aime le shell 🦀

Projet et exercices d'introduction au Shell

## Exercice 1

Dans un dossier `jaime-le-shell`, créer la suite de dossier et de fichier de sorte à ce que cela s’affiche :

![Résultat attendu Exercice 1](./assets/img/ex1.png)

**Implémentation :**
```bash
# Créer les fichiers test1 et test5
$ touch test{1,5}

# Créer les répertoires test2 à test4 et test6
$ mkdir test{{2..4},6}
```