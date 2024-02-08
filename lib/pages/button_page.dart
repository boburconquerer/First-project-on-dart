import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});
  static const String id = "ButtonPage";

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          // padding: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.only(left: 20, top: 10, right: 10, bottom: 10),
          color: Colors.blue,
          height: 500,
          width: 1200,
          // child: Text("Buttons"),
          child: Column(
            children: [
              Container(
                color: Colors.deepOrangeAccent,
                height: 50,
                width: 100
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.white,
                height: 60,
                width: 120
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.amberAccent,
                height: 70,
                width: 140
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.orangeAccent,
                height: 80,
                width: 160
              ),                                               
            ],
          ),
        ),
      ),
    );
  }
}
