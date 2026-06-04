import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'widgets/app_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boutique Jeux Vidéo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      builder: kIsWeb
          ? (context, child) => Center(
                child: SizedBox(
                  width: 390,
                  height: 844,
                  child: ClipRect(child: child!),
                ),
              )
          : null,
      home: const AppNavigation(),
    );
  }
}
