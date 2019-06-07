#!/bin/bash

# Script reproduisant les réponses aux exercices du projet.
# À chaque lancement, un répertoire `solution_jls` est créé.
# C'est dans cet environnement de travail propre que les commandes
# de l'exercice sont exécutées.

solveur_jls() {
  # EXERCICE 1/3:
  touch test{1,5}
  mkdir test{{2..4},6}
  # EXERCICE 2/3:
  mkdir le_shell_cest_trop_cool!
  # EXERCICE 3/3:
  mv test{1,5} le_shell_cest_trop_cool!
  cp -r test{2,6} le_shell_cest_trop_cool!
}

solveur_RAZ() {
  # Avertir si ce script a déjà été lancé:
  # Utilisateur OK? -> suppression des anciens fichiers de solution
  # Sinon -> sortie du script
  if [ -d solution_jls ]; then
    printf     "${RED}==> Une version précédente du projet existe déjà ici!\n"
    read -p    "  La supprimer puis la recréer? (o/n)${NORMAL} " user_input

    case "$user_input" in
      "o"|"O"|"oui"|"OUI")
        rm -rf solution_jls
      ;;
      "n"|"N"|"non"|"NON")
        printf "==> Réessayez plus tard 👋\n\n" && exit
      ;;
      *)
        printf "==> Réponse invalide 🤷‍♀️\n\n" && exit
      ;;
    esac
  fi

  # Création du répertoire accueillant fichiers de solution
  mkdir solution_jls && cd solution_jls
}

# Constantes UI
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLUE=$(tput setaf 4)
RED=$(tput setaf 1)

solveur_UI_intro() {
  clear
  printf "${BRIGHT}==> \"J'aime le Shell\" - Juin 2019 🦀\n" && sleep .5s
  printf "${NORMAL}==> Initialisation du solveur\n" && sleep .5s
}

solveur_UI_outro() {
  printf "${BLUE}==> Répertoire et fichiers de solution créés à l'emplacement: ./solution_jls 👌\n\n"
}

solve() {
  solveur_UI_intro
  solveur_RAZ
  solveur_jls
  solveur_UI_outro
} && solve
