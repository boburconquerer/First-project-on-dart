import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mydemo1/pages/advanced/sharedpref/prefs_service_class.dart';
import 'package:mydemo1/pages/advanced/sharedpref/user_sharedpref_model.dart';

class SharedPref extends StatefulWidget {
  const SharedPref({super.key});
  static const String routeName = "/shared-pref";

  @override
  State<SharedPref> createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
  
  @override
  void initState() {
    super.initState();
    PrefService.storeName("Boburbek");
    PrefService.loadName().then((value) => {
      print(value!)
    });

    var user = UserModel(id:8, name:'Boburbek', email: "hhedffs@gmail.com", password: "12345");
    PrefService.storeName(user.name);


  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb3e7ff),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Color(0xff7bd4ff), width: 1.6)
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset("assets/images/log.jpg", width: MediaQuery.of(context).size.width*0.4,),
            Text("Welcome back!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),),
            Text("Log in to get \$2000 for free!", style: TextStyle(color: Colors.grey)),

            Padding(
              padding: EdgeInsets.all(10),

              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "email",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  prefixIcon: Icon(Icons.person_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.lightBlue, width: 2)
                  ),
                ),
              ),

            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "password",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  prefixIcon: Icon(Icons.lock_open_sharp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.lightBlue, width: 2)
                  ),
                ),
              ),
            ),

            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: Text("Forgot password?", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black), textAlign: TextAlign.right,), ),
              ],
            ),

              SizedBox(
                width: 120,
                height: 36,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                    )
                  ),
                  onPressed: (){},
                  child: Text("LOG IN", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

}
