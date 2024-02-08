import 'package:flutter/material.dart';
import 'package:mydemo1/pages/watch_page.dart';

import 'appOneLogin.dart';

class SignUpOne extends StatefulWidget {
  const SignUpOne({super.key});
  static const String id = "SignUpOne";

  @override
  State<SignUpOne> createState() => _SignUpOneState();
}

class _SignUpOneState extends State<SignUpOne> {
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
               Text("Instagram", style: TextStyle(fontFamily: "Billabong", fontSize: 45),textAlign: TextAlign.center,),
             SizedBox(
               height: 20,
             ),
             TextFormField(
               decoration: InputDecoration(hintText: "name", border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue), borderRadius: BorderRadius.circular(9))),
             ),
             SizedBox(
               height: 20,
             ),
             TextFormField(
               decoration: InputDecoration(hintText: 'gmail',border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue), borderRadius: BorderRadius.circular(9))),
             ),
             SizedBox(
               height: 20,
             ),
             TextFormField(
               decoration: InputDecoration(hintText: 'password', border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue), borderRadius: BorderRadius.circular(9))),
             ),
             SizedBox(
               height: 20,
             ),
             SizedBox(
               height: 50,
               child: ElevatedButton(
                 onPressed:() {
                   Navigator.pushNamed(context, WatchPage.id);

               },
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.blue,

                 ),
                 child: Text("Sign Up",style: TextStyle(color: Colors.white),),
               ),
             ),
             Container(
               margin: EdgeInsets.only(left: 20, right: 20, top: 15),
               height: 50,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Text("Already have an account?", style: TextStyle(color: Colors.grey, fontSize: 16),),
                   SizedBox(width: 10,),

                   TextButton(onPressed: ()=>Navigator.pushNamed(context, LoginOne.id), child: Text("Login", style: TextStyle(color: Colors.black, fontSize: 17),))
                 ],
               ),
             ),
           ],
          ),
        ),
      ),
    );
  }
}
