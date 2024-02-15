
import 'package:flutter/material.dart';

class JetMarketUI extends StatefulWidget {
  const JetMarketUI({super.key});
  static const String id = "JetMarketUI";

  @override
  State<JetMarketUI> createState() => _JetMarketUIState();
}

class _JetMarketUIState extends State<JetMarketUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Jets", style: TextStyle(color: Colors.redAccent, fontSize: 24, fontWeight: FontWeight.w400),),

        actions: <Widget> [

          IconButton(
            icon: Icon(Icons.notifications_none), color: Colors.redAccent, onPressed: () {},
          ),

          IconButton(
            icon: Icon(Icons.shopping_cart_outlined), color: Colors.redAccent, onPressed: () {},
          ),

          SizedBox(width: 20,)

        ],

      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [

              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, "All"),
                    singleTab(false, "Boeing"),
                    singleTab(false, "Prime"),
                    singleTab(false, "Panama"),
                    singleTab(false, "Air")
                  ],
                ),
              ),
              SizedBox(height: 30,),
              makeItem("assets/images/giel.png"),
              makeItem("assets/images/profile-picture.jpeg"),
              makeItem("assets/images/giel.png"),
              makeItem("assets/images/profile-picture.jpeg"),
              makeItem("assets/images/giel.png"),
              makeItem("assets/images/profile-picture.jpeg"),
            ],
          ),
        ),
      ),

    );
  }

  Widget singleTab(bool type, String text){
    return AspectRatio(
        aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 5, left: 5),
        decoration: BoxDecoration(
          color: type ? Colors.redAccent[200]: Colors.transparent,
          borderRadius: BorderRadius.circular(20)
        ),

        child: Center(
          child: Text(text, style: TextStyle(fontSize: type ? 20: 17, color: type ? Colors.white: Colors.black),),
        ),
      ),
    );
  }

  Widget makeItem(String image){
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),

        image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
        ),

        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            offset: Offset(0,10)
          )
        ]
      ),
      child: Container(
        padding: EdgeInsets.all(20),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2)
            ]
          )
        ),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Boeing Jet", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight. bold),),
                        SizedBox(height: 10,),
                        Text("Luxury and comfortability", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),)
                      ],
                    )
                ),

                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.redAccent
                  ),
                  child: Center(
                    child: Icon(Icons.favorite_border, size: 20,),
                  ),
                )
              ],
            ),
            Text("100\$", style: TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }

}