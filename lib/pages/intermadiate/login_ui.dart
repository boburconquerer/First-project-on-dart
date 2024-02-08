import 'package:flutter/material.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});
  static const String id = "LoginUI";

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.6,1),
            colors: [
              Color(0xff1f005c),
              Color(0xff5b0060),
              Color(0xff870160),
              Color(0xffac255e),
              Color(0xffca485c),
              Color(0xffe16b5c),
              Color(0xfff39060),
              Color(0xffffb56b),
            ]
          )
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            //login and welcome
            Padding(
                padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),),
                SizedBox(height: 10,),
                Text("Welcome back", style: TextStyle(color: Colors.white, fontSize: 20),)
              ],
            ),
            ),
            SizedBox(height: 20,),

            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                  ),

                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: [
                          SizedBox(height: 60,),
                          //email,password..
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                color: Color.fromRGBO(171, 171, 171, 0.7),
                                  blurRadius: 20, offset: Offset(0,10))],
                            ),

                            child: Column(
                              children: [

                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey))
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Fullname",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),

                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey)),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),

                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey))
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Phone",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),

                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          SizedBox(height: 40,),
                          //login
                          Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:
                              Color(0xff870160),
                            ),
                            child: Center(
                              child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          ),

                          SizedBox(height: 30,),
                          //Login SMS
                          Text("Login with SMS", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),

                          SizedBox(height: 30,),

                          Row(children: [
                            Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blueAccent,
                                  ),
                                  child: Center(
                                    child: Text("Facebook",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                  ),
                                ),
                            ),

                            SizedBox(width: 20,),

                            Expanded(child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.redAccent,
                              ),
                              child: Center(
                                child: Text("Google", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              ),
                            )),

                            SizedBox(width: 20,),

                            Expanded(child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black
                              ),
                              child: Center(
                                child: Text("Apple", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              ),
                            ),
                            ),
                          ],
                          ),

                        ],
                      ),
                    ),
                  ),

                ),
            ),
          ],
        ),
      ),

    );
  }
}
