import 'package:flutter/material.dart';

class AnimationFour extends StatefulWidget {
  const AnimationFour({super.key});
  static const String id = "AnimationFour";

  @override
  State<AnimationFour> createState() => _AnimationFourState();
}

class _AnimationFourState extends State<AnimationFour> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation _slideAnimation;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 1000));

    _slideAnimation = Tween(
        begin: 200.0,
        end: 120.0
    ).animate(CurvedAnimation(parent: _controller, curve: Interval(0.0, 1.0, curve: Curves.elasticIn),
    ))..addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed){
        _controller.repeat(reverse: true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        backgroundColor: Colors.lightBlue,
        title: Text("Something4"),
        centerTitle: true,
      ),
      body: AnimatedBuilder(animation: _slideAnimation,
      builder: (ctx, ch) => Container(
        width: 600,
        height: 600,
        margin: EdgeInsets.only(
          top: _slideAnimation.value,
          left: 250
        ),

        child: Image.asset("assets/images/giel.png"),
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
