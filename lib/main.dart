import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'post.dart';
import 'photos.dart';

import 'providers/post_provider.dart';
import 'providers/photo_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PostProvider()),
        ChangeNotifierProvider(create: (_) => PhotoProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pertemuan 8 - Consume API',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      initialRoute: '/',

      routes: {
        '/': (context) => const PostPage(),
        '/photos': (context) => const PhotoPage(),
      },
    );
  }
}
