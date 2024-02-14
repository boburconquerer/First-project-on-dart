import 'package:flutter/material.dart';
import 'package:mydemo1/pages/intermadiate/shop_ui.dart';

class AppIntroUI extends StatefulWidget {
  const AppIntroUI({super.key});

  @override
  State<AppIntroUI> createState() => _AppIntroUIState();
  static const String id = "AppIntroUI";
}

class _AppIntroUIState extends State<AppIntroUI> {

  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, ShopUI.id);
            },
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text("Skip", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),),
            ),
          )
        ],
      ),

      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [

          PageView(
            onPageChanged: (int page){
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: [

              makePage(
                image: "assets/images/giel.png",
                title: "Apple Store",
                content: "suitable price for everyone. For only 4999 usd"
              ),
              makePage(
                image: "assets/images/profile-picture.jpeg",
                title: "Apple Store",
                content: "suitable price for everyone. For only 3999 usd"
              ),
              makePage(
                image: "assets/images/insta.png",
                title: "Apple Store",
                content: "suitable price for everyone. For only 3989 usd"
              )
            ],
          ),

          Container(
            margin: EdgeInsets.only(bottom: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _builderIndicator(),
            ),
          )

        ],
      ),

    );
  }

  Widget makePage({image, title, content, reverse=false}) {
    return Container(
      padding: EdgeInsets.only(left: 50, right: 50, bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [

          Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(image, height: 300, width: 280,),
              ),
              SizedBox(height: 50,)
            ],
          ),

          Text(title, style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),

          SizedBox(height: 28,),

          Text(content, textAlign: TextAlign.center, style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400
          ),)

        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 200),
      height: 8,
      width: isActive? 30:6,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }

  List<Widget> _builderIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++){
      if (currentIndex == i){
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }

}
