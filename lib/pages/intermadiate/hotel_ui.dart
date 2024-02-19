import 'package:flutter/material.dart';

class HotelUI extends StatefulWidget {
  const HotelUI({super.key});
  static const String id = "HotelUI";

  @override
  State<HotelUI> createState() => _HotelUIState();
}

class _HotelUIState extends State<HotelUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/giel.png'),
                  fit: BoxFit.cover
                )
              ),

              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.4)
                    ]
                  )
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("What hotel do you need?", textAlign: TextAlign.center, style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),),
                    SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),

                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search_rounded, color: Colors.black.withOpacity(0.8),),
                          hintStyle: TextStyle(color: Colors.grey.withOpacity(.8), fontSize: 16),
                          hintText: "Search for hotels"
                        ),
                      ),
                    ),

                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),

            SizedBox(height: 32,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Best hotels", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[800]),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/giel.png", title: "Hotel 1"),
                        makeItem(image: "assets/images/profile-picture.jpeg", title: "Hotel 2"),
                        makeItem(image: "assets/images/giel.png", title: "Hotel 1"),
                        makeItem(image: "assets/images/profile-picture.jpeg", title: "Hotel 2"),
                        makeItem(image: "assets/images/giel.png", title: "Hotel 1"),
                        makeItem(image: "assets/images/profile-picture.jpeg", title: "Hotel 2"),
                        makeItem(image: "assets/images/giel.png", title: "Hotel 1"),
                        makeItem(image: "assets/images/profile-picture.jpeg", title: "Hotel 2"),
                        makeItem(image: "assets/images/giel.png", title: "Hotel 1"),
                        makeItem(image: "assets/images/profile-picture.jpeg", title: "Hotel 2"),
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),

                  Text("Luxury hotels", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/giel.png", title: "Hotel 1"),
                        makeItem(image: "assets/images/profile-picture.jpeg", title: "Hotel 2"),
                        makeItem(image: "assets/images/giel.png", title: "Hotel 1"),
                        makeItem(image: "assets/images/profile-picture.jpeg", title: "Hotel 2"),
                        makeItem(image: "assets/images/giel.png", title: "Hotel 1"),
                        makeItem(image: "assets/images/profile-picture.jpeg", title: "Hotel 2"),
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),

                  Text("Affordable hotels", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/giel.png", title: "Hotel 1"),
                        makeItem(image: "assets/images/profile-picture.jpeg", title: "Hotel 2"),
                        makeItem(image: "assets/images/giel.png", title: "Hotel 1"),
                        makeItem(image: "assets/images/profile-picture.jpeg", title: "Hotel 2"),
                        makeItem(image: "assets/images/giel.png", title: "Hotel 1"),
                        makeItem(image: "assets/images/profile-picture.jpeg", title: "Hotel 2"),
                      ],
                    ),
                  ),

                  SizedBox(height: 80,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
        aspectRatio: 1.4/1,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),

        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2)
              ]
            )
          ),

          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
        ),
      ),
    );
  }
}
