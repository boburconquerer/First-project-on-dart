import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});
  static const String id = "SearchPage";

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  int _selectedInteger = 0;
  PageController? _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.blue,
      title: Text("Bright side", style: TextStyle(color: Colors.white, fontSize: 28),),
      centerTitle: true,

      ),



      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              color: Colors.white,
              height: 600,

                child: GridView.count(crossAxisCount: 7,
            children: [
              itemList(image: "assets/images/giel.png", title: "First"),
              itemList(image: "assets/images/giel.png", title: "Second"),
              itemList(image: "assets/images/giel.png", title: "Third"),
              itemList(image: "assets/images/giel.png", title: "Fourth"),
              itemList(image: "assets/images/giel.png", title: "Fivth"),
              itemList(image: "assets/images/giel.png", title: "Sixth"),
              itemList(image: "assets/images/giel.png", title: "Seventh"),
              itemList(image: "assets/images/giel.png", title: "Eightth"),
              itemList(image: "assets/images/giel.png", title: "Tenth"),
              itemList(image: "assets/images/giel.png", title: "Eleven"),
              itemList(image: "assets/images/giel.png", title: "Twelve"),
              itemList(image: "assets/images/giel.png", title: "Thirteen"),
              itemList(image: "assets/images/giel.png", title: "Fourteen"),
            ],)),

              Container(
                color: Colors.white,
                height: 500,child: ListView(
                scrollDirection:
                Axis.vertical,
                children: [
                  itemList(image: "assets/images/giel.png", title: "First"),
                  itemList(image: "assets/images/giel.png", title: "Second"),
                  itemList(image: "assets/images/giel.png", title: "Third"),
                  itemList(image: "assets/images/giel.png", title: "Fourth"),
                  itemList(image: "assets/images/giel.png", title: "Fivth"),
                  itemList(image: "assets/images/giel.png", title: "Sixth"),
                  itemList(image: "assets/images/giel.png", title: "Seventh"),
                  itemList(image: "assets/images/giel.png", title: "Eightth"),
                  itemList(image: "assets/images/giel.png", title: "Tenth"),
                ],
              ),
              ),

            // PageView(
            //   children: <Widget> [
            //     Container(
            //       color: Colors.orangeAccent,
            //     ),
            //     Container(
            //       color: Colors.deepOrangeAccent,
            //       child: Center(
            //         child: Text("Second Page"),
            //       ),
            //     ),
            //     Container(
            //       color: Colors.amber,
            //       child: Center(
            //         child: Text("Third page"),
            //       ),
            //     ),
            //   ],
            // ),



          ],
        ),
      ),

      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Container(
              padding: EdgeInsets.all(20),
              height: 200,
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage("data:image/jpeg;base64,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"),
                  ),
                  Text("Amir Temur",style: TextStyle(color: Colors.white, fontSize: 18)),
                  Text("amirtemur@gmail.com",style: TextStyle(color: Colors.white, fontSize: 16
                  )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.person_rounded,color: Colors.blue),
                    SizedBox(width: 10),
                    Text("Profile",style: TextStyle(color: Colors.blue, fontSize: 16)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.save_rounded, color: Colors.blue),
                    SizedBox(width: 10),
                    Text("Saved videos",style: TextStyle(color: Colors.blue, fontSize: 16)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.trending_up_rounded, color: Colors.blue),
                    SizedBox(width: 10),
                    Text("In trends",style: TextStyle(color: Colors.blue, fontSize: 16)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.newspaper_rounded, color: Colors.blue),
                    SizedBox(width: 10),
                    Text("News",style: TextStyle(color: Colors.blue, fontSize: 16)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.videogame_asset_rounded, color: Colors.blue),
                    SizedBox(width: 10),
                    Text("Games",style: TextStyle(color: Colors.blue, fontSize: 16)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.sports_basketball_rounded, color: Colors.blue),
                    SizedBox(width: 10),
                    Text("Sports",style: TextStyle(color: Colors.blue, fontSize: 16)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                children: [
                  Icon(Icons.settings_rounded, color: Colors.blue),
                  SizedBox(width: 10),
                  Text("Settings",style: TextStyle(color: Colors.blue, fontSize: 16)),
                ],
              ),
              ],
            ),
            ),
          ],
        ),
      ),

    );
  }
}

Widget itemList({title, image}){
  return Container(
    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
    padding: EdgeInsets.all(20),
    child: Row(
      children: [
        Image(
          width: 100,
          height: 100,
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
        SizedBox(
          width: 10,
        ),
        Text(title, style: TextStyle(color: Colors.orangeAccent, fontSize: 18),),
      ],
    ),
  );
}

Widget gridList({title, image}){
  return Container(
    padding: EdgeInsets.all(10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          width: 100,
          height: 100,
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
        SizedBox(
          height: 10,
        ),
        Text(title, style: TextStyle(color: Colors.orangeAccent, fontSize: 18),),
      ],
    ),
  );
}