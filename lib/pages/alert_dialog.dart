import 'package:flutter/material.dart';

class AlertDialogPage extends StatefulWidget {
  const AlertDialogPage({super.key});
  static const String id = "AlertDialog";

  @override
  State<AlertDialogPage> createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {

  void alertDialog1(){
    showDialog(context: context, builder:(context) {
      return AlertDialog(
        title: Text("Log out"),
        content: Text("You are about to log out!"),
        actions: <Widget>[
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Cancel")),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Confirm"))
        ],
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: InkWell(
        onTap: (){
          alertDialog1();
        },
        child: Center(
          child: Container(
            decoration: BoxDecoration(color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(16)),
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            width: 600,
            height: 400,
         child:   Text("Log out")
          )
        ),
      ),
    );
  }
}
