import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});
  static const String id = "ThirdPage";

  @override
  State<ThirdPage> createState() => _ThirdPageState();

}

class _ThirdPageState extends State<ThirdPage> {
  AnimationController? _controller;
  Animation? _myAnimation;


  // void dispose(){
  //   super.dispose();
  //   _controller.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
