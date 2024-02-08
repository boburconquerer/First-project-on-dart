import 'package:flutter/material.dart';
import 'package:mydemo1/pages/search_page.dart';
import 'follow_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          child: SizedBox(
            width: 1000,
            height: 600,
            child: Image.network("https://upload.wikimedia.org/wikipedia/commons/d/d7/Hello%21_Logo.jpg")
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, SearchPage.id);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
