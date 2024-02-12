import 'dart:html';

import 'package:flutter/material.dart';

class ShopUI extends StatefulWidget {
  const ShopUI({super.key});
  static const String id = "ShopUI";

  @override
  State<ShopUI> createState() => _Shop_UIState();
}

class _Shop_UIState extends State<ShopUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Apple Store", style: TextStyle(color: Colors.white, fontSize: 18),),
        centerTitle: true,

        actions: [
          Icon(Icons.numbers_rounded, color: Colors.white,),
          SizedBox(width: 20,)
        ],
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 200,
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/giel.png"),
                  ),
                  SizedBox(height: 6,),
                  Text("User", style: TextStyle(color: Colors.white, fontSize: 18),),
                  Text("Mac Book user", style: TextStyle(color: Colors.white, fontSize: 18),)
                ],
              ),
            ),

            Container(color: Colors.white,height: 4,),

            Container(
              color: Colors.black,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(Icons.person_rounded, color: Colors.white,),
                      SizedBox(height: 10,width: 10,),
                      Text("Profile", style: TextStyle(color: Colors.white, fontSize: 18),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.shop_rounded, color: Colors.white,),
                      SizedBox(height: 10, width: 10,),
                      Text("Shop", style: TextStyle(color: Colors.white, fontSize: 18),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.settings_rounded, color: Colors.white,),
                      SizedBox(height: 10, width: 10,),
                      Text("Settings", style: TextStyle(color: Colors.white, fontSize: 18),)
                    ],
                  )
                ],
              ),
            ),

            Expanded(child: Container(
              color: Colors.black,
            ))
          ],
        ),
      ),
    );
  }
}
