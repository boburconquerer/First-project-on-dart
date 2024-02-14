import 'package:flutter/material.dart';

class ShopUI extends StatefulWidget {
  const ShopUI({super.key});
  static const String id = "ShopUI";

  @override
  State<ShopUI> createState() => _Shop_UIState();
}

class _Shop_UIState extends State<ShopUI> {

  final List<String> _listItem = [
    "assets/images/giel.png",
    "assets/images/profile-picture.jpeg",
    "assets/images/giel.png",
    "assets/images/profile-picture.jpeg",
    "assets/images/giel.png",
    "assets/images/profile-picture.jpeg",
    "assets/images/giel.png",
    "assets/images/profile-picture.jpeg",
    "assets/images/giel.png",
    "assets/images/profile-picture.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Apple Store", style: TextStyle(color: Colors.white, fontSize: 18),),
        centerTitle: true,

        actions: [
          SizedBox(width: 50, child: Container(
            margin: EdgeInsets.all(10),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(10)
            ),
            child: Icon(Icons.numbers_rounded, color: Colors.white,),
          ),),
          SizedBox(width: 20,)
        ],
      ),

      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 200,
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/giel.png"),
                  ),
                  SizedBox(height: 6,),
                  Text("User", style: TextStyle(color: Colors.white, fontSize: 18),),
                  Text("Mac Book user", style: TextStyle(color: Colors.white, fontSize: 18),)
                ],
              ),
            ),

            Container(color: Colors.white,height: 4,),

            Container(
              color: Colors.black,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(Icons.person_rounded, color: Colors.white,),
                      SizedBox(height: 10,width: 10,),
                      Text("Profile", style: TextStyle(color: Colors.white, fontSize: 18),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.shop_rounded, color: Colors.white,),
                      SizedBox(height: 10, width: 10,),
                      Text("Shop", style: TextStyle(color: Colors.white, fontSize: 18),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.settings_rounded, color: Colors.white,),
                      SizedBox(height: 10, width: 10,),
                      Text("Settings", style: TextStyle(color: Colors.white, fontSize: 18),)
                    ],
                  )
                ],
              ),
            ),

            Expanded(child: Container(
              color: Colors.black,
            ))
          ],
        ),
      ),
      
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [

              Container(
                width: double.infinity,
                height: 240,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/giel.png"),
                    fit: BoxFit.cover
                  )
                ),

                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                        Colors.black.withOpacity(.3),
                        Colors.black.withOpacity(.01)
                      ])
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [

                      Text("Lifestyle safe", style: TextStyle(color: Colors.white, fontSize: 36),),

                      SizedBox(height: 30,),

                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20), color: Colors.white
                        ),
                        child: Center(
                          child: Text("Shop Now", style: TextStyle(color: Colors.grey[900]),),
                        ),
                      ),

                      SizedBox(height: 20,)

                    ],
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children:
                    _listItem.map((item) => cellOfList(item)).toList(),
                  )
              )
            ],
          ),
        ),
      ),

    );
  }

  Widget cellOfList(String item){
    return Card(
      color: Colors.transparent,
      child: Container(

        padding: EdgeInsets.all(12),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover
          )
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            Icon(
              Icons.star_border_rounded,
              color: Colors.redAccent,
              size: 34,
            )
          ],

        ),

      ),
    );
  }

}
