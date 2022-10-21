import 'package:flutter/material.dart';
import 'package:musicapp_ui/Pages/home_page.dart';
import 'package:musicapp_ui/Pages/music_page.dart';
import 'package:musicapp_ui/Pages/playlist_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => const HomePage(),
        PlaylistPage.id: (context) => const PlaylistPage(),
        MusicPage.id: (context) => const MusicPage(),
      },
    );
  }
}
