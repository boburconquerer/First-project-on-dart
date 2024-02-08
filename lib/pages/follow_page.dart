import 'package:flutter/material.dart';

class FollowPage extends StatefulWidget {
  const FollowPage({super.key});
  static const String id = "FollowPage";

  @override
  State<FollowPage> createState() => _FollowPageState();
}

class _FollowPageState extends State<FollowPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Container(
          // padding: const EdgeInsets.all(20),
          // margin: const EdgeInsets.all(10),
          color: Colors.orangeAccent,
          height: size.height * 1,
          width: size.width * 1,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(width: 3,color: Colors.blue),
                  //   borderRadius: BorderRadius.circular(16)
                  // ),
                  child: Row(
                  children:[
                    Container(
                      decoration: BoxDecoration( color: Colors.deepOrangeAccent,
                          border: Border.all(width: 3,color: Colors.deepOrange),
                          borderRadius: BorderRadius.circular(16)),
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.all(10),
                      width: 300,
                      height: 100,
                   //   color: Colors.deepOrangeAccent,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        border: Border.all(width: 3, color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(16)
                      ),
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.all(10),
                      width: 300,
                      height: 100,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        border: Border.all(width: 3, color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.all(10),
                      width: 300,
                      height: 100
                    )
                  ]
                  )
                ),
              ],
            ),
          ),


        ),
      ),
    );
  }
}
