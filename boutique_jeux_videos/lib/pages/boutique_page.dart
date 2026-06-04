import 'package:flutter/material.dart';
import '../data/games_data.dart';
import '../widgets/game_card.dart';

class BoutiquePage extends StatelessWidget {
  const BoutiquePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Boutique'),
      ),
      body: ListView.builder(
        itemCount: gamesData.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 220,
            child: GameCard(game: gamesData[index]),
          );
        },
      ),
    );
  }
}
