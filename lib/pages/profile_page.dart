import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  static const String id = 'ProfilePage';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 200,
          backgroundColor: Colors.lightBlue,
          title: const Text("Home"),
          centerTitle: true,
          actions: [
            Icon(Icons.shopping_basket_rounded),
            SizedBox(width: 10),
            Icon(Icons.shopping_basket_rounded),
            SizedBox(width: 10)
          ],
        ),
      body: Container(
        color: Colors.deepOrangeAccent,
        child: Center(
          // child: Text("ProfilePage"),
          child: Image(image: AssetImage("assets/images/fl.png"))
        ),
      )
    );
  }
}
















