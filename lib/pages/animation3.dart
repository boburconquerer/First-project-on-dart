import 'package:flutter/material.dart';

class AnimationThree extends StatefulWidget {
  const AnimationThree({super.key});
  static const String id = "AnimationThree";

  @override
  State<AnimationThree> createState() => _AnimationThreeState();
}

class _AnimationThreeState extends State<AnimationThree> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation _myAnimation;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(duration: const Duration(seconds: 2), vsync: this,);

    _myAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.5,0.0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticIn));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        backgroundColor: Colors.lightBlue,
        title: Text("Something3"),
        centerTitle: true,
      ),
      body: Center(
        child: SlideTransition(
          position: _myAnimation as Animation<Offset>,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterLogo(size: 150.0),
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
