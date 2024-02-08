import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:mydemo1/pages/watch_page.dart';

import 'appOneSignUp.dart';

class LoginOne extends StatefulWidget {
  const LoginOne({super.key});
  static const String id = "LoginOne";

  @override
  State<LoginOne> createState() => _LoginOneState();
}

class _LoginOneState extends State<LoginOne> {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Instagram", style: TextStyle(fontFamily: 'Billabong', fontSize: 45),textAlign: TextAlign.center,),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "email", border: OutlineInputBorder(borderRadius: BorderRadius.circular(9),borderSide: BorderSide(color: Colors.blue))),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "password", border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue), borderRadius: BorderRadius.circular(9))),
              ),
              SizedBox( height: 20),

              SizedBox(
                height: 50,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, WatchPage.id);
                },
                  child: Text("Login", style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20, top: 15),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Don't have an account?", style: TextStyle(color: Colors.grey, fontSize: 16),),
                    SizedBox(width: 10),

                    TextButton(onPressed: (){Navigator.pushNamed(context, SignUpOne.id);}, child: Text("Sign Up", style: TextStyle(color: Colors.black, fontSize: 17),))
                    ,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
