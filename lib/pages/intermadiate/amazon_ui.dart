import 'package:flutter/material.dart';

class AmazonUI extends StatefulWidget {
  const AmazonUI({super.key});
  static const String id = "AmazonUI";

  @override
  State<AmazonUI> createState() => _AmazonUIState();
}

class _AmazonUIState extends State<AmazonUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF018197),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    width: 100,
                    child: Image(image: AssetImage("assets/images/amazon-logo-transparent.png"),)
                  )
                ],
              ),
            ),

            Container(
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.mic, color: Colors.white,),
                    onPressed: () {},
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart, color: Colors.white,))
                ],
              ),
            )
          ],
        ),
      ),

      body: Container(
        color: Colors.grey,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),
              color: Color(0xFF018197),
              child: Container(
                height: 50,
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "What are you looking for?",
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.search,
                              color: Color(0xFF018197),
                            )
                          ),
                        )
                    ),
                    Icon(Icons.camera_alt, color: Color(0xFF018197),)
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    color: Colors.blueGrey,
                    height: 45,
                    child: Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text("Deliver to Korea, Republic of", style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),

                  Container(
                    height: 140,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          width: 180,
                          color: Colors.white,
                          child: Center(
                            child: Text("We ship 45 million products", style: TextStyle(fontSize: 16),),
                          ),
                        ),
                        Expanded(
                            child: Container(
                              color: Colors.white,
                              child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF018197),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(70), bottomLeft: Radius.circular(70)),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/R.png"),
                                  fit: BoxFit.cover
                              )
                            ),
                          ),
                        )
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 9,),

                  Container(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    height: 160,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Sign in for the best experience", style: TextStyle(color: Colors.black, fontSize: 18),),
                        SizedBox(height: 15,),
                        Container(
                          width: double.infinity,
                          height: 50,
                          color: Colors.orangeAccent,
                          child: Center(
                            child: Text("Sign In", style: TextStyle(fontSize: 18),),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text("Create an account", style: TextStyle(color: Colors.blueAccent, fontSize: 18),)
                      ],
                    ),
                  ),

                  SizedBox(height: 8,),

                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Deal of the day", style: TextStyle(color: Colors.black, fontSize: 22),),
                        SizedBox(height: 16,),
                        Image(image: AssetImage("assets/images/giel.png"),
                        width: double.infinity,
                        height: 240,
                        fit: BoxFit.cover,),
                        SizedBox(height: 16,),
                        Text("Up to 31% off APC UPS Battery Back", style: TextStyle(fontSize: 17),),
                        SizedBox(height: 6,),
                        Text("\$10.99 - \$79.99", style: TextStyle(fontSize: 17),)
                      ],
                    ),
                  ),

                  SizedBox(height: 8,),

                  ////////////////GridView ishlat!!!!!
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: Row(
                      children: [
                        Expanded(child: Column(
                          children: [
                            Expanded(child: Image(image: AssetImage("assets/images/profile-picture.jpeg"),
                            fit: BoxFit.cover,
                            )
                            ),

                            SizedBox(height: 5,),

                            Expanded(
                                child: Image(image: AssetImage("assets/images/giel.png"),
                                  fit: BoxFit.cover,
                                )
                            ),

                            SizedBox(height: 5,),

                            Expanded(
                                child: Image(image: AssetImage("assets/images/profile-picture.jpeg"),
                                  fit: BoxFit.cover,
                                )
                            ),

                            SizedBox(height: 5,),

                            Expanded(
                                child: Image(image: AssetImage("assets/images/giel.png"),
                                  fit: BoxFit.cover,
                                )
                            ),

                            SizedBox(height: 5,),

                            Expanded(
                                child: Image(image: AssetImage("assets/images/profile-picture.jpeg"),
                                  fit: BoxFit.cover,
                                )
                            ),

                            SizedBox(height: 5,),

                            Expanded(
                                child: Image(image: AssetImage("assets/images/giel.png"),
                                  fit: BoxFit.cover,
                                )
                            ),

                            SizedBox(height: 5,),

                            Expanded(
                                child: Image(image: AssetImage("assets/images/profile-picture.jpeg"),
                                  fit: BoxFit.cover,
                                )
                            ),

                          ],
                        )
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 8,),
                ],
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
