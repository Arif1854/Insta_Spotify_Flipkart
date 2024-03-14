import 'package:flutter/material.dart';
import 'package:spotifyy/amazon/front_page.dart';
import 'package:spotifyy/instagram/profile.dart';
import 'package:spotifyy/spotify.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {

  int values = 0;

  final screens = [
    FrontPage(),
    Spotify(),
    Profile()

  ];

  void press(a){
    setState(() {
      values = (a);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[values],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,color: Colors.black,),label: 'Flipkart',),
          BottomNavigationBarItem(icon: Icon(Icons.music_note_outlined,color: Colors.black,),label: 'Spotify'),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),label: 'Instagram'),
        ],
        currentIndex: values,
        onTap: press,
      ),
    );
  }
}
