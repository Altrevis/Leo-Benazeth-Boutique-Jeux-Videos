import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'widgets/app_navigation.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://tpfyctcqflvypoiwyjik.supabase.co',
    anonKey: 'sb_publishable_JXQKAfZ1hJRWlxVuYlKZiQ_-1PJzDDq',
  );
  runApp(const ProviderScope(child: MyApp()));
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
      home: const AppNavigation(),
    );
  }
}
