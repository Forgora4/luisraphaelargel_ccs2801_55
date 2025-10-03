import 'package:facebook/pages/friends.dart';
import 'package:facebook/pages/marketplace.dart';
import 'package:facebook/pages/newsfeed.dart';
import 'package:facebook/pages/profile.dart';
import 'package:facebook/pages/reels.dart';
import 'package:flutter/material.dart';

class CustomMain extends StatefulWidget {
  const CustomMain({super.key});

  @override
  State<CustomMain> createState() => _CustomMainState();
}

class _CustomMainState extends State<CustomMain> {
  int currentpage = 0;

  List pages = [
    const Newsfeed(),
    const Reelspage(),
    const Friendspage(),
    const Marketplace(),
    const Profilepage(),

  ];

  void ontapped(int index) {
    setState(() {
      currentpage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentpage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentpage,
        type: BottomNavigationBarType.fixed,
        onTap: ontapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: "Reels"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Friends"),
          BottomNavigationBarItem(icon: Icon(Icons.local_convenience_store), label: "Marketplace"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(icon: CircleAvatar(
            backgroundImage: AssetImage("assets/profile/prof6.png"),
            ), label: "Profile"),
        ],
      ),
    );
  }
}