import 'package:flutter/material.dart';
import 'package:spotifyy/amazon/front_page.dart';
import 'package:spotifyy/basiccalc.dart';
import 'package:spotifyy/calculator/calc.dart';
import 'package:spotifyy/instagram/profile.dart';
import 'package:spotifyy/nav.dart';
import 'package:spotifyy/spotify.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}
