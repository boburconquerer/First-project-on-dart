import 'package:flutter/material.dart';
import 'package:mydemo1/pages/appOnePage.dart';

class SplashOne extends StatefulWidget {
  const SplashOne({super.key});
  static const String id = "SplashOne";

  @override
  State<SplashOne> createState() => _SplashOneState();
}

class _SplashOneState extends State<SplashOne> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 3)).then((value) {Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=> PageOne()));});

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        color: Colors.white,
        child: Stack(
          children: [
            Center(
              child: Image.asset('assets/images/insta.png'),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text("From Facebook", style: TextStyle(color: Colors.black87, fontSize: 18),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
