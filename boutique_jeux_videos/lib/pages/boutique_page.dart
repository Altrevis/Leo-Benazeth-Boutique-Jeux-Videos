import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../providers/video_game_provider.dart';
import '../widgets/game_card.dart';

class BoutiquePage extends ConsumerStatefulWidget {
  const BoutiquePage({super.key});

  @override
  ConsumerState<BoutiquePage> createState() => _BoutiquePageState();
}

class _BoutiquePageState extends ConsumerState<BoutiquePage> {
  String? _lastViewed;

  @override
  void initState() {
    super.initState();
    _loadLastViewed();
  }

  Future<void> _loadLastViewed() async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getString('last_viewed');
    if (value != null && mounted) {
      setState(() => _lastViewed = value);
    }
  }

  @override
  Widget build(BuildContext context) {
    final gamesAsync = ref.watch(gamesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Boutique'),
      ),
      body: gamesAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Erreur : $error')),
        data: (games) => ListView.builder(
          itemCount: games.length + (_lastViewed != null ? 1 : 0),
          itemBuilder: (context, index) {
            if (_lastViewed != null && index == 0) {
              return Container(
                margin: const EdgeInsets.fromLTRB(12, 12, 12, 4),
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.withOpacity(0.12),
                  border: Border.all(color: Colors.deepPurple.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.history, color: Colors.deepPurple, size: 18),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Vous avez récemment consulté : $_lastViewed',
                        style: const TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
            final gameIndex = _lastViewed != null ? index - 1 : index;
            return SizedBox(
              height: 220,
              child: GameCard(game: games[gameIndex]),
            );
          },
        ),
      ),
    );
  }
}
