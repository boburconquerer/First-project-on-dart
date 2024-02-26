import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'feed_page.dart';

class HomePageInsta extends StatefulWidget {
  const HomePageInsta({super.key});
  static const String id = "HomePageInsta";

  @override
  State<HomePageInsta> createState() => _HomePageInstaState();
}

class _HomePageInstaState extends State<HomePageInsta> {

  var _pages = [
    FeedPageInsta(),
    FeedPageInsta()

  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Instagram", style: TextStyle(fontFamily: 'Billabong', color: Colors.black),),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.camera_alt, color: Colors.black),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.tv, color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.send, color: Colors.black,))
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i){
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Feed"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.save), label: "Saved"),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: "Profile")
        ],
      ),
    );
  }
}

