import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/video_game_provider.dart';
import '../widgets/game_card.dart';

class BoutiquePage extends ConsumerWidget {
  const BoutiquePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gamesAsync = ref.watch(gamesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Boutique'),
      ),
      body: gamesAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Erreur : $error')),
        data: (games) => ListView.builder(
          itemCount: games.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 220,
              child: GameCard(game: games[index]),
            );
          },
        ),
      ),
    );
  }
}
