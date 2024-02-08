
import 'package:flutter/material.dart';

class Animation_one extends StatefulWidget {
  const Animation_one({super.key});
  static const String id = "Animation_one";

  @override
  State<Animation_one> createState() => _Animation_oneState();
}

class _Animation_oneState extends State<Animation_one> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation _myAnimation;

  void initState(){
    super.initState();
    _controller = AnimationController(
      vsync: this, duration: Duration(milliseconds: 1200));
    _myAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  }

  @override
  void dispose(){
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        backgroundColor: Colors.lightBlue,
        title: Text("Something"),
        centerTitle: true,
      ),
      body: Center(
        child: FadeTransition(
          opacity: _myAnimation as Animation<double>,
          child: Container(
            width: 10000,
            height: 1000,
            child: Image.asset("assets/images/giel.png"),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.play_arrow_rounded),
        onPressed: (){
          _controller.forward();
        },
      ),
    );
  }
}
