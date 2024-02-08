import 'package:flutter/material.dart';

class AnimationTwo extends StatefulWidget {
  const AnimationTwo({super.key});
  static const String id = "AnimationTwo";

  @override
  State<AnimationTwo> createState() => _AnimationTwoState();
}

class _AnimationTwoState extends State<AnimationTwo> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation _myAnimation;

  void initState(){
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 1000));

    _myAnimation = Tween<Size>(
        begin: Size(1000,100),
        end: Size(1200, 120)
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));

    _controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _controller.repeat();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        backgroundColor: Colors.lightBlue,
        title: Text("Something2"),
        centerTitle: true,
      ),
      body: Center(
        child:
        AnimatedBuilder(animation: _myAnimation,
        builder: (ctx, ch) => Container(
          width: _myAnimation.value.width,
          height: _myAnimation.value.height,

          child: Image.asset("assets/images/giel.png"),
        )
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
