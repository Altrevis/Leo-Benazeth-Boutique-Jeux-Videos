import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../models/video_game.dart';
import '../pages/game_detail_page.dart';

/// Carte jeu réutilisable. Doit être placée dans un parent qui lui
/// impose une taille (SizedBox, GridView avec childAspectRatio, etc.).
class GameCard extends StatelessWidget {
  const GameCard({super.key, required this.game});

  final VideoGame game;

  // Seuil en dessous duquel on considère la carte "petite" (grille 3 colonnes)
  static const double _wideThreshold = 200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWide = constraints.maxWidth >= _wideThreshold;
        return Stack(
          fit: StackFit.expand,
          children: [
            // Image de fond
            CachedNetworkImage(
              imageUrl: game.imageUrl,
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                color: Colors.grey[900],
                child: const Center(
                  child: CircularProgressIndicator(color: Colors.white54),
                ),
              ),
              errorWidget: (context, url, error) => Container(
                color: Colors.grey[900],
                child: const Icon(
                  Icons.videogame_asset,
                  size: 40,
                  color: Colors.white24,
                ),
              ),
            ),

            // Dégradé bas
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black54],
                ),
              ),
            ),

            // Badge genre — coin supérieur gauche
            Positioned(
              top: 8,
              left: 8,
              child: GameBadge(label: game.genre, color: Colors.deepPurple),
            ),

            // Badge prix — coin supérieur droit
            Positioned(
              top: 8,
              right: 8,
              child: GameBadge(
                label: game.formattedPrice,
                color: game.price == null ? Colors.green[700]! : Colors.orange[800]!,
              ),
            ),

            // Bouton "Voir" centré
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => GameDetailPage(game: game)),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black87,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: const Text(
                  'Voir',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
              ),
            ),

            // Titre en grand centré — uniquement en mode large (boutique)
            if (isWide)
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 48, left: 12, right: 12),
                child: Text(
                  game.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(blurRadius: 6, color: Colors.black),
                      Shadow(blurRadius: 12, color: Colors.black54),
                    ],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
          ],
        );
      },
    );
  }
}

class GameBadge extends StatelessWidget {
  const GameBadge({super.key, required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
      ),
    );
  }
}
