# Boutique Jeux Vidéo

Application Flutter de présentation d'une boutique de jeux vidéo.

## Fonctionnalités

- **Boutique** : liste de 35 jeux avec image, titre, genre et prix
- **Détail d'un jeu** : page dédiée accessible via le bouton "Voir" (image, titre, description, badges)
- **Profil** : carte utilisateur (avatar, badge Premium, nom, âge, genres favoris) + grille infinie de recommandations (3 jeux par ligne, même widget que la boutique)
- **Carte intelligente** : le widget `GameCard` s'adapte à l'espace disponible — en mode large (boutique), il affiche le titre en grand centré ; en mode compact (grille recommandations), il n'affiche que l'image, les badges et le bouton

## Lancer le projet

```bash
flutter run
```

## Stack

- Flutter / Dart
- Material 3
