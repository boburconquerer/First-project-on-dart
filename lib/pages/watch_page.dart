import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mydemo1/pages/follow_page.dart';

class WatchPage extends StatefulWidget {
  const WatchPage({super.key});
  static const String id = "WatchPage";



  @override
  State<WatchPage> createState() => _WatchPageState();
}

class _WatchPageState extends State<WatchPage> {


  final _formKey = GlobalKey<FormState>();
  late String _email, _password;

  _doSignIn(){
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      Navigator.pushNamed(context, FollowPage.id);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("This is Elon Musk", style: TextStyle(color: Colors.white, fontSize: 36),),
        backgroundColor: Colors.blue,

      ),

      body: Form(
        key: _formKey,
        child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),

                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(28)),
                        width: double.infinity,
                        child: TextField(
                          onChanged: (value) {},
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          decoration: InputDecoration(
                            hintText: "search",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search_off_rounded,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 40,
                ),

                Container(
                  height: 280,
                  width: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/giel.png"),
                      fit: BoxFit.cover
                    ), borderRadius: BorderRadius.circular(70),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.white.withOpacity(0.2),
                          Colors.white.withOpacity(0.1),
                          Colors.white.withOpacity(0.1),
                          Colors.white.withOpacity(0.2)
                        ]
                      )
                    ),
                  ),
                ),

                SizedBox(
                  height: 40,
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "email"),
                    validator: (input) => input!.contains("@") ? null : "Please enter a valid email",          //////////////////////////////////////////////////////////////
                    onSaved: (input) => _email = input!,
                  ),
                ),

                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "password"),
                    validator: (input) => input!.length < 6 ? "Enter a password that is at least 6 characters " : null,
                    onSaved: (input) => _password = input!,
                    obscureText: true,
                  ),
                ),

                SizedBox(
                  height: 40,
            ),

                Container(
                  height: 50,
                  width: 280,
                  child: ElevatedButton(
                    onPressed: _doSignIn,
                    // onPressed: (){
                    //   // Navigator.pushNamed(context, FollowPage.id);
                    //
                    // },
                    child: Text("Click", style: TextStyle(fontSize: 24),),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue
                    )

                  ),
                ),

                SizedBox(
                  height: 40,
                ),




                // Container(
                //   child: GestureDetector(
                //     onTap: (){
                //       Navigator.pushNamed(context, FollowPage.id);
                //     },
                //     child: Text("Click here"),
                //   ),
                // ),

              ],
            ),

        ),
      ),

      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 24.0),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print("Opening dial"),
        onClose: () => print("Closed dial"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
            child: Icon(Icons.person_2_rounded),
            backgroundColor: Colors.red,
            label: "Profile",
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => print("First")
          ),
          SpeedDialChild(
            child: Icon(Icons.add_rounded),
            backgroundColor: Colors.blue,
            label: "Add",
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => print("Second")
          ),
          SpeedDialChild(
            child: Icon(Icons.photo_rounded),
            backgroundColor: Colors.green,
            label: "Photo",
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => print("Third")
          )
        ],


      ),


    );
  }
}
