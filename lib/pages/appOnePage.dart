import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});
  static const String id = "PageOne";

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Instagram", style: TextStyle(color: Colors.white,fontFamily: 'Billabong', fontSize: 45),),
      ),
      body: Center(
        child: Text("Welcome to Instagram"),
      ),
    );
  }
}
